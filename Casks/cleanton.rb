cask "cleanton" do
  version "0.3.3"
  sha256 "243bf21aa739ae17989c95bec3f149a8428d3185964663450405e9b08e603ffe"

  url "https://github.com/Olib-AI/cleanton/releases/download/v#{version}/cleanton-app-macos-arm64.tar.gz"
  name "Cleanton"
  desc "Disk cleaner by Olib AI"
  homepage "https://www.olib.ai/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch:  :arm64
  depends_on macos: :ventura

  app "Cleanton.app"

  zap trash: "~/.config/cleanton"
end
