class Modelcmp < Formula
  desc "Pick the AI model for each agent, by benchmarks and price"
  homepage "https://github.com/danctorres/modelcmp"
  license "MIT"

  base = "https://github.com/danctorres/modelcmp/releases/download/v0.3.0/modelcmp"
  on_macos do
    on_arm do
      url "#{base}-aarch64-apple-darwin-v0.3.0.tar.gz"
      sha256 "337e732cc940b1b04181d5d0918e2e1b71baf5f1b4616b3bbaa9b9d91bfc11e2"
    end
    on_intel do
      url "#{base}-x86_64-apple-darwin-v0.3.0.tar.gz"
      sha256 "ded82d34b5c5de63c79de47a15d8c0dd929429e6db46b4d14ea014b1d30d9e33"
    end
  end
  on_linux do
    on_arm do
      url "#{base}-aarch64-unknown-linux-musl-v0.3.0.tar.gz"
      sha256 "ab87d8019aecc2187d5b85e29013ddfdcdbfa573065cc8763666b9b712148fdb"
    end
    on_intel do
      url "#{base}-x86_64-unknown-linux-musl-v0.3.0.tar.gz"
      sha256 "905c710b4d9437cd360303c652b9f0acd4da7e1bb36aaa9b97bbf345c5599406"
    end
  end

  def install
    bin.install "modelcmp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/modelcmp --version")
  end
end
