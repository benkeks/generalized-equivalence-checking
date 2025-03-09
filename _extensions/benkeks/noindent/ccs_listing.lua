conf = {}

function CodeBlock(block)
  -- Check if a converter exists for this block. If not, return the block
  -- unchanged.
  local diagram_type = block.classes[1]
  if "ccs" ~= block.classes[1] then
    return nil
  end

  code_snippet = block.text
  link_text = conf.link_text or "Example on equiv.io"
  encoded_snippet = quarto.base64.encode(code_snippet)
  local snippet_start = code_snippet:find("@snip")
  if snippet_start then
    block.text = code_snippet:sub(1, snippet_start - 1):gsub("%s+$", "")
  end
  return
    pandoc.Blocks {
      pandoc.Div(
        pandoc.Link(link_text,
        "https://equiv.io/#code=" .. encoded_snippet),
        {class = "column-margin"}
      ),
      block,
    }
end