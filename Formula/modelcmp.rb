class Modelcmp < Formula
  desc "Compare models, pick favorites, get recommendations"
  homepage "https://github.com/danctorres/modelcmp"
  license "MIT"

  base = "https://github.com/danctorres/modelcmp/releases/download/v0.1.0/modelcmp"
  on_macos do
    on_arm do
      url "#{base}-aarch64-apple-darwin-v0.1.0.tar.gz"
      sha256 "c8334fe227ccb9a69bdb9a16c84f10887a4b0248f97736be82a4aa51ec409de4"
    end
    on_intel do
      url "#{base}-x86_64-apple-darwin-v0.1.0.tar.gz"
      sha256 "b7bc8bd6e49bd5f5f68ccd968e4ebcd6f39f0c7c0609986ed43edaddb6c29ec3"
    end
  end
  on_linux do
    on_arm do
      url "#{base}-aarch64-unknown-linux-musl-v0.1.0.tar.gz"
      sha256 "dd4f9915fa75e645f150fcaf1f39b7dc987e87e7dbb4cb7240724dcb4b2f277e"
    end
    on_intel do
      url "#{base}-x86_64-unknown-linux-musl-v0.1.0.tar.gz"
      sha256 "2aeb1a01ff0d55657a28574b7330fe13646e90e6f3212b480f92d0dd2dce7716"
    end
  end

  def install
    bin.install "modelcmp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/modelcmp --version")
  end
end
