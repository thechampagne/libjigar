const std = @import("std");

pub fn build(b: *std.build.Builder) void {
    const mode = b.standardReleaseOptions();

    const static = b.addStaticLibrary("jigar", "src/jigar.zig");
    static.setBuildMode(mode);
    static.linkLibC();
    static.install();

    const shared = b.addSharedLibrary("jigar", "src/jigar.zig", .unversioned);
    shared.setBuildMode(mode);
    shared.linkLibC();
    shared.install();

    const main_tests = b.addTest("src/jigar.zig");
    main_tests.setBuildMode(mode);

    const test_step = b.step("test", "Run library tests");
    test_step.dependOn(&main_tests.step);
}
