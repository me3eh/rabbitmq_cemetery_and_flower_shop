# frozen_string_literal: true

module FlowerShop2n
  module V1
    class Root < Grape::API
      mount FlowerShop2n::V1::MyApi
    end
  end
end
