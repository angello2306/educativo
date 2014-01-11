# Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
# Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
Rails.application.config.time_zone = 'Central Time (US & Canada)'

Rails.application.config.active_record.default_timezone = :local

Rails.application.config.i18n.available_locales = [ :en, :es ]

# The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
# config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
Rails.application.config.i18n.default_locale = :es

Rails.application.config.i18n.enforce_available_locales = true