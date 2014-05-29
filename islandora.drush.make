; Run this from within the sites/default or sites/all directory, whichever you prefer:
; drush make --yes --no-core --contrib-destination=. islandora.drush.make 

; Core version
core = 7.x

; Should always be 2.
api = 2

; Modules

; Defaults that apply to all modules.
defaults[projects][type] = "module"
defaults[projects][download][type] = "git"
defaults[projects][download][branch]  = "7.x"
defaults[projects][download][overwrite] = TRUE

projects[islandora][download][url] = "git@github.com:Islandora/islandora.git"
projects[islandora_bagit][download][url] = "git@github.com:Islandora/islandora_bagit.git"
projects[islandora_batch][download][url] = "git@github.com:Islandora/islandora_batch.git"
projects[islandora_book_batch][download][url] = "git@github.com:Islandora/islandora_book_batch.git"
projects[islandora_bookmark][download][url] = "git@github.com:Islandora/islandora_bookmark.git"
projects[islandora_checksum][download][url] = "git@github.com:Islandora/islandora_checksum.git"
projects[islandora_checksum_checker][download][url] = "git@github.com:Islandora/islandora_checksum_checker.git"
projects[islandora_fits][download][url] = "git@github.com:Islandora/islandora_fits.git"
projects[islandora_image_annotation][download][url] = "git@github.com:Islandora/islandora_image_annotation.git"
projects[islandora_importer][download][url] = "git@github.com:Islandora/islandora_importer.git"
projects[islandora_internet_archive_bookreader][download][url] = "git@github.com:Islandora/islandora_internet_archive_bookreader.git"
projects[islandora_jwplayer][download][url] = "git@github.com:Islandora/islandora_jwplayer.git"
projects[islandora_marcxml][download][url] = "git@github.com:Islandora/islandora_marcxml.git"
projects[islandora_oai][download][url] = "git@github.com:Islandora/islandora_oai.git"
projects[islandora_ocr][download][url] = "git@github.com:Islandora/islandora_ocr.git"
projects[islandora_openseadragon][download][url] = "git@github.com:Islandora/islandora_openseadragon.git"
projects[islandora_paged_content][download][url] = "git@github.com:Islandora/islandora_paged_content.git"
projects[islandora_premis][download][url] = "git@github.com:Islandora/islandora_premis.git"
projects[islandora_scholar][download][url] = "git@github.com:Islandora/islandora_scholar.git"
projects[islandora_simple_workflow][download][url] = "git@github.com:Islandora/islandora_simple_workflow.git"
projects[islandora_solr_facet_pages][download][url] = "git@github.com:Islandora/islandora_solr_facet_pages.git"
projects[islandora_solr_metadata][download][url] = "git@github.com:Islandora/islandora_solr_metadata.git"
projects[islandora_solr_search][download][url] = "git@github.com:Islandora/islandora_solr_search.git"
projects[islandora_solution_pack_audio][download][url] = "git@github.com:Islandora/islandora_solution_pack_audio.git"
projects[islandora_solution_pack_book][download][url] = "git@github.com:Islandora/islandora_solution_pack_book.git"
projects[islandora_solution_pack_collection][download][url] = "git@github.com:Islandora/islandora_solution_pack_collection.git"
projects[islandora_solution_pack_compound][download][url] = "git@github.com:Islandora/islandora_solution_pack_compound.git"
projects[islandora_solution_pack_image][download][url] = "git@github.com:Islandora/islandora_solution_pack_image.git"
projects[islandora_solution_pack_large_image][download][url] = "git@github.com:Islandora/islandora_solution_pack_large_image.git"
projects[islandora_solution_pack_newspaper][download][url] = "git@github.com:Islandora/islandora_solution_pack_newspaper.git"
projects[islandora_solution_pack_pdf][download][url] = "git@github.com:Islandora/islandora_solution_pack_pdf.git"
projects[islandora_solution_pack_video][download][url] = "git@github.com:Islandora/islandora_solution_pack_video.git"
projects[islandora_solution_pack_web_archive][download][url] = "git@github.com:Islandora/islandora_solution_pack_web_archive.git"
projects[islandora_sync][download][url] = "git@github.com:Islandora/islandora_sync.git"
projects[islandora_xacml_editor][download][url] = "git@github.com:Islandora/islandora_xacml_editor.git"
projects[islandora_xml_forms][download][url] = "git@github.com:Islandora/islandora_xml_forms.git"
projects[islandora_xmlsitemap][download][url] = "git@github.com:Islandora/islandora_xmlsitemap.git"
projects[objective_forms][download][url] = "git@github.com:Islandora/objective_forms.git"
projects[php_lib][download][url] = "git@github.com:Islandora/php_lib.git"

; Libraries

libraries[tuque][download][type] = "git"
libraries[tuque][download][overwrite] = TRUE
libraries[tuque][download][branch] = "1.3"
libraries[tuque][download][url] = "git@github.com:Islandora/tuque.git"
