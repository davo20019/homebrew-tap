class Aidaemon < Formula
  desc "Personal AI agent daemon with tool use, MCP integration, and persistent memory"
  homepage "https://aidaemon.ai/"
  license "MIT"
  version "0.9.22"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/davo20019/aidaemon/releases/download/v0.9.22/aidaemon-macos-aarch64.tar.gz"
      sha256 "28413b9140b5e64e54a2e6bb582ad7f14b6aadc3c08bcecf7098b6ac61c86c49"
    else
      url "https://github.com/davo20019/aidaemon/releases/download/v0.9.22/aidaemon-macos-x86_64.tar.gz"
      sha256 "9d5231e20f482216092e8b735e191598ad911d8da222506bcb9c21610e31ded1"
    end
  end

  on_linux do
    url "https://github.com/davo20019/aidaemon/releases/download/v0.9.22/aidaemon-linux-x86_64.tar.gz"
    sha256 "4771983f4520aef30fb286a7eb294543373fd23051e92b6bd081eccfc3675665"
  end

  def install
    bin.install "aidaemon"
  end

  test do
    assert_match "aidaemon", shell_output("#{bin}/aidaemon --version", 0)
  end
end
