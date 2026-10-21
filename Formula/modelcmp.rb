class Modelcmp < Formula
  desc "Compare models, pick favorites, get recommendations"
  homepage "https://github.com/danctorres/modelcmp"
  license "MIT"

  base = "https://github.com/danctorres/modelcmp/releases/download/v0.1.2/modelcmp"
  on_macos do
    on_arm do
      url "#{base}-aarch64-apple-darwin-v0.1.2.tar.gz"
      sha256 "7c6b9e9a0fd55d576e1ac57c6ae1b6d8bc8c94aa3dc7d4455aff48ebfbcdc5db"
    end
    on_intel do
      url "#{base}-x86_64-apple-darwin-v0.1.2.tar.gz"
      sha256 "8c252f06e25540210e5e0cf1784abdbb949d16cb69a41bc62487db194fef0a81"
    end
  end
  on_linux do
    on_arm do
      url "#{base}-aarch64-unknown-linux-musl-v0.1.2.tar.gz"
      sha256 "be2eece96818c1a32f0517dfbd977cb474c5e082162d7ce0fa454f1a198be7af"
    end
    on_intel do
      url "#{base}-x86_64-unknown-linux-musl-v0.1.2.tar.gz"
      sha256 "92cce0b1416a9eee760dab946be476216fb6f54584d29e526d31bbe7bcaf1cc1"
    end
  end

  def install
    bin.install "modelcmp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/modelcmp --version")
  end
end
