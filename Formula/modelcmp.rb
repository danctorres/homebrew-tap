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
      sha256 "3654ecc8540fc9ff1a0755205553b787432a5f084e21eb1ce328421af28d0b5f"
    end
    on_intel do
      url "#{base}-x86_64-apple-darwin-v0.1.0.tar.gz"
      sha256 "1088525a11b037b449d1754e7f855a8cf61aa7289a1052ecb91edc10433efd58"
    end
  end
  on_linux do
    on_arm do
      url "#{base}-aarch64-unknown-linux-musl-v0.1.0.tar.gz"
      sha256 "cafa3b45577da9dd4497a9ccf5eae945be61ac8d9f2c0957a4c83c308331eebd"
    end
    on_intel do
      url "#{base}-x86_64-unknown-linux-musl-v0.1.0.tar.gz"
      sha256 "a2998fb3124991f63c63e0377c2fad7ca9122e97c54c5cffa53f9e50c7fbb967"
    end
  end

  def install
    bin.install "modelcmp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/modelcmp --version")
  end
end
