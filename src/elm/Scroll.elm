module Scroll exposing (..)

import Html exposing (..)
import Html.Events exposing (..)
import Html.Attributes exposing (..)
import Json.Decode as Json
import List exposing (..)
import Debug
import Process exposing (..)
import Task exposing (..)


type Msg
    = Wheel Delta
    | MoveDown
    | MoveUp
    | Reset String


type alias Model =
    { delta : Delta
    , scrollings : List Float
    , currentTime : Float
    , isScroll : Bool
    , position : Int
    , transformY : String
    }


init =
    ( Model (Delta 0 0) [] 0 False 1 "-0px", Cmd.none )


sectionStyle transformY =
    style
        [ ( "transition", "all 700ms ease" )
        , ( "transform", "translate3d( 0px, " ++ transformY ++ ", 0px )" )
        ]


articleStyle top =
    style
        [ ( "position", "fixed" )
        , ( "top", (toString top) ++ "px" )
        , ( "left", "0" )
        ]


pageStyle =
    style
        [ ( "width", "1440px" )
        , ( "height", "753px" )
        , ( "overflow", "hidden" )
        ]


longTask : Task Never String
longTask =
    Process.sleep 700
        |> Task.map (always "complete")


view model =
    section [ onWheel Wheel, id "pages", sectionStyle model.transformY ]
        [ article [ class "page", articleStyle 0 ] [ div [ pageStyle ] [ text <| "Section 1 " ++ toString model ] ]
        , article [ class "page", articleStyle 753 ] [ div [ pageStyle ] [ text <| "Section 2 " ++ toString model ] ]
        , article [ class "page", articleStyle <| 753 * 2 ] [ div [ pageStyle ] [ text <| "Section 3 " ++ toString model ] ]
        ]


getAverage elements number =
    let
        m =
            Basics.max (List.length elements - number) 1

        lastElements =
            List.take (List.length elements - m) <| List.reverse elements
    in
        ceiling <| (List.foldr (\x y -> x + y) 0 lastElements) / (toFloat number)


update msg model =
    case msg of
        Reset _ ->
            ( { model | isScroll = False }, Cmd.none )

        MoveDown ->
            let
                position =
                    model.position

                nextPosition =
                    if position > 2 then
                        position - 1
                    else
                        position

                transformY =
                    "-" ++ (toString (nextPosition * 753)) ++ "px"
            in
                ( Debug.log (toString model) { model | transformY = transformY, position = nextPosition + 1 }, Task.perform Reset longTask )

        MoveUp ->
            let
                position =
                    model.position

                nextPosition =
                    if position > 1 then
                        position - 1
                    else
                        position

                transformY =
                    "-" ++ (toString ((nextPosition - 1) * 753)) ++ "px"
            in
                ( Debug.log (toString model) { model | transformY = transformY, position = nextPosition }, Task.perform Reset longTask )

        Wheel delta ->
            let
                scrollings =
                    if (abs <| delta.timeStamp - model.currentTime) > 200 then
                        []
                    else
                        List.append model.scrollings [ abs delta.deltaY ]

                average10 =
                    getAverage scrollings 10

                average70 =
                    getAverage scrollings 70

                isScroll =
                    if model.isScroll == False && average10 >= average70 then
                        True
                    else
                        False

                m =
                    { model | delta = delta, currentTime = delta.timeStamp, scrollings = List.reverse <| List.take 150 <| List.reverse scrollings }
            in
                if (Debug.log (toString model.isScroll) model.isScroll) == False && isScroll == True then
                    if (Basics.max -1.0 (Basics.min 1.0 (0 - delta.deltaY))) < 0 then
                        update MoveDown { m | isScroll = True }
                    else
                        update MoveUp { m | isScroll = True }
                else
                    ( m, Cmd.none )


type alias Delta =
    { deltaY : Float
    , timeStamp : Float
    }


deltaDecoder : Json.Decoder Delta
deltaDecoder =
    Json.map2 Delta
        (Json.field "deltaY" Json.float)
        (Json.field "timeStamp" Json.float)


onWheel : (Delta -> Msg) -> Attribute Msg
onWheel message =
    on "wheel" <| Json.map message deltaDecoder


main =
    program
        { init = init
        , view = view
        , update = update
        , subscriptions = always Sub.none
        }
