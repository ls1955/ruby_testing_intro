# frozen_string_literal: false

require './lib/dog'

RSpec.describe Dog do
  describe '#bark' do
    it 'returns "Woof!"' do
      expect(subject.bark).to eql('Woof!')
    end
  end

  describe '#feed' do
    subject { described_class.new(hunger_level: 7) }

    it 'is no longer hungry' do
      subject.feed
      expect(subject).to_not be_hungry
    end
  end

  describe '#hungry?' do
    context 'when hunger_level is more than 5' do
      subject { described_class.new(hunger_level: 7) }

      it 'returns true if hunger_level is more than 5' do
        expect(subject).to be_hungry
      end
    end

    context 'when hunger_level is less than 5' do
      subject { described_class.new(hunger_level: 5) }

      it 'returns false if hunger_level is 5 or less' do
        expect(subject).to_not be_hungry
      end
    end
  end
end
