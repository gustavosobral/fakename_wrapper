module FakenameWrapper
  class Scraper
    def initialize(params={})
      gender =    params[:gender]   || :random
      name_set =  params[:name_set] || :br
      country =   params[:country]  || :br

      @document = Nokogiri::HTML(open("http://www.fakenamegenerator.com/gen-#{gender}-#{name_set}-#{country}.php"))
    end

    # Parse the document
    def parse
      name = @document.xpath("//*[@id='details']/div[2]/div[2]/div/div[1]/h3").first.content
      ssn = @document.xpath("//*[@id='details']/div[2]/div[2]/div/div[2]/dl[2]/dd").first.content.split(' ')[0]
      phone = @document.xpath("//*[@id='details']/div[2]/div[2]/div/div[2]/dl[4]/dd/text()").to_s

      street, location, zip = parse_address

      FakenameWrapper::Person.new(name: name, ssn: ssn, street: street, location: location, zip: zip, phone: phone)
    end

    private

    # Parse the address document returning the street, location and zip code
    def parse_address
      addr = @document.xpath("//*[@id='details']/div[2]/div[2]/div/div[1]/div").to_s.split('<br>')
      addr[0].slice! "<div class=\"adr\">\n"
      street = addr[0].gsub(/  /, '')

      if addr[2]
        location = addr[1]
        addr[2].slice! "</div>"
        zip = addr[2].gsub(/\s+/, '')
      else
        addr[1].slice! "</div>"
        location = addr[1].gsub(/  /, '')
        zip = nil
      end

      return street, location, zip
    end
  end
end
