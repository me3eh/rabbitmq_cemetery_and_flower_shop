module FlowerShop2n::V1
  class MyApi < Grape::API
    version 'v1', using: :path
    format :json
    prefix :api

    resource :things do
      desc 'Show past or upcoming events' do
        success code: 200,
                message: 'Events'
      end

      get do
        [1, 2, 3]
      end
    end
  end
end
