class SettingsController < ApplicationController
	before_action :set_settings

	# show settings on dashboard after admin login
	def show
		render json: @setting
	end

	# update settings on dashboard after admin login
	def update
		if @setting.update(setting_params)
		  render json: @setting
		else
		  render json: @setting.errors, status: :unprocessable_entity
		end
	end

	private
		# Use callbacks to share common setup or constraints between actions.
		def set_settings
			@setting = Setting.find(1)
		end

		# Only allow a list of trusted parameters through.
		def setting_params
			params.permit(:blog_show, :faq_show, :testimonial_show, :about_text, :phone_number, :email_address, :about_image)
		end
end