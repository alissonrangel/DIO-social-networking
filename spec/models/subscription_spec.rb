require 'rails_helper'

RSpec.describe Subscription, type: :model do
  
  it "user can follow another user" do
    matt = FactoryBot.create(:user)    
    bob = FactoryBot.create(:user)
    dave = FactoryBot.create(:user)    
    Subscription.create(followed: bob, followed_by: matt)
    Subscription.create(followed: bob, followed_by: dave)
    Subscription.create(followed: dave, followed_by: bob)    

    expect(bob.followers.count).to eql 2
    expect(bob.followers).to include dave

    expect(matt.following.count).to eql 1
    expect(matt.following).to include bob

    expect(bob.following.count).to eql 1
    expect(bob.following).to_not include matt

    expect(matt.followers.count).to eql 0
    expect(matt.followers).to_not include bob
  end
end
