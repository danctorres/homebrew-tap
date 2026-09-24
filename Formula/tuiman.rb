# Homebrew formula template. The release workflow fills in 0.4.1 and the
# @SHA256_<target>@ placeholders and pushes it to danctorres/homebrew-tap.
class Tuiman < Formula
  desc "Fast TUI to discover, install and manage TUIs"
  homepage "https://github.com/danctorres/tuiman"
  license "MIT"

  base = "https://github.com/danctorres/tuiman/releases/download/v0.4.1/tuiman"
  on_macos do
    on_arm do
      url "#{base}-aarch64-apple-darwin-v0.4.1.tar.gz"
      sha256 "03396d96bd7b20cdf819f4db6fef30889386957765fc541ef9274d518571a744"
    end
    on_intel do
      url "#{base}-x86_64-apple-darwin-v0.4.1.tar.gz"
      sha256 "8a494fa92a217d94c9edc8fca0312aa9a3c3b3e81cab52a91cfee9778b45faf3"
    end
  end
  on_linux do
    on_arm do
      url "#{base}-aarch64-unknown-linux-musl-v0.4.1.tar.gz"
      sha256 "56f4344495219dd0a4f85293cd2e491a15bf7c141e0a8332b95e1c4526b166ee"
    end
    on_intel do
      url "#{base}-x86_64-unknown-linux-musl-v0.4.1.tar.gz"
      sha256 "db924121ab3ada68f28fa21496b641de9a3ae32d0df7c53cb366373fb9354be7"
    end
  end

  def install
    bin.install "tuiman"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tuiman --version")
  end
end
