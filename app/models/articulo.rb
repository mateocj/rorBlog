class Articulo < ApplicationRecord
  belongs_to :autor

  validates :titulo, presence: {:message => "no vacio"}
  validates :contenido, presence: {:message => "no vacio"}
  lenghth: {minimum: 50, message => "minimo 50"}
end
