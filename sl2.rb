# SL2. I’m damn right about TV series!

# I love TV series. I hope you do too. One of the main topics about TV series is The Absolute Truth Answers, which everyone thinks
# he has but no one truly does.

# Is Lost Finale as shitty as everyone says? Is The Wire the best TV series ever, or is it Breaking Bad? WHY WAS FIREFLY CANCELLED?
# Is it true that whoever wrote Heroes season 3 was the Devil himself? Why is Community so underrated, being in fact the best comedy ever?

# Write a class, let’s say SeriesMasterOfTheUniverse, with several methods answering questions about the series universe. Try to add
# parameters to most questions: there is no point in testing constants! Then add the testing for it using RSpec. Write several tests
# for each question, exploring different scenarios.

# An example of a method is one that, when passing a list of some TV series, returns the best one. For instance, when prefering The Wire
# when comparing it to Friends, it should pass the test. Otherwise, if it returns Mom as the best comedy aired on 2013, it should fail
# (I mean, Veep or Community were definitely better).

# Upgrade: use IMDB Ruby gem to remove arbitrarity!

require "IMDB"
require "pry"


class SeriesMasterOfTheUniverse
	def give_rating(list)
		@movieratings = {}
		list.map do |movietitle| 
			@movieratings[movietitle] = Imdb::Search.new(movietitle).movies.first.rating 
		end
		@movieratings
	end

	def give_best
		#Hash is converted to array: [[title, ranking], ... ]
		@movieratings.sort_by do |title, rating| rating
		end
		puts @movieinfo.to_a.last[0]
	end

	def give_author
		@movieauthors = {}
		list.map do |movietitle| 
			@movieauthors[movietitle] = Imdb::Search.new(movietitle).movies.first.writers 
		end
		@movieauthors
	end
 
end


    	list = []
    	list[0] = "Lost Finale"
    	list[1] = "Breaking Bad"
     	#@list[2] = "Firefly"
    	#@list[3] = "Heroes"
    	#@list[4] = "Community"


best_movie = SeriesMasterOfTheUniverse.new
best_movie.give_rating(list)
best_movie.give_best
best_movie.give_author


describe Calculator do 
	before do
		@smotu = SeriesMasterOfTheUniverse.new
	end

	describe "#rating" do 
		it "should give the best movie" do
			best_movie = @smotu.best_movie
			expect(best_movie).to eq("Breaking Bad")
		end

		
	end
end



puts "What is the best movie?"
puts best_movie.give_best
answer = []
puts "Type a specific movie, to get its rating"
answer [0] = gets.chomp
movie = SeriesMasterOfTheUniverse.new
puts movie.give_rating(answer)














# best_movie.give_rating(@list)
# best_movie.give_best