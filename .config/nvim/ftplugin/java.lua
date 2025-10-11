local config = {
    cmd = {'/home/haydenm/.local/share/nvim/mason/bin/jdtls'},
    root_dir = vim.fs.dirname(vim.fs.find({'gradlew', '.git', 'mvnw'}, { upward = true })[1]),
    on_attach = function (client, bufnr)
        require('jdtls').setup_dap()
        require('jdtls.setup').add_commands()
    end,
   -- init_options = {
   --     bundles = {
   --         vim.fn.glob("home/haydenm/.local/share/nvim/mason/packages/java-debug-adapter/extension/server/com.microsoft.java.debug.plugin-*.jar", 1)
   --     };
   -- }
}
require('jdtls').start_or_attach(config)
