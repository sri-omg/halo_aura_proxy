require 'soap/defaultDriver'

DEFAULT_ENDPOINT = ENV['AURA_ENDPOINT'] || "http://localhost:8000/SOAP"

class Aura
  def initialize(endpoint = DEFAULT_ENDPOINT)
    @aura = SOAPServerPort.new(endpoint)
  end

  def method_missing(*args)
    @aura.send(*args)
  end
end
