{ pkgs, environment ? "langgraph", ... }: {
    packages = if environment == "langgraph" then [] else [];
    bootstrap = ''
        mkdir "$out"
        cp -rf ${./.}/${environment}/* "$out"
        mkdir "$out/.idx"
        cp -rf ${./.}/${environment}/.idx "$out"
        chmod -R u+w "$out"
    '';
}