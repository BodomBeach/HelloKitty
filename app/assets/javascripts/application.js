// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage
//= require jquery3
//= require jquery_ujs
//= require_tree .


//= require bootstrap/js/bootstrap.min

//= require boomerang/js/jquery-3.2.1.min
//= require boomerang/js/popper.min
//= require boomerang/js/plugins.min
//= require boomerang/js/custom.min


$(document).ready(function() {
   $(function(){
     $('.pagination a').attr('data-remote', 'true')
   });

  var partial = "<%=  escape_javascript(render :partial => 'cards_item') %>";
  $("#items").html(partial);
  $('.pagination a').attr('data-remote', 'true');

});
