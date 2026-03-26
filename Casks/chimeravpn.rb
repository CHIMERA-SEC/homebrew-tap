cask "chimeravpn" do
  version "1.0.1"
  sha256 "298c2c101bf0b863177b0cf1ae57e14763a870053acaf5d530cdb2aa7c41f6fe"

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
