<!-- prettier-ignore-start -->
<!-- markdownlint-disable -->
<div align="center">
  <img src="docs/images/orion-banner.jpeg" height="256">
</div>

<div align="center">
<!-- markdownlint-restore -->
<!-- prettier-ignore-end -->
</div>

<div align="center">
<!-- markdownlint-restore -->
<!-- prettier-ignore-end -->
<br />

[![GitHub Workflow Status](https://github.com/gizatechxyz/orion/actions/workflows/test.yaml/badge.svg)](https://github.com/gizatechxyz/orion/actions/workflows/test.yaml)
[![Project license](https://img.shields.io/github/license/gizatechxyz/orion.svg?style=flat-square)](LICENSE)
[![Pull Requests welcome](https://img.shields.io/badge/PRs-welcome-ff69b4.svg?style=flat-square)](https://github.com/gizatechxyz/orion/issues?q=is%3Aissue+is%3Aopen)
[![Join the community](https://dcbadge.vercel.app/api/server/FR3Cd88x6r?style=flat-square)](https://discord.gg/FR3Cd88x6r)
</div>


# Orion: Cairo library for Validity ML ✨
<!-- ALL-CONTRIBUTORS-BADGE:START - Do not remove or modify this section -->
[![All Contributors](https://img.shields.io/badge/all_contributors-4-green.svg?style=flat-square)](#contributors-)
<a href="https://orion.gizatech.xyz/community/contribute">
<img src="https://img.shields.io/badge/Contributor%20starter%20pack-Doc-green?logo=github"
 />
</a>
<!-- ALL-CONTRIBUTORS-BADGE:END -->



Orion is a Cairo library that provides two high-level features:

* Tensor computation (like Numpy) in Cairo 1.0.
* Verifiable Machine Learning models using STARKS.

### 🤔 What is ONNX Runtime inference?

ONNX Runtime is an open-source, high-performance inference engine for machine learning models in the Open Neural Network Exchange (ONNX) format. ONNX is an interoperable format that allows deep learning models to be represented, shared, and executed across different AI frameworks and platforms.

ONNX Runtime inference can enable faster user experiences and lower costs, supporting models from deep learning frameworks such as PyTorch and TensorFlow/Keras as well as classical machine learning libraries such as scikit-learn, LightGBM, XGBoost, etc. ONNX Runtime is compatible with various hardware, drivers, and operating systems, and provides optimal performance by leveraging hardware accelerators where applicable alongside graph optimizations and transforms. [Learn more →](https://www.onnxruntime.ai/docs/#onnx-runtime-for-inferencing)

This library proposes a new ONNX runtime built with [Cairo](https://www.cairo-lang.org/). The purpose is to provide a runtime implementation for verifiable ML model inferences using [STARKs](https://starkware.co/stark/).

✨🚀 **New contributors are welcome to implement new ONNX Operators in Cairo 1.0!** 🌟💡

## 📚 How to use our docs

You can check our official docs [here](https://orion.gizatech.xyz/).
 
- ⚙️ **APIs** includes our Getting Started guide, API Reference, and more advanced features of the core like Tensor, Operators and Optimizations.

- 🧩 **Algorithms** is an open collection of algorithms implemented using Orion to be used by the community.

- 🧠 **Knowledge base** is a self-serve library of tips, step-by-step tutorials, and articles that answer your questions about creating verifiable ML models in Cairo.

## 🌟 What's new

For a detailed list of changes, please refer to the [CHANGELOG](./docs/CHANGELOG.md) file.

## 🤝 Join the community!

Join the community and help build a safer and transparent AI in our [Discord](https://discord.gg/Kt24CsMb5k)!

## ✍️ Authors & contributors

For a full list of all authors and contributors, see [the contributors page](https://github.com/franalgaba/onnx-cairo/graphs/contributors).

## License

This project is licensed under the **MIT license**.

See [LICENSE](LICENSE) for more information.

## Contributors ✨

Thanks goes to these wonderful people ([emoji key](https://allcontributors.org/docs/en/emoji-key)):

<!-- ALL-CONTRIBUTORS-LIST:START - Do not remove or modify this section -->
<!-- prettier-ignore-start -->
<!-- markdownlint-disable -->
<table>
  <tbody>
    <tr>
      <td align="center" valign="top" width="14.28%"><a href="https://github.com/franalgaba"><img src="https://avatars.githubusercontent.com/u/24293857?v=4?s=100" width="100px;" alt="Fran Algaba"/><br /><sub><b>Fran Algaba</b></sub></a><br /><a href="https://github.com/gizatechxyz/onnx-cairo/commits?author=franalgaba" title="Code">💻</a></td>
      <td align="center" valign="top" width="14.28%"><a href="https://github.com/raphaelDkhn"><img src="https://avatars.githubusercontent.com/u/113879115?v=4?s=100" width="100px;" alt="raphaelDkhn"/><br /><sub><b>raphaelDkhn</b></sub></a><br /><a href="https://github.com/gizatechxyz/onnx-cairo/commits?author=raphaelDkhn" title="Code">💻</a></td>
      <td align="center" valign="top" width="14.28%"><a href="https://github.com/ojetokun"><img src="https://avatars.githubusercontent.com/u/74370710?v=4?s=100" width="100px;" alt="Lanre Ojetokun"/><br /><sub><b>Lanre Ojetokun</b></sub></a><br /><a href="https://github.com/gizatechxyz/onnx-cairo/commits?author=ojetokun" title="Code">💻</a> <a href="https://github.com/gizatechxyz/onnx-cairo/issues?q=author%3Aojetokun" title="Bug reports">🐛</a></td>
      <td align="center" valign="top" width="14.28%"><a href="https://github.com/moodysalem"><img src="https://avatars.githubusercontent.com/u/7897876?v=4?s=100" width="100px;" alt="Moody Salem"/><br /><sub><b>Moody Salem</b></sub></a><br /><a href="https://github.com/gizatechxyz/onnx-cairo/commits?author=moodysalem" title="Code">💻</a> <a href="https://github.com/gizatechxyz/onnx-cairo/issues?q=author%3Amoodysalem" title="Bug reports">🐛</a></td>
    </tr>
  </tbody>
</table>

<!-- markdownlint-restore -->
<!-- prettier-ignore-end -->

<!-- ALL-CONTRIBUTORS-LIST:END -->

This project follows the [all-contributors](https://github.com/all-contributors/all-contributors) specification. Contributions of any kind welcome!
