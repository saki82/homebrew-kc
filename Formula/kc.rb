class Kc < Formula
  desc "Encrypted secret store synced via iCloud Drive"
  homepage "https://github.com/saki82/kc"
  url "https://github.com/saki82/kc/releases/download/v1.1.1/kc-v1.1.1-macos.tar.gz"
  sha256 "53d836a37650a1cf52e51e2960c17929450d8f67fae0294638accaf2682c71fa"
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
