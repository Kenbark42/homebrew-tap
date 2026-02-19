class Peakmon < Formula
  desc "Real-time terminal system monitor for macOS"
  homepage "https://github.com/Kenbark42/peakmon"
  version "0.5.1"
  url "https://github.com/Kenbark42/peakmon/releases/download/v#{version}/peakmon-v#{version}-aarch64-apple-darwin.tar.gz"
  sha256 "cb5de70b17a359401a2045270b209a46db7978bbc8aa53f6e2cea00a415de8c7"
  license "MIT"

  def install
    bin.install "peakmon"
  end

  test do
    assert_match "peakmon", shell_output("#{bin}/peakmon --version")
  end
end
