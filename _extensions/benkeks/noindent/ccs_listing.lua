conf = {}

function CodeBlock(block)
  -- Check if a converter exists for this block. If not, return the block
  -- unchanged.
  local diagram_type = block.classes[1]
  if "ccs" ~= block.classes[1] then
    return nil
  end

  code_snippet = block.text
  link_text = conf.link_text or
    pandoc.Inlines {
      pandoc.Str("Interactive model on "),
      pandoc.Code("equiv.io"),
      pandoc.Str(".")
    }
  encoded_snippet = quarto.base64.encode(code_snippet)
  local snippet_end = code_snippet:find("@snip")
  if snippet_end then
    block.text = code_snippet:sub(1, snippet_end - 1):gsub("%s+$", "")
  end

  local prevent_link = block.text:find("@nolink")
  if prevent_link or quarto.project.profile:find("foc") then
    block.text = block.text:gsub("@nolink", ""):gsub("^%s+", "")
    return block
  else
    return
      pandoc.Blocks {
        pandoc.Div(
          pandoc.Link(link_text,
          "https://equiv.io/#code=" .. encoded_snippet),
          {class = "column-margin"}
        ),
        -- Empty \vspace makes \marginnote and following code block align vertically. (Otherwise they don't.)
        pandoc.RawBlock("latex", "\\vspace{0em}"),
        block,
      }
  end
end