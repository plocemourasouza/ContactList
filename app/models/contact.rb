class Contact < ApplicationRecord

  validates :name, :presence => true, :length => { :maximum => 50, :message => "Deve conter até 50 caracteres" } 
  validates :phone, :presence => true

  belongs_to :user

end
