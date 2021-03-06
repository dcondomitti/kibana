require "spec_helper"

require "Config"
require "id_request"

describe IdRequest do
  context "#initialize" do
    id_req = IdRequest.new(42, "foo")

    id_req.request["id"] == 42
    id_req.request["index"] == "foo"

    id_req.request["timeframe"] == Configuration::Fallback_interval
  end
end
