# Homebrew formula template. The release workflow fills in 0.5.0 and the
# @SHA256_<target>@ placeholders and pushes it to danctorres/homebrew-tap.
class Tuiman < Formula
  desc "Fast TUI to discover, install and manage TUIs"
  homepage "https://github.com/danctorres/tuiman"
  license "MIT"

  base = "https://github.com/danctorres/tuiman/releases/download/v0.5.0/tuiman"
  on_macos do
    on_arm do
      url "#{base}-aarch64-apple-darwin-v0.5.0.tar.gz"
      sha256 "6013589603cded1ac42a494bc9aaab88ba91b9c6ff7de30cd50c8e325324dd62"
    end
    on_intel do
      url "#{base}-x86_64-apple-darwin-v0.5.0.tar.gz"
      sha256 "e9a48b1ab4989f6855f008d5496c897233f2ebc5099f1d6bd2f9033563ac57ba"
    end
  end
  on_linux do
    on_arm do
      url "#{base}-aarch64-unknown-linux-musl-v0.5.0.tar.gz"
      sha256 "0ec9fddcf9ad2530d7bfc5c2c572f8fac7f9e1db63e349fe2f4eefcbc62f95b7"
    end
    on_intel do
      url "#{base}-x86_64-unknown-linux-musl-v0.5.0.tar.gz"
      sha256 "fd6d875b9d4cc41bbd647239ccc967fafa5f0112ce4e24c3368d2d0324c6d7f2"
    end
  end

  def install
    bin.install "tuiman"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tuiman --version")
  end
end
