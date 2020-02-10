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
    # continue 53min here
    # title = doc.search("div.c-figure__title").text 
    # => "20. Kyoto, Japan19. Rijeka, Croatia18. Panama17. Rabat, Morocco16. The British Virgin Islands15. Frisian Islands, Denmark14. Qingdao, China13. Lebanon12. Portland, Maine, US11. Dakar, Senegal10. Egadi Islands, Sicily9. Paris, France8. Siargao, Philippines7. Galway, Ireland6. Kangaroo Island, Australia5. Salvador, Brazil4. Armenia3. Kyrgyzstan2. Plymouth, UK1. Pakistan19. THE TURKISH RIVIERA18. PERTH, WESTERN AUSTRALIA17. SINGAPORE16. THE SCOTTISH HIGHLANDS15. St Barth’s,Caribbean14. Mozambique13. Mumbai12. The Peloponnese, Greece11. Tahiti10. Namibia9. Patagonia8. Arles, France7. Chengdu, China6. Egypt5. Transylvania, Romania4. TASMANIA, AUSTRALIA3. New Orleans2. Valle de Guadalupe1. Matera, Italy"
  end

end