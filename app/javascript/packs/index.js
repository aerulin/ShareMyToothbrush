const buttonOwner = document.getElementById("btn-owner")
const buttonCustomer = document.getElementById("btn-customer")
const bookingReceived = document.getElementById("booking-received")
const bookingSent = document.getElementById("booking-sent")
const labelSent = document.getElementById("label-sent")
const labelReceived = document.getElementById("label-received")
const cardSent = document.getElementById("card-booking")
const cardReceived = document.getElementById("card-request")

if (buttonCustomer){

  buttonCustomer.addEventListener("click", (event) => {
    console.log('GOOD JOB CUSTOMER');
    bookingSent.classList.remove('hidden')
    bookingReceived.classList.add('hidden')
    buttonCustomer.classList.remove('change-button')
    buttonOwner.classList.add('change-button')
    cardSent.remove('hidden')
    cardReceived.add('hidden')
  });
}

if (buttonOwner){

  buttonOwner.addEventListener("click", (event) => {
    console.log('GOOD JOB OWNER');
    bookingSent.classList.add('hidden')
    bookingReceived.classList.remove('hidden')
    buttonCustomer.classList.add('change-button')
    buttonOwner.classList.remove('change-button')
    cardSent.add('hidden')
    cardReceived.remove('hidden')
  });
}
