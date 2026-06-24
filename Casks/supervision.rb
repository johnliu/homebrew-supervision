cask "supervision" do
  version "0.2.0"
  sha256 "bcf93928ba4160e0109ecf8b0cd2af7e21805968bafb453e097c05783ff4ab92"

  url "https://github.com/johnliu/supervision/releases/download/v#{version}/stable-macos-arm64-Supervision.dmg"
  name "Supervision"
  desc "Native code-review companion for LLM-driven development"
  homepage "https://github.com/johnliu/supervision"

  # Apple Silicon only, and unsigned — clear quarantine after install:
  #   xattr -dr com.apple.quarantine /Applications/Supervision.app
  depends_on arch: :arm64

  app "Supervision.app"

  zap trash: [
    "~/.supervision",
  ]
end
