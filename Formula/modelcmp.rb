class Modelcmp < Formula
  desc "Pick the AI model for each agent, by benchmarks and price"
  homepage "https://github.com/danctorres/modelcmp"
  license "MIT"

  base = "https://github.com/danctorres/modelcmp/releases/download/v0.3.0/modelcmp"
  on_macos do
    on_arm do
      url "#{base}-aarch64-apple-darwin-v0.3.0.tar.gz"
      sha256 "abc931268f6fb65c4651538c810c099713c893176f5b5f84382aad65d50de0af"
    end
    on_intel do
      url "#{base}-x86_64-apple-darwin-v0.3.0.tar.gz"
      sha256 "6975abdd9ff2cf9a9beea6bddeabd9338ad745a69d2006ba437e5122494b4b57"
    end
  end
  on_linux do
    on_arm do
      url "#{base}-aarch64-unknown-linux-musl-v0.3.0.tar.gz"
      sha256 "5f290507fab0bc273851c9b7d0d9a7da4e8b6b9330e4b67b1677f7e1d5002db1"
    end
    on_intel do
      url "#{base}-x86_64-unknown-linux-musl-v0.3.0.tar.gz"
      sha256 "d9b54ad04371daf8248a706f1f4a132b99ccc1c6306d77642193b81231e4be8d"
    end
  end

  def install
    bin.install "modelcmp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/modelcmp --version")
  end
end
