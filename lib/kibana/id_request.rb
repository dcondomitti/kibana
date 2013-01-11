=begin
= Class: IdRequest
  Creates an client request for a specific Id
== Parameters:
  id::    Id of log
  index:: Index Id is found in
=end
module Kibana
  class IdRequest
    attr_accessor :request

    def initialize(id,index)
      @request = {
        "id"        => "#{id}",
        "index"     => index,
        "timeframe" => "#{Configuration::Fallback_interval}",
        "mode"      => "id",
        "fields"    => '',
        "offset"    => 0,
      }
    end

    def hash
      ClientRequest.hash(@request)
    end
  end
end