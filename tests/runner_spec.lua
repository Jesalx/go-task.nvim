local runner = require("go_task.runner")

describe("task runner", function()
  it("should run a simple task", function(done)
    runner.run("hello", function(result, code)
      assert.are.same(0, code)
      assert.is_true(vim.tbl_contains(result, "Hello, World!"))
      done()
    end)
  end)
end)
