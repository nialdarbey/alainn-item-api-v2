select i.item_id, i.item_name, i.item_summary, i.item_description, i.item_brand, it.item_type_name, im.url, 
imt.image_type_name        
from item i, item_type it, image im, image_type imt       
where i.item_type_id = it.id       
and im.item_id = i.item_id       
and im.image_type_id = imt.id          
and imt.image_type_name in ('TinyImage','LargeImage')           
order by item_id          
limit 10;


select i.item_id, it.item_type_name, i.item_name, i.item_brand, i.item_description,  si.sku_id, si.sku_name, 
si.sku_summary, si.price, si.stock_quantity, im.url, imt.image_type_name        
from item i, item_type it, sku_item si, image im, image_type imt        
where i.item_type_id = it.id       
and si.item_id = i.item_id       
and si.sku_id = im.item_sku_id       
and im.image_type_id = imt.id       
and i.item_id = 'B00J40911Q'        
and imt.image_type_name in ('TinyImage');