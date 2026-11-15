class Modelcmp < Formula
  desc "Pick the AI model for each agent, by benchmarks and price"
  homepage "https://github.com/danctorres/modelcmp"
  license "MIT"

  base = "https://github.com/danctorres/modelcmp/releases/download/v0.4.0/modelcmp"
  on_macos do
    on_arm do
      url "#{base}-aarch64-apple-darwin-v0.4.0.tar.gz"
      sha256 "8c85b5527fac23dd596ae2811fe04ecc3c24edd0875fed84c7f870471a687ee5"
    end
    on_intel do
      url "#{base}-x86_64-apple-darwin-v0.4.0.tar.gz"
      sha256 "1bc03b8d9be62d118efbac46fa202cf05b1edfb268dbb31169a7deb820a1e0d0"
    end
  end
  on_linux do
    on_arm do
      url "#{base}-aarch64-unknown-linux-musl-v0.4.0.tar.gz"
      sha256 "0f3d7ba4543848c8e21055f71726c223c68292d6714323c8e82304ad165352ee"
    end
    on_intel do
      url "#{base}-x86_64-unknown-linux-musl-v0.4.0.tar.gz"
      sha256 "372c0825f3736b278b802763c4ff95ef3187da4b1ec8c353d7877ece1ffdb8f2"
    end
  end

  def install
    bin.install "modelcmp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/modelcmp --version")
  end
end
