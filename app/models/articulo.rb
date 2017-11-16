class Articulo < ApplicationRecord
  belongs_to :autor, optional: true
  has_many :comentarios, dependent: :destroy

  validates :titulo, presence: {:message => "no vacio"}
  validates :contenido, presence: {:message => "no vacio"}
  lenghth: {minimum: 50, message => "minimo 50"}
end
