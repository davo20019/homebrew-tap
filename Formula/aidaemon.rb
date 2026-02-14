class Aidaemon < Formula
  desc "Personal AI agent daemon with tool use, MCP integration, and persistent memory"
  homepage "https://aidaemon.ai/"
  license "MIT"
  version "0.7.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/davo20019/aidaemon/releases/download/v0.7.4/aidaemon-macos-aarch64.tar.gz"
      sha256 "b60d762cfe4742bb3fe175f5a5482de1500acbf9d786ec733ecf99ad1c2f8c7b"
    else
      url "https://github.com/davo20019/aidaemon/releases/download/v0.7.4/aidaemon-macos-x86_64.tar.gz"
      sha256 "fcc7434493d6267d0ebec0c4af6e6a14d8cfae14739b14af1cb5af5a7ce314a5"
    end
  end

  on_linux do
    url "https://github.com/davo20019/aidaemon/releases/download/v0.7.4/aidaemon-linux-x86_64.tar.gz"
    sha256 "30c20ddd15c6b3676c177191c9a61c795aaf69aff20436fbe08586b9d024a294"
  end

  def install
    bin.install "aidaemon"
  end

  test do
    assert_match "aidaemon", shell_output("#{bin}/aidaemon --version", 0)
  end
end
