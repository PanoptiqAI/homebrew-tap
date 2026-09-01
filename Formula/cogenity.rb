class Cogenity < Formula
  desc "Cogenity by PANOPTIQ, a multi-account manager for Claude Code and Codex"
  homepage "https://cogenity.sh"
  license :cannot_represent

  depends_on macos: :ventura

  on_macos do
    on_arm do
      url "https://github.com/PanoptiqAI/cogenity/releases/download/v0.22.0/cogenity-darwin-arm64"
      sha256 "fffea115b2aae9d1e1003d1969d9dd4d680e522e4fbc83b059827df65f8a8dfd"
    end

    on_intel do
      url "https://github.com/PanoptiqAI/cogenity/releases/download/v0.22.0/cogenity-darwin-x64"
      sha256 "a6e0a1b6dd8901d3825fe4303feaaabec3bc025a2bd1a58dd40d742315a5d97b"
    end
  end

  def install
    bin.install Dir["cogenity-darwin-*"].first => "cogenity"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cogenity --version")
  end
end
