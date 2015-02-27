get '/chickens' do
  # Look in app/views/chickens.erb
  @mak = "chicken"
  erb :chickens
end

get '/' do
  # Look in app/views/index.erb
  erb :index
end


get '/:word' do
  word = params[:word]
  list_anagrams = Word.find_all_anagrams(word)

  erb :anagram, locals: {word: word, word_anagrams: list_anagrams}
end
