require 'rails_helper'

RSpec.describe Item, type: :model do
  it { is_expected.to be_a_kind_of(Item) }
  describe "attributes" do
    it { should respond_to :question }
    it { should respond_to :answer }
  end
end