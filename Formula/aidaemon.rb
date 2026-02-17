class Aidaemon < Formula
  desc "Personal AI agent daemon with tool use, MCP integration, and persistent memory"
  homepage "https://aidaemon.ai/"
  license "MIT"
  version "0.9.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/davo20019/aidaemon/releases/download/v0.9.0/aidaemon-macos-aarch64.tar.gz"
      sha256 "f4d824b68e36dce04d90650bdb74a097c05392fb757c853d3640156ad83cb1bc"
    else
      url "https://github.com/davo20019/aidaemon/releases/download/v0.9.0/aidaemon-macos-x86_64.tar.gz"
      sha256 "05da65a14ea17f040519f919640a9f283d2b403d550367cc27b9b71208dfea2b"
    end
  end

  on_linux do
    url "https://github.com/davo20019/aidaemon/releases/download/v0.9.0/aidaemon-linux-x86_64.tar.gz"
    sha256 "4daebf82f287c1d8448aea343d884e44bc44adaf0d605163a0b6162ab82a4ef7"
  end

  def install
    bin.install "aidaemon"
  end

  test do
    assert_match "aidaemon", shell_output("#{bin}/aidaemon --version", 0)
  end
end
