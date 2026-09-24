# Homebrew formula template. The release workflow fills in 0.3.0 and the
# @SHA256_<target>@ placeholders and pushes it to danctorres/homebrew-tap.
class Tuiman < Formula
  desc "Fast TUI to discover, install and manage TUIs"
  homepage "https://github.com/danctorres/tuiman"
  license "MIT"

  base = "https://github.com/danctorres/tuiman/releases/download/v0.3.0/tuiman"
  on_macos do
    on_arm do
      url "#{base}-aarch64-apple-darwin-v0.3.0.tar.gz"
      sha256 "8c144e6040351ca75dbe19bc49fb40029de0334f95c119c1f19e2b2549a08ac0"
    end
    on_intel do
      url "#{base}-x86_64-apple-darwin-v0.3.0.tar.gz"
      sha256 "47281a6cf8f53cecd73df598283a07da1dbe2ca6e44e63e2b887e5661657bc6e"
    end
  end
  on_linux do
    on_arm do
      url "#{base}-aarch64-unknown-linux-musl-v0.3.0.tar.gz"
      sha256 "55b0103ec12ad7cccbb4268ec71d02bb95a539e87f293a79eafe06cb859595bc"
    end
    on_intel do
      url "#{base}-x86_64-unknown-linux-musl-v0.3.0.tar.gz"
      sha256 "d24c1045c053796c2d5f4e5803ad40548b151523e84b3e7e9d4a10b34a266a69"
    end
  end

  def install
    bin.install "tuiman"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tuiman --version")
  end
end
