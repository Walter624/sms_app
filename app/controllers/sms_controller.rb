class SmsController < ApplicationController
  
  def index
  end
  
  def send_sms
    message = params[:message]
    number = params[:number]
    account_sid = 'AC13a8e4fdb0d9eee1648750e3c0399507'
    auth_token = 'b29b57c0b98c1d9a4c999d8c5a49f19f'
    
    @client = Twilio::REST::Client.new account_sid, auth_token
    
    @message = @client.account.messages.create({:to => "+1"+"#{number}",
                                      :from => "+18622775009",
                                       :body => "#{message}"})
       redirect_to '/'
  end
  
end