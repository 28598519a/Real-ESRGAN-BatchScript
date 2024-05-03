# Real-ESRGAN-BatchScript
BatchConvertGeneralx4_d.cmd: Drag images to .cmd (<100 images)<br>
BatchConvertGeneralx4_folder.cmd: FolderBatch/ImageSet1/xx.jpg, FolderBatch/ImageSet2/xx.jpg, ...

### 放大 (Upscale):
1. 一般: Real-ESRGAN (realesr-general-wdn-x4v3)
2. 漫畫(黑白)網點: Waifu2x (cunet)

### 去噪點 (Denoise):
1. JPG噪點: Real-ESRGAN → Resize 25% (Lanczos)
2. JPG噪點(重)/色塊噪: Waifu2X (level3, 僅降噪 denoise only) → Real-ESRGAN → Resize 25% (Lanczos)
3. 網格噪 (一般是掃圖 Usually scaned image):<br>
   a. 圖片解析度 (一邊大於2800，另一邊大於1200): Resize 50% (Lanczos) → Real-ESRGAN → Resize 50% (Lanczos) [若原始解析度有奇數可能要指定解析度]
   b. 圖片解析度 (一邊大於1400，另一邊大於800): Resize 75% (Lanczos) → [Optional: Waifu2X (level3, 僅降噪 denoise only)] → Real-ESRGAN → Resize original resolution (Lanczos)
4. 1~3不適用於含有漫畫網點類型的圖片，僅能用: Waifu2X (level3, 僅降噪 denoise only)

Output處理建議:
1. color: jpg100 (or png if want)
2. solid color: png (1 bit)
3. black and white: png (8bit, gray scale)

---
https://github.com/xinntao/Real-ESRGAN
