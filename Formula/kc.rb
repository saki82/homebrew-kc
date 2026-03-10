class Kc < Formula
  desc "Encrypted secret store synced via iCloud Drive"
  homepage "https://github.com/saki82/kc"
  url "https://github.com/saki82/kc/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
  license "MIT"

  depends_on xcode: ["14.0", :build]
  depends_on :macos

  def install
    system "swift", "build", "-c", "release", "--disable-sandbox"
    bin.install ".build/release/kc"
  end

  test do
    assert_match "kc — encrypted secret store", shell_output("#{bin}/kc -h")
  end
end
