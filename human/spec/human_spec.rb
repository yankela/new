require './human.rb'

describe Human do
  context "before breakfast" do
    let(:human) do
      Human.new
    end

    it 'should be hungry' do
      # given: a human
      # when: it's before breakfast
      # nil
      # then: it should be hungry
      expect(human.tummy).to eq('hungry')
    end
    it 'should be sleepy' do
      # given: a new human
      # when: before breakfast
      # nil
      # then: should be sleepy
      expect(human.state).to eq('sleepy')
    end
  end

  context 'after drinking coffee' do

    # before(:each) do
    #   @human = Human.new
    #   @human.get_coffee
    # end
    let(:human) do
      human = Human.new
      human.get_coffee
      human
    end

    it 'should be awake' do
      # given: a new human
      # when: has had coffee
      # then: it should be awake
      expect(human.state).to eq('awake')
    end

    it 'should not be hungry' do
      # given: a new human
      # when: had coffee
      # then: shouldn't be hungry
      expect(human.tummy).to_not eq('hungry')
    end
  end
end
