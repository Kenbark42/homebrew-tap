class Peakmon < Formula
  desc "Real-time terminal system monitor for macOS"
  homepage "https://github.com/Kenbark42/peakmon"
  version "0.5.0"
  url "https://github.com/Kenbark42/peakmon/releases/download/v#{version}/peakmon-v#{version}-aarch64-apple-darwin.tar.gz"
  sha256 "4c4048d61313611b22c448ccfe6b7ce4162838a6620f6786483ed9e6909d5d29"
  license "MIT"

  def install
    bin.install "peakmon"
  end

  test do
    assert_match "peakmon", shell_output("#{bin}/peakmon --version")
  end
end
