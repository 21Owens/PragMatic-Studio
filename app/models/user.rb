class User < ApplicationRecord
  has_many :favorites, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_many :favorite_movies, through: :favorites, source: :movie

  has_secure_password
  # before_save :downcase_username
  # before_save :downcase_email


  validates :name, presence: true
  validates :email, presence: true, format:{ with: /\S+@\S+/},
                    uniqueness: { case_sensitive: false }

  # validates :password, length: { minimum: 10 }


  scope :by_name, -> { order(:name) }
  scope :not_admins, -> { by_name.where(admin: false) }


def gravatar_id
  Digest::MD5::hexdigest(email.downcase)
end



# def downcase_username
#   self.user_name = username.downcase
# end

# def downcase_email
#   self.email = email.downcase
# end


end
