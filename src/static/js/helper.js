const updatePosition = _ => {
  const primary = document.querySelector( 'nav#primary' )
  primary.style.marginTop = `-${primary.offsetHeight/2}px`

  const secondary = document.querySelector( 'nav#secondary' )
  secondary.style.marginTop = `-${secondary.offsetHeight/2}px`
}

export default updatePosition
