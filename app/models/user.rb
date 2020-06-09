class User < ApplicationRecord
  has_many :user_stocks
  has_many :stocks, through: :user_stocks
  has_many :friendships
  has_many :friends, through: :friendships
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def stock_already_tracked?(ticker_symbol)
    stock = Stock.check_db(ticker_symbol)
    return false if stock == nil
    stocks.where(id: stock.id).exists?
  end
  
  def under_stock_limit?
    stocks.count < 10
  end

  def can_track_stocks?(ticker_symbol)
    under_stock_limit? && !stock_already_tracked?(ticker_symbol)  
  end

  def full_name
    "#{first_name} #{last_name}"    
  end

  def self.search(params)
    params.strip!
    send_back = (email_matches(params) + first_name_matches(params) + last_name_matches(params)).uniq
  end

  def self.first_name_matches(params)
    matches('first_name',  params)
  end

  def self.last_name_matches(params)
    matches('last_name',  params)
  end

  def self.email_matches(params)
    matches('email',  params)
  end

  def self.matches(key , params)
    where("#{key} like ?", "%#{params}%")
  end

  def except_current_user(users)
    users.reject { |user| user.id == self.id }
  end

  def not_friends_with?(not_friends)
    self.friends.where(friend_id: not_friends) 
  end
end
