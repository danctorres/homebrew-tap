class Modelcmp < Formula
  desc "Compare models, pick favorites, get recommendations"
  homepage "https://github.com/danctorres/modelcmp"
  license "MIT"

  base = "https://github.com/danctorres/modelcmp/releases/download/v0.1.1/modelcmp"
  on_macos do
    on_arm do
      url "#{base}-aarch64-apple-darwin-v0.1.1.tar.gz"
      sha256 "db778e9e53ca53b232839173c6d600b8d2dc56f2c2ab3d11cf40e55aa8b470a9"
    end
    on_intel do
      url "#{base}-x86_64-apple-darwin-v0.1.1.tar.gz"
      sha256 "88687a121e8cf85ea7f94495c6ce0a57c0ac768fca36cb2b78f954832a92ad29"
    end
  end
  on_linux do
    on_arm do
      url "#{base}-aarch64-unknown-linux-musl-v0.1.1.tar.gz"
      sha256 "0e47d821e9c026175b2c217f94d9c1ebd735e863f75279cf4ed2d7dff2fc0b19"
    end
    on_intel do
      url "#{base}-x86_64-unknown-linux-musl-v0.1.1.tar.gz"
      sha256 "ebcd5b89fb6ea64515393a848735faaa59355c64d242eb68ccfe2d6761829ed9"
    end
  end

  def install
    bin.install "modelcmp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/modelcmp --version")
  end
end
