require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module ChatSpace
  class Application < Rails::Application
    config.generators do |g|
      g.test       false
      g.coffee     false
      g.helper     false
    end
    # Make Japanese available for Rails
    config.i18n.default_locale = :ja
    # 起動時に読み込まれるようにしておく
    config.i18n.load_path += Dir[Rails.root.join('config', 'locales', '**', '*.{rb,yml}').to_s]
  end
end
