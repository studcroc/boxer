# boxer

Small, easy to use and extensible logger which prints beautiful logs.

## Getting Started

Just use the `Boxer` class and start logging:

```dart
Boxer.punch("Boxer has punched! 🥊");
```

## Documentation

```dart
Boxer.punch(dynamic message, {String? label})
```

### Examples

- Logging out a string

```dart
Boxer.punch("Punch It!", label: "DEBUG");
```

- Logging out a list of strings


```dart
Boxer.punch(["Punch It!", "Punch It Again!"], label: "DEBUG");
```

![Screenshot](https://i.ibb.co/vXvR4pR/screenshot.png)

## MIT License

```Copyright (c) 2018 Boxer

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```
