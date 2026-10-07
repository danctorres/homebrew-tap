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
      sha256 "7acd2f5d3c29ff6a1e163262e0ff4828d1885b5442c9853d3e3fb3aafa84d6cc"
    end
    on_intel do
      url "#{base}-x86_64-apple-darwin-v0.1.0.tar.gz"
      sha256 "db614e1719e888eb29f4b29e47a07d4b7f8eabf71ca3079f1f1041a235d91cd4"
    end
  end
  on_linux do
    on_arm do
      url "#{base}-aarch64-unknown-linux-musl-v0.1.0.tar.gz"
      sha256 "841728c07387fce1219446418570b96944331fc78e12d1818103d88e0b04248f"
    end
    on_intel do
      url "#{base}-x86_64-unknown-linux-musl-v0.1.0.tar.gz"
      sha256 "b96858f9b4876acb935bc1eb2cc29cfb7912925c8fe094cbe4ccee51d878eb4b"
    end
  end

  def install
    bin.install "modelcmp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/modelcmp --version")
  end
end
