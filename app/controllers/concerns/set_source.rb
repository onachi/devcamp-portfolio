module SetSource
  extend ActiveSupport::Concern

  included do
    before_action :set_source
  end

  def self.before_filter(i)
    # code here
  end

  def set_source
    session[:source] = params[:q] if params[:q]
  end
end