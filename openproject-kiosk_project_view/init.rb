require 'open_project/plugins'

module OpenProject::KioskProjectView
  class Engine < ::Rails::Engine
    engine_name :openproject_kiosk_project_view

    include OpenProject::Plugins::ActsAsOpEngine

    assets %w(kiosk_project_view.css)

    initializer 'kiosk_project_view.assets.precompile' do |app|
      app.config.assets.precompile += %w(kiosk_project_view.css)
    end
  end
end
