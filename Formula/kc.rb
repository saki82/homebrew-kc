class Kc < Formula
  desc "Encrypted secret store synced via iCloud Drive"
  homepage "https://github.com/saki82/kc"
  url "https://github.com/saki82/kc/releases/download/v1.1.0/kc-v1.1.0-macos.tar.gz"
  sha256 "sha256:2f9689d8e7beb90aadc3f9473ebd1323d09c0d1f92f46eb22e580acb8a5c9fd0"
  license "MIT"
  version "1.1.0"

  depends_on :macos

  def install
    bin.install "kc"
  end

  test do
    assert_match "kc", shell_output("#{bin}/kc -h")
  end
end
