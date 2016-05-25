class ClientInquiry < ActionMailer::Base
  default from: "no@reply.com"

  def send_inquiry_email(name, email, message)
  	@name = name
  	@message = message
  	mail(:to => "abhas.aryaa@gmail.com", :from => email,
  		 :subject => "Client Inquiry")
  end
end
