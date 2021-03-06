class SessionsController < ApplicationController
  before_action :set_provider, only: [:create]

  def create
    if google?
      @user = User.find_or_create_by(oauth_google: auth_hash.uid)
      @session = Session.create(user: @user)
      session[:session_token] = @session.token
    end

    render formats: :json
  end

  protected

    def auth_hash
      request.env['omniauth.auth']
    end

    def set_provider
      @provider = params.require(:provider)
    end

    def google?
      @provider == 'google_oauth2'
    end
end
