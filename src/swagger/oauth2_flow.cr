module Swagger
  # OAuth2 Flow Object
  struct OAuth2Flow
    property name
    property authorization_url
    property token_url
    property refresh_url
    property scopes

    def initialize(@name : String, @authorization_url : String? = nil, @token_url : String? = nil,
                   @refresh_url : String? = nil, @scopes : Hash(String, String)? = nil)

      unless Objects::OAuth2Flow::GRANT_TYPES.includes?(@name)
        raise UndefinedOAuth2GrantType.new("Undefined grant type `#{@name}`, avaiabled in #{Objects::OAuth2Flow::GRANT_TYPES}")
      end
    end
  end
end
