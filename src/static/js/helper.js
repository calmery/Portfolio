const updatePosition = _ => {
  const primary = document.querySelector( 'nav#primary' )
  primary.style.marginTop = `-${primary.offsetHeight/2}px`
}

export default updatePosition
