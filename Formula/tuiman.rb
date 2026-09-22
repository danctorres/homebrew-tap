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
      sha256 "b14c348434e77a7f19ee1563549fd65ee3adde95f8fd4d20d04e1ab8047bd310"
    end
    on_intel do
      url "#{base}-x86_64-apple-darwin-v0.1.1.tar.gz"
      sha256 "5c12576967d97288bb481745cd005c114dd0eb9126ab7af2e0e1ccefa9b3411d"
    end
  end
  on_linux do
    on_arm do
      url "#{base}-aarch64-unknown-linux-musl-v0.1.1.tar.gz"
      sha256 "fbc40fc7972417238aa6e20fc07e07a591b5a40b25f6e7dd0d810036243c9fd9"
    end
    on_intel do
      url "#{base}-x86_64-unknown-linux-musl-v0.1.1.tar.gz"
      sha256 "c32de943d606c1e4870a6dc466bd1101546574748b35f6ec6f4e1a01e7ce7164"
    end
  end

  def install
    bin.install "tuiman"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tuiman --version")
  end
end
