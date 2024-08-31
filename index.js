const currentVersionRules = "v0.7.0"

window.onload = function () {
    document.getElementById('current_version_rules').innerHTML = currentVersionRules;

    const repoUrlRules = 'https://api.github.com/repos/Mutantpenguin/Universalis/releases/latest';

    $.get(repoUrlRules, function (data) {
        document.getElementById('beta_version_rules').innerHTML = data.tag_name;

        if (data.tag_name === currentVersionRules) {
            document.getElementById('alert_beta_version').classList.add("d-none");
        }
    });

    // const repoUrlSoftware = 'https://api.github.com/repos/Mutantpenguin/Universalis-Builder/releases/latest';

    // $.get(repoUrlSoftware, function (data) {
    //     document.getElementById('version_software').innerHTML = data.tag_name;
    // });
};