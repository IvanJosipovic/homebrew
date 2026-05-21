cask "kubeui" do
  arch arm: "arm64", intel: "x64"

  version "1.0.1"
  sha256 arm:   "cf9a30f637373b278cbaf996236c9ade6030f8c3f63c7405085480d7c9a0e494",
         intel: "0bfb8dc7bc00d82e03b0b8ed0f2623a44070bf1cfa753f55d7a12502da5bb331"

  url "https://github.com/IvanJosipovic/KubeUI/releases/download/v#{version}/KubeUI-osx-#{arch}-Portable.zip",
      verified: "github.com/IvanJosipovic/KubeUI/"
  name "KubeUI"
  desc "Kubernetes User Interface"
  homepage "https://kubeui.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  app "KubeUI.app"

  zap trash: "~/.kubeui"
end
