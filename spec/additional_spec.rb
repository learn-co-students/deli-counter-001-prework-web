describe "Additional Tests" do
  it "gives a user a number based on when they enter the store" do
    line = []
    position = get_a_number(line)
    expect(position).to eq(1)
    expect(line).to eq([1])
  end

  it "knows how to take people off of the line" do
    line = []
    expect(get_a_number(line)).to eq(1)
    expect(get_a_number(line)).to eq(2)
    expect(serve_customer(line)).to eq(1)
    expect(line).to eq([2])
  end

  it "can deal with a busy store" do
    line = []
    expect(get_a_number(line)).to eq(1)
    expect(get_a_number(line)).to eq(2)

    expect(serve_customer(line)).to eq(1)

    expect(get_a_number(line)).to eq(3)
    expect(line).to eq([2,3])
  end

  it "can deal with a store's customer waves" do
    line = []
    get_a_number(line)
    get_a_number(line)
    serve_customer(line)
    serve_customer(line)
    expect(line).to eq([])
    # nothing for 3 hours

    get_a_number(line)
    get_a_number(line)
    expect(line).to eq([3,4])
  end
end