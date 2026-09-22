# Homebrew formula template. The release workflow fills in 0.1.0 and the
# @SHA256_<target>@ placeholders and pushes it to danctorres/homebrew-tap.
class Tuiman < Formula
  desc "Fast TUI to discover, install and manage TUIs"
  homepage "https://github.com/danctorres/tuiman"
  license "MIT"

  base = "https://github.com/danctorres/tuiman/releases/download/v0.1.0/tuiman"
  on_macos do
    on_arm do
      url "#{base}-aarch64-apple-darwin-v0.1.0.tar.gz"
      sha256 "7e106e5fd9b5a04055209acdaf9eadfad767f0bd9c6884972192529a57bd154b"
    end
    on_intel do
      url "#{base}-x86_64-apple-darwin-v0.1.0.tar.gz"
      sha256 "9172f719459a3ec21947c07f69abf3a99010c27c69c0a236f3c8e58356de635b"
    end
  end
  on_linux do
    on_arm do
      url "#{base}-aarch64-unknown-linux-musl-v0.1.0.tar.gz"
      sha256 "cad9606f2c54a7cc713b5f8b1b6ee3c5e10a7141cf5900599bcc8282d8c639f2"
    end
    on_intel do
      url "#{base}-x86_64-unknown-linux-musl-v0.1.0.tar.gz"
      sha256 "2d7b3f7c3870be3bbed8e94129be99ee2bbcb79fc5ab5398ec05e44d01d4a161"
    end
  end

  def install
    bin.install "tuiman"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tuiman --version")
  end
end
