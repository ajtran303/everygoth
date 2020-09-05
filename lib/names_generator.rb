require "faker"

class NamesGenerator
  def self.sample
    names = [ Faker::Name.feminine_name,
              Faker::Name.neutral_first_name,
              Faker::Name.masculine_name ]
    names.sample
  end
end
