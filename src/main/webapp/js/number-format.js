function numberFormat(inputNumber) {
  if (inputNumber != null && inputNumber != undefined && inputNumber != ""){
    return inputNumber.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
  } else {
    return "";
  }
}