RSpec.describe Libwebpay do
  it "has a version number" do
    expect(Libwebpay::VERSION).not_to be nil
  end

  it "has wires conected" do
    expect(Libwebpay.Webpay).to be_instance_of(Webpay)
    expect(Libwebpay.Configuration).to be_instance_of(Configuration)
  end
end
