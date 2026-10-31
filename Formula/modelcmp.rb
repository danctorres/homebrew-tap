class Modelcmp < Formula
  desc "Pick the AI model for each agent, by benchmarks and price"
  homepage "https://github.com/danctorres/modelcmp"
  license "MIT"

  base = "https://github.com/danctorres/modelcmp/releases/download/v0.3.0/modelcmp"
  on_macos do
    on_arm do
      url "#{base}-aarch64-apple-darwin-v0.3.0.tar.gz"
      sha256 "f1a9836f1e215dab61847b015284c6ec045e76a9141c2f83d4dbe02a10ab81e8"
    end
    on_intel do
      url "#{base}-x86_64-apple-darwin-v0.3.0.tar.gz"
      sha256 "16c874c203274cc8fd8a35e3be7ea0724e1af156ba351d2809ecf7370318d254"
    end
  end
  on_linux do
    on_arm do
      url "#{base}-aarch64-unknown-linux-musl-v0.3.0.tar.gz"
      sha256 "89467e42238058481e2c43351c352a6293f584fdeac96d6b1fd94577f02ed733"
    end
    on_intel do
      url "#{base}-x86_64-unknown-linux-musl-v0.3.0.tar.gz"
      sha256 "4838a40a5ac5fc94277c05fa9ca7d760735b45ed40c33c3fbe7197c418992155"
    end
  end

  def install
    bin.install "modelcmp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/modelcmp --version")
  end
end
