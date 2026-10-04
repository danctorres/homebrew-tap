# Homebrew formula template. The release workflow fills in the version and the
# checksum placeholders and pushes it to danctorres/homebrew-tap.
class Modelcmp < Formula
  desc "Compare models, pick favorites, get recommendations"
  homepage "https://github.com/danctorres/modelcmp"
  license "MIT"

  base = "https://github.com/danctorres/modelcmp/releases/download/v0.1.0/modelcmp"
  on_macos do
    on_arm do
      url "#{base}-aarch64-apple-darwin-v0.1.0.tar.gz"
      sha256 "4e3e9a7d247ae47157d0152233061a231a9efa6bcca8fddfe0b88eedf1745595"
    end
    on_intel do
      url "#{base}-x86_64-apple-darwin-v0.1.0.tar.gz"
      sha256 "643e94874895f6cf0a261c85e2b4a60cb7afa98a3ea26ea9303e06b6849e7c28"
    end
  end
  on_linux do
    on_arm do
      url "#{base}-aarch64-unknown-linux-musl-v0.1.0.tar.gz"
      sha256 "0a488dbd6547caf0a3031ad3d9f9d9ff488fa3f19bfba90492b0410be3d0d136"
    end
    on_intel do
      url "#{base}-x86_64-unknown-linux-musl-v0.1.0.tar.gz"
      sha256 "b4d55892028ed5f19206764abbbf3b81e5e33fb0e0da53b9693a0e2de1d1236a"
    end
  end

  def install
    bin.install "modelcmp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/modelcmp --version")
  end
end
