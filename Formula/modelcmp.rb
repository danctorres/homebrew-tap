class Modelcmp < Formula
  desc "Compare models, pick favorites, get recommendations"
  homepage "https://github.com/danctorres/modelcmp"
  license "MIT"

  base = "https://github.com/danctorres/modelcmp/releases/download/v0.1.0/modelcmp"
  on_macos do
    on_arm do
      url "#{base}-aarch64-apple-darwin-v0.1.0.tar.gz"
      sha256 "43ff01e417c5821370eedeaf6d4ab21464f38a19eafa8458584ec9666a160d29"
    end
    on_intel do
      url "#{base}-x86_64-apple-darwin-v0.1.0.tar.gz"
      sha256 "7e463ac1653eb55a4861ea7447d8e6f22a7abde7deffbfc3f88e2fe5bef1b9e6"
    end
  end
  on_linux do
    on_arm do
      url "#{base}-aarch64-unknown-linux-musl-v0.1.0.tar.gz"
      sha256 "a101ed6b05ea8d383ddcd94d3b1e9b265c2101164320f42db072cb842ce9f73d"
    end
    on_intel do
      url "#{base}-x86_64-unknown-linux-musl-v0.1.0.tar.gz"
      sha256 "c5551bf3d20b841a5f708f21df1adf54842e66d6bcbd77c9bf2f3dc3c391f75c"
    end
  end

  def install
    bin.install "modelcmp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/modelcmp --version")
  end
end
