module DefaultPageContent
  extend ActiveSupport::Concern

  included do
    before_filter :set_page_default
  end

  def set_page_default
    @page_title = "Ulises Morales | My Portfolio Site"
    @seo_keywords = "Ulises Morales portfolio"
  end
end
