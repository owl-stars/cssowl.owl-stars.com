#= require "jquery/jquery.js"
#= require ajaxchimp/jquery.ajaxchimp
#= require "sass-bootstrap/js/affix.js"
#= require "sass-bootstrap/js/collapse.js"
#= require "sass-bootstrap/js/transition.js"
#= require "sass-bootstrap/js/scrollspy.js"
#= require "sass-bootstrap/js/tab.js"

jQuery ->

  $("#mailchimpform").ajaxChimp
    url: "http://wejustdostuff.us7.list-manage.com/subscribe/post?u=9d88ce76bb9c9bb3bea3601f0&id=2e63c2f86c"

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
  # back to top
  setTimeout (->
    $sideBar = $(".bs-sidebar")
    $sideBar.affix offset:
      top: ->
        offsetTop = $sideBar.offset().top
        sideBarMargin = parseInt($sideBar.children(0).css("margin-top"), 10)
        navOuterHeight = $(".bs-docs-nav").height()
        @top = offsetTop - navOuterHeight - sideBarMargin

      bottom: ->
        @bottom = $(".bs-footer").outerHeight(true)

  ), 100
  setTimeout (->
    $(".bs-top").affix()
  ), 100

  # --- tabs ---
  $(".nav.nav-tabs a").click (e) ->
    e.preventDefault()
    $(this).tab "show"
