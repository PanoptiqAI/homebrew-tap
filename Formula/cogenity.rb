class Cogenity < Formula
  desc "Cogenity by PANOPTIQ, a multi-account manager for Claude Code and Codex"
  homepage "https://cogenity.sh"
  license :cannot_represent

  depends_on macos: :ventura

  on_macos do
    on_arm do
      url "https://github.com/PanoptiqAI/cogenity/releases/download/v0.19.0/cogenity-darwin-arm64"
      sha256 "b4f4b575b5bc013cde8c645d88d59bb33701b7f506fc4f0deff5611c23811b89"
    end

    on_intel do
      url "https://github.com/PanoptiqAI/cogenity/releases/download/v0.19.0/cogenity-darwin-x64"
      sha256 "56dc31ff3b9ae65b4cbec4c3afff1e80b0c4b69d0d3f72b2da15a07a9a943666"
    end
  end

  def install
    bin.install Dir["cogenity-darwin-*"].first => "cogenity"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cogenity --version")
  end
end
