class Cogenity < Formula
  desc "Cogenity by PANOPTIQ, a multi-account manager for Claude Code and Codex"
  homepage "https://github.com/PanoptiqAI/cogenity"
  license :cannot_represent

  depends_on macos: :ventura

  on_macos do
    on_arm do
      url "https://github.com/PanoptiqAI/cogenity/releases/download/v0.14.0/cogenity-darwin-arm64"
      sha256 "2854d3ceeefd2f69e27ad4907e0a437d9e9dc550046c3f4dbd825213b8af737c"
    end

    on_intel do
      url "https://github.com/PanoptiqAI/cogenity/releases/download/v0.14.0/cogenity-darwin-x64"
      sha256 "4f91a49a011ac96dfbd8be2a75563c434b061be9d0e20200470283e3dd268569"
    end
  end

  def install
    bin.install Dir["cogenity-darwin-*"].first => "cogenity"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cogenity --version")
  end
end
