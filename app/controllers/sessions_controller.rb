class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.create(name: auth_hash[:info][:name], provider: auth_hash[:provider], uid: auth_hash[:uid])
    redirect_to root_url
  end

  private

  def auth_hash
    request.env['omniauth.auth']
  end
end
