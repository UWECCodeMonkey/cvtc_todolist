# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
  $('.item-check').on("change", (e) ->
    $.ajax({
      url: "/items/#{this.value}.json",
      type: 'PUT',
      data: {"item[done]": this.checked},
      success: (data) ->
        $(e.target).closest('tr').toggleClass('done')
      });
  )