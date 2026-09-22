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
      sha256 "7ad647d87b30af1c5d2dbdc51b1e0795dd62516d833174aa507fc31245516029"
    end
    on_intel do
      url "#{base}-x86_64-apple-darwin-v0.1.0.tar.gz"
      sha256 "91369f89e1587f52757dfe263d8b186230eee1238457f97776052cd92198a807"
    end
  end
  on_linux do
    on_arm do
      url "#{base}-aarch64-unknown-linux-musl-v0.1.0.tar.gz"
      sha256 "c22ff55f6f86129224d6ef454a9707fb479311008f4ef9c4be405e4fbd2d8ed8"
    end
    on_intel do
      url "#{base}-x86_64-unknown-linux-musl-v0.1.0.tar.gz"
      sha256 "1ae812f6b0f40bee9cc50421fa6fd2488829e6ab355c5b3d888c47bb5d5ecf21"
    end
  end

  def install
    bin.install "tuiman"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tuiman --version")
  end
end
