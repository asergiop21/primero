class Precliente < ActiveRecord::Base
  attr_accessible :pr_apellido, :pr_domicilio, :pr_nombre
  validates :pr_nombre, presence: {message: 'no debe estar en blanco'}
end
