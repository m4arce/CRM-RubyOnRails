class Prospect < ApplicationRecord
  belongs_to :status
  belongs_to :user
  has_many :conversations, dependent: :destroy
  validates :nombre, :apellido, :email, presence: { message: "El campo debe existir" }
end
