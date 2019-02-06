module Api
  module V1
    class ApiController < ::ApplicationController
      private

      def current_resource_owner
        User.find(doorkeeper_token.resource_owner_id) if doorkeeper_token
      end
      helper_method :current_resource_owner
    end
  end
end
