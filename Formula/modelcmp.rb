class Modelcmp < Formula
  desc "Pick the AI model for each agent, by benchmarks and price"
  homepage "https://github.com/danctorres/modelcmp"
  license "MIT"

  base = "https://github.com/danctorres/modelcmp/releases/download/v0.3.0/modelcmp"
  on_macos do
    on_arm do
      url "#{base}-aarch64-apple-darwin-v0.3.0.tar.gz"
      sha256 "343553f0046a89251313302454cc839ff73547b07a987eca9c2803ff543fb8da"
    end
    on_intel do
      url "#{base}-x86_64-apple-darwin-v0.3.0.tar.gz"
      sha256 "a2d32c375a020ef442e50147a4078d4eea9a5504fd0306f25efd0d49e5e99264"
    end
  end
  on_linux do
    on_arm do
      url "#{base}-aarch64-unknown-linux-musl-v0.3.0.tar.gz"
      sha256 "9552321cb001655de69564cd5710fa8485cef5ae8da5323fe2d2022ffbf416c1"
    end
    on_intel do
      url "#{base}-x86_64-unknown-linux-musl-v0.3.0.tar.gz"
      sha256 "bd9b605a3ab48993f10c243db798c66af966763325a598d4fcb9270932ea115b"
    end
  end

  def install
    bin.install "modelcmp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/modelcmp --version")
  end
end
