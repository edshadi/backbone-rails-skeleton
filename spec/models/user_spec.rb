require 'spec_helper'

describe User do
  context "associations" do
    it { should have_many :created_with_yous }
  end
  context "validations" do
    subject { create :user }
    it { should validate_presence_of :name }
    it { should validate_presence_of :email }
    it { should validate_presence_of :password }
  end
end
