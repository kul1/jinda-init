module Jinda
  module Generators
    class InstallGenerator < Rails::Generators::Base
      desc "Install jinda component to existing Rails app "
      def self.source_root
        File.dirname(__FILE__) + "/templates"
      end

      def setup_app
        inside("public") { run "mv index.html index.html.bak" }
        inside("app/views/layouts") { run "mv application.html.erb application.html.erb.bak" }
        inside("app/views/layouts") { run "mv application.haml application.haml.bak" }

        inside("app/assets/javascripts") { run "mv application.js application.js.bak" }
        inside("app/assets/stylesheets") { run "mv application.css application.css.bak" }
        directory "app"
      end



# gem 'ckeditor', github: 'galetahub/ckeditor'      
# rails generate ckeditor:install --orm=mongoid --backend=paperclip
      

    end
  end
end
