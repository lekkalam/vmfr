OmniAuth.config.logger = Rails.logger

if Rails.env.development? 
  OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE 
end

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, '241313754692-n1hj58jpgbpu1obmc00q9dllqivegnev.apps.googleusercontent.com', 'JPIFy14NhfMMs9pw1Bd0oD0I', {client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}}
end
