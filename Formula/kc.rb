class Kc < Formula
  desc "Encrypted secret store synced via iCloud Drive"
  homepage "https://github.com/saki82/kc"
  url "https://github.com/saki82/kc/releases/download/v1.0.0/kc-v1.0.0-macos.tar.gz"
  sha256 "sha256:288ba2c9a9ad0aae58e47c1073e67a2edb6d9f079e3f3b779fb349c94af1db4b"
  license "MIT"
  version "1.0.0"

  depends_on :macos

  def install
    bin.install "kc"
  end

  test do
    assert_match "kc", shell_output("#{bin}/kc -h")
  end
end
