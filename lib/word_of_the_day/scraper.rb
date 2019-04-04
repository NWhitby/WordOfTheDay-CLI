class WordOfTheDay::Scraper

  def self.scrape_page
    @doc = Nokogiri::HTML(open("https://www.merriam-webster.com/word-of-the-day"))

        word_attributes = {

          name: @doc.css("h1").text.capitalize.colorize(:red),
          date: @doc.css("div.article-header-container.wod-article-header > span").text.gsub("Word of the Day :", "").colorize(:yellow), 
          part_of_speech: @doc.css("div.word-attributes > span.main-attr").text.capitalize, 
          pronunciation: @doc.css("div.word-attributes > span.word-syllables").text,
          definition: @doc.css("div.wod-definition-container > p").text.gsub(/\d+/, ""),
          did_you_know: @doc.css("div.left-content-box > p").text,
          example_1: @doc.css("div.wotd-examples > p:nth-child(2)").text,
          example_2: @doc.css("div.wotd-examples > p:nth-child(3)").text
        }

        new_word = WordOfTheDay::Word.new(word_attributes)

        new_word.save
  end

end