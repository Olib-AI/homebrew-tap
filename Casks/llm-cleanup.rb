cask "llm-cleanup" do
  version "0.3.0"
  sha256 "80b912568955e79ae6a1e49a472d1e47fc3722bec09e52c47f0e8b842b393671"

  url "https://github.com/Olib-AI/llm-cleanup/releases/download/v#{version}/llm-cleanup-macos.zip"
  name "llm-cleanup"
  desc "Remove AI-generated fingerprints from documents"
  homepage "https://www.olib.ai/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "llm-cleanup.app"
end
