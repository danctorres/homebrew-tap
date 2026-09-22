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
      sha256 "706e61dc75824b414cb3dfdaaa835d3cf70b4892018ecbb2de478bb5235b2432"
    end
    on_intel do
      url "#{base}-x86_64-apple-darwin-v0.1.0.tar.gz"
      sha256 "7fd307587f67731a2ab8df759f42c569989f83a336b2d5e36749e0f9d5a3b0db"
    end
  end
  on_linux do
    on_arm do
      url "#{base}-aarch64-unknown-linux-musl-v0.1.0.tar.gz"
      sha256 "9902b8687a59142c4e9c88f9ee3b389efb81a4009d46d26fdd494fd92889d575"
    end
    on_intel do
      url "#{base}-x86_64-unknown-linux-musl-v0.1.0.tar.gz"
      sha256 "1495f6258d29df10ff201c45a486398128e60e48e7d604522374f6ae36a4a4d7"
    end
  end

  def install
    bin.install "tuiman"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tuiman --version")
  end
end
