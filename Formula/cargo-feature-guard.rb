class CargoFeatureGuard < Formula
  desc "Validate Cargo feature propagation, detect forbidden features, and find duplicate dependencies"
  homepage "https://github.com/xdm67x/cargo-feature-guard"
  version "0.5.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/xdm67x/cargo-feature-guard/releases/download/v0.5.1/cargo-feature-guard-aarch64-apple-darwin.tar.gz"
      sha256 "6c03672829e1ef739eaa55799ffe9f9e310eb64cd4d1f35cf01060e15a8cbbcb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/xdm67x/cargo-feature-guard/releases/download/v0.5.1/cargo-feature-guard-aarch64-unknown-linux-musl.tar.gz"
      sha256 "41690d45db5e530135fb5511b7d14578527a7351ae128679bcd8805acbf2de82"
    end
    on_intel do
      url "https://github.com/xdm67x/cargo-feature-guard/releases/download/v0.5.1/cargo-feature-guard-x86_64-unknown-linux-musl.tar.gz"
      sha256 "711451ed6975ae558b5c200b8f95137771a6c530529485a0b1ed82690de6f799"
    end
  end

  def install
    bin.install "cargo-feature-guard"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cargo-feature-guard --version")
  end
end
