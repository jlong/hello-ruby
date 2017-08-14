require 'open3'

describe './hello.rb' do
  it "prints 'Hello world!'" do
    result = run "./hello.rb"
    expect(result[:output]).to eq("Hello world!\n")
    expect(result[:status]).to eq(0)
  end

  it "prints 'Hello John!'" do
    result = run "./hello.rb John"
    expect(result[:output]).to eq("Hello John!\n")
    expect(result[:status]).to eq(0)
  end

  it "prints 'Hello John Jacob Jingleheimer Schmidt!'" do
    result = run "./hello.rb 'John Jacob Jingleheimer Schmidt'"
    expect(result[:output]).to eq("Hello John Jacob Jingleheimer Schmidt!\n")
    expect(result[:status]).to eq(0)
  end

  it "errors gracefully with more than one parameter" do
    result = run "./hello.rb a b c"
    expect(result[:output]).to eq("hello: too many parameters\n")
    expect(result[:status]).to eq(256)
  end
end

def run(command)
  out, err, status = Open3.capture3(command)
  { output: out.to_s + err.to_s, status: status }
end
