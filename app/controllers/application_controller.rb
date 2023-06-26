class ApplicationController < ActionController::Base

  def current_controller?(names)
    return false if params[:controller].blank?
    names.include?(params[:controller])
  end

  helper_method :current_controller?
end
