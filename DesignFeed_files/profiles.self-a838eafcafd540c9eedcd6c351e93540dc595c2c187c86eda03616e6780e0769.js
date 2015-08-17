// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

var main = function() {
  $('.avatar_image_selector').on('click', '.avatar_list_item', function() {
    $(this).parent('.avatar_image_selector').find('.selected').toggleClass('selected')

    $(this).toggleClass('selected')

    $("[name='profile[avatar]']").val($(this).find(".avatar_image").attr("id"))
  })

}

$(document).ready(main);
