class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include DeviseWhitelist
  include SetSource
  include CurrentUserConcern
  include DefaultPageContent

  before_action :set_copyright

  def set_copyright
    @copyrignt = DevcampViewTool::Renderer.copyright 'oat aanuchit','All rights reserved'
  end
end

module DevcampViewTool
  class Renderer
    def self.copyright name, msg
      "&coppy; #{Time.now.year} | <b>#{name}</b> #{msg}".html_safe
    end
  end
end