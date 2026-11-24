class Modelcmp < Formula
  desc "Pick the AI model for each agent, by benchmarks and price"
  homepage "https://github.com/danctorres/modelcmp"
  license "MIT"

  base = "https://github.com/danctorres/modelcmp/releases/download/v0.5.0/modelcmp"
  on_macos do
    on_arm do
      url "#{base}-aarch64-apple-darwin-v0.5.0.tar.gz"
      sha256 "186b557698769df29d10e1e74cd83d6ea292107ea11b239b9db627c5b74c294e"
    end
    on_intel do
      url "#{base}-x86_64-apple-darwin-v0.5.0.tar.gz"
      sha256 "1ba98ca67f0884c5cef6db59e746004f6bd9e6520ae07e37d5c61af53b25d511"
    end
  end
  on_linux do
    on_arm do
      url "#{base}-aarch64-unknown-linux-musl-v0.5.0.tar.gz"
      sha256 "05176b4323de323db22a273f6607f6cbdf3fdd8a7976e2f9152faf2650ed91e8"
    end
    on_intel do
      url "#{base}-x86_64-unknown-linux-musl-v0.5.0.tar.gz"
      sha256 "5451afa1ad711e325dbf3755371e9e2bf0d4d8e0f991c41d65fc8af415439bd1"
    end
  end

  def install
    bin.install "modelcmp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/modelcmp --version")
  end
end
