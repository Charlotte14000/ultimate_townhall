require 'rubygems'
require 'nokogiri'
require 'open-uri'
require 'json'
require 'csv'

class Scrapper
  attr_reader :contacts

  def initialize(website_url) #définition des variables d'instance
    @website_url = website_url
    @region_pages = ["pas-de-calais.html", "nord.html", "nord-2.html", "nord-3.html","pas-de-calais-2.html", "pas-de-calais-3.html", "seine-maritime.html", "seine-maritime-2.html", "seine-maritime-3.html"]
    @town_urls = []
    @contacts = []

    get_all_the_contacts_of_region_townhalls #appel des méthodes qui vont scrapper les données et les mettre sont les fichiers JSON et CSV
  end

  def get_all_the_contacts_of_region_townhalls #récupère l'itération de get_the_email
    get_all_the_urls_of_region_townhalls
    @town_urls.each do |town_url|
      contact = get_the_email_of_a_townhal_from_its_webpage(town_url)
      @contacts << contact
    end
  @contacts.compact
  end

  def get_all_the_urls_of_region_townhalls #1 récupère l'url de chaque mairie
    @region_pages.each do |region_page|
      page = Nokogiri::HTML(open(@website_url + region_page))
      page.xpath("//a[@class = 'lientxt']/@href").each do |town|
        @town_urls << @website_url + town.text[2..-1]
      end
    end
  end

  def get_the_email_of_a_townhal_from_its_webpage(url) #2 récupèreation de sinformations sur la page de la mairie
    begin
      contact = {}
      page = Nokogiri::HTML(open(url))
      contact[:name] = page.xpath("/html/body/div/main/section[1]/div/div/div/p[1]/strong[1]/a").text
      contact[:email] = page.xpath("/html/body/div/main/section[2]/div/table/tbody/tr[4]/td[2]").text
      contact[:region] = page.xpath("/html/body/div/main/section[4]/div/table/tbody/tr[1]/td[2]").text
      contact
    rescue OpenURI::HTTPError => the_error
    end
  end


end

if __FILE__ == $0
  scrap = Scrapper.new("http://annuaire-des-mairies.com/")
  puts scrap.contacts
end
