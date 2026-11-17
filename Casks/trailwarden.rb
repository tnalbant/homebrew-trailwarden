# SPDX-License-Identifier: Apache-2.0
# Copyright (c) 2026 Turgay Nalbant
#
# Cask for the menu-bar app. Lives in tnalbant/homebrew-trailwarden, so users run:
#   brew install --cask tnalbant/trailwarden/trailwarden
#
# `sha256` is filled in by scripts/publish.sh from the release's SHA256SUMS.

cask "trailwarden" do
  version "0.2.1"
  sha256 "7c2539cdfb79c4df9ae42a705f4c63dc6a5e10d67aca25e56a2801e4362caf48"

  url "https://github.com/tnalbant/trailwarden/releases/download/v#{version}/Trailwarden-#{version}.dmg"
  name "Trailwarden"
  desc "Local audit trail for coding agents"
  homepage "https://github.com/tnalbant/trailwarden"

  depends_on macos: ">= :sonoma"

  app "Trailwarden.app"

  zap trash: [
    "~/Library/Application Support/Trailwarden",
    "~/Library/Preferences/app.trailwarden.plist",
  ]
end
