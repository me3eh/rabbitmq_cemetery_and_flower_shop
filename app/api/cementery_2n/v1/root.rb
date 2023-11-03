# frozen_string_literal: true

module Cementery2n
  module V1
    class Root < Grape::API
      mount Cementery2n::V1::MyApi
    end
  end
end
