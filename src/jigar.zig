// Copyright (c) 2022 XXIV
// 
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
// 
// The above copyright notice and this permission notice shall be included in all
// copies or substantial portions of the Software.
// 
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
// SOFTWARE.
const std = @import("std");
const ascii = std.ascii;
const testing = std.testing;

/// lower case
/// 
/// Example:
/// * *
/// int main()
/// {
///     char* text = "HelLo World ";
///     jigar_lower_case(text);
///     printf("%s\n", text); // "hello world "
///     return 0;
/// }
/// * *
/// 
/// @param text
export fn jigar_lower_case(text: [*c]u8) void {
    for (std.mem.span(text)) |*c| {
        c.* = ascii.toLower(c.*);
    }
}

/// upper case
/// 
/// Example:
/// * *
/// int main()
/// {
///     char* text = "HelLo World ";
///     jigar_upper_case(text);
///     printf("%s\n", text); // "HELLO WORLD "
///     return 0;
/// }
/// * *
/// 
/// @param text
export fn jigar_upper_case(text: [*c]u8) void {
    for (std.mem.span(text)) |*c| {
        c.* = ascii.toUpper(c.*);
    }
}

/// macro case
/// 
/// Example:
/// * *
/// int main()
/// {
///     char* text = "HelLo World ";
///     jigar_macro_case(text);
///     printf("%s\n", text); // "HELLO_WORLD_"
///     return 0;
/// }
/// * *
/// 
/// @param text
export fn jigar_macro_case(text: [*c]u8) void {
    for (std.mem.span(text)) |*c| {
        if (c.* == ' ') {
            c.* = '_';
        } else {
            c.* = ascii.toUpper(c.*);
        }
    }
}

/// train case
/// 
/// Example:
/// * *
/// int main()
/// {
///     char* text = "HelLo World ";
///     jigar_train_case(text);
///     printf("%s\n", text); // "HELLO-WORLD-"
///     return 0;
/// }
/// * *
/// 
/// @param text
export fn jigar_train_case(text: [*c]u8) void {
    for (std.mem.span(text)) |*c| {
        if (c.* == ' ') {
            c.* = '-';
        } else {
            c.* = ascii.toUpper(c.*);
        }
    }
}

/// snake case
/// 
/// Example:
/// * *
/// int main()
/// {
///     char* text = "HelLo World ";
///     jigar_snake_case(text);
///     printf("%s\n", text); // "hello_world_"
///     return 0;
/// }
/// * *
/// 
/// @param text
export fn jigar_snake_case(text: [*c]u8) void {
    for (std.mem.span(text)) |*c| {
        if (c.* == ' ') {
            c.* = '_';
        } else {
            c.* = ascii.toLower(c.*);
        }
    }
}

/// snake camel case
/// 
/// Example:
/// * *
/// int main()
/// {
///     char* text = " HelLo World ";
///     jigar_snake_camel_case(text);
///     printf("%s\n", text); // "_hello_World_"
///     return 0;
/// }
/// * *
/// 
/// @param text
export fn jigar_snake_camel_case(text: [*c]u8) void {
    var first_letter_found = false;
    var is_word_start = false;
    for (std.mem.span(text)) |*c| {
        if (!first_letter_found and std.ascii.isAlpha(c.*)) {
            c.* = ascii.toLower(c.*);
            first_letter_found = true;
            is_word_start = false;
            continue;
        }

        if (c.* == ' ') {
            c.* = '_';
            is_word_start = true;
        } else {
            if (is_word_start) {
                c.* = ascii.toUpper(c.*);
                is_word_start = false;
            } else {
                c.* = ascii.toLower(c.*);
            }
        }
    }
}

/// snake pascal case
/// 
/// Example:
/// * *
/// int main()
/// {
///     char* text = " HelLo World ";
///     jigar_snake_pascal_case(text);
///     printf("%s\n", text); // "_Hello_World_"
///     return 0;
/// }
/// * *
/// 
/// @param text
export fn jigar_snake_pascal_case(text: [*c]u8) void {
    var is_word_start = true;
    for (std.mem.span(text)) |*c| {
        if (c.* == ' ') {
            c.* = '_';
            is_word_start = true;
        } else {
            if (is_word_start) {
                c.* = ascii.toUpper(c.*);
                is_word_start = false;
            } else {
                c.* = ascii.toLower(c.*);
            }
        }
    }
}

/// kebab case
/// 
/// Example:
/// * *
/// int main()
/// {
///     char* text = "HelLo World ";
///     jigar_kebab_case(text);
///     printf("%s\n", text); // "hello-world-"
///     return 0;
/// }
/// * *
/// 
/// @param text
export fn jigar_kebab_case(text: [*c]u8) void {
    for (std.mem.span(text)) |*c| {
        if (c.* == ' ') {
            c.* = '-';
        } else {
            c.* = ascii.toLower(c.*);
        }
    }
}

