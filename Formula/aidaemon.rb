class Aidaemon < Formula
  desc "Personal AI agent daemon with tool use, MCP integration, and persistent memory"
  homepage "https://aidaemon.ai/"
  license "MIT"
  version "0.21.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/davo20019/aidaemon/releases/download/v0.21.0/aidaemon-macos-aarch64.tar.gz"
      sha256 "059aeefa25de06689dd53c936aa771111fa07ad924c4e189a08c4f1e50a18938"
    else
      url "https://github.com/davo20019/aidaemon/releases/download/v0.21.0/aidaemon-macos-x86_64.tar.gz"
      sha256 "252d6e6c89e508af558a1d42c1c979205b30a5aa245e72fe598ee8da73bc2c4e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/davo20019/aidaemon/releases/download/v0.21.0/aidaemon-linux-aarch64.tar.gz"
      sha256 "b3c529b3bfa915dacb3fb59324fc8d5d7f7a2ca5d26b6eedc3073b77f0d206be"
    else
      url "https://github.com/davo20019/aidaemon/releases/download/v0.21.0/aidaemon-linux-x86_64.tar.gz"
      sha256 "172eaba61652960ff8b3e3316ebcd4a21bf0e744f3b51d138df61aa7116b3a0d"
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
