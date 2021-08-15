const myname = document.getElementById("name");
const password = document.getElementById("password");
const cpassword = document.getElementById("cpassword");
const email = document.getElementById("email");
const age = document.getElementById("age");
const myform = document.getElementById("myform");
const errorElement = document.getElementById("error");

myform.addEventListener("submit", (e) => {
  console.log(myname.value);

  let messages = [];
  if (myname.value === "" || myname.value == null) {
    messages.push("Name is required");
  }
  if (password.value.length < 8) {
    messages.push("Minimum Password Length is 8");
  }
  if (password.value.localeCompare(cpassword.value)) {
    messages.push("Check password and Confirm Password");
  }
  if (age.value > 100) {
    messages.push("Age Should not be greater that 100");
  }
  if (!ValidateEmail()) {
    messages.push("Enter Correct mail");
  }
  if (messages.length > 0) {
    errorElement.innerText = messages.join(", ");
    e.preventDefault();
  } else {
    alert("Validation Successful");
    window.location = "../index.html";
  }
});

function ValidateEmail() {
  if (/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(email.value)) {
    return true;
  }
  return false;
}
