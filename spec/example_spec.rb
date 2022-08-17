describe "example" do 
  it 'example 1' do 
    fake = double :fake, greet: "Hello world!" #add a greet method that returns hello world
    expect(fake.greet).to eq "Hello world!"
  end
end 

#another syntax, same result
describe "example" do 
  it 'example 1' do 
    fake = double :fake
    allow(fake).to receive(:greet).with("Hello world!").and_return("Hello world!")
    expect(fake.greet("Hello world!")).to eq "Hello world!"
  end
end 

#can add another method, same result
describe "example" do 
  it 'example 1' do 
    fake = double :fake
    allow(fake).to receive(:greet).with("Hello world!", "hey").and_return("Hello world!","hey")
  end
end 


