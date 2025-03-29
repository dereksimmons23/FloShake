document.addEventListener('DOMContentLoaded', function() {
  // Mobile menu toggle
  const menuToggle = document.querySelector('.mobile-menu-toggle');
  const navMenu = document.querySelector('.nav-menu');
  
  if (menuToggle) {
    menuToggle.addEventListener('click', function() {
      menuToggle.classList.toggle('active');
      navMenu.classList.toggle('active');
      document.body.classList.toggle('menu-open'); // Prevent scrolling when menu is open
    });
  }

  // Close dropdowns when clicking outside on desktop
  const isMobile = window.innerWidth < 768;
  if (!isMobile) {
    document.addEventListener('click', function(event) {
      if (!event.target.closest('.has-submenu')) {
        document.querySelectorAll('.submenu').forEach(function(submenu) {
          submenu.style.display = 'none';
        });
      }
    });
  }

  // Toggle submenu on mobile - use clicks instead of hover
  document.querySelectorAll('.has-submenu > a').forEach(function(link) {
    link.addEventListener('click', function(event) {
      if (isMobile || window.innerWidth < 768) {
        event.preventDefault();
        const submenu = this.nextElementSibling;
        const parent = this.parentNode;
        const isDisplayed = submenu.style.display === 'flex';
        
        // Hide all other submenus
        document.querySelectorAll('.has-submenu').forEach(function(item) {
          if (item !== parent) {
            item.classList.remove('active');
            item.querySelector('.submenu').style.display = 'none';
          }
        });
        
        // Toggle this submenu
        parent.classList.toggle('active');
        submenu.style.display = isDisplayed ? 'none' : 'flex';
      }
    });
  });

  // Close menu when clicking on a link that doesn't have a submenu
  document.querySelectorAll('.nav-menu > li:not(.has-submenu) > a').forEach(function(link) {
    link.addEventListener('click', function() {
      if (menuToggle && menuToggle.classList.contains('active')) {
        menuToggle.classList.remove('active');
        navMenu.classList.remove('active');
        document.body.classList.remove('menu-open');
      }
    });
  });

  // Close menu when window is resized to desktop size
  window.addEventListener('resize', function() {
    if (window.innerWidth >= 768) {
      if (menuToggle && menuToggle.classList.contains('active')) {
        menuToggle.classList.remove('active');
        navMenu.classList.remove('active');
        document.body.classList.remove('menu-open');
      }
    }
  });
});
