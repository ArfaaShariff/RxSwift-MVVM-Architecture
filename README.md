# RxSwift-MVVM-Architecture

<div align="center">
  <img src="http://imgur.com/32h6nVA.png" height="240" width="400">
  <p>A battle-tested architecture for developing scalable iOS apps.</p>
</div>

# The Dos and Don'ts of Reactive MVVM
DO
  - Use Drivers when working with Observables at the UI level. A Driver is simply an Observable that shares its stream among all subscribers (Shared replay), and always runs on the UI thread.
  - Use Observables as opposed to Drivers when working with anything that isn't UI related.
  
DON'T
  - Never subscribe to Observable or Drivers in your view models. View models should only transform Observables and provide output as Observable or Drivers.
  
# Contributing ❤️
There's a reason this is open source, we'd love for you to throw your ideas into here!

‼️ Before you jump in, here's a few gotcha's ‼️

- Please make sure you work on the development branch! Every release is a merge of development into master!
- Please open an issue that your pull request addresses. Issues are a great way to communicate what needs to be done!
- Feel free to submit your pull request before you are even done developing, it's a great way to achieve a faster feedback loop.

# Contact 📞
Feel free to drop me a line!
- https://twitter.com/deveIoper
- dan_pc@live.com

# License
RxSwift-MVVM-Architecture is available under the GPLv3 license. You can modify it and release it, but it must be free.

See the LICENSE file for more info.
