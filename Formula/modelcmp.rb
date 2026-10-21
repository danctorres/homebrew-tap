class Modelcmp < Formula
  desc "Compare models, pick favorites, get recommendations"
  homepage "https://github.com/danctorres/modelcmp"
  license "MIT"

  base = "https://github.com/danctorres/modelcmp/releases/download/v0.1.2/modelcmp"
  on_macos do
    on_arm do
      url "#{base}-aarch64-apple-darwin-v0.1.2.tar.gz"
      sha256 "fbf983615625b122aaffe33e247294e0bbcbab06b80e0b90d6ac9978dd2552f6"
    end
    on_intel do
      url "#{base}-x86_64-apple-darwin-v0.1.2.tar.gz"
      sha256 "409c8eb4905ea5c2d317dc916a803c9497ec1d53c42cc598c1f2dd3cfba8bc19"
    end
  end
  on_linux do
    on_arm do
      url "#{base}-aarch64-unknown-linux-musl-v0.1.2.tar.gz"
      sha256 "e8574732658b933c81ba6b02484fa8dd40c7dc1205d1a31ec3085e29161e4f29"
    end
    on_intel do
      url "#{base}-x86_64-unknown-linux-musl-v0.1.2.tar.gz"
      sha256 "2eb714941504a515da39138031128690e819fa8528c4c20ff4f67217d979afd8"
    end
  end

  def install
    bin.install "modelcmp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/modelcmp --version")
  end
end
