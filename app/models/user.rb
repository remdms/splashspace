class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :pools
  has_many :bookings
  has_many :saved_pools, dependent: :destroy
  
  validates :pseudo, presence: true, length: { minimum: 3 }, uniqueness: { case_sensitive: false }
  validates :first_name, presence: true
  validates :last_name, presence: true
  validate :first_name_and_last_name_must_be_different_from_pseudo
  has_one_attached :photo

  private

  def first_name_and_last_name_must_be_different_from_pseudo
    puts first_name.downcase
    puts pseudo.downcase
    if first_name.downcase == pseudo.downcase
      errors.add(:first_name, "must be different from your pseudo")
    elsif last_name.downcase == pseudo.downcase
      errors.add(:last_name, "must be different from your pseudo")
    end
  end
end
