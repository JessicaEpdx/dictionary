require("sinatra")
require("sinatra/reloader")
require("./lib/word")
require("./lib/definition")
also_reload("lib/**/*.rb")

get('/') do
  @all_words = Word.all()
  erb(:index)
end

get('/success') do
  erb(:success)
end

post('/success') do
  word = Word.new(params.fetch('word'))
  word.save()
  erb(:success)
end

get('/word/:word') do
  @word = Word.find(params.fetch('word'))
  @all_definitions = @word.get_definitions()
  erb(:word)
end

post('/word/:word') do

  erb(:word)
end

get('/success2') do
  erb(:success2)
end

post('/success2') do
  @word = Word.find(params.fetch('word'))
  @definition = Definition.new(params.fetch('definition'))
  @definition.save()
  @word.add_definition(@definition)
  erb(:success2)
end
