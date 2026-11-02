class Modelcmp < Formula
  desc "Pick the AI model for each agent, by benchmarks and price"
  homepage "https://github.com/danctorres/modelcmp"
  license "MIT"

  base = "https://github.com/danctorres/modelcmp/releases/download/v0.3.0/modelcmp"
  on_macos do
    on_arm do
      url "#{base}-aarch64-apple-darwin-v0.3.0.tar.gz"
      sha256 "e1d70fefe03624d939a65882ea31ba334cfabd42e267da814f18d7cd2449f3f5"
    end
    on_intel do
      url "#{base}-x86_64-apple-darwin-v0.3.0.tar.gz"
      sha256 "3939453dc6c195eaa74b34642637d5a2c84a1decdbf6ec86ef299e2a8f5f7182"
    end
  end
  on_linux do
    on_arm do
      url "#{base}-aarch64-unknown-linux-musl-v0.3.0.tar.gz"
      sha256 "c0d9c530000cd5ede4346ada7088c7ff52d2eccef51fbffc3f27df4d40825f0c"
    end
    on_intel do
      url "#{base}-x86_64-unknown-linux-musl-v0.3.0.tar.gz"
      sha256 "5bc502472c940d76ddf51f964e058a381d37c1d91e1d8fa776e0a83bdbc12cc0"
    end
  end

  def install
    bin.install "modelcmp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/modelcmp --version")
  end
end
