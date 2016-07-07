module EMarkerclusterer
  
  class Engine < ::Rails::Engine
    isolate_namespace EMarkerclusterer
    
    config.generators do |g|
      g.test_framework :rspec
      g.fixture_replacement :factory_gir, :dir => 'spec/factories'
    end
  end
  
end