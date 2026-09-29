# Homebrew formula template. The release workflow fills in 0.1.0 and the
# @SHA256_<target>@ placeholders and pushes it to danctorres/homebrew-tap.
class Modelcmp < Formula
  desc "Compare models, get recommendations or choose one per task"
  homepage "https://github.com/danctorres/modelcmp"
  license "MIT"

  base = "https://github.com/danctorres/modelcmp/releases/download/v0.1.0/modelcmp"
  on_macos do
    on_arm do
      url "#{base}-aarch64-apple-darwin-v0.1.0.tar.gz"
      sha256 "b74e515de86dd0d46f5d230981bf381103831b739babb85d28ca4b11cfe0ffef"
    end
    on_intel do
      url "#{base}-x86_64-apple-darwin-v0.1.0.tar.gz"
      sha256 "1e4c8472be6d891b69a7dc3a5eb45546d2b77ed29ab7301083003e8b63328b4f"
    end
  end
  on_linux do
    on_arm do
      url "#{base}-aarch64-unknown-linux-musl-v0.1.0.tar.gz"
      sha256 "2d74974cbeb6430ba694d7b7d2e2533c30007f1d4b04414996ab01f71889e389"
    end
    on_intel do
      url "#{base}-x86_64-unknown-linux-musl-v0.1.0.tar.gz"
      sha256 "b0a54c4676a026d38583bdbb75e7b29e690fe42f98527a91dfcc4a7292b5c1dc"
    end
  end

  def install
    bin.install "modelcmp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/modelcmp --version")
  end
end
