
require "imdb"
require "pry"
require_relative "getimdbdata.rb"


class SeriesMasterOfTheUniverse
	def initialize
		@list = {}
		@list["Breaking Bad"] = 5
    	@list["Friends"] = 10
    	@list["Game of Thrones"] = 6
    	@list["The Office"] = 9
    end

	def results_in_imdb(keyword)
	i = Imdb::Search.new(keyword)
	i.movies.size
	end

	def most_seasons_from
		a = @list.sort_by do |title, seasons| seasons end
		b = a.to_a
		c = b.last[0]
	end

	def most_episodes_from(episodesfromdata)
		@episodes = episodesfromdata
		a = @episodes.sort_by do |title, episodes| episodes end
		b = a.to_a
		c = b.last[0]
	end
end





describe SeriesMasterOfTheUniverse do 
	before do
		movie1 = DataMovie.new
		movie1.seasons
		@episodesfromdata = movie1.episodes
		@movie = SeriesMasterOfTheUniverse.new
	end

	describe "#number of titles" do 
		it "should give the number of movies containing a cat" do
			expect(@movie.results_in_imdb("Cat")).to be >= (200)
		end
	end

	describe "#series with the most seasons" do 
		it "should give the series with the most seasons" do
			expect(@movie.most_seasons_from).to eq("Friends")
		end
	end

	describe "#series with the most episodes" do 
		it "should give the series with the most episodes" do
			expect(@movie.most_episodes_from(@episodesfromdata)).to eq("Friends")
		end
	end


end







