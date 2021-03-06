module GitHubPages
  module HealthCheck
    module Errors
      class InvalidARecordError < GitHubPages::HealthCheck::Error
        # rubocop:disable Metrics/LineLength
        DOCUMENTATION_PATH = "/articles/setting-up-a-custom-domain-with-github-pages/".freeze

        def message
          <<-MSG
             Your site's DNS settings are using a custom subdomain, #{domain.host},
             that's set up as an A record. We recommend you change this to a CNAME
             record pointing at #{username}.github.io.
           MSG
        end
      end
    end
  end
end
