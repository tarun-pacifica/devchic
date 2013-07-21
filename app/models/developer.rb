# == Schema Information
#
# Table name: developers
#
#  id       :integer          not null, primary key
#  name     :string(255)
#  chictype :string(255)
#  language :string(255)
#

class Developer < ActiveRecord::Base
  attr_accessible :name, :chictype, :language
  belongs_to :user
  has_many :styles #should this be plural or singular?
end
