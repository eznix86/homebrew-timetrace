class TimetraceAT010beta < Formula
  desc "In memory event or log, storage and stream platform"
  homepage "https://github.com/zurvan-lab/timetrace"
  license "MIT"
  url "https://github.com/zurvan-lab/timetrace/archive/refs/tags/v0.1.0-beta.tar.gz"
  sha256  "e3d7c20616a0d62a502ccdb68d8ccbb913cfacad987c6242b6a6ac2b25d04a04"
  version "0.1.0-beta"
  depends_on "go" => :build

  def install
    system "go", "build", "-o", "ttrace", "./cmd/main.go"
    bin.install "ttrace"
  end

  test do
    system "#{bin}/ttrace", "--version"
  end
end
