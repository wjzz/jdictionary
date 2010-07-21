# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_jdictionary_session',
  :secret      => 'd8c4194b8fe7f3587b02e3f467066a6ca53a64fda1c4d763398b91510f2181b58bc703a68a70039cb8ab90e930861ad601c06d4bc456c3ac32d6a4365de15c2a'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
