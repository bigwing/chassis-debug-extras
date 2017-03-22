# Chassis Debugging Extras
Extension for [Chassis](https://github.com/Chassis/Chassis) to enable extra development and debugging tools in WordPress.

## Installation
### Automatic (preferred)
To install, add both `Chassis/Debugging` and `morganestes/chassis-debug-extras` to your extensions list inside your config file.

Example `config.local.yaml` file:
```yaml
extensions:
    - Chassis/Xdebug
    - Chassis/Query-Monitor
    - Chassis/Debugging
    - morganestes/chassis-debug-extras
```

### Manual
1. Clone this repo into your Chassis `extensions` directory:
    ```sh
    git clone https://github.com/morganestes/chassis-debug-extras /path/to/chassis/extensions/debugging-extras
    ```
1. Run `vagrant reload --provision` or `vagrant up` from inside Chassis.
