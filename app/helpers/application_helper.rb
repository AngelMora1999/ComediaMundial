module ApplicationHelper
	def circle_img url, size= 50
		content_tag(:div, "", class:"circle cover", style:"height:#{size}px; width:#{size}px; background-image:url(#{url})")
	end
end
