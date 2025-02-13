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

/// [DartRsaSsaPkcs1v15] implementation in pure Dart. Currently it throws
/// [UnimplementedError] if you try to use it.
///
/// For examples and more information about the algorithm, see documentation for
/// the class [Ecdh].
class DartRsaSsaPkcs1v15 extends RsaSsaPkcs1v15 {
  @override
  final HashAlgorithm hashAlgorithm;

  const DartRsaSsaPkcs1v15(this.hashAlgorithm) : super.constructor();

  @override
  Future<RsaKeyPair> newKeyPair({
    int modulusLength = RsaSsaPkcs1v15.defaultModulusLength,
    List<int> publicExponent = RsaSsaPkcs1v15.defaultPublicExponent,
  }) {
    throw UnimplementedError();
  }

  @override
  Future<Signature> sign(List<int> message, {required KeyPair keyPair}) {
    throw UnimplementedError();
  }

  @override
  Future<bool> verify(List<int> message, {required Signature signature}) {
    throw UnimplementedError();
  }
}
