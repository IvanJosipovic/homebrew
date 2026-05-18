cask "kubeui" do
  arch arm: "arm64", intel: "x64"

  version "1.0.0"
  sha256 arm:   "28eb125232acc9308db289afa72586ca69358fbdd637e18132351f872967210c",
         intel: "78e1b0fa0b7eca2962fef41d598398ea69658412a551325e2d767879eb872ac6"

  url "https://github.com/IvanJosipovic/KubeUI/releases/download/v#{version}/KubeUI-osx-#{arch}-Portable.zip",
      verified: "github.com/IvanJosipovic/KubeUI/"
  name "KubeUI"
  desc "Kubernetes User Interface"
  homepage "https://kubeui.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sequoia

  app "KubeUI.app"

  zap trash: "~/.kubeui"
end
