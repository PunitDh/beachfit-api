
require 'rails_helper'

RSpec.describe User, type: :model do
    it { is_expected.to be_a_kind_of(User) }
  describe "attributes" do
    it { is_expected.to respond_to :email }
  end
end