// Copyright 2019-2020 Gohilla Ltd.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'package:cryptography/cryptography.dart';
import 'package:cryptography/dart.dart';

import 'blake2b_impl_vm.dart'
    if (dart.library.html) 'blake2b_impl_browser.dart';

/// [Blake2b] implemented in pure Dart.
///
/// For examples and more information about the algorithm, see documentation for
/// the class [Blake2b].
class DartBlake2b extends Blake2b with DartHashAlgorithmMixin {
  const DartBlake2b() : super.constructor();

  @override
  DartHashSink newHashSink() {
    return Blake2bSink();
  }
}
