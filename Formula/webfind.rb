class Webfind < Formula
  desc "Self-hosted native search engine for AI agents — pure CLI, zero cost"
  homepage "https://github.com/Gaurav-Wankhede/webfind"
  version "0.5.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/Gaurav-Wankhede/webfind/releases/download/v0.5.0/webfind-aarch64-apple-darwin.tar.gz"
    sha256 "2c88f5bdcd2382db748169285c84c1e91cb4e972ff56cf87d84d159530c75526"
  end

  def install
    bin.install "webfind"
  end

  test do
    assert_match "webfind 0.5.0", shell_output("#{bin}/webfind --version")
  end
end
