require 'soap/defaultDriver'
require 'models/aura'

Aura.endpoint = ENV['AURA_ENDPOINT'] || "http://localhost:8000/SOAP"
