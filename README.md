# Checkin API

[![Build Status](https://img.shields.io/travis/checkinhq/api.svg?style=flat-square)](https://travis-ci.org/checkinhq/api)

This repository contains the original interface definitions of Checkin APIs that support gRPC protocols. Reading the original interface definitions can provide a better understanding and help you to utilize the API more efficiently.


## Structure

Each Checkin API MUST BE under a `checkin/{service_name}` directory. In some cases a service MAY have sub-services, in which case further directories under the service directory CAN be added.

Each service SHOULD have a README which briefly describes the service.


## Versioning

Each service MUST be versioned. There MUST at least be **major** versions (in `vX` format, eg: `v1`, `v2`, etc).
Using **minor** versions (in `vX.Y` format) is OPTIONAL. When there is a backwards incompatible change,
a major version MUST be increased.

During development there are certain phases which an API MAY go through:

- `vXalpha` (eg. `v1alpha`): The API is under development, but there already partially completed components.
- `vXbeta` (eg. `v1beta`): The API is under testing, changes at this point SHOULD NOT happen.

These versions MAY have subversions, like `v1alpha1`, `v1beta1`, etc.


## Usage

This repository only contains the interface definitions, but not any generated code.
In order to use it in a project, you should either add it as a submodule or install it
using your preferred package manager.

See the [official documentation](https://developers.google.com/protocol-buffers/) of Protocol Buffers
to learn how to generate code for your preferred language.


## License

The MIT License (MIT). Please see [License File](LICENSE) for more information.
