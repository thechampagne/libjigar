# libjigar

[![](https://img.shields.io/github/v/tag/thechampagne/libjigar?label=version)](https://github.com/thechampagne/libjigar/releases/latest) [![](https://img.shields.io/github/license/thechampagne/libjigar)](https://github.com/thechampagne/libjigar/blob/main/LICENSE)

Text case conversion for **C**.

### Installation & Setup

#### 1. Clone the repository
```
git clone https://github.com/thechampagne/libjigar.git
```
#### 2. Navigate to the root
```
cd libjigar
```
#### 3. Build the project
```
zig build
```

### API

```c
void jigar_lower_case(char* text);

void jigar_upper_case(char* text);

void jigar_macro_case(char* text);

void jigar_train_case(char* text);

void jigar_snake_case(char* text);

void jigar_snake_camel_case(char* text);

void jigar_snake_pascal_case(char* text);

void jigar_kebab_case(char* text);

void jigar_kebab_pascal_case(char* text);

size_t jigar_camel_case(char* text);

size_t jigar_pascal_case(char* text);
```

### References
 - [jigar](https://github.com/alichraghi/jigar)

### License

This repo is released under the [MIT](https://github.com/thechampagne/libjigar/blob/main/LICENSE).
