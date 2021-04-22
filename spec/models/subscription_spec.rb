require 'rails_helper'

RSpec.describe Subscription, type: :model do
  
  it "user can follow another user" do
    matt = FactoryBot.create(:user)
    puts(matt.name)
    bob = FactoryBot.create(:user)
    puts(bob.name)
    Subscription.create(followed: bob, followed_by: matt)  
  end
end
