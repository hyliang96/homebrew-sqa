cask 'slowquitapps' do
  version '0.8.1'
  sha256 '7d91ab479b836a2ebe4cf9463c9fb0c6a39a984256ce4933501936fcb157eb03'

  url "https://github.com/hyliang96/SlowQuitApps/releases/download/v#{version}/SlowQuitApps.zip"
  # url "https://github.com/dteoh/SlowQuitApps/releases/download/v#{version}/SlowQuitApps.zip"
  name 'SlowQuitApps'
  homepage 'https://github.com/hyliang96/SlowQuitApps'
  appcast 'https://github.com/hyliang96/SlowQuitApps/releases.atom'

  depends_on macos: '>= :mojave'

  app 'SlowQuitApps.app'
  binary 'sqa'

  caveats <<-DESC
  Accessibility permissions must be reset after updating or re-installing.

  Instructions are available in the README at #{homepage}
  DESC
end
