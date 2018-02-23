// Developed based on fullPage.js
// https://github.com/alvarotrigo/fullPage.js

// Copyright (c) 2016 Alvaro Trigo <alvaro@alvarotrigo.com>
// Released under the MIT license
// https://github.com/alvarotrigo/fullPage.js/blob/master/LICENSE
export default _ => {
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

  const setActiveMenu = activeMenu => {
    _ = [].slice.call( document.querySelectorAll( 'nav#primary div.menu' ) ).forEach( menu => {
      menu.classList.remove( 'active' )

      if( menu === activeMenu )
        menu.classList.add( 'active' )
    } )
  }

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

  if( 'ontouchstart' in window ){
    document.body.addEventListener( 'touchmove', _ => _ )

    applyToEachPage( page => {
      page.addEventListener( 'touchstart', event => touchStartY = event.touches[0].pageY, false )

      page.addEventListener( 'touchmove', event => {
        if( !isScroll && Math.abs( touchStartY - event.touches[0].pageY ) > ( innerHeight / 500 ) )
          if( touchStartY > event.touches[0].pageY )
            movePageDown()
          else if( event.touches[0].pageY > touchStartY )
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

    let pageId = element.id.slice( 6 )
    if( pageId.indexOf( '-' ) !== -1 )
      pageId = pageId.slice( 0, pageId.indexOf( '-' ) )

    const activeMenu = document.querySelector( `div#primary-${pageId}` ) || document.querySelector( `div#primary-${pageId}-0` )
    setActiveMenu( activeMenu )

    const secondary = document.querySelector( `#pages-${element.id.slice( 6 )} nav.secondary` )
    if( secondary )
      secondary.style.marginTop = `-${secondary.offsetHeight/2}px`

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

  _ = [].slice.call( document.querySelectorAll( 'nav#primary div.menu' ) ).forEach( menu => {
    const page = document.querySelector( `article#pages-${menu.id.slice( 8 )}` )
    menu.addEventListener( 'click', _ =>
      scrollPage( page )
    )
  } )

  _ = [].slice.call( document.querySelectorAll( 'nav.secondary div.secondary-menu' ) ).forEach( menu => {
    const page = document.querySelector( `article#pages-${menu.getAttribute( 'id' ).slice( 9 )}` )
    menu.addEventListener( 'click', _ => scrollPage( page ) )
  } )
}
