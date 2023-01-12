class ApplicationController < ActionController::Base
  def landing
    render html: "Hello world"
 end
end

