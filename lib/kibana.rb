%w[sinatra net/http base64 json time date yaml tzinfo].each { |g| require g }

require_relative 'kibana/client_request'
require_relative 'kibana/id_request'
require_relative 'kibana/kelastic'
require_relative 'kibana/ktransient_url'
require_relative 'kibana/query'
require_relative 'kibana/configuration'
require_relative 'kibana/app'