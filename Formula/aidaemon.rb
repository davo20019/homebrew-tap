class Aidaemon < Formula
  desc "Personal AI agent daemon with tool use, MCP integration, and persistent memory"
  homepage "https://aidaemon.ai/"
  license "MIT"
  version "0.11.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/davo20019/aidaemon/releases/download/v0.11.0/aidaemon-macos-aarch64.tar.gz"
      sha256 "f0c4fe484733c88fcd58ad11814236a795f17fbbc025f2849d6ae9931b43ee29"
    else
      url "https://github.com/davo20019/aidaemon/releases/download/v0.11.0/aidaemon-macos-x86_64.tar.gz"
      sha256 "3181e2eb6fba263e19a74ee8df5e5e70d1f19178614516709739d9d2a1513475"
    end
  end

  on_linux do
    url "https://github.com/davo20019/aidaemon/releases/download/v0.11.0/aidaemon-linux-x86_64.tar.gz"
    sha256 "8ddb78ada994687c1e4ea1144f2420beb6ea92b8075362905dc39bc4c746da7f"
  end

  def install
    bin.install "aidaemon"
  end

  test do
    assert_match "aidaemon", shell_output("#{bin}/aidaemon --version", 0)
  end
end
