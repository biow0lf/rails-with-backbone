module RailsWithBackbone
  class Engine < ::Rails::Engine
    initializer :backbone do |app|
      app.config.assets.paths << root.join('vendor', 'assets', 'javascripts').to_s
    end
  end
end
