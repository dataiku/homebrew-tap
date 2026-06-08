cask "kiji-privacy-proxy" do
  version "1.3.1"
  sha256 "89f1421159c99030be0dd4f4fb20c2add37204a5ce51234534bdc7ebb35e2387"

  url "https://github.com/dataiku/kiji-proxy/releases/download/v#{version}/Kiji-Privacy-Proxy-#{version}.dmg",
      verified: "github.com/dataiku/kiji-proxy/"
  name "Kiji Privacy Proxy"
  desc "Privacy layer that masks PII in requests to AI APIs"
  homepage "https://github.com/dataiku/kiji-proxy"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Kiji Privacy Proxy.app"

  zap trash: [
    "~/.kiji-proxy",
    "~/Library/Application Support/Kiji Privacy Proxy",
    "~/Library/Caches/com.kiji.proxy",
    "~/Library/Caches/com.kiji.proxy.ShipIt",
    "~/Library/Logs/Kiji Privacy Proxy",
    "~/Library/Preferences/com.kiji.proxy.plist",
    "~/Library/Saved Application State/com.kiji.proxy.savedState",
  ]
end
