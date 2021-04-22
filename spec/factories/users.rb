FactoryBot.define do
  factory :user do
    sequence(:name) { |c| "User#{c}"}
    sequence(:email){ |n| "user#{n}@mail.com"}
    phone {'999876543'}
    avatar {Rack::Test::UploadedFile.new(Rails.root.join("spec/support/test-avatar.png"), "image/png")}
    password {"123456"}
  end
end