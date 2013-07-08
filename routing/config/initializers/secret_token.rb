# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
Routing::Application.config.secret_key_base = '80f473d80a82d93c125ceace89fdd2a52ec41373f049da15ac0f8ac7870a3c25861061ad8aaefdbaf1110874e355425a24340c271efe10fbe05c36f29a16f9dd'
