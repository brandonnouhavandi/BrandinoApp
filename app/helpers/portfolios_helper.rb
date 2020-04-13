module PortfoliosHelper
  def image_generator(height:, width:)
    "http://placehold.it/#{height}x#{width}"
  end

  def portfolio_img img, type
  	if img.main_image? || img.thumb_image?
  		if img.main_image? && type == 'main'
	      	img.main_image.url
	    elsif img.thumb_image? && type == 'thumb'
			img.thumb_image.url
  		end
	else
	  	if type == 'thumb'
	      image_generator(height: '350', width: '200')
	    elsif type == 'main'
	      image_generator(height: '600', width: '400')
	    end
  	end
  end
end

