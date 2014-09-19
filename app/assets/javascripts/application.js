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
//= require jquery.signaturepad
//= require moment
//= require bootstrap-datepicker
//= require turbolinks
//= require handlebars
//= require ember
//= require ember-data
//= require ember-animate
//= require_self
//= require tanner_rentals
//= require_tree .


window.TannerRentals = Ember.Application.create();
window.TannerRentals.deferReadiness();

$(document).ready(function () {
  if($('#ember-body').length > 0) {
    window.TannerRentals.advanceReadiness();
  }
});
