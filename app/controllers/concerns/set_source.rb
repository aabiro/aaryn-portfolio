module SetSource
  extend ActiveSupport::Concern

  included do
    before_action :set_source
  end

  def set_source
  #only works if someone came from a custom link
    session[:source] = params[:q] if params[:q]
  end
end
