require 'net/http'
require 'json'

class ProverbsNiv
	@outerHash = Hash.new

	def initialize(chapter, verses, stop_worded_verses, rec_nsw)
		@chapter = chapter
		@verses = verses
		@stop_worded_verses = stop_worded_verses
		@rec_nsw = rec_nsw
	end

	def get_chapter
		return @chapter
	end

	def get_verses
		return @verses
	end

	def get_sw_count
		return @stop_worded_verses
	end

	def get_rec_nsw
		return @rec_nsw
	end

	def self.init
		uri = URI("http://bookofproverbs.herokuapp.com/api/v1/niv_bible")

		http = Net::HTTP.new(uri.host, uri.port)
		req = Net::HTTP::Get.new(uri.path)
		resp = http.request(req)

		data = JSON.parse(resp.body)
		data.each do |key, value|
			@localHash = Hash.new
			@proverb = ProverbsNiv.new(key, value["verses"], value["stop_worded_verses"], value["rec_nsw"])
			@localHash["chapter"] = @proverb.get_chapter
			@localHash["verses"] = @proverb.get_verses
			@localHash["rec_nsw"] = @proverb.get_rec_nsw
			@localHash["sw_rec_count"] = @proverb.get_sw_count
			@outerHash[@proverb.get_chapter] = @localHash
		end
		return "init complete"
	end

	def self.getAllChapterNumbers
		return @outerHash.keys
	end	

	def self.getContentOfAllChapters
		return @outerHash
	end	

	def self.getVersesOfAllChapters
		@verses = Hash.new
		@outerHash.each do |chap_num, chap_value|
			@verses[chap_num] = chap_value["verses"]
		end	
		return @verses
	end	

	def self.getRecurCountNoSwAllChapters
		@verses = Hash.new
		@outerHash.each do |chap_num, chap_value|
			@verses[chap_num] = chap_value["rec_nsw"]
		end	
		return @verses
	end	

	def self.getRecurCountSwAllChapters
		@verses = Hash.new
		@outerHash.each do |chap_num, chap_value|
			@verses[chap_num] = chap_value["sw_rec_count"]
		end	
		return @verses
	end	

	def self.getChapterContent(chapNum)
		return @outerHash[chapNum.to_s]
	end	

	def self.getChapterVerses(chapNum)
		return @outerHash[chapNum.to_s]["verses"]
	end	

	def self.getRecurCountNoSw(chapNum)
		return @outerHash[chapNum.to_s]["rec_nsw"]
	end	

	def self.getRecurCountSw(chapNum)
		return @outerHash[chapNum.to_s]["sw_rec_count"]
	end	

end

