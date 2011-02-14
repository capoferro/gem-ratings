require File.expand_path('../boot', __FILE__)

require 'rails/all'
require 'exception_notifier'

Bundler.require(:default, Rails.env) if defined?(Bundler)

module GemRatings
  class Application < Rails::Application
    config.encoding = "utf-8"
    config.filter_parameters += [:password]

    config.generators do |g|
      g.test_framework      :rspec
      g.fixture_replacement :factory_girl
      g.template_engine     :haml
    end

    config.middleware.use ExceptionNotifier,
    :email_prefix => "[Gem-Ratings Exception] ",
    :sender_address => %{"Support" <support@gem-ratings.org>},
    :exception_recipients => %w{erik@hollensbe.org bluepojo@gmail.com}
  end
end

