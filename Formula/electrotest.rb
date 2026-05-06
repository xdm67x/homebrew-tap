class Electrotest < Formula
  desc "CLI tool for testing Electron applications using Gherkin syntax"
  homepage "https://github.com/xdm67x/electrotest"
  version "0.4.0"

  on_macos do
    on_arm do
      url "https://github.com/xdm67x/electrotest/releases/download/v0.4.0/electrotest-macos-arm64.tar.gz"
      sha256 "3b3f9e7d42b838ff80ecaacf76fb8183741207f5dc8120aa3df6fde90e474868"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/xdm67x/electrotest/releases/download/v0.4.0/electrotest-linux-x64.tar.gz"
      sha256 "787ce7e117a530f19bc1d7d6b89198a4a52573c98330fb03bce79a596778d198"
    end
  end

  def install
    bin.install "electrotest"
  end

  test do
    system "#{bin}/electrotest", "--version"
  end
end
