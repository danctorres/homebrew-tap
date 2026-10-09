class Modelcmp < Formula
  desc "Compare models, pick favorites, get recommendations"
  homepage "https://github.com/danctorres/modelcmp"
  license "MIT"

  base = "https://github.com/danctorres/modelcmp/releases/download/v0.1.0/modelcmp"
  on_macos do
    on_arm do
      url "#{base}-aarch64-apple-darwin-v0.1.0.tar.gz"
      sha256 "1ddf290b56db5665e74c3831efcb7c5ce5216e996c47fd2cfe7e580c4b9274b5"
    end
    on_intel do
      url "#{base}-x86_64-apple-darwin-v0.1.0.tar.gz"
      sha256 "2eec213c1ed4c31f9285c6c7beea47110feca21f67bdac6d178d20c08e5285e4"
    end
  end
  on_linux do
    on_arm do
      url "#{base}-aarch64-unknown-linux-musl-v0.1.0.tar.gz"
      sha256 "0ff678c6a699176e6484f7cf1cc12b8d1d6890f16fec49ae20385d558dd26f74"
    end
    on_intel do
      url "#{base}-x86_64-unknown-linux-musl-v0.1.0.tar.gz"
      sha256 "7934f1dd9b7fe8fc64fd651ecdef7a70f66acdd78952888255471e119b92b04e"
    end
  end

  def install
    bin.install "modelcmp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/modelcmp --version")
  end
end
