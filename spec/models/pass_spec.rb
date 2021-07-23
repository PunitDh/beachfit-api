require 'rails_helper'

RSpec.describe Item, type: :model do
  it { is_expected.to be_a_kind_of(Pass) }
  describe "attributes" do
    it { is_expected.to respond_to :name }
    it { should respond_to :total_cost }
    it { should respond_to :class_cost }
  end
end