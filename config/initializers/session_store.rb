# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_wbet_session',
  :secret      => '1a65afcaad51b64c84a043342b5fb055aedc49838350381a6b733ce71eecd1274884ccaed0159d84ce7a608208b3e1683dc878ac64961bb06176c30f4f9c2d9f'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
