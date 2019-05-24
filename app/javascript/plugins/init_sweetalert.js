import swal from 'sweetalert';

const initSweetalert = () => {

  const applySweetalert = (element, options = {}, callback = () => {}) => {
    element.addEventListener('click', () => {
      swal(options).then(callback); // <-- add the `.then(callback)`
    });
  }


  const deleteButtons = document.querySelectorAll('.delete-btn');

  if(deleteButtons) {
    const options = {
      title: "Are you sure?",
      text: "Once deleted, you will not be able to recover this item!",
      icon: "warning",
      buttons: true,
      dangerMode: true,
    };

    deleteButtons.forEach((button) => {
      const listingId = button.dataset.listingId
      const callback = (value) => {
        if (value) {
            const link = document.querySelector(`a[data-listing-id='${listingId}']`);
            link.click();
        }
      }
      applySweetalert(button, options, callback)
    })
  }

}

export { initSweetalert };
