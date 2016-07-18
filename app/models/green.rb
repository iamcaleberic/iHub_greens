class Green < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
   # has_paper_trail
   has_many :startups
   has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "logo-green.png"
   validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/

    after_create :send_welcome_email
  	def send_welcome_email
	  GreenMailer.welcome_email(self).deliver
 	end
end
