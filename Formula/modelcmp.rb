class Modelcmp < Formula
  desc "Compare models, pick favorites, get recommendations"
  homepage "https://github.com/danctorres/modelcmp"
  license "MIT"

  base = "https://github.com/danctorres/modelcmp/releases/download/v0.1.2/modelcmp"
  on_macos do
    on_arm do
      url "#{base}-aarch64-apple-darwin-v0.1.2.tar.gz"
      sha256 "89a6b88fc1b71518384e30e4af735688f91774061a27602d471201fbf7b46389"
    end
    on_intel do
      url "#{base}-x86_64-apple-darwin-v0.1.2.tar.gz"
      sha256 "66cd329d8d44feec8406381e4d99c06576ab4e472f2fc621a0f25c577a6d4e7f"
    end
  end
  on_linux do
    on_arm do
      url "#{base}-aarch64-unknown-linux-musl-v0.1.2.tar.gz"
      sha256 "2bc1e65f3d936bc5e0f41ab91dc451b5f6c38ce0107aa9d7c9b392e3877bc124"
    end
    on_intel do
      url "#{base}-x86_64-unknown-linux-musl-v0.1.2.tar.gz"
      sha256 "046567d72ff06839700fb2471455170707c8b89ed154f300cd31ead054b3a57f"
    end
  end

  def install
    bin.install "modelcmp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/modelcmp --version")
  end
end
