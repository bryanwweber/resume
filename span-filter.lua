function Div (el)
  if el.classes:includes('job-header') then
    local new_content = pandoc.Inlines{}
    for i, item in ipairs(el.content) do
      if item.tag == 'Para' then
        for j, inline in ipairs(item.content) do
          new_content:insert(inline)
        end
      else
        new_content:insert(item)
      end
    end
    el.content = new_content
    return el
  end
end
