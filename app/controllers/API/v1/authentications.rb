module API
    module V1
      class Authentications < Grape::API

        include API::V1::Defaults
        
        desc "authentications"
        namespace "authentication" do
            resource :locals do
              post do
                {:hello => "hello"}
              end
            end
        end
      end
    end
  end