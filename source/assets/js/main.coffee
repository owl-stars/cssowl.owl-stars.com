#= require jquery/jquery.js
#= require ajaxchimp/jquery.ajaxchimp
#= require sass-bootstrap/js/affix
#= require sass-bootstrap/js/collapse
#= require sass-bootstrap/js/transition
#= require sass-bootstrap/js/scrollspy
#= require sass-bootstrap/js/tab

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


(($) ->
  $.fn.visible = (partial) ->
    $t = $(this)
    $w = $(window)
    viewTop = $w.scrollTop()
    viewBottom = viewTop + $w.height()
    _top = $t.offset().top
    _bottom = _top + $t.height()
    compareTop = (if partial is true then _bottom else _top)
    compareBottom = (if partial is true then _top else _bottom)
    (compareBottom <= viewBottom) and (compareTop >= viewTop)
  return
) jQuery

win = $(window)
allMods = $(".slidemodule")
allMods.each (i, el) ->
  el = $(el)
  el.addClass "slidemodule-already-visible"  if el.visible(true)
  return

win.scroll (event) ->
  allMods.each (i, el) ->
    el = $(el)
    el.addClass "slidemodule-in"  if el.visible(true)
    return
  return
