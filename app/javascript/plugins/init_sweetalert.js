import swal from 'sweetalert';

const sweetalertRequestOk = () => {
  const options = {
    title: "Votre demande a été effectuée",
    text: "Le groupe va revenir vers vous très rapidement",
    icon: "success"
  }
  const requestbuttons = document.querySelectorAll('.request-button');
  requestbuttons.forEach(button => {
    button.addEventListener("click", (event) => {
      if (button === event.currentTarget) {
        swal(options)

         event.currentTarget.setAttribute("disabled", "");
         event.currentTarget.innerText = 'Votre demande a été prise en compte...';

      }
    })
  })
}

window.sweetalertRequestOk = sweetalertRequestOk
