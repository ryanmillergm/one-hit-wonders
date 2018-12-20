require 'rails_helper'

RSpec.describe Cart do
  subject { Cart.new({"1" => 2, "3" => 5}) }

  it '.total_count' do
    expect(subject.total_count).to eq(7)
  end

  it '.add_song' do
    cart = Cart.new({"1" => 2, "3" => 5})
    cart.add_song(4)
    cart.add_song(5)

    expect(cart.contents).to eq({
      "1" => 2,
      "3" => 5,
      "4" => 1,
      "5" => 1
    })
  end
  
  it '.count_of' do
    cart = Cart.new({'1' => 2, '3' => 5})
    expect(cart.count_of(1)).to eq(2)
    expect(cart.count_of(3)).to eq(5)
    expect(cart.count_of(14)).to eq(0)
  end
end
