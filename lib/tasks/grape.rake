# Prints routes for the api path
desc "API Routes"
task :routes do
  API::V1::Base.routes.each do |api|
    method = api.request_method.ljust(10)
    path = api.path
    puts "#{method} #{path}"
  end
end