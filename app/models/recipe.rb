class Recipe
	include HTTParty

	
	default_params key: ENV['FOOD2FORK_KEY']= "435bbd3a08346a273b524dfd89d9a7c5"
	hostport = ENV['FOOD2FORK_SERVER_AND_PORT'] || 'www.food2fork.com'
	key_value = ENV['FOOD2FORK_KEY']
	base_uri "http://#{hostport}/api"
	format :json

	def self.for keyword
		get('/search',query: {q: keyword})["recipes"]
	end
end