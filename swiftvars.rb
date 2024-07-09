class Swiftvars < Formula
  desc "Create your swift and kotlin UI theme templates from Figma JSON"
  homepage "https://github.com/treboc/homebrew-swiftvars"
  url "https://github.com/treboc/homebrew-swiftvars/archive/v1.0.0.tar.gz"
  sha256 "41b5ec93841ef6c2556edb9c2e5697ba6c2db3ecc8df4204a63aca0e1022e234"
  version "1.0.0"

  depends_on :xcode => ["15.0", :build]

  def install
    system "swift", "build", "-c", "release"
    bin.install ".build/release/swiftvars"
  end

  test do
    system "#{bin}/swiftvars", "--version"
  end
end
