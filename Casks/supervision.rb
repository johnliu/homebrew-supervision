cask "supervision" do
  version "0.2.1"
  sha256 "36dd1c230d52a68641a96520d855214b13342541e62277a1a3764b6842417aa7"

  url "https://github.com/johnliu/supervision/releases/download/v#{version}/stable-macos-arm64-Supervision.dmg"
  name "Supervision"
  desc "Native code-review companion for LLM-driven development"
  homepage "https://github.com/johnliu/supervision"

  # Apple Silicon only, and unsigned — clear quarantine after install:
  #   xattr -dr com.apple.quarantine /Applications/Supervision.app
  depends_on arch: :arm64

  app "Supervision.app"

  # The `supervision` CLI ships loose at the dmg root (next to the app); it
  # self-discovers /Applications/Supervision.app, so it works on PATH.
  binary "supervision"

  zap trash: [
    "~/.supervision",
  ]
end
