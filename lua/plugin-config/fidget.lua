local status, fidget = pcall(require, "fidget")
if not status then
  vim.notify("fidget not found")
  return
end

fidget.setup({
  text = {
    spinner = "zip", -- animation shown when tasks are ongoing
    done = "done", -- character shown when ajll tasks are complete
    commenced = "Started", -- message shown when task starts
    completed = "Completed", -- message shown when task completes
  },
  sources = {
    ["null-ls"] = {
      ignore = true,
    },
  },
})
