class Peakmon < Formula
  desc "Real-time terminal system monitor for macOS"
  homepage "https://github.com/Kenbark42/peakmon"
  version "0.5.3"
  url "https://github.com/Kenbark42/peakmon/releases/download/v#{version}/peakmon-v#{version}-aarch64-apple-darwin.tar.gz"
  sha256 "97e062eae8cd1809ee2aa731095f27cf1383ce9ee2cfa5f25c75142b79306ae7"
  license "MIT"

  def install
    bin.install "peakmon"
  end

  test do
    assert_match "peakmon", shell_output("#{bin}/peakmon --version")
  end
end
