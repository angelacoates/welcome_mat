// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(document).ready(function() {
  $('.media_heading').on('click', function(event){
    $(this).css({color:'orange'})
  })

  $('body').on('click', '.favorite-home', function(event) {
    let theIdOfTheHome = $(this).data('home-id')  // data-home-id
    let isFavorited = $(this).hasClass('glyphicon-heart')

    $(this).toggleClass("glyphicon-heart")
    $(this).toggleClass("glyphicon-heart-empty")

    console.log(`you clicked on a home!!! the id is  ${theIdOfTheHome}`)

    if (isFavorited) {
      $.ajax({
        method: 'post',
        url: `/homes/${theIdOfTheHome}/unfavorite`,
        dataType: 'script'
      })
    } else {
      $.ajax({
        method: 'post',
        url: `/homes/${theIdOfTheHome}/favorite`,
        dataType: 'script'
      })
    }
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
