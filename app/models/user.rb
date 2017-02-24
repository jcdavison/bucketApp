class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :photo_resources

  def as_json
    { id: id, email: email, name: name }
  end

  def photos
    photo_resources.where(deleted: false)
  end
end
