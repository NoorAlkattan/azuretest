require "uri"
class AdalController < ApplicationController
  skip_before_filter :verify_authenticity_token
  
  def connect
  end
  
  def auth
    redirect_to '/auth/azureactivedirectory'
  end 

  def callback
    @first_name = auth_hash["info"]["first_name"]
    @last_name = auth_hash["info"]["last_name"]
    
    @id_token = auth_hash["extra"]["raw_info"]["id_token"]
  
  end 
  
  private 
  
  def auth_hash
    request.env["omniauth.auth"]
  end 
 
end
