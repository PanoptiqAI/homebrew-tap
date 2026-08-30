class Cogenity < Formula
  desc "Cogenity by PANOPTIQ, a multi-account manager for Claude Code and Codex"
  homepage "https://cogenity.sh"
  license :cannot_represent

  depends_on macos: :ventura

  on_macos do
    on_arm do
      url "https://github.com/PanoptiqAI/cogenity/releases/download/v0.16.0/cogenity-darwin-arm64"
      sha256 "ef5f707e6b0613db1a1b34f1c8730c20672bc8d1844820d84f0d0f53ed1b59a2"
    end

    on_intel do
      url "https://github.com/PanoptiqAI/cogenity/releases/download/v0.16.0/cogenity-darwin-x64"
      sha256 "38de640e644554d0877cd6e38f88628bf38d3b248b7cb5e84180b01cc31fcfa7"
    end
  end

  def install
    bin.install Dir["cogenity-darwin-*"].first => "cogenity"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cogenity --version")
  end
end
