class Teacher < ApplicationRecord
  devise :database_authenticatable,
    :lockable,
    :recoverable,
    :registerable,
    :rememberable,
    :timeoutable,
    :trackable,
    :validatable
    # :confirmable
    # :omniauthable

  validates :first_name, :last_name, :info, presence: true

  def full_name
    "#{first_name} #{last_name}"
  end

  has_many :courses, dependent: :destroy
end
