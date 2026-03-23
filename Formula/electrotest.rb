class Electrotest < Formula
  desc "CLI tool for testing Electron applications using Gherkin syntax"
  homepage "https://github.com/xdm67x/electrotest"
  version "0.2.0"

  on_macos do
    on_arm do
      url "https://github.com/xdm67x/electrotest/releases/download/v0.2.0/electrotest-macos-arm64.tar.gz"
      sha256 "ca8d738f6c91078e9a5961c51b949dac2b39948fb892e2f55dab82edf3757f3d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/xdm67x/electrotest/releases/download/v0.2.0/electrotest-linux-x64.tar.gz"
      sha256 "10ddca30e064d601f827b235d2a9c6de8dd75d1a59c6490b865f2b4cdcf2cbd1"
    end
  end

  def install
    bin.install "electrotest"
  end

  test do
    system "#{bin}/electrotest", "--version"
  end
end
