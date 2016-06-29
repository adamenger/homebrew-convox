class Convox < Formula
  @version = File.read(File.expand_path("../VERSION", __FILE__)).chomp

  desc "Open-source PaaS on AWS"
  homepage "https://github.com/convox/rack"
  url "https://install.convox.com/osx.zip"
  sha256 File.read(File.expand_path("../SHA", __FILE__)).chomp
  version @version

  def install
    bin.install "convox" => "rv"
  end

  test do
    system "convox -h"
  end
end
