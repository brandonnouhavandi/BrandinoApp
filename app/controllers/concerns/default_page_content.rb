module DefaultPageContent
	extend ActiveSupport::Concern 

	included do 
		before_filter :set_title
	end 

	def set__page_defaults
		@page_title = "Brandon Nouhavandi | My Portfolio Website"
		@seo_keywords = "Brandon Nouhavandi Portfolio"
end 		
end 