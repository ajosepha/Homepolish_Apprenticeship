class AuthenticationsController < ApplicationController
  def index
    @authentications = current_user.authentications if current_user
  end

  def create
    auth = request.env["omniauth.auth"]
    current_user.authentications.find_or_create_by_provider_and_uid_and_token_and_secret(
      auth['provider'], auth['uid'], 
      auth["credentials"]["token"], 
      auth["credentials"]["secret"])
    flash[:notice] = "#{auth['provider'].to_s.capitalize} Authentication successful"
    redirect_to authentications_url
  end

  def destroy
    @authentication = current_user.authentications.find(params[:id])
    @authentication.destroy
    redirect_to authentications_url, :notice => "Successfully destroyed authentication."
  end
end
