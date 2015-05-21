class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  ACTIVITIES = [ 'Activity low', 'Activity medium', 'Activity high' ]

  validates :height, :presence => true, :inclusion => { :in => 100..220, :message => "The height must be between 100 and 220" }
  validates :weight, :presence => true, :inclusion => { :in => 40..220, :message => "The weight must be between 40 and 220" }
  validates :age, :presence => true, :inclusion => { :in => 15..70, :message => "The age must be between 15 and 70" }

  validates_inclusion_of :gender, in: %w( 'Male', 'Female' )

  validates_inclusion_of :lifestyle, in: %w( 'Activity low', 'Activity medium', 'Activity high' )


end
