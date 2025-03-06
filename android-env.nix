# see https://github.com/tadfisher/android-nixpkgs
# run with `nix-shell android-env.nix`
{ pkgs ? import <nixpkgs> { config.android_sdk.accept_license = true; } }:

let
  android-nixpkgs = pkgs.callPackage <android-nixpkgs> {
    # Default; can also choose "beta", "preview", or "canary".
    channel = "stable";
  };

  androidSdk = android-nixpkgs.sdk (sdkPkgs: with sdkPkgs; [
    cmdline-tools-latest
    build-tools-34-0-0
    platform-tools
    platforms-android-34
    # emulator
  ]);

in
pkgs.mkShell {
  buildInputs = with pkgs; [
    androidSdk
    glibc
  ];

  # Override the aapt2 that gradle uses with the nix-shipped version
  GRADLE_OPTS = "-Dorg.gradle.project.android.aapt2FromMavenOverride=${androidSdk}/share/android-sdk/build-tools/34.0.0/aapt2";
}
