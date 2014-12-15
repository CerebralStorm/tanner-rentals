#= require ./store
#= require_tree ./models
#= require_tree ./controllers
#= require_tree ./views
#= require_tree ./helpers
#= require_tree ./components
#= require_tree ./templates
#= require_tree ./routes
#= require ./router
#= require_self

$ ->
  $('.datepicker').datepicker()
  $("#lease-duration-adjust").hide()

  $('#lease_start_date').on "change", (event) ->
    date = moment($(event.target).val(), "MM/DD/YYYY").add(12, "months")
    $(".end-date").html(date.format("MM/DD/YYYY"))
    $("#lease-duration-adjust").show()

  $('#month_to_month_duration').on "change", (event) ->
    numOfMonths = parseInt($(event.target).val())
    date = moment($('#lease_start_date').val(), "MM/DD/YYYY").add(numOfMonths, "months")
    $(".end-date").html(date.format("MM/DD/YYYY"))

  $('.sigPad').signaturePad()

  $("#resident_sig").hide()
  $("#lease_resident_consent_to_esign").on "change", (event) ->
    $("#resident_sig").toggle(event.target.checked)

  $("#owner_sig").toggle($("#lease_owner_consent_to_esign").is("checked"))
  $("#lease_owner_consent_to_esign").on "change", (event) ->
    $("#owner_sig").toggle(event.target.checked)