class Modelcmp < Formula
  desc "Compare models, pick favorites, get recommendations"
  homepage "https://github.com/danctorres/modelcmp"
  license "MIT"

  base = "https://github.com/danctorres/modelcmp/releases/download/v0.1.1/modelcmp"
  on_macos do
    on_arm do
      url "#{base}-aarch64-apple-darwin-v0.1.1.tar.gz"
      sha256 "a80da579d1b05eebc2bdec034aaec2675a96eeda54c44befd793168774c88a6b"
    end
    on_intel do
      url "#{base}-x86_64-apple-darwin-v0.1.1.tar.gz"
      sha256 "7cead61ebcf6d54ce9f066a70f20aa25a4ae72ef389ef9655565612fb0ac9947"
    end
  end
  on_linux do
    on_arm do
      url "#{base}-aarch64-unknown-linux-musl-v0.1.1.tar.gz"
      sha256 "49cbdc18439760d488fa580e646a677dfbabb3713822c101a763524cbdd86062"
    end
    on_intel do
      url "#{base}-x86_64-unknown-linux-musl-v0.1.1.tar.gz"
      sha256 "419f8416a6478af75c29950cba20f36265077b809f89519b8977d30bf48ac63d"
    end
  end

  def install
    bin.install "modelcmp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/modelcmp --version")
  end
end