/// kebab pascal case
/// 
/// Example:
/// * *
/// int main()
/// {
///     char* text = "HelLo World ";
///     jigar_kebab_pascal_case(text);
///     printf("%s\n", text); // "Hello-World-"
///     return 0;
/// }
/// * *
/// 
/// @param text
export fn jigar_kebab_pascal_case(text: [*c]u8) void {
    var is_word_start = true;
    for (std.mem.span(text)) |*c| {
        if (c.* == ' ') {
            c.* = '-';
            is_word_start = true;
        } else {
            if (is_word_start) {
                c.* = ascii.toUpper(c.*);
                is_word_start = false;
            } else {
                c.* = ascii.toLower(c.*);
            }
        }
    }
}

/// camel case
/// 
/// Example:
/// * *
/// int main()
/// {
///     char* text = "HelLo World ";
///     jigar_camel_case(text);
///     printf("%s\n", text); // "helloWorld"
///     return 0;
/// }
/// * *
/// 
/// NOTE: spaces will be unused.
///
/// @param text
/// @return the acutal size of text
export fn jigar_camel_case(text: [*c]u8) usize {
    var first_letter_found = false;
    var is_word_start = false;

    var i: usize = 0;
    var spaces_found: usize = 0;
    var txt = std.mem.span(text);
    while (i < txt.len - spaces_found) {
        var c = &txt[i];
        if (!first_letter_found and std.ascii.isAlpha(c.*)) {
            c.* = ascii.toLower(c.*);
            first_letter_found = true;
            is_word_start = false;
            i += 1;
            continue;
        }

        if (c.* == ' ') {
            std.mem.copy(u8, txt[i..], txt[i + 1 ..]);
            is_word_start = true;
            spaces_found += 1;
            continue;
        } else {
            if (is_word_start) {
                c.* = ascii.toUpper(c.*);
                is_word_start = false;
            } else {
                c.* = ascii.toLower(c.*);
            }
        }
        i += 1;
    }
    return txt.len - spaces_found;
}

/// pascal case
/// 
/// Example:
/// * *
/// int main()
/// {
///     char* text = "HelLo World ";
///     jigar_pascal_case(text);
///     printf("%s\n", text); // "HelloWorld"
///     return 0;
/// }
/// * *
/// 
/// NOTE: spaces will be unused.
///
/// @param text
/// @return the acutal size of text
export fn jigar_pascal_case(text: [*c]u8) usize {
    var is_word_start = true;

    var i: usize = 0;
    var spaces_found: usize = 0;
    var txt = std.mem.span(text);
    while (i < txt.len - spaces_found) {
        var c = &txt[i];
        if (c.* == ' ') {
            std.mem.copy(u8, txt[i..], txt[i + 1 ..]);
            is_word_start = true;
            spaces_found += 1;
            continue;
        } else {
            if (is_word_start) {
                c.* = ascii.toUpper(c.*);
                is_word_start = false;
            } else {
                c.* = ascii.toLower(c.*);
            }
        }
        i += 1;
    }
    return txt.len - spaces_found;
}

test "lower case" {
    var test_text = "HelLo World ".*;
    jigar_lower_case(&test_text);
    try testing.expectEqualStrings("hello world ", &test_text);
}

test "upper case" {
    var test_text = "HelLo World ".*;
    jigar_upper_case(&test_text);
    try testing.expectEqualStrings("HELLO WORLD ", &test_text);
}

test "macro case" {
    var test_text = "HelLo World ".*;
    jigar_macro_case(&test_text);
    try testing.expectEqualStrings("HELLO_WORLD_", &test_text);
}

test "train case" {
    var test_text = "HelLo World ".*;
    jigar_train_case(&test_text);
    try testing.expectEqualStrings("HELLO-WORLD-", &test_text);
}

test "snake case" {
    var test_text = "HelLo World ".*;
    jigar_snake_case(&test_text);
    try testing.expectEqualStrings("hello_world_", &test_text);
}

test "snake camel case" {
    var test_text = " HelLo World ".*;
    jigar_snake_camel_case(&test_text);
    try testing.expectEqualStrings("_hello_World_", &test_text);
}

test "snake pascal case" {
    var test_text = " HelLo World ".*;
    jigar_snake_pascal_case(&test_text);
    try testing.expectEqualStrings("_Hello_World_", &test_text);
}

test "kebab case" {
    var test_text = "HelLo World ".*;
    jigar_kebab_case(&test_text);
    try testing.expectEqualStrings("hello-world-", &test_text);
}

test "kebab pascal case" {
    var test_text = "HelLo World ".*;
    jigar_kebab_pascal_case(&test_text);
    try testing.expectEqualStrings("Hello-World-", &test_text);
}

test "camel case" {
    var test_text = "HelLo World ".*;
    const acutal_size = jigar_camel_case(&test_text);
    try testing.expectEqualStrings("helloWorld", test_text[0..acutal_size]);
}

test "pascal case" {
    var test_text = "HelLo World ".*;
    const acutal_size = jigar_pascal_case(&test_text);
    try testing.expectEqualStrings("HelloWorld", test_text[0..acutal_size]);
}