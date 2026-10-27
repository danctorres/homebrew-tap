class Modelcmp < Formula
  desc "Compare models, pick favorites, get recommendations"
  homepage "https://github.com/danctorres/modelcmp"
  license "MIT"

  base = "https://github.com/danctorres/modelcmp/releases/download/v0.2.0/modelcmp"
  on_macos do
    on_arm do
      url "#{base}-aarch64-apple-darwin-v0.2.0.tar.gz"
      sha256 "6b56c5bba2a5d0e43acd1f9dc094879b3cdcba9a3941f9ebdddf8b480ada0ac6"
    end
    on_intel do
      url "#{base}-x86_64-apple-darwin-v0.2.0.tar.gz"
      sha256 "8cfadf86a1ef5276b9d8795941a30a2fdf9afcb1b593369a453ac1ab33dfc3eb"
    end
  end
  on_linux do
    on_arm do
      url "#{base}-aarch64-unknown-linux-musl-v0.2.0.tar.gz"
      sha256 "961564ff348164f5e857242c7d12a5a621c5a226b450473822d60a6d39f041d6"
    end
    on_intel do
      url "#{base}-x86_64-unknown-linux-musl-v0.2.0.tar.gz"
      sha256 "dd79f3e6e8d03101c775e41d93c06ac839bb06989f0dc3fb72cbe3dc51a4f735"
    end
  end

  def install
    bin.install "modelcmp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/modelcmp --version")
  end
end
