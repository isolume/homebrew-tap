class AnilistPush < Formula
  desc "Simple CLI application to fetch AniList notifications and send them over Pushover."
  homepage "https://crates.io/crates/anilist-push"
  url "https://github.com/isolume/anilist-push/archive/refs/tags/v2.0.1.tar.gz"
  sha256 "042a41df363fcc047077fb2f69cd474755e1a1d21deab5c20543563463974427"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match /^anilist-push /, shell_output("#{bin}/anilist-push --version")
  end
end

