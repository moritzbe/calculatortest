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
	def initialize
		list = []
    	list[0] = "Lost Finale"
    	list[1] = "Breaking Bad"
    	#add more

		@movieratings = {}
		list.map do |movietitle| 
			@movieratings[movietitle] = Imdb::Search.new(movietitle).movies.first.rating
		end

		@movieauthors = {}
		list.map do |movietitle| 
			@movieauthors[movietitle] = Imdb::Search.new(movietitle).movies.first.writers.first 
		end
	end

	def give_rating
		@movieratings
	end


	def give_best
		give_rating
		@movieratings.sort_by do |title, rating| rating
		end
		puts @movieratings.to_a.last[0]
	end

	def give_author
		@movieauthors
	end
 
end


movie = SeriesMasterOfTheUniverse.new.give_best















# best_movie.give_rating(@list)
# best_movie.give_best