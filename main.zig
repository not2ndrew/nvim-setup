const std = @import("std");

pub fn name() void {}

pub fn manyArgs(i: u8, j: u8, k: u8) u8 {
    _ = i;
    _ = j;
    _ = k;
}
