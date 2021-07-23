require 'faker'
require 'factory_bot_rails'

module UserHelpers
  #Factory Bot creates user
  def create_user
    FactoryBot.build(:user, 
            email: "test@test.com", 
            password: "123456"
        )
  end

    #Provides attributes
    def build_user
    FactoryBot.build(:user, 
            email: "test@test.com", 
            password: Faker::Internet.password
        )
  end

end