const spawn = require('cross-spawn');
const minimist = require('minimist');
const pkg = require('./package.json');

function createNgxCli(args) {
  const options = minimist(args, {
    boolean: ['version'],
    string: ['addons'],
    alias: {v: 'version'}
  });

  if (options.version) {
    return console.log(pkg.version);
  }

  const packages = ['-p', 'generator-ngx-rocket'];
  const addons = options.addons ? options.addons.split(' ') : [];
  addons.forEach((addon) => {
    if (addon) {
      packages.push('-p');
      packages.push(
        addon.startsWith('generator') || /[:/]/.test(addon)
          ? addon
          : 'generator-' + addon
      );
    }
  });

  return spawn.sync('npx', [...packages, 'ngx', 'new'].concat(args || []), {
    stdio: 'inherit'
  });
}

module.exports = createNgxCli;
