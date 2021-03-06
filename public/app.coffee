$ = require 'jquery'
$ ->

	menu = $ '#navigation-menu'
	menuToggle = $ '#js-mobile-menu'
	signUp = $ '.sign-up'

	$ menuToggle
		.on 'click', ( e ) ->
			e.preventDefault
			menu
				.slideToggle ->
					if menu.is ':hidden'
						menu.removeAttr 'style'

	$ ".nav .nav-link" 
		.click ->
			$ ".nav .nav-link" 
				.each ->
						$ this
							.removeClass "active-nav-item"
			$ this
				.addClass "active-nav-item"
			$ ".nav .more"
				.removeClass "active-nav-item"

	false

