require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/term')

get ('/') do
  @all_terms = Term.all()
  erb(:index)
end

post('/dictionary') do
  term = params.fetch("term")
  definition = params.fetch("definition")
  object = Term.new(term, definition)
  object.save()
  @all_terms = Term.all()
  erb(:index)
end

post ('/clear') do
  @all_terms = Term.clear()
  redirect ('/')
end
