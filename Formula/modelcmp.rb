# Homebrew formula template. The release workflow fills in 0.2.0 and the
# @SHA256_<target>@ placeholders and pushes it to danctorres/homebrew-tap.
class Modelcmp < Formula
  desc "Pick the cheapest LLM that is good enough for the job"
  homepage "https://github.com/danctorres/modelcmp"
  license "MIT"

  base = "https://github.com/danctorres/modelcmp/releases/download/v0.2.0/modelcmp"
  on_macos do
    on_arm do
      url "#{base}-aarch64-apple-darwin-v0.2.0.tar.gz"
      sha256 "9fe424baee754c64aba610a046310643c0063b3db3915fefdd5890e6965b5b4c"
    end
    on_intel do
      url "#{base}-x86_64-apple-darwin-v0.2.0.tar.gz"
      sha256 "f36b026b5538291dc7f86bb78a5ba4d119a595f393084ac632f371ff1967a332"
    end
  end
  on_linux do
    on_arm do
      url "#{base}-aarch64-unknown-linux-musl-v0.2.0.tar.gz"
      sha256 "436d7444c3248ed1d0d455a891ea8f930bf58866dfa2284a926bf1f71dd658a5"
    end
    on_intel do
      url "#{base}-x86_64-unknown-linux-musl-v0.2.0.tar.gz"
      sha256 "08bf55e46d8649a6e40cf957c3dcc4ccb19f3df51a511b082e5faf827f66475b"
    end
  end

  def install
    bin.install "modelcmp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/modelcmp --version")
  end
end
