import swal from 'sweetalert';


const initSweetalert = () => {
  const options = {
    title: "Are you sure?",
    text: "Once deleted, you will not be able to recover this item!",
    icon: "warning",
    buttons: true,
    dangerMode: true,
  };

  const swalButtons = document.querySelectorAll('.delete-link');

  if(swalButtons) {
    swalButtons.forEach((button) => {
      button.addEventListener('click', (event) => {
        console.log("clicked")
          const link = event.currentTarget;
          swal(options).then((value) => {
            if (value) { link.previousElementSibling.click(); };
          })
        });
      }
    );
  }
}

export { initSweetalert };
