const std = @import("std");

pub fn name() void {}

const Button = struct {
    x: i32,
    y: i32,
    width: i32,
    height: i32,
    fontSize: i32,
};

const buttons = [_]Button{
    Button{ .x = 1, .y = 1, .width = 2, .height = 2, .fontSize = 16 },
    Button{ .x = 1, .y = 1, .width = 3, .height = 3 },
};
