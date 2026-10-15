class Modelcmp < Formula
  desc "Compare models, pick favorites, get recommendations"
  homepage "https://github.com/danctorres/modelcmp"
  license "MIT"

  base = "https://github.com/danctorres/modelcmp/releases/download/v0.1.2/modelcmp"
  on_macos do
    on_arm do
      url "#{base}-aarch64-apple-darwin-v0.1.2.tar.gz"
      sha256 "b5446acba33c81b866d2fa434c48243005d6fefc656641e201a6c06f3e1a423e"
    end
    on_intel do
      url "#{base}-x86_64-apple-darwin-v0.1.2.tar.gz"
      sha256 "3a5938dd9f98d6e7ab1169c397079f5a8fe3ff63c73d0d69bde620e36d983727"
    end
  end
  on_linux do
    on_arm do
      url "#{base}-aarch64-unknown-linux-musl-v0.1.2.tar.gz"
      sha256 "bc6e362bbb9dba61c50889a8da96e30112078cef8a3fa93c4de07f760d596d0f"
    end
    on_intel do
      url "#{base}-x86_64-unknown-linux-musl-v0.1.2.tar.gz"
      sha256 "62143587e1498ed7f96443339f5b03883fccead5e58ddd61dc01c88670b7c188"
    end
  end

  def install
    bin.install "modelcmp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/modelcmp --version")
  end
end
