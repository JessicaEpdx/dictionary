require("sinatra")
require("sinatra/reloader")
require("./lib/car")
require("./lib/dealership")
also_reload("lib/**/*.rb")

get('/') do
  @all_words = Word.all()
  erb(:index)
end
