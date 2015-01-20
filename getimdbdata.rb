require "IMDB"
require "pry"


class DataMovie
	def initialize
		@list = []
		@list[0] = "Breaking Bad"
    	@list[1] = "Friends"
    	@list[2] = "Game of Thrones"
    	@list[3] = "The Office"
    end


	def seasons
		series_movies_instance = {}
		@series_instance = {}
		@seasonsize = {}

		@list.map do |title|
			series_movies_instance[title] = Imdb::Search.new(title).movies.first
			@series_instance[title] = Imdb::Serie.new(series_movies_instance[title].id)
			@seasonsize[title] = @series_instance[title].seasons.size
		end
		#seasons = @series_instance["Friends"].seasons.size
		#puts seasons
	end 

	def episodesize(title)
		@episodesize = 0
		(1..@seasonsize[title]).each do |number| 
			number
			@episodesize += @series_instance[title].season(number).episodes.size  
		end
		@episodesize
	end


	def episodes
		@number_episodes = {}

		@list.map do |title|
			@number_episodes[title] = episodesize(title)
		end
    	@number_episodes
	end

end
		

movie1 = DataMovie.new
movie1.seasons
movie1.episodes
