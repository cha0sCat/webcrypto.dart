// Copyright 2020 Google LLC
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

export 'detected_runtime_stub.dart' show detectedRuntime;

/// Legacy helper for browser-specific exclusions.
///
/// In the native-only test matrix this returns [value] unchanged.
T? nullOnFirefox<T>(T value) => detectedRuntime == 'firefox' ? null : value;

/// Legacy helper for browser-specific exclusions.
///
/// In the native-only test matrix this returns [value] unchanged.
T? nullOnSafari<T>(T value) => detectedRuntime == 'safari' ? null : value;
