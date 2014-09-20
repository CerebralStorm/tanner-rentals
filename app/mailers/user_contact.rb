class UserContact < ActionMailer::Base
  default from: "from@example.com"

  def contact_us(subject, message)
    @subject = subject
    @message = message
    mail to: "cerebralstorm@gmail", subject: "New User Message"
  end
end
