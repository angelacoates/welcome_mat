// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(document).ready(function() {
  $('.media_heading').on('click', function(event){
    $(this).css({color:'orange'})
  })

  $("#search").on('input', function(event){
    let searchValue = $(this).val()

    console.log(`you are searching for ${searchValue}`)
    
    $.ajax({
      url: '/homes',
      data: { search: searchValue },
      dataType: 'script'
    })
    })
  })
