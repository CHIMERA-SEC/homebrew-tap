cask "chimeravpn" do
  version "1.0.1"
  sha256 "3aba7a35666ec389954ef82eb8f9bdde9016c950b7e9991dd431e12c168bb4bb"

  url "https://github.com/CHIMERA-SEC/chimera-vpn-netbird/releases/download/v#{version}/ChimeraVPN-#{version}.pkg"
  name "ChimeraVPN"
  desc "Secure WireGuard-based VPN client"
  homepage "https://chimerasec.com"

  pkg "ChimeraVPN-#{version}.pkg"

  uninstall script: {
              executable: "/usr/local/bin/chimeravpn",
              args: ["service", "stop"],
              sudo: true,
            },
            pkgutil: "com.chimerasec.chimeravpn",
            delete: [
              "/Applications/ChimeraVPN.app",
              "/usr/local/bin/chimeravpn",
            ]
end
