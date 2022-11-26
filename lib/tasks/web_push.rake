namespace :web_push do
  desc 'Generate VAPID public/private key pair'
  task :generate_keys do
    require 'web_push'

    WebPush.generate_key.tap do |keypair|
      puts <<-KEYS
Generated VAPID keypair:
Public  -> #{keypair.public_key}
Private -> #{keypair.private_key}
      KEYS
    end
  end
end
