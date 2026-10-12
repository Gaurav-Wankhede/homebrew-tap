class Webfind < Formula
  desc "Self-hosted native search engine for AI agents — pure CLI, zero cost"
  homepage "https://github.com/Gaurav-Wankhede/webfind"
  url "https://github.com/Gaurav-Wankhede/webfind/archive/refs/tags/v0.5.0.tar.gz"
  sha256 "e64c3a21265ab7595f28f0b08738bddb3d6f3fd4a8974d5e787330a5d54df247"
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
