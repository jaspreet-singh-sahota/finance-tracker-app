module IEX
  module Endpoints
    module KeyStats
      def key_stats(symbol, options = {})
        IEX::Resources::KeyStats.new(get("stock/#{symbol}/stats", { token: publishable_token }.merge(options)))
      rescue Faraday::ResourceNotFound => e
        raise IEX::Errors::SymbolNotFoundError.new(symbol, e.response[:body])
      end
    end
  end
end
