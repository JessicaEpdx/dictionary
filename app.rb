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
  @word = Word.new(params.fetch('word')).get_word()
  erb(:word)
end

get('/success2') do
  erb(:success2)
end

post('/success2') do
  @word = Word.new(params.fetch('word'))
  definition = Definition.new(params.fetch('definition'))
  definition.save()
  @definition = definition.get_definition()
  @word.add_definition(definition)
  erb(:success2)
end
