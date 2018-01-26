class User < ApplicationRecord

  has_many :jobs

  validates :username, :email, presence: true, uniqueness: true
  validates :username, length: { maximum: 150 }

  # before_validation :fill_email
  #
  # private
  #
  # def fill_email
  #   self.email = 'toto@toto.com'
  # end

end
