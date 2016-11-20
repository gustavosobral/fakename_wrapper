module FakenameWrapper
  class Person
    attr_accessor :name, :cpf

    def initialize(params = {})
      @name = params[:name]
      @cpf = params[:cpf]
    end
  end
end
