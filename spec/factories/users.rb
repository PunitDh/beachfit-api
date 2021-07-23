FactoryBot.define do
    factory :user do
        email {"test@test.com"}
        password {"qwerty"}
        password_confirmation {"qwerty"}
        role { "Admin"}
    end

    
    factory :plan do
        name {"Abc"}
    end

    factory :pass do
        name {"Def"}
    end
end