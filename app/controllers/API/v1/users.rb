module API
    module V1
      class Users < Grape::API

        include API::V1::Defaults
  
        resource :user do
   
          desc "Return all Users"
          get "", root: 'users' do
            User.all
          end
  
          desc "Return a User"
          params do
            requires :id, type: String, desc: "ID of the user"
          end
          get ":id", root: "users" do
            User.where(id: permitted_params[:id]).first!
          end
        end
      end
    end
  end