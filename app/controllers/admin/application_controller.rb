# All Administrate controllers inherit from this
# `Administrate::ApplicationController`, making it the ideal place to put
# authentication logic or other before_actions.
#
# If you want to add pagination or other controller-level concerns,
# you're free to overwrite the RESTful controller actions.
module Admin
  class ApplicationController < Administrate::ApplicationController
    before_action :authenticate_admin

    def authenticate_admin
      redirect_to "/", alert: "Not authorized." unless user_signed_in? && current_user.admin?
    end

    # Whether the named action route exists for the resource class.
    #
    # @param resource [Class, String, Symbol] A class of resources, or the name
    #   of a class of resources.
    # @param action_name [String, Symbol] The name of an action that might be
    #   possible to perform on a resource or resource class.
    # @return [Boolean] `true` if a route exists for the resource class and the
    #   action. `false` otherwise.
    def existing_action?(resource, action_name)
      routes.include?([resource.to_s.underscore.pluralize, action_name.to_s])
    end
    helper_method :existing_action?
  end
end
