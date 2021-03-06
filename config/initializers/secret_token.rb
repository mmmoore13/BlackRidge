# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
require 'securerandom'
def secure_token
	token_file = Rails.root.join('.secret')
	if File.exist?(token_file)
		File.read(token_file).chomp #use existing token.
	else
		#generate a new token and store it in token_file.
		token = SecureRandom.hex(64)
		File.write(token_file, token)
		token
	end
end

BlackRidge::Application.config.secret_key_base = '796ca2fee9c02d1a44d3baa4660287fe3b8307bf2613d8d687747f8cffa660a45a2a6fedce59bcd70efba691adc30136d89ae4d6b0b61d1d7a1c1a16977b9322'
