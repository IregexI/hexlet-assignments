# frozen_string_literal: true

# BEGIN
require 'forwardable'
require 'uri'

class Url
  extend Forwardable

  attr_reader :query_params

  def initialize(add)
    @scheme = add[/[http|s]+/]
    @host = add[/\/+[a-z0-9.]*/][2..]
    @port = add[/:[0-9]+ ?/]
    @query = add[/\?.*/]
    
    if @port.nil?
      @port = nil
    else
      @port = @port[1..]
    end

    if @query.nil?
      @query = nil
    else
      @query = @query[1..]
    end

    @query_params = transform(@query)
    @address = URI::Generic.build(scheme: @scheme, host: @host, query: @query, port: @port)
  end

  def_delegators :@address, :scheme, :host, :port, :query

  def transform(val)
    return {} if val.nil?
    val.split('&').map { |param| param.split('=') }.each_with_object({}) { |param, acc| acc[param.first.to_sym] = param.last }
  end

  def query_param(key, val_default = nil)
    value_key = @query_params[key]
    value_key.nil? ? val_default : value_key
  end

  def == (address)
    ( port == address.port ) && ( host == address.host ) && ( scheme == address.scheme ) && ( query_params == address.query_params )
  end
end
# END
