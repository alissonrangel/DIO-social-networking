require 'rails_helper'

RSpec.describe Comment, type: :model do
  it "user comments on a post" do
    matt = FactoryBot.create(:user)    
    bob = FactoryBot.create(:user)

    post = FactoryBot.create(:post, user: matt)

    comment = FactoryBot.create(:comment, post: post, user: bob)
    
    expect(post.comments.count).to eql 1
    expect(post.comments.first.user).to eql bob

    expect(post.comments.first.body).to eql 'Que post legal.'
    expect(post.comments.first).to eql comment
  end

end
