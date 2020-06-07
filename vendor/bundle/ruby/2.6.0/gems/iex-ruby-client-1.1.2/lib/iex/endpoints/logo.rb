module IEX
  module Endpoints
    module Logo
      def logo(symbol, options = {})
        IEX::Resources::Logo.new(get("stock/#{symbol.downcase}/logo", { token: publishable_token }.merge(options)))
      rescue Faraday::ResourceNotFound => e
        raise IEX::Errors::SymbolNotFoundError.new(symbol, e.response[:body])
      end
    end
  end
end
