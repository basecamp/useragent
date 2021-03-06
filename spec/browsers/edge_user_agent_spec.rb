require 'user_agent'

shared_examples_for "Edge browser" do
  it "should return 'Edge' as its browser" do
    expect(@useragent.browser).to eq("Edge")
  end

  it "should return 'Windows' as its platform" do
    expect(@useragent.platform).to eq("Windows")
  end
end

describe "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.135 Safari/537.36 Edge/12.10240" do
  before do
    @useragent = UserAgent.parse("Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.135 Safari/537.36 Edge/12.10240")
  end

  it_should_behave_like "Edge browser"

  it "should return '12.10240' as its version" do
    expect(@useragent.version).to eq("12.10240")
  end

  it "should return 'Windows 10' as its os" do
    expect(@useragent.os).to eq("Windows 10")
  end
end

describe "Mozilla/5.0 SHC; SHC-Unit-04973; SHC-HTS; SHC-KIOSK; SHC-MAC-0000 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2486.0 Safari/537.36 Edge/13.10586" do
  before do
    @useragent = UserAgent.parse("Mozilla/5.0 SHC; SHC-Unit-04973; SHC-HTS; SHC-KIOSK; SHC-MAC-0000 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2486.0 Safari/537.36 Edge/13.10586")
  end

  it_should_behave_like "Edge browser"

  it "should return '13.10586' as its version" do
    expect(@useragent.version).to eq("13.10586")
  end

  it "should return 'Windows 10' as its os" do
    expect(@useragent.os).to eq("Windows 10")
  end
end

describe "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36 Edg/81.0.100.0" do
  before do
    @useragent = UserAgent.parse("Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36 Edg/81.0.100.0")
  end

  it_should_behave_like "Edge browser"

  it "should return '81.0.100.0' as its version" do
    expect(@useragent.version).to eq("81.0.100.0")
  end

  it "should return 'Windows 10' as its os" do
    expect(@useragent.os).to eq("Windows 10")
  end
end

describe "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.74 Safari/537.36 Edg/79.0.309.43" do
  before do
    @useragent = UserAgent.parse("Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.74 Safari/537.36 Edg/79.0.309.43")
  end

  it_should_behave_like "Edge browser"

  it "should return '79.0.309.43' as its version" do
    expect(@useragent.version).to eq("79.0.309.43")
  end

  it "should return 'Windows 10' as its os" do
    expect(@useragent.os).to eq("Windows 10")
  end
end

describe "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36 Edg/81.0.416.77,gzip(gfe)" do
  before do
    @useragent = UserAgent.parse("Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36 Edg/81.0.416.77,gzip(gfe)")
  end

  it_should_behave_like "Edge browser"

  it "should return '81.0.416.77' as its version" do
    expect(@useragent.version).to eq("81.0.416.77")
  end

  it "should return 'Windows 10' as its os" do
    expect(@useragent.os).to eq("Windows 10")
  end
end
