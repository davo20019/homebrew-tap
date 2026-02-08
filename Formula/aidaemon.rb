class Aidaemon < Formula
  desc "Personal AI agent daemon with tool use, MCP integration, and persistent memory"
  homepage "https://aidaemon.ai/"
  license "MIT"
  version "0.5.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/davo20019/aidaemon/releases/download/v0.5.1/aidaemon-macos-aarch64.tar.gz"
      sha256 "efe442958ae9c529924823f50f87c128d991cac3105e4c1ce6dea844f74ce4b2"
    else
      url "https://github.com/davo20019/aidaemon/releases/download/v0.5.1/aidaemon-macos-x86_64.tar.gz"
      sha256 "aa4bac44f5af97663b480314dce86bd375ea69e51049b0d2725297ebab00e32b"
    end
  end

  on_linux do
    url "https://github.com/davo20019/aidaemon/releases/download/v0.5.1/aidaemon-linux-x86_64.tar.gz"
    sha256 "d4727a7316c492341dc46eccf7f21bdc45edeb7920078cf294aa170aaac29f7e"
  end

  def install
    bin.install "aidaemon"
  end

  test do
    assert_match "aidaemon", shell_output("#{bin}/aidaemon --version", 0)
  end
end
