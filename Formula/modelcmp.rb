class Modelcmp < Formula
  desc "Compare models, pick favorites, get recommendations"
  homepage "https://github.com/danctorres/modelcmp"
  license "MIT"

  base = "https://github.com/danctorres/modelcmp/releases/download/v0.1.2/modelcmp"
  on_macos do
    on_arm do
      url "#{base}-aarch64-apple-darwin-v0.1.2.tar.gz"
      sha256 "a8e51a0a29f768c4349d9974afd5ebcb195e389c8b0588a4ce27290c54f5063a"
    end
    on_intel do
      url "#{base}-x86_64-apple-darwin-v0.1.2.tar.gz"
      sha256 "2f7fa488c4c5b3771f90f4554fe42836d2aa93893874af96e57c750fca6f07db"
    end
  end
  on_linux do
    on_arm do
      url "#{base}-aarch64-unknown-linux-musl-v0.1.2.tar.gz"
      sha256 "a1899cc718e06b2618d5b640a90717b12a20b99c0e6761d4e3340a94a3cbd839"
    end
    on_intel do
      url "#{base}-x86_64-unknown-linux-musl-v0.1.2.tar.gz"
      sha256 "cc28ac1f8aca1f5b2bed1adfaa135f83dfc099a0e1e154ef9cd4f447181df436"
    end
  end

  def install
    bin.install "modelcmp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/modelcmp --version")
  end
end
