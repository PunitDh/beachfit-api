require 'faker'
require 'factory_bot_rails'

module UserHelpers

  def create_user
    FactoryBot.create(:user, 
            email: "testemail@test.com", 
            password: "123456"
        )
  end

    def build_user
    FactoryBot.build(:user, 
            email: "testemail@test.com", 
            password: Faker::Internet.password
        )
  end

end