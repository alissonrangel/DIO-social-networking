FactoryBot.define do
  factory :user do
    name { 'Alisson'}
    email {'alisson@mail.com'}
    phone {'999876543'}
    avatar {Rack::Test::UploadedFile.new(Rails.root.join("spec/support/test-avatar.png"), "image/png")}
    password {"123456"}
  end
end