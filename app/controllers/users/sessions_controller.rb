class Users::SessionsController < Devise::SessionsController
	respond_to :json
	# skip_before_action :verify_authenticity_token

	private
		def respond_with(resource, _opts = {})
			if user_signed_in?
				render json: { message: "You're logged in" }, status: :ok
			else
				render json: { message: "Incorrect username and/or password combination" }, status: :unauthorized
			end
		end

		def respond_to_on_destroy
			if current_user
				log_out_success
			else
				log_out_failure
			end
		end

		def log_out_success
			render json: { message: "You're logged out" }, status: :ok
		end

		def log_out_failure
			render json: { message: "Logout failed" }, status: :unauthorized
		end
end