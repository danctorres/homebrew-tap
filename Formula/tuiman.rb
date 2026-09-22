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
      sha256 "60358f0d67e7b492ecef08395ceabf6eba2b8176fc046b588fd8d35319a0ac41"
    end
    on_intel do
      url "#{base}-x86_64-apple-darwin-v0.1.1.tar.gz"
      sha256 "096ae73369af5dfe98d416bf93f4776dbf24df09fd6be3918e48a0056535f583"
    end
  end
  on_linux do
    on_arm do
      url "#{base}-aarch64-unknown-linux-musl-v0.1.1.tar.gz"
      sha256 "8730ce563cda3f8718cbfde9cecb2a0a5a4d668893b9942a477b6ee8ad4d3d73"
    end
    on_intel do
      url "#{base}-x86_64-unknown-linux-musl-v0.1.1.tar.gz"
      sha256 "4d958bbfef780f2706ecc811ce7bcd5103f8f1b0ff3051a82dd5422277f4233c"
    end
  end

  def install
    bin.install "tuiman"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tuiman --version")
  end
end
