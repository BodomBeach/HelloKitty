Mailjet.configure do |config|
  config.api_key = ENV['MAIL_KEY']
  config.secret_key = ENV['MAIL_PRIVATE_KEY']
  config.default_from = 'hugopayetsync@gmail.com'
end
