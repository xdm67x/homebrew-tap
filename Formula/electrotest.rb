class Electrotest < Formula
  desc "CLI tool for testing Electron applications using Gherkin syntax"
  homepage "https://github.com/xdm67x/electrotest"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/xdm67x/electrotest/releases/download/v0.1.0/electrotest-macos-arm64.tar.gz"
      sha256 "3c6c5a49a574a74e020aca2ea72614104a1a210aa23c49cffa87a4f18dded50e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/xdm67x/electrotest/releases/download/v0.1.0/electrotest-linux-x64.tar.gz"
      sha256 "39f948e4d5a42635696d59194b0fa539a8a64891203af6460adf1ba5eee87ade"
    end
  end

  def install
    bin.install "electrotest"
  end

  test do
    system "#{bin}/electrotest", "--version"
  end
end
