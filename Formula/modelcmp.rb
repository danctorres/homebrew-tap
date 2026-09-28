# Homebrew formula template. The release workflow fills in 0.1.0 and the
# @SHA256_<target>@ placeholders and pushes it to danctorres/homebrew-tap.
class Modelcmp < Formula
  desc "Pick the cheapest LLM that is good enough for the job"
  homepage "https://github.com/danctorres/modelcmp"
  license "MIT"

  base = "https://github.com/danctorres/modelcmp/releases/download/v0.1.0/modelcmp"
  on_macos do
    on_arm do
      url "#{base}-aarch64-apple-darwin-v0.1.0.tar.gz"
      sha256 "60709b9c068e9a2012fd3e433d696579291bb6ae45e62293a0e3be3383d59a45"
    end
    on_intel do
      url "#{base}-x86_64-apple-darwin-v0.1.0.tar.gz"
      sha256 "4675958cc12be836f7e2b35dd5df5cfe85258db76c518e51bb0bf8fe5fdede42"
    end
  end
  on_linux do
    on_arm do
      url "#{base}-aarch64-unknown-linux-musl-v0.1.0.tar.gz"
      sha256 "e15543dba1bf1639934485f238aadfcc258c690036b1be7db7dbfeaa0b6c6204"
    end
    on_intel do
      url "#{base}-x86_64-unknown-linux-musl-v0.1.0.tar.gz"
      sha256 "dfa5c53687c647a35d6c798f116e8599be13e0f901eff2f0e976763d8eebd63c"
    end
  end

  def install
    bin.install "modelcmp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/modelcmp --version")
  end
end
