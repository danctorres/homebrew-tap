class Modelcmp < Formula
  desc "Compare models, pick favorites, get recommendations"
  homepage "https://github.com/danctorres/modelcmp"
  license "MIT"

  base = "https://github.com/danctorres/modelcmp/releases/download/v0.1.2/modelcmp"
  on_macos do
    on_arm do
      url "#{base}-aarch64-apple-darwin-v0.1.2.tar.gz"
      sha256 "b0379002c422c633798e7c3a0fa40e1a9135d1e29329de628ff46ddf36a92902"
    end
    on_intel do
      url "#{base}-x86_64-apple-darwin-v0.1.2.tar.gz"
      sha256 "b4ef9f366059be06918edd4dddbd7d5192af62cb30b45d824b464b8a4529fca9"
    end
  end
  on_linux do
    on_arm do
      url "#{base}-aarch64-unknown-linux-musl-v0.1.2.tar.gz"
      sha256 "9d9752ab12a0db93265d7f56a4359970c87dc5f836384c2e548bc0d6bf85f9da"
    end
    on_intel do
      url "#{base}-x86_64-unknown-linux-musl-v0.1.2.tar.gz"
      sha256 "4dc2d6beeff9c0a8654acde5d9724e9908714c08b1659aa027e658706c7b9914"
    end
  end

  def install
    bin.install "modelcmp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/modelcmp --version")
  end
end
