# Homebrew formula template. The release workflow fills in 0.2.0 and the
# @SHA256_<target>@ placeholders and pushes it to danctorres/homebrew-tap.
class Tuiman < Formula
  desc "Fast TUI to discover, install and manage TUIs"
  homepage "https://github.com/danctorres/tuiman"
  license "MIT"

  base = "https://github.com/danctorres/tuiman/releases/download/v0.2.0/tuiman"
  on_macos do
    on_arm do
      url "#{base}-aarch64-apple-darwin-v0.2.0.tar.gz"
      sha256 "8251e972f2d315d31fbafa2a2e17d8d68b7ad3eab98cbdfacca0f416bd497c7c"
    end
    on_intel do
      url "#{base}-x86_64-apple-darwin-v0.2.0.tar.gz"
      sha256 "7c786651d454a993888f38987b5292387ed9fb7f3b74c95458bafd657b44a3c2"
    end
  end
  on_linux do
    on_arm do
      url "#{base}-aarch64-unknown-linux-musl-v0.2.0.tar.gz"
      sha256 "a7b2c81bf26497b88e6252e18744d4eba3b2be77739e8a8508d2756226a85e82"
    end
    on_intel do
      url "#{base}-x86_64-unknown-linux-musl-v0.2.0.tar.gz"
      sha256 "107a7d9244c737791d22d52c6966b8926e03385fb8fb50204dbb7b4936589733"
    end
  end

  def install
    bin.install "tuiman"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tuiman --version")
  end
end
