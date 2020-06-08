require 'jwt'

module API
    module V1
      class Authentications < Grape::API
       
        include API::V1::Defaults

        helpers do
          def authenticate!(email, password)
            @user_id = Authentication::Local.where(email: email)[0].user_id
            if User.authenticate(@user_id, password)
              @result = true
            else
              @result = false
            end
            return @result
          end

          def generate_jwt
            payload = { user: "some user details" }
            return JWT.encode payload, ENV["JWT_SECRET"], ENV['ALGORITHM']
          end
        end
        
        desc "authentications"
        namespace "authentication" do
          resource :locals do
            params do
              requires :email, type: String, desc: "User email"
              requires :password, type: String, desc: "User password"
            end
            post "" do
              if !!authenticate!(params[:email], params[:password])
                @token = generate_jwt
                return {authentication_token: @token}
              else
                return { error: "authentication failed" }
              end
            end
          end
        end
      end
    end
  end