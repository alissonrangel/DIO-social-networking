require 'rails_helper'

RSpec.describe Like, type: :model do
  
  it "user likes a post" do
    matt = FactoryBot.create(:user)    
    bob = FactoryBot.create(:user)
    dave = FactoryBot.create(:user)  
    
    post = FactoryBot.create(:post, user: dave)

    Like.create(user: bob, post: post)

    # Subscription.create(followed: bob, followed_by: matt)
     
    expect(post.likes.count).to eql 1
    expect(post.likes.first.user).to eql bob

    Like.create(user: matt, post: post)

    expect(post.likes.count).to eql 2
    expect(post.likes.last.user).to eql matt

    Like.find_by(post: post, user: bob).destroy

    expect(post.likes.count).to eql 1
    expect(post.likes.first.user).to eql matt
  end
end
