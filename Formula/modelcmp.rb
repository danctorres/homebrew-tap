class Modelcmp < Formula
  desc "Compare models, pick favorites, get recommendations"
  homepage "https://github.com/danctorres/modelcmp"
  license "MIT"

  base = "https://github.com/danctorres/modelcmp/releases/download/v0.2.0/modelcmp"
  on_macos do
    on_arm do
      url "#{base}-aarch64-apple-darwin-v0.2.0.tar.gz"
      sha256 "ab4d03f472d0b81c1a439d41880b7c7d9bfa2eb302e4e48e3606036455284dd5"
    end
    on_intel do
      url "#{base}-x86_64-apple-darwin-v0.2.0.tar.gz"
      sha256 "ec9ee15aad1b9e8ecad4a15d16a94a4ec6d6d802d368ba52b9f3a086603356f3"
    end
  end
  on_linux do
    on_arm do
      url "#{base}-aarch64-unknown-linux-musl-v0.2.0.tar.gz"
      sha256 "35533bb0e5e504a030180aa1c984c959d703b2ce2db083fac9b01ab656ed4a4f"
    end
    on_intel do
      url "#{base}-x86_64-unknown-linux-musl-v0.2.0.tar.gz"
      sha256 "bc97224cf8560c65e5b608b9cde3da14933624db292bdfad222ef6cbcb49675a"
    end
  end

  def install
    bin.install "modelcmp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/modelcmp --version")
  end
end
