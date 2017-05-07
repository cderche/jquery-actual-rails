require "jquery/actual/rails/version"

module Jquery
  module Actual
    module Rails
      class Engine < ::Rails::Engine
        initializer 'Precompile hook', :group => :all do |app|
          app.config.assets.precompile += ['jquery.actual.js']
        end
      end
    end
  end
end
