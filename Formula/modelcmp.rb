class Modelcmp < Formula
  desc "Compare models, pick favorites, get recommendations"
  homepage "https://github.com/danctorres/modelcmp"
  license "MIT"

  base = "https://github.com/danctorres/modelcmp/releases/download/v0.1.1/modelcmp"
  on_macos do
    on_arm do
      url "#{base}-aarch64-apple-darwin-v0.1.1.tar.gz"
      sha256 "9b5f3f770c9cc7c742846cf8c68b0da372ec901b98df4fee68780de3d22d7502"
    end
    on_intel do
      url "#{base}-x86_64-apple-darwin-v0.1.1.tar.gz"
      sha256 "6cd9d9cbe8e9fe78bb1e62c02acb84c0e7b26e4a8f8d863fec4245478e12f734"
    end
  end
  on_linux do
    on_arm do
      url "#{base}-aarch64-unknown-linux-musl-v0.1.1.tar.gz"
      sha256 "023a18cc78432441189fb1954b57321013e069c3a18b02b08dcfc00c2ceca589"
    end
    on_intel do
      url "#{base}-x86_64-unknown-linux-musl-v0.1.1.tar.gz"
      sha256 "c1cd11a6cb50453715852d68daec68b2946750b922a2721cad2b2c7809cb7523"
    end
  end

  def install
    bin.install "modelcmp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/modelcmp --version")
  end
end
