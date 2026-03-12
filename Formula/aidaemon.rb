class Aidaemon < Formula
  desc "Personal AI agent daemon with tool use, MCP integration, and persistent memory"
  homepage "https://aidaemon.ai/"
  license "MIT"
  version "0.9.22"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/davo20019/aidaemon/releases/download/v0.9.22/aidaemon-macos-aarch64.tar.gz"
      sha256 "6cc82dac849baf5cf5a1ac652bb1e3cda45a1f990963efb4c7eb4c007e76cd0e"
    else
      url "https://github.com/davo20019/aidaemon/releases/download/v0.9.22/aidaemon-macos-x86_64.tar.gz"
      sha256 "3fd0a29680c2f1574af932fb2d207e16e12511977307d08b07672998362c936d"
    end
  end

  on_linux do
    url "https://github.com/davo20019/aidaemon/releases/download/v0.9.22/aidaemon-linux-x86_64.tar.gz"
    sha256 "bf044da4191ca234d834e2796d784597126eaafad5560bf713bfffa41c2ef4fb"
  end

  def install
    bin.install "aidaemon"
  end

  test do
    assert_match "aidaemon", shell_output("#{bin}/aidaemon --version", 0)
  end
end
