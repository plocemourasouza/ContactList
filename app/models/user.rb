class User < ApplicationRecord

  has_secure_password

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i

  validates :name, :presence => true, :length => { :maximum => 50, :message => "Deve conter até 50 caracteres" } 
  validates :password, :length => { :minimum => 6, :message => "Deve conter pelo menos 6 caracteres" }
  validates :email, :presence => true, :length => { :maximum => 255, :message => "Deve conter até 255 caracteres" },
                                    :format => { with: VALID_EMAIL_REGEX },
                                    :uniqueness => { case_sensitive: true }

  has_many :contacts                                    


end
