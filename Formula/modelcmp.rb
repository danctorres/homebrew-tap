class Modelcmp < Formula
  desc "Pick the LLM for each agent, by benchmarks and price"
  homepage "https://github.com/danctorres/modelcmp"
  license "MIT"

  base = "https://github.com/danctorres/modelcmp/releases/download/v0.2.0/modelcmp"
  on_macos do
    on_arm do
      url "#{base}-aarch64-apple-darwin-v0.2.0.tar.gz"
      sha256 "4325805371c991aac8e89b0a1dd6ea0af97ffa0d317075617e1edca68c3612b8"
    end
    on_intel do
      url "#{base}-x86_64-apple-darwin-v0.2.0.tar.gz"
      sha256 "7ae0152209ec34e003e34ecd61d83f7a368e4f53c41bae031717c6521e246f6b"
    end
  end
  on_linux do
    on_arm do
      url "#{base}-aarch64-unknown-linux-musl-v0.2.0.tar.gz"
      sha256 "738aae4fab9019535e7c153a5e01d230b94fe1148e93fb9c98f3282645b4f896"
    end
    on_intel do
      url "#{base}-x86_64-unknown-linux-musl-v0.2.0.tar.gz"
      sha256 "efa304873d2a115d239f517e22867353c00d714524e6464ddf4586afdecb1f4d"
    end
  end

  def install
    bin.install "modelcmp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/modelcmp --version")
  end
end
