# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
distance_between = 30
left = distance_between

move_right = (tag_to_edit) ->
	$("##{tag_to_edit}").css("left", left)
	left +=$("##{tag_to_edit}").width()
	left +=distance_between

$(document).ready($ ->
	tags_to_edit=["size_property","color_property","style_property", "link_property", "signature_property"]
	move_right tag_to_edit for tag_to_edit in tags_to_edit
	$("#inbox").css("text-decoration", "underline");
)
