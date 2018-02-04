// Developed based on fullPage.js
// https://github.com/alvarotrigo/fullPage.js

// Copyright (c) 2016 Alvaro Trigo <alvaro@alvarotrigo.com>
// Released under the MIT license
// https://github.com/alvarotrigo/fullPage.js/blob/master/LICENSE
( _ => {
  let isScroll = false

  const container = document.querySelector( '#pages' )
  container.style.setProperty( '-webkit-transition', 'all 700ms ease' )
  container.style.setProperty( 'transition', 'all 700ms ease' )

  const children = [].slice.call( document.querySelectorAll( '.page' ) )

  const getActivePage = _ =>
    document.querySelector( '.page.active' )

  const applyToEachPage = f =>
    children.forEach( f )

  // Mouse

  let previousTime = new Date().getTime()
  let scrollings = []

  const getAverage = ( elements, number ) => {
    const lastElements = elements.slice( Math.max( elements.length - number, 1 ) )
    return Math.ceil( ( lastElements.length ? lastElements.reduce( ( x, y ) => x + y ) : 0 ) / number )
  }

  applyToEachPage( page => {
    page.addEventListener( 'wheel', event => {
      const currentTime = new Date().getTime()

      const value = event.wheelDelta || -event.deltaY || -event.detail

      if( scrollings.length > 149 )
        scrollings.shift()

      scrollings.push( Math.abs( value ) )

      if( currentTime - previousTime > 200 )
        scrollings = []

      previousTime = currentTime

      if( !isScroll && getAverage( scrollings, 10 ) >= getAverage( scrollings, 70 ) )
        if( Math.max( -1, Math.min( 1, value ) ) < 0 )
          movePageDown()
        else
          movePageUp()
    }, false )
  } )

  // Touch Device

  let touchStartY = 0
  let touchEndY = 0

  if( 'ontouchstart' in window ){
    document.body.addEventListener( 'touchmove', _ => _ )

    applyToEachPage( page => {
      page.addEventListener( 'touchstart', event => touchStartY = event.touches[0].pageY, false )

      page.addEventListener( 'touchmove', event => {
        if( !isScroll && Math.abs( touchStartY - event.touches[0].pageY ) > ( innerHeight / 500 ) )
          if( touchStartY > touchEndY )
            movePageDown()
          else
            movePageUp()
      }, false )
    } )
  }

  const movePageUp = _ =>
    scrollPage( getActivePage().previousElementSibling, true )

  const movePageDown = _ =>
    scrollPage( getActivePage().nextElementSibling, false )

  let previousPosition = 0
  let timeoutId

  const scrollPage = element => {
    if( null === element ) return

    applyToEachPage( page => page.classList.remove( 'active' ) )
    element.classList.add( 'active' )

    isScroll = true

    let position = element.offsetTop
    const pageBottom = position - window.innerHeight + element.offsetHeight

    if( element.offsetTop > previousPosition )
      position = pageBottom

    previousPosition = position

    const translate3d = `translate3d( 0px, -${Math.round( position )}px, 0px )`
    container.style.setProperty( '-webkit-transform', translate3d )
    container.style.setProperty( 'transform', translate3d )

    clearTimeout( timeoutId )
    timeoutId = setTimeout( ( _ => isScroll = false ), 700 )
  }

  // Main

  const updateHeight = _ =>
    applyToEachPage( page => {
      if( !getActivePage() )
        page.classList.add( 'active' )

      page.style.height = innerHeight + 'px'
    } )

  addEventListener( 'resize', _ => {
    updateHeight()
    scrollPage( getActivePage() )
  } )

  updateHeight()
} )()
