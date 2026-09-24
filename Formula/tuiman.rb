# Homebrew formula template. The release workflow fills in 0.3.1 and the
# @SHA256_<target>@ placeholders and pushes it to danctorres/homebrew-tap.
class Tuiman < Formula
  desc "Fast TUI to discover, install and manage TUIs"
  homepage "https://github.com/danctorres/tuiman"
  license "MIT"

  base = "https://github.com/danctorres/tuiman/releases/download/v0.3.1/tuiman"
  on_macos do
    on_arm do
      url "#{base}-aarch64-apple-darwin-v0.3.1.tar.gz"
      sha256 "7ec0c7833fbbaf522c8eb2e4bf71950daa3ffa9328e1f3a014c85fdf3cdf0825"
    end
    on_intel do
      url "#{base}-x86_64-apple-darwin-v0.3.1.tar.gz"
      sha256 "40341b63f30caf762b76312ded60bb994305db7be5877b9c3bb4efd3d44c6732"
    end
  end
  on_linux do
    on_arm do
      url "#{base}-aarch64-unknown-linux-musl-v0.3.1.tar.gz"
      sha256 "8e0cb97a6a30e187afb92a28c7769adedf3c32fb815e1860cefcbcb3973d2928"
    end
    on_intel do
      url "#{base}-x86_64-unknown-linux-musl-v0.3.1.tar.gz"
      sha256 "ead2d08427c3a158e5b22fb7832334bd9b947586a12050ec9b068d7a10e1698d"
    end
  end

  def install
    bin.install "tuiman"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tuiman --version")
  end
end
