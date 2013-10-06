#= require "jquery/jquery.js"
#= require "sass-bootstrap/js/affix.js"
#= require "sass-bootstrap/js/collapse.js"
#= require "sass-bootstrap/js/scrollspy.js"
#= require "sass-bootstrap/js/tab.js"

jQuery ->

  $window = $(window)
  $body = $(document.body)
  $sideBar = $(".bs-sidebar")

  $(".nav.nav-tabs a").click (e) ->
    e.preventDefault()
    $(this).tab "show"

  $sideBar.affix
    offset:
      top: parseInt($sideBar.children(0).css("margin-top"), 10)

  $body.scrollspy
    target: ".bs-sidebar"
