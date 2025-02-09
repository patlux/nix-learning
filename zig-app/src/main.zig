const std = @import("std");
const log = std.log.scoped(.main);

pub fn main() !void {
    log.info("Hello World!", .{});
}
