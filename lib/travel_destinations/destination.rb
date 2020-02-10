class TravelDestinations::Destination

  attr_accessor :name, :description
  @@all = []

  def self.all 
    @@all 
  end

  def self.save
    @@all << self.scrape
  end

  def self.titles
    doc = Nokogiri::HTML(open("https://www.cntraveller.com/gallery/best-holiday-destinations-2020"))
    
    titles = doc.search("div.c-figure__title").text.split(/\d|\./).reject(&:empty?).reverse
    # titles_list = titles.each.with_index(1) do |value, index|
    #  puts "#{index} #{value}"
    # end
    # titles_list
  end
  
  def self.descriptions
    doc = Nokogiri::HTML(open("https://www.cntraveller.com/gallery/best-holiday-destinations-2020"))
    binding.pry
    # descriptions = doc.search("h3.bb-h3").text
    
  end
  
    # continue 54 here

end