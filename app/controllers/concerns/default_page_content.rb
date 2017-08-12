module DefaultPageContent
  extend ActiveSupport::Concern

  included do
    before_action :set_page_defaults
  end

    def set_page_defaults
      @page_title = "Aaryn Portfolio | My Portfolio Website"
      #seo keywords now available!!
      @seo_keywords = "Aaryn Biro portfolio"
    end
  end
