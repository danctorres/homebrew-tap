# Homebrew formula template. The release workflow fills in 0.4.0 and the
# @SHA256_<target>@ placeholders and pushes it to danctorres/homebrew-tap.
class Tuiman < Formula
  desc "Fast TUI to discover, install and manage TUIs"
  homepage "https://github.com/danctorres/tuiman"
  license "MIT"

  base = "https://github.com/danctorres/tuiman/releases/download/v0.4.0/tuiman"
  on_macos do
    on_arm do
      url "#{base}-aarch64-apple-darwin-v0.4.0.tar.gz"
      sha256 "8835cadee96b48bdc813d8db2c241495417f4bda08f99ab827c46b18aa4a5dd8"
    end
    on_intel do
      url "#{base}-x86_64-apple-darwin-v0.4.0.tar.gz"
      sha256 "84a1517d86d464625e381acc675f0c539539a6d10a492582fbb607cc238de2d0"
    end
  end
  on_linux do
    on_arm do
      url "#{base}-aarch64-unknown-linux-musl-v0.4.0.tar.gz"
      sha256 "b0ac342972e660da0b321ab4bbeb82d21fee1dfd5e8295a763cae5ffb6b8f240"
    end
    on_intel do
      url "#{base}-x86_64-unknown-linux-musl-v0.4.0.tar.gz"
      sha256 "b372f178dde55e14d326db193463068ab1ae2484df22fc777980aaec8efbecae"
    end
  end

  def install
    bin.install "tuiman"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tuiman --version")
  end
end
