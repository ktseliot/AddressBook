require "./person.rb"
require 'yaml'
require 'pry'

class AddressBook
  attr_reader :address_book

  def initialize
    @address_book = []
  end

  def add(*person)
    @address_book << person.fullname
  end

  def load_yaml(file)
    data = YAML.load_file(file)
    counter = 0

    data["people"].each do |person|
      p = Person.new person["first_name"], person["surname"], person["dob"]

      person["emails"].each do |email|
       p.add_email(email)
      end

      person["phones"].each do |phone|
       p.add_phone(phone)
      end

      @address_book << p
    end
  end
end
