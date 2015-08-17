// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
var main = function() {
  $('.more-btn').click(function() {
    $(this).next('.code_box').toggle()
  })
  $('.more-btn').click(function() {
    $(this).next('.code_input').toggle()
  })
  $('.more-btn').click(function() {
    $(this).next('.iframe_box').toggle()
  })
};

$(document).ready(main);
