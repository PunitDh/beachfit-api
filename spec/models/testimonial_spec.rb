require 'rails_helper'

RSpec.describe Testimonial, type: :model do
  it { is_expected.to be_a_kind_of(Testimonial) }
  describe "attributes" do
    it { is_expected.to respond_to :name }
    it { should respond_to :body }
  end
end