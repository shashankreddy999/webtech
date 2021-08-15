const myname = document.getElementById("name");
const card = document.getElementById("card");
const cvv = document.getElementById("cvv");
const myform = document.getElementById("myform");
const errorElement = document.getElementById("error");

myform.addEventListener("submit", (e) => {
  console.log(myname.value);

  let messages = [];
  if (myname.value === "" || myname.value == null) {
    messages.push("Name is required");
  }
  if (!ValidateCreditCardNumber(card.value)) {
    messages.push("Enter Valid Card number");
  }
  if (!ValidateCvv(cvv.value)) {
    messages.push("Enter CVV");
  }

  if (messages.length > 0) {
    errorElement.innerText = messages.join(", ");
    e.preventDefault();
  } else {
    alert("Validation Successful");
    window.location = "../index.html";
  }
});

function ValidateCreditCardNumber(ccNum) {
  var ccRegEx = /^(?:[0-9]{16})$/;
  var isValid = false;
  if (ccRegEx.test(ccNum)) {
    isValid = true;
  }
  return isValid;
}

function ValidateCvv(cvvNum) {
  var cvvRegEx = /^(?:[0-9]{3})$/;
  var isValid = false;
  if (cvvRegEx.test(cvvNum)) {
    isValid = true;
  }
  return isValid;
}
