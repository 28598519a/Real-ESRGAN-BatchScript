# Real-ESRGAN-BatchScript
BatchConvertGeneralx4_d.cmd: Drag images to .cmd (<100 images)<br>
BatchConvertGeneralx4_folder.cmd: FolderBatch/ImageSet1/xx.jpg, FolderBatch/ImageSet2/xx.jpg, ...

### 放大 (Upscale):
1. 一般: Real-ESRGAN (realesr-general-wdn-x4v3)
2. 漫畫(黑白)網點: Waifu2x (cunet)

### 去噪點 (Denoise):
1. 僅JPG噪點: `Waifu2X (level3, 僅降噪 denoise only) [若認為原圖需再增強可以改用realesr]`
2. JPG噪點: `Real-ESRGAN → Resize 25% (Lanczos)`
3. JPG噪點(重)/色塊噪: `Waifu2X (level3, 僅降噪 denoise only) → Real-ESRGAN → Resize 25% (Lanczos)`
4. 網格噪 (一般是掃圖 Usually scaned image):<br>
   a. 圖片解析度 (一邊大於2800，另一邊大於1200): `Resize 50% (Lanczos) → [Optional: Waifu2X (level3, 僅降噪 denoise only)] → Real-ESRGAN → Resize 50% (Lanczos) [若原始解析度有奇數可能要指定解析度]`<br>
   b. 圖片解析度 (一邊大於1400，另一邊大於800): `Resize 75% (Lanczos) → [Optional: Waifu2X (level3, 僅降噪 denoise only)] → Real-ESRGAN → Resize original resolution (Lanczos)`

PS. 2~4不適用於含有網點類型的圖片，僅能用: Waifu2X (level3, 僅降噪 denoise only)<br>
PS. Waifu2X務必勾選TTA，realesr要帶-x參數<br>
PS. Real-ESRGAN會有線條加強以及部分區域 **"極輕微亮暗度改變"** 的附帶效果，以及噪點較嚴重時可能會把某些噪點視為線條強化<br>
PS. Real-ESRGAN不要使用wdn以外的model，即使用於二次元圖片時，帶anime的model效果都遠差於wdn，wdn的輸出細節、顏色、速度等均優於其它

Output處理建議:
1. color: jpg100 (or png if want)
2. solid color: png (1 bit)
3. black and white: png (8bit, gray scale)

---
https://github.com/xinntao/Real-ESRGAN
