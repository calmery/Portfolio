port module Port exposing (ready, setTitle)


port ready : () -> Cmd msg


port setTitle : String -> Cmd msg
