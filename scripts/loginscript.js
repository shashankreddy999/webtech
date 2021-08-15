const myname = document.getElementById("name");
const password = document.getElementById("password");
const form = document.getElementById("myform");
const errorElement = document.getElementById("error");
var username = "Shashank";
var pass = "password";

form.addEventListener("submit", (e) => {
  console.log(myname.value);

  let messages = [];
  if (myname.value.localeCompare(username)) {
    messages.push("No User with " + myname.value + " exists");
  }
  if (!myname.value.localeCompare(username)) {
    if (password.value.localeCompare(pass)) {
      messages.push("Incorrect Password");
    }
  }

  if (messages.length > 0) {
    errorElement.innerText = messages.join(", ");
    e.preventDefault();
  } else {
    alert("Validation Successful");
    window.location.replace("../profile.html");
  }
});
