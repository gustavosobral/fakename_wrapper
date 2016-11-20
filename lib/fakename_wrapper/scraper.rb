module FakenameWrapper
  class Scraper
    def initialize(params={})
      gender =    params[:gender]   || :random
      name_set =  params[:name_set] || :br
      country =   params[:country]  || :br

      @document = Nokogiri::HTML(open("http://www.fakenamegenerator.com/gen-#{gender}-#{name_set}-#{country}.php"))
    end

    def parse
      name = @document.xpath("//*[@id='details']/div[2]/div[2]/div/div[1]/h3").first.content
      ssn = @document.xpath("//*[@id='details']/div[2]/div[2]/div/div[2]/dl[2]/dd").first.content.gsub(/\s+/, '')
      addr = @document.xpath("//*[@id='details']/div[2]/div[2]/div/div[1]/div").to_s.split('<br>')

      addr[0].slice! "<div class=\"adr\">\n"
      addr[2].slice! "</div>"
      street = addr[0].gsub(/  /, '')
      location = addr[1]
      zip = addr[2].gsub(/\s+/, '')

      FakenameWrapper::Person.new(name: name, ssn: ssn, street: street, location: location, zip: zip)
    end
  end
end
