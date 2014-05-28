require 'digest'

class User < ActiveRecord::Base

  email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+z/i

  attr_accessor :password
  attr_accessible :name, :email, :password, :password_confirmation

  validates(:name , :presence => true,
                    :lenght =>{
                            :maximum => 50
                    }
          )

  validates(:email , :presence => true,
            :uniqueness =>{
                :case_sensitive => false
            },
            :format =>{
                :with => email_regex
            }


  )

  validates(:password , :presence => true,
            :confirmation => true


  )
  before_save :encrypt_password

  #def has_password(submitted password)

end
