module Ecm
  module Tournaments
    module Generators
      class LocalesGenerator < Rails::Generators::Base
        desc "Copies the locale files to your application"

        source_root File.expand_path('../../../../../../config/locales', __FILE__)
        
        def generate_locales
          copy_file "ecm.tournaments.en.yml", "config/locales/ecm.tournaments.en.yml"
          copy_file "ecm.tournaments.de.yml", "config/locales/ecm.tournaments.de.yml"
        end   
      end
    end
  end
end        
