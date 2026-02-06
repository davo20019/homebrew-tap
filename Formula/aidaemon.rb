class Aidaemon < Formula
  desc "Personal AI agent daemon with tool use, MCP integration, and persistent memory"
  homepage "https://aidaemon.ai/"
  license "MIT"
  version "0.3.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/davo20019/aidaemon/releases/download/v0.3.0/aidaemon-macos-aarch64.tar.gz"
      sha256 "c4127190b4190fef8c3536105ebf5adfed07fd9dd7f3959eda372eb2276a4c2b"
    else
      url "https://github.com/davo20019/aidaemon/releases/download/v0.3.0/aidaemon-macos-x86_64.tar.gz"
      sha256 "bd842cae0327184f165656c0071d332902be6e35dce02909f39636a38e1ccb12"
    end
  end

  on_linux do
    url "https://github.com/davo20019/aidaemon/releases/download/v0.3.0/aidaemon-linux-x86_64.tar.gz"
    sha256 "1bd5afb82aab62cb38a64e65cf0a90949d31fc3be0285c2a92f678add37f8f58"
  end

  def install
    bin.install "aidaemon"
  end

  test do
    assert_match "aidaemon", shell_output("#{bin}/aidaemon --version", 0)
  end
end
