// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

$(document).ready(function(){
  $('.site--header--dropdown').click(function(event){
    // event.preventDefault();
    $(this).children('.dropdown-menu').toggle();
  });

  $('.new-post-link').click(function () {
    if($(this).hasClass('signed-in'))
    {
      $(".new-post-modal").show();
      $('body').addClass('showing-discussion');
    }
    else
    {
      $(".signup-prompt").show();
    }
  });

  $(".close-signup-prompt").click(function () {
    $(".signup-prompt").hide();
  });

  $(".close-discussion").click(function () {
    $(".new-post-modal").hide();
    $('body').removeClass('showing-discussion');

  });

  $(".user-image-holder").mouseover(function(event){
    var left = $(this).offset().left;
    var top = $(this).offset().top - 230;
    

    // $(".tooltip-content").html($(this).closest(".user-image-holder").children(".tooltip").html());
    $(".data-tooltip-container").css({
        display: "block",
        position: "absolute",
        left: "760px",
        top: top + "px"});
    $(".data-tooltip-container").show();

  });

  $(".user-image-holder").mouseout(function(event) {
        $(".data-tooltip-container").hide();
  });


});