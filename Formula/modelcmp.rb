class Modelcmp < Formula
  desc "Compare models, pick favorites, get recommendations"
  homepage "https://github.com/danctorres/modelcmp"
  license "MIT"

  base = "https://github.com/danctorres/modelcmp/releases/download/v0.1.0/modelcmp"
  on_macos do
    on_arm do
      url "#{base}-aarch64-apple-darwin-v0.1.0.tar.gz"
      sha256 "a596e5e78f5d9bbdf1a209fe64b180d5905f6bda03798b84ecd85eff67cf5118"
    end
    on_intel do
      url "#{base}-x86_64-apple-darwin-v0.1.0.tar.gz"
      sha256 "b935f697ef37815c174a3051548e571b710e597fe8b4515c7839efbaf7bcb0e5"
    end
  end
  on_linux do
    on_arm do
      url "#{base}-aarch64-unknown-linux-musl-v0.1.0.tar.gz"
      sha256 "7574582cb05ef72e87d2058f78e76f4c5918223cbff90c45af24d19488d8d14c"
    end
    on_intel do
      url "#{base}-x86_64-unknown-linux-musl-v0.1.0.tar.gz"
      sha256 "65ad814150cbc520d2b84b326631510dd10682d999f7a1fabf3ae18260a7d00a"
    end
  end

  def install
    bin.install "modelcmp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/modelcmp --version")
  end
end
