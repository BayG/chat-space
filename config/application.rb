require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module ChatSpace
  class Application < Rails::Application
    config.generators do |g|
      g.test_framework   false
      g.coffee     false
      g.helper     false
    end
    # Make Japanese available for Rails
    config.i18n.default_locale = :ja
    # 起動時にconfig/locale以下のファイルが読み込まれるようにしておく
    config.i18n.load_path += Dir[Rails.root.join('config', 'locales', '**', '*.{rb,yml}').to_s]
    # Time_zoneは東京
    config.time_zone = 'Tokyo'
    config.active_record.time_zone_aware_types = [:created_at]
  end
end
