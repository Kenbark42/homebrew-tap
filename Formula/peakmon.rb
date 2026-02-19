class Peakmon < Formula
  desc "Real-time terminal system monitor for macOS"
  homepage "https://github.com/Kenbark42/peakmon"
  version "0.4.0"
  url "https://github.com/Kenbark42/peakmon/releases/download/v#{version}/peakmon-v#{version}-aarch64-apple-darwin.tar.gz"
  sha256 "e6d28ae6eff759a0b2ca45fdb78c2f632e710599520e6365c7f965346ecb96f4"
  license "MIT"

  def install
    bin.install "peakmon"
  end

  test do
    assert_match "peakmon", shell_output("#{bin}/peakmon --version")
  end
end
