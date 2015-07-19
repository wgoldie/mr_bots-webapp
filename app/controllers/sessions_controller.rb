class SessionsController < ApplicationController
  def create  
  	auth = request.env["omniauth.auth"]  
    account = Account.find_by_provider_and_uid(auth["provider"], auth["uid"]) || Account.create_with_omniauth(auth)  
  end  
end
