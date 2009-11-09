# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_ariza_session',
  :secret      => '5529da8ba53be3fff4d653eae011fac81b13fd34338086f24c36b091a7b2a9f4a7e8c76d5c219b411de8ceef52bc3b6e1001b5a984ad7ae3fadf664573ab903b'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
