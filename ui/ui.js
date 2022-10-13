$(document).ready(() => {
  init();
  $("#born-date").mask("00/00/0000");
  $("#register").attr("disabled", true);
});

window.addEventListener("message", (e) => {
  e.target.value = "open";
})

$("#verify-password").on("input", (e) => {
  let passValue = $("#password").val();
  let verifyPassValue = e.target.value;

  if (passValue.length >= 4 && passValue == verifyPassValue) {
    $("#register").attr("disabled", false);
  } else {
    $("#register").attr("disabled", true);
  } 
});


$("#born-date").on("input", (e) => {
  let val = e.target.value;
  if (val.length == 10) {
    let bornDate = new Date(val);
    let today = new Date();
    let diff = ((today - bornDate)/1000)/31556926;
    $("#old").text(`${Math.floor(diff)} anos`);
  } else {
    $("#old").text("");
  }
});

const init = () => {
  // $("#app").hide();
}
