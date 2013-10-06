#= require "jquery/jquery.js"
#= require "sass-bootstrap/js/affix.js"
#= require "sass-bootstrap/js/collapse.js"
#= require "sass-bootstrap/js/scrollspy.js"
#= require "sass-bootstrap/js/tab.js"

jQuery ->

  $window = $(window)
  $body = $(document.body)
  $sidebar = $(".bs-sidebar")
  $docContainer = $(".bs-docs-container")

  # --- scrollspy ---
  $body.scrollspy
    target: ".bs-sidebar"
    offset: $docContainer.offset().top

  $window.on "load", ->
    $body.scrollspy "refresh"

  # --- sidebar ---
  $sidebar.affix
    offset:
      top: $sidebar.offset().top - parseInt($sidebar.children(0).css("margin-top"), 10) - 40

  # --- tabs ---
  $(".nav.nav-tabs a").click (e) ->
    e.preventDefault()
    $(this).tab "show"
