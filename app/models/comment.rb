class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
  validates :user_id, presence: true
  validates :post_id, presence: true

  accepts_nested_attributes_for :user, reject_if: proc { |attributes| attributes['username'].blank?}

  def user_attributes=(user_attributes)
    @user = User.find_or_create_by(user_attribute) 
  end
end
