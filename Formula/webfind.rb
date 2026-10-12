class Webfind < Formula
  desc "Self-hosted native search engine for AI agents — pure CLI, zero cost"
  homepage "https://github.com/Gaurav-Wankhede/webfind"
  url "https://github.com/Gaurav-Wankhede/webfind/archive/refs/tags/v0.5.0.tar.gz"
  sha256 "a8d090a845609d52bdf66905ebeda22c6451345620a1f0d7e123bdbed1ed4e1d"
  license "MIT"
  head "https://github.com/Gaurav-Wankhede/webfind.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "webfind 0.5.0", shell_output("#{bin}/webfind --version")
  end
end
