class Modelcmp < Formula
  desc "Compare models, pick favorites, get recommendations"
  homepage "https://github.com/danctorres/modelcmp"
  license "MIT"

  base = "https://github.com/danctorres/modelcmp/releases/download/v0.1.0/modelcmp"
  on_macos do
    on_arm do
      url "#{base}-aarch64-apple-darwin-v0.1.0.tar.gz"
      sha256 "9b3ccdb69b2cdee27a9df8623c7147c4df856b00b174fdf081ce5fdc88f62299"
    end
    on_intel do
      url "#{base}-x86_64-apple-darwin-v0.1.0.tar.gz"
      sha256 "fad364342645daa5bbfc7fd22ca93a14efdecd6aeea588ddba021a9a5864553b"
    end
  end
  on_linux do
    on_arm do
      url "#{base}-aarch64-unknown-linux-musl-v0.1.0.tar.gz"
      sha256 "925e0bc70592103eca8eb2c6647439a5fa766eec0d8ba7c7b9e8de75a219b815"
    end
    on_intel do
      url "#{base}-x86_64-unknown-linux-musl-v0.1.0.tar.gz"
      sha256 "636500c2ec1db0a05129f6994afa27c2b6cf21c4e81538ca1ca0dadb6768a1ff"
    end
  end

  def install
    bin.install "modelcmp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/modelcmp --version")
  end
end
