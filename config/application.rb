require_relative "boot"

require "rails/all"

Bundler.require(*Rails.groups)

module DevCommunity
  class Application < Rails::Application
    config.load_defaults 7.1

    config.time_zone = 'Moscow'
    config.location = 'Europe/Moscow'
    config.i18n.default_locale = :en

    config.autoload_lib(ignore: %w(assets tasks))

    config.generators do |g|
      g.skip_routes true
      g.helper false
      g.assets false
      g.test_framework :rspec, fixture: false
      g.helper_specs false
      g.controller_specs false
      g.system_tests false
      g.view_specs false
    end

    # GZip all responses
    config.middleware.use Rack::Deflater
  end
end
