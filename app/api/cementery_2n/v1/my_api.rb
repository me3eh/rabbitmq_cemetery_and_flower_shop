module Cementery2n::V1
  class MyApi < Grape::API
    version 'v1', using: :path
    format :json
    prefix :api
    #
    # resource :things do
    #   get do
    #     return { things: [1, 2] }
    #   end
    # end

    resource :things do
      desc 'Show past or upcoming events' do
        success code: 200,
                # produces: Event,
                message: 'Events'
                # headers: RecruitsReport::V1::Root::AUTH_HEADER_DOC
      end

      # params do
      #   use :pagy,
      #       items_param: :per_page,
      #       items: 10,
      #       max_items: 100
      #   requires :type_of_events, values: %w[upcoming past]
      # end

      get do
        # events = ::Events::QueryObject.filter_by_date(params)
        # serializer_options[:fields] = { event: %i[id name start_date end_date location participating thumbnail] }
        [1, 2, 3]
        # EventSerializer.new(pagy(events), serializer_options).serializable_hash
      end
    end
  end
end
