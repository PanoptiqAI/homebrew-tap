class Cogenity < Formula
  desc "Cogenity by PANOPTIQ, a multi-account manager for Claude Code and Codex"
  homepage "https://cogenity.sh"
  license :cannot_represent

  depends_on macos: :ventura

  on_macos do
    on_arm do
      url "https://github.com/PanoptiqAI/cogenity/releases/download/v0.22.1/cogenity-darwin-arm64"
      sha256 "89e1f3d4578014b2dfe9d0e62f755d53a11a1d48a0a0f48ce38100b934a1ca8d"
    end

    on_intel do
      url "https://github.com/PanoptiqAI/cogenity/releases/download/v0.22.1/cogenity-darwin-x64"
      sha256 "521bafd94ba4a33208918da64150f601774f156d941cda45cffb27cdc996efbc"
    end
  end

  def install
    bin.install Dir["cogenity-darwin-*"].first => "cogenity"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cogenity --version")
  end
end
