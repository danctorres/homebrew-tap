class Modelcmp < Formula
  desc "Pick the AI model for each agent, by benchmarks and price"
  homepage "https://github.com/danctorres/modelcmp"
  license "MIT"

  base = "https://github.com/danctorres/modelcmp/releases/download/v0.3.0/modelcmp"
  on_macos do
    on_arm do
      url "#{base}-aarch64-apple-darwin-v0.3.0.tar.gz"
      sha256 "f3c7bf51a25fac3ffc8aeb16d68cd2e098bee49d796b479791fbfaed6c4b4c17"
    end
    on_intel do
      url "#{base}-x86_64-apple-darwin-v0.3.0.tar.gz"
      sha256 "aad68a870732a28dc01268555b897f3e94a5d7072f6c8613c358fb1db01e0d2a"
    end
  end
  on_linux do
    on_arm do
      url "#{base}-aarch64-unknown-linux-musl-v0.3.0.tar.gz"
      sha256 "6fa792f770805e7df960474872383bcbb37e6412bbdd6543effb28214f50b44e"
    end
    on_intel do
      url "#{base}-x86_64-unknown-linux-musl-v0.3.0.tar.gz"
      sha256 "2c64902eae2f3b26ba0e387d1a5fff5b9cbbd5b9fc735baaf7d83d73a0323286"
    end
  end

  def install
    bin.install "modelcmp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/modelcmp --version")
  end
end
