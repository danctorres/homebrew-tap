class Modelcmp < Formula
  desc "Compare models, pick favorites, get recommendations"
  homepage "https://github.com/danctorres/modelcmp"
  license "MIT"

  base = "https://github.com/danctorres/modelcmp/releases/download/v0.1.2/modelcmp"
  on_macos do
    on_arm do
      url "#{base}-aarch64-apple-darwin-v0.1.2.tar.gz"
      sha256 "74a72e357594085ef106666bb1da9975aafaf5113d3f2ba1a6e04bade4467c01"
    end
    on_intel do
      url "#{base}-x86_64-apple-darwin-v0.1.2.tar.gz"
      sha256 "5948aca03d5acc7a992a370232cd44b37d0226996460b74f62a7dbf262658e4b"
    end
  end
  on_linux do
    on_arm do
      url "#{base}-aarch64-unknown-linux-musl-v0.1.2.tar.gz"
      sha256 "fc8d4c3cb151c5d300c716cb11e234c24d35e815199ec77a4f3bb0eec87ad6e4"
    end
    on_intel do
      url "#{base}-x86_64-unknown-linux-musl-v0.1.2.tar.gz"
      sha256 "e74567eebf98c39bd16281da234af8d7df2c6c309f0a47e6b22ef8d53b77bb25"
    end
  end

  def install
    bin.install "modelcmp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/modelcmp --version")
  end
end
