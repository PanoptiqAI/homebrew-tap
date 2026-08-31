class Cogenity < Formula
  desc "Cogenity by PANOPTIQ, a multi-account manager for Claude Code and Codex"
  homepage "https://cogenity.sh"
  license :cannot_represent

  depends_on macos: :ventura

  on_macos do
    on_arm do
      url "https://github.com/PanoptiqAI/cogenity/releases/download/v0.18.0/cogenity-darwin-arm64"
      sha256 "85487656820ace2cc7f8c2ae4f9a009697ecdb895866d978aa881378234fd22c"
    end

    on_intel do
      url "https://github.com/PanoptiqAI/cogenity/releases/download/v0.18.0/cogenity-darwin-x64"
      sha256 "691a8b77b8aafefd607116c3e724813b2d04b50cd0a8461f8440f924a2ac4bcc"
    end
  end

  def install
    bin.install Dir["cogenity-darwin-*"].first => "cogenity"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cogenity --version")
  end
end
