class TravelDestinations::Destination

  attr_accessor :name, :description
  @@all = []

  def self.all 
    @@all 
  end

  def self.save
    @@all << self.scrape
  end

   def self.scrape
    doc = Nokogiri::HTML(open("https://www.cntraveller.com/gallery/best-holiday-destinations-2020"))
    binding.pry
    # continue 53 here
    # titles = doc.search("div.c-figure__title").text.split(/\d|\./).reject(&:empty?).reverse
    # => [" Matera, Italy", " Valle de Guadalupe", " New Orleans", " TASMANIA, AUSTRALIA", " Transylvania, Romania", " Egypt", " Chengdu, China", " Arles, France", " Patagonia", " Namibia", " Tahiti", " The Peloponnese, Greece", " Mumbai", " Mozambique", " St Barth’s, Caribbean", " THE SCOTTISH HIGHLANDS", " SINGAPORE", " PERTH, WESTERN AUSTRALIA", " THE TURKISH RIVIERA", " Pakistan", " Plymouth, UK", " Kyrgyzstan", " Armenia", " Salvador, Brazil", " Kangaroo Island, Australia", " Galway, Ireland", " Siargao, Philippines", " Paris, France", " Egadi Islands, Sicily", " Dakar, Senegal", " Portland, Maine, US", " Lebanon", " Qingdao, China", " Frisian Islands, Denmark", " The British Virgin Islands", " Rabat, Morocco", " Panama", " Rijeka, Croatia", " Kyoto, Japan"]
    #titles.each.with_index(1) do |value, index|
    #puts "#{index} #{value}"
    #end
    
  end
  


end