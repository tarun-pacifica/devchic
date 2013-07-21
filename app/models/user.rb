# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  email           :string(255)
#  password_digest :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ActiveRecord::Base
has_secure_password
attr_accessible :name, :email, :password, :password_confirmation
has_many :developer, :inverse_of => :user
has_many :style, :inverse_of => :user
end
