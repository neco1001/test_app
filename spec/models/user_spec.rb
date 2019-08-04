require 'rails_helper'

RSpec.describe User, type: :model do
  describe '#save' do
    let(:user) { build(:user)}
    it { expect(user.save).to be_truthy }
  end

  describe 'バリデーション' do
    describe 'name' do
      let(:user) { build(:user, name: nil)}
      it { expect(user.valid?).to be_falsey }
    end
  end
end
