class Cogenity < Formula
  desc "Cogenity by PANOPTIQ, a multi-account manager for Claude Code and Codex"
  homepage "https://cogenity.sh"
  license :cannot_represent

  depends_on macos: :ventura

  on_macos do
    on_arm do
      url "https://github.com/PanoptiqAI/cogenity/releases/download/v0.20.0/cogenity-darwin-arm64"
      sha256 "f9dd7cc7fb0651c6571053d0c6678d11f027a2e3ae462226a9d314772aafc46a"
    end

    on_intel do
      url "https://github.com/PanoptiqAI/cogenity/releases/download/v0.20.0/cogenity-darwin-x64"
      sha256 "d901d9d24cfbcff98a0f255859f77e0743175d299439ff7d981c978693bcef81"
    end
  end

  def install
    bin.install Dir["cogenity-darwin-*"].first => "cogenity"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cogenity --version")
  end
end
