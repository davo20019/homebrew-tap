class Aidaemon < Formula
  desc "Personal AI agent daemon with tool use, MCP integration, and persistent memory"
  homepage "https://aidaemon.ai/"
  license "MIT"
  version "0.22.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/davo20019/aidaemon/releases/download/v0.22.1/aidaemon-macos-aarch64.tar.gz"
      sha256 "1a61483a247036915d434276f1c3a4d872aa7f207cf648a9ec10fd8fe3549612"
    else
      url "https://github.com/davo20019/aidaemon/releases/download/v0.22.1/aidaemon-macos-x86_64.tar.gz"
      sha256 "c27c6b31416a7fb97571d33e1e752115f0fcc468de00fdb712ac61238ea601c6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/davo20019/aidaemon/releases/download/v0.22.1/aidaemon-linux-aarch64.tar.gz"
      sha256 "28f7dae22d8723f221802b9221205933b195c06ae1dba0fa7d3305643d49d978"
    else
      url "https://github.com/davo20019/aidaemon/releases/download/v0.22.1/aidaemon-linux-x86_64.tar.gz"
      sha256 "888ed9ce93a16044cdd1774add4b6af2911a2387bb4c217bfb6bba2db1d87fdf"
    end
  end

  def install
    bin.install "aidaemon"
    # The app (`aidaemon app` / `aidaemon tui`); older archives lack it.
    bin.install "aidaemon-app" if File.exist?("aidaemon-app")
  end

  test do
    assert_match "aidaemon", shell_output("#{bin}/aidaemon --version", 0)
  end
end
