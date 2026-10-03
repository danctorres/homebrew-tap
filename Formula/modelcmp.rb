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
      sha256 "aead1f93dffe6cf983a743250faa84e883761e577ddf23cd5011e4bdb8af9a0d"
    end
    on_intel do
      url "#{base}-x86_64-apple-darwin-v0.1.0.tar.gz"
      sha256 "078532bd73fa3c2ef0a90e16c6247048c2dcdb485fad67c4a5c2e25ec7072d97"
    end
  end
  on_linux do
    on_arm do
      url "#{base}-aarch64-unknown-linux-musl-v0.1.0.tar.gz"
      sha256 "5d733fecf2f3e1254f781043ff914886dd12432b302e3b257fe4bb452cc003d9"
    end
    on_intel do
      url "#{base}-x86_64-unknown-linux-musl-v0.1.0.tar.gz"
      sha256 "625d45491d9f73227e5b2639d8b8c2978f180c3bc61a4e859384935b0ea5096d"
    end
  end

  def install
    bin.install "modelcmp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/modelcmp --version")
  end
end
