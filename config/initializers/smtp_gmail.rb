ActionMailer::Base.smtp_settings = {
  :address => 'smtp.gmail.com',
  :port => '587',
  :authentication => :plain,
  :enable_starttls_auto => true,
  :user_name => "wayne.simacek@gmail.com",
  :password => "BigDog01"
}

CONTACT_RECIPIENT = "wayne.simacek@gmail.com"