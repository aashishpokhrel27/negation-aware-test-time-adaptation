python -m src.main_TTA \
    --name NEAT_clip_coco \
    --model ViT-B-32 \
    --pretrained openai \
    --csv-caption-key caption \
    --csv-img-key filepath \
    --coco-mcq ./raw_data/images/COCO_val_mcq_llama3.1_rephrased.csv \
    --coco-negated-retrieval ./raw_data/images/COCO_val_negated_retrieval_llama3.1_rephrased_affneg_true.csv \
    --coco-negated-tta ./raw_data/images/COCO_val_negated_retrieval_llama3.1_rephrased_affneg_true_logic_inversion.csv \
    --coco-retrieval ./raw_data/images/COCO_val_retrieval.csv \
    --msrvtt-negated-retrieval ./raw_data/videos/msr_vtt_retrieval_rephrased_llama_logic_inversion.csv \
    --msrvtt-mcq ./raw_data/videos/msr_vtt_mcq_rephrased_llama.csv \
    --tta-init-lr 2e-4 \
    --tta-steps 3 \
    --tta-retrieval t2i \
    --tta-temperature 0.03 \
    --tta-temperature2 0.07 \
    --tta-total-bs 256 \
    --tta-wd 0.001


python -m src.main_TTA \
    --name blip \
    --model ViT-B-16 \
    --pretrained https://storage.googleapis.com/sfr-vision-language-research/BLIP/models/model_large_caption.pth \
    --csv-caption-key caption \
    --csv-img-key filepath \
    --coco-mcq ./raw_data/images/COCO_val_mcq_llama3.1_rephrased.csv \
    --coco-negated-retrieval ./raw_data/images/COCO_val_negated_retrieval_llama3.1_rephrased_affneg_true.csv \
    --coco-negated-tta ./raw_data/images/COCO_val_negated_retrieval_llama3.1_rephrased_affneg_true_logic_inversion.csv \
    --coco-retrieval ./raw_data/images/COCO_val_retrieval.csv \
    --msrvtt-negated-retrieval ./raw_data/videos/msr_vtt_retrieval_rephrased_llama_logic_inversion.csv \
    --msrvtt-mcq ./raw_data/videos/msr_vtt_mcq_rephrased_llama.csv \
    --tta-init-lr 2e-4 \
    --tta-steps 3 \
    --tta-retrieval t2i \
    --tta-temperature 0.03 \
    --tta-temperature2 0.07 \
    --tta-total-bs 256 \
    --tta-wd 0.001

    https://storage.googleapis.com/sfr-vision-language-research/BLIP/models/model_base_retrieval_coco.pth
    https://storage.googleapis.com/sfr-vision-language-research/BLIP/models/model_large_caption.pth
    https://drive.google.com/uc?id=1ooVVPxB-tvptgmHLIMMFGV3Cg-IrhbRZ
    'hf-hub:Nano1337/openclip-negclip'


python -m src.main_TTA \
    --name NegCLIP \
    --model ViT-B-32 \
    --pretrained ./raw_data/models/negclip.pth \
    --csv-caption-key caption \
    --csv-img-key filepath \
    --coco-mcq ./raw_data/images/COCO_val_mcq_llama3.1_rephrased.csv \
    --coco-negated-retrieval ./raw_data/images/COCO_val_negated_retrieval_llama3.1_rephrased_affneg_true.csv \
    --coco-negated-tta ./raw_data/images/COCO_val_negated_retrieval_llama3.1_rephrased_affneg_true_logic_inversion.csv \
    --coco-retrieval ./raw_data/images/COCO_val_retrieval.csv \
    --msrvtt-negated-retrieval ./raw_data/videos/msr_vtt_retrieval_rephrased_llama_logic_inversion.csv \
    --msrvtt-mcq ./raw_data/videos/msr_vtt_mcq_rephrased_llama.csv \
    --tta-init-lr 2e-4 \
    --tta-steps 3 \
    --tta-retrieval t2i \
    --tta-temperature 0.03 \
    --tta-temperature2 0.07 \
    --tta-total-bs 256 \
    --tta-wd 0.001