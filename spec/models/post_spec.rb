require 'rails_helper'

RSpec.describe Post, type: :model do
  it { is_expected.to be_a_kind_of(Post) }
  describe "attributes" do
    it { is_expected.to respond_to :title }
    it { should respond_to :body }
  end
end