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
      sha256 "563e359c8d2d9c3afcad5a8caaf0e2ec3237fc889589b9752c89aab80fabae26"
    end
    on_intel do
      url "#{base}-x86_64-apple-darwin-v0.1.0.tar.gz"
      sha256 "2b505161301c2496e319b0b966f7f5fbcc27e3b1e572516e269173ad9abcc00c"
    end
  end
  on_linux do
    on_arm do
      url "#{base}-aarch64-unknown-linux-musl-v0.1.0.tar.gz"
      sha256 "fcddd9bbe376def36f078cdec7227bbd6a0f932a17aa8668d12f693fd1668a18"
    end
    on_intel do
      url "#{base}-x86_64-unknown-linux-musl-v0.1.0.tar.gz"
      sha256 "5001acee0ff408a033c62b31d66e517e429532b8beff52e7d7f8df213f86a15c"
    end
  end

  def install
    bin.install "modelcmp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/modelcmp --version")
  end
end
