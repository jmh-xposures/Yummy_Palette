let buttonClick = () => {
  const navIcon = document.getElementById('nav-button');
  const navBar = document.querySelector('.navbar')
  navIcon.addEventListener("click", (event) => {
    navBar.classList.toggle('nav-blur');
  });  
}

export { buttonClick };
