class Modelcmp < Formula
  desc "Compare models, pick favorites, get recommendations"
  homepage "https://github.com/danctorres/modelcmp"
  license "MIT"

  base = "https://github.com/danctorres/modelcmp/releases/download/v0.1.1/modelcmp"
  on_macos do
    on_arm do
      url "#{base}-aarch64-apple-darwin-v0.1.1.tar.gz"
      sha256 "9a22be4d09c43c7ec11a4cca0397b44ffe1b9de6b8228cc4a4963df28c2b42d4"
    end
    on_intel do
      url "#{base}-x86_64-apple-darwin-v0.1.1.tar.gz"
      sha256 "cdcdaae7200574a7fae8de3f086e9c020b98608d47c47021384bb4d564a67335"
    end
  end
  on_linux do
    on_arm do
      url "#{base}-aarch64-unknown-linux-musl-v0.1.1.tar.gz"
      sha256 "1bcac469718aba2a0b7e404074eecb6e86ff6aedc934bb3aa491a7ace6411d30"
    end
    on_intel do
      url "#{base}-x86_64-unknown-linux-musl-v0.1.1.tar.gz"
      sha256 "38158cf33b986e35a5a4b8e199a0be87ed036913b2fa94ddf8ef4aa6d2f86a9b"
    end
  end

  def install
    bin.install "modelcmp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/modelcmp --version")
  end
end
