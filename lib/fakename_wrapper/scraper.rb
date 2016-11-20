module FakenameWrapper
  class Scraper
    def initialize(params={})
      @document = Nokogiri::HTML(open("http://www.fakenamegenerator.com/gen-#{params[:gender]}-#{params[:name_set]}-#{params[:country]}.php"))
    end

    def parse
      name = @document.xpath("//*[@id='details']/div[2]/div[2]/div/div[1]/h3").first.content
      cpf = @document.xpath("//*[@id='details']/div[2]/div[2]/div/div[2]/dl[2]/dd").first.content.gsub(/\s+/, '')
      
      FakenameWrapper::Person.new(name: name, cpf: cpf)
    end
  end
end
