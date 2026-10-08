class Modelcmp < Formula
  desc "Compare models, pick favorites, get recommendations"
  homepage "https://github.com/danctorres/modelcmp"
  license "MIT"

  base = "https://github.com/danctorres/modelcmp/releases/download/v0.1.0/modelcmp"
  on_macos do
    on_arm do
      url "#{base}-aarch64-apple-darwin-v0.1.0.tar.gz"
      sha256 "d04597d499a13d3887a74bceaf02c223567e274fb334dd4b81ee4630d356581d"
    end
    on_intel do
      url "#{base}-x86_64-apple-darwin-v0.1.0.tar.gz"
      sha256 "eedf5fa48130befed4aeea1bf1499a5245597cca23462c886a897a3d56bc1734"
    end
  end
  on_linux do
    on_arm do
      url "#{base}-aarch64-unknown-linux-musl-v0.1.0.tar.gz"
      sha256 "b342bbd4b436bee50c820c91bc454731910c49a90ec20c3b78336e81b26accf4"
    end
    on_intel do
      url "#{base}-x86_64-unknown-linux-musl-v0.1.0.tar.gz"
      sha256 "dbb1d699c7ebf2c95f1e4700871c0ee3eb51bfba26d6b2d72ea10e9d892ac0e3"
    end
  end

  def install
    bin.install "modelcmp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/modelcmp --version")
  end
end
