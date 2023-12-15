# This script takes the google slides for this course and makes them into videos using loqui mechanisms

# C. Savonen Dec 2024

if (!"gsplyr" %in% installed.packages()) devtools::install_github("fhdsl/gsplyr")
if (!"ptplyr" %in% installed.packages()) devtools::install_github("fhdsl/ptplyr") 

library('magrittr')

slide_links <- c(
  "00-intro.mp4" = "https://docs.google.com/presentation/d/13QC5DTLefV5AIUd_3QPW42D-Zf2Yf6tgrJivIf7jbaQ/edit",
  "01a-AI_Possibilities-intro_video.mp4" = NA,
  "01b-AI_Possibilities-what_is_ai_video.mp4" = "https://docs.google.com/presentation/d/1-Mm-Vym3xdtB8xLRHR24jNCLSbNgFHw6N62iJrYe63c/edit",
  "01c-AI_Possibilities-how_ai_works_video.mp4" = "https://docs.google.com/presentation/d/1OydUyEv1uEzn8ONPznxH1mGd4VHC9n88_aUGqkHJX4I/edit",
  "01d-AI_Possibilities-ai_types_video.mp4" = "https://docs.google.com/presentation/d/1UiYOR_4a68524XsCv-f950n_CfbyNJVez2KdAjq2ltU/edit",
  "01e-AI_Possibilities-possibilities_video.mp4" = "https://docs.google.com/presentation/d/16FlAoE9-kTinf4ErYYtDs5Ge2thneUtQUawem_eaHtc/edit",
  "01f-AI_Possibilities-ground_rules_video.mp4" = "https://docs.google.com/presentation/d/12PQxIztMXnYzdZQWdR-qfxcE2ogoMlWp6p6VKSVtnwU/edit",
  "02a-Avoiding_Harm-intro_video.mp4" = NA,
  "02b-Avoiding_Harm-concepts_video.mp4" = NA,
  "02c-Avoiding_Harm-algorithms_video.mp4" = NA,
  "02d-Avoiding_Harm-adherence_video.mp4" = NA,
  "02e-Avoiding_Harm-consent_and_ai_video.mp4" = NA,
  "02f-Avoiding_Harm-idare_and_ai_video.mp4" = NA,
  "02g-Avoiding_Harm-ethical_process_video.mp4" = NA,
  "03a-Determining-AI-Needs-intro_video.mp4" = "https://docs.google.com/presentation/d/1Le4EqKaQKJskZDFrO0h2I0mP-s23C8UHFenhMeFpmu8/edit",
  "03b-Determining-AI-Needs-components_video.mp4" = "https://docs.google.com/presentation/d/1COHDxEwy9GwXAgUJLBqjDjWm-lqdKy2n3Qds4ivM4UA/edit",
  "03c-Determining-AI-Needs-determining-needs_video.mp4" = "https://docs.google.com/presentation/d/1GgsDe7dYA91RY_xCbcDRzSPGuxIMXnyHPbzL1h57pE4/edit",
  "03d-Determining-AI-Needs-knowledge_video.mp4" = "https://docs.google.com/presentation/d/1rdVYJyS7xLYDsoZwC99VyQSnnaKelUnsVG4j2rHWjFA/edit",
  "03e-Determining-AI-Needs-security_video.mp4" = "https://docs.google.com/presentation/d/1tv-hol-c_IWBRu7RcPVaSBrxXVOMBRQdDQR3RJDZ20c/edit",
  "03f-Determining-AI-Needs-interface_video.mp4" = "https://docs.google.com/presentation/d/1qrR_FHMrYr4ZUgghC5FE4sJ107uv7QPisyGPTPI4I1g/edit",
  "03g-Determining-AI-Needs-evaluation_video.mp4" = "https://docs.google.com/presentation/d/1ucUX_guHTpuFipcdMKgi_8BGKNzLYtntobyEqZYdDFM/edit",
  "04a-AI_Policy-intro_video.mp4" = NA,
  "04b-AI_Policy-ai_regs_and_laws_video.mp4" = "https://docs.google.com/presentation/d/1LWHYGtstIn8gTzGBJpffycHbh2DDrogmYregm_MGZD8/edit",
  "04b-AI_Policy-how_to_navigate_video.mp4" = NA,
  "04c-AI_Policy-data_laws_video.mp4" = NA,
  "04e-AI_Policy-creating_your_ai_policy_video.mp4" = NA,
  "04f-AI_Policy-education_and_compliance_video.mp4" = NA
)

# Make it a data.frame
slides_df <- data.frame(chapter = names(slide_links), 
                        slide_links) %>% 
  dplyr::filter(!is.na(slide_links))

# Set up the function 
gs_to_video <- function(gs_url, video_name) {
  pptx_path <- gsplyr::download(gs_url, type = "pptx")
  pptx_notes_vector <- ptplyr::extract_notes(pptx_path)
  pdf_path <- gsplyr::download(gs_url, type = "pdf")
  image_path <- ptplyr::convert_pdf_png(pdf_path)

  ari::ari_spin(
    images = image_path,
    paragraphs = pptx_notes_vector,
    output = video_name,
    tts_engine_args = ari::coqui_args(
      "jenny",
      "jenny"
    ),
    subtitles = TRUE
  )
}

### Making videos
purrr::pmap(slides_df[1, ], function(chapter, slide_links) { 
  video = gs_to_video(gs_url = slide_links, 
              video_name = chapter)
  })
