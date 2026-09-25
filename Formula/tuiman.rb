# Homebrew formula template. The release workflow fills in 0.4.2 and the
# @SHA256_<target>@ placeholders and pushes it to danctorres/homebrew-tap.
class Tuiman < Formula
  desc "Fast TUI to discover, install and manage TUIs"
  homepage "https://github.com/danctorres/tuiman"
  license "MIT"

  base = "https://github.com/danctorres/tuiman/releases/download/v0.4.2/tuiman"
  on_macos do
    on_arm do
      url "#{base}-aarch64-apple-darwin-v0.4.2.tar.gz"
      sha256 "2487a89b07814f0199c0f2d7fb90088d1014318219041123cf5dccea4cbed0c4"
    end
    on_intel do
      url "#{base}-x86_64-apple-darwin-v0.4.2.tar.gz"
      sha256 "555aaff14b0d4694d0b09261bef667d40efa21886031192b1298f7b7af0d7a18"
    end
  end
  on_linux do
    on_arm do
      url "#{base}-aarch64-unknown-linux-musl-v0.4.2.tar.gz"
      sha256 "84e2de99e264cf85996b60cf64663a9d13530283860494e55eeb93327e12e125"
    end
    on_intel do
      url "#{base}-x86_64-unknown-linux-musl-v0.4.2.tar.gz"
      sha256 "a1dde87bf7345a77b0c82c3459dfcdb98c7069744996f6f58d17a66c0f303d04"
    end
  end

  def install
    bin.install "tuiman"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tuiman --version")
  end
end
