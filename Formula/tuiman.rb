# Homebrew formula template. The release workflow fills in 0.1.1 and the
# @SHA256_<target>@ placeholders and pushes it to danctorres/homebrew-tap.
class Tuiman < Formula
  desc "Fast TUI to discover, install and manage TUIs"
  homepage "https://github.com/danctorres/tuiman"
  license "MIT"

  base = "https://github.com/danctorres/tuiman/releases/download/v0.1.1/tuiman"
  on_macos do
    on_arm do
      url "#{base}-aarch64-apple-darwin-v0.1.1.tar.gz"
      sha256 "eb87cbf5500bc4462243c019b9fbc9a33804f0c0146c705cdb1513eabe4969a0"
    end
    on_intel do
      url "#{base}-x86_64-apple-darwin-v0.1.1.tar.gz"
      sha256 "9bee565d82dea53fc84d93f23dd6e4778933011ead3ebe22e7269f2c422e300f"
    end
  end
  on_linux do
    on_arm do
      url "#{base}-aarch64-unknown-linux-musl-v0.1.1.tar.gz"
      sha256 "9dbf96a7881e809434269c74598b5ef6a6e1beef2aa8e5b0777764dde46d38a6"
    end
    on_intel do
      url "#{base}-x86_64-unknown-linux-musl-v0.1.1.tar.gz"
      sha256 "fa480b134471ff876f8273b44ace6c9761d28e32a9ef81be07467479bdaf8f10"
    end
  end

  def install
    bin.install "tuiman"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tuiman --version")
  end
end
