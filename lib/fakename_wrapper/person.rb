module FakenameWrapper
  class Person
    attr_accessor :name, :ssn, :street, :location, :zip, :phone

    def initialize(params = {})
      @name = params[:name]
      @ssn = params[:ssn]
      @street = params[:street]
      @location = params[:location]
      @zip = params[:zip]
      @phone = params[:phone]
    end

    def full_address
      "#{@street}, #{@location}, #{@zip}"
    end
  end
end
