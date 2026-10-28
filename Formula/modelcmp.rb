class Modelcmp < Formula
  desc "Pick the AI model for each agent, by benchmarks and price"
  homepage "https://github.com/danctorres/modelcmp"
  license "MIT"

  base = "https://github.com/danctorres/modelcmp/releases/download/v0.2.0/modelcmp"
  on_macos do
    on_arm do
      url "#{base}-aarch64-apple-darwin-v0.2.0.tar.gz"
      sha256 "5429b2f891e0234424b7896b4b1b8a4b1326a9f0a94e3f5eb81c34588a400778"
    end
    on_intel do
      url "#{base}-x86_64-apple-darwin-v0.2.0.tar.gz"
      sha256 "d3fef1e00d8690921fcb526afaf4334d1de04363a17d16ce3d5d4f887a2d813b"
    end
  end
  on_linux do
    on_arm do
      url "#{base}-aarch64-unknown-linux-musl-v0.2.0.tar.gz"
      sha256 "951e8dbefcf863ad065e9d9ff9e233e3cc1b4be1951f2cb599c4134b2f4fefe4"
    end
    on_intel do
      url "#{base}-x86_64-unknown-linux-musl-v0.2.0.tar.gz"
      sha256 "10fd1ef4558e12b224f27546bf7013aa17c2ed9e0a4ed008f513890f374b72d1"
    end
  end

  def install
    bin.install "modelcmp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/modelcmp --version")
  end
end
