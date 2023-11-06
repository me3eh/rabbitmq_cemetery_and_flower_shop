# frozen_string_literal: true

require "grape-swagger"

module FlowerShop2n
  class Root < Grape::API
    mount FlowerShop2n::V1::Root

    before do
      # Enables swagger easy doc
      header["Access-Control-Allow-Origin"] = "*"
      header["Access-Control-Request-Method"] = "*"
      header["Access-Control-Allow-Headers"] = "*"
    end

    add_swagger_documentation doc_version: "1.0.0", info: {title: "Cementery 2N Documentation"}
  end
end
