class Modelcmp < Formula
  desc "Pick the AI model for each agent, by benchmarks and price"
  homepage "https://github.com/danctorres/modelcmp"
  license "MIT"

  base = "https://github.com/danctorres/modelcmp/releases/download/v0.2.0/modelcmp"
  on_macos do
    on_arm do
      url "#{base}-aarch64-apple-darwin-v0.2.0.tar.gz"
      sha256 "4884854293e017f2560a52a5253db8bee71d165e2c28f9fb329f61efa5f44262"
    end
    on_intel do
      url "#{base}-x86_64-apple-darwin-v0.2.0.tar.gz"
      sha256 "4b8166640f25abc7059400f4fb5ca358f8e1d5ddc738ed22ae7ba48b0aca047e"
    end
  end
  on_linux do
    on_arm do
      url "#{base}-aarch64-unknown-linux-musl-v0.2.0.tar.gz"
      sha256 "aa5ffb9f2eaaca33a36998f086a28f4f12647966f87b8326cd16f49c83208354"
    end
    on_intel do
      url "#{base}-x86_64-unknown-linux-musl-v0.2.0.tar.gz"
      sha256 "2b5ab9af3945e39b07bef2d6f8e8bc89b92606c6ab8903469f6010c77ee9e1bc"
    end
  end

  def install
    bin.install "modelcmp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/modelcmp --version")
  end
end
