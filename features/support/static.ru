# The static content rooted in the current working directory
# Dir.pwd => http://0.0.0.0:3002/
#
root=Dir.pwd
puts ">>> Serving: #{root}"
run Rack::Directory.new("#{root}")