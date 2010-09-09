# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_halo_aura_proxy_session',
  :secret      => '3654a881802e40214765ab0d02f874683c8e743641060dc372bb04d86ae83174297f247b364ab32b65df29f10ac0500c016fcfe6dcdf48f9fb4078e56ef17cad'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
