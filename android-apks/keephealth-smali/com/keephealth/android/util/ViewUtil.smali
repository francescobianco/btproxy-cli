.class public Lcom/keephealth/android/util/ViewUtil;
.super Ljava/lang/Object;
.source "ViewUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addDefaultScreenArea(Landroid/view/View;I)V
    .registers 4

    .line 54
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 55
    new-instance v1, Lcom/keephealth/android/util/ViewUtil$2;

    invoke-direct {v1, p0, p1}, Lcom/keephealth/android/util/ViewUtil$2;-><init>(Landroid/view/View;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static addDefaultScreenArea(Landroid/view/View;IIII)V
    .registers 13

    .line 28
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 29
    new-instance v7, Lcom/keephealth/android/util/ViewUtil$1;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/keephealth/android/util/ViewUtil$1;-><init>(Landroid/view/View;IIII)V

    invoke-virtual {v0, v7}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static blur(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .registers 4

    .line 106
    invoke-static {p1}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object p1

    .line 107
    invoke-static {p1, p0}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v0

    .line 108
    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getElement()Landroid/renderscript/Element;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object p1

    .line 109
    invoke-virtual {p1, v0}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    const/high16 v1, 0x41c80000    # 25.0f

    .line 110
    invoke-virtual {p1, v1}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    .line 111
    invoke-virtual {p1, v0}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    .line 112
    invoke-virtual {v0, p0}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    return-object p0
.end method

.method public static calculateRectW(IIFF)F
    .registers 6

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p3, v0

    if-ltz v1, :cond_7

    move p3, v0

    :cond_7
    const/4 v0, 0x0

    cmpg-float v1, p3, v0

    if-gtz v1, :cond_d

    move p3, v0

    :cond_d
    if-nez p1, :cond_10

    return v0

    :cond_10
    mul-float/2addr p3, p2

    int-to-float p1, p1

    div-float/2addr p3, p1

    int-to-float p0, p0

    mul-float/2addr p0, p3

    return p0
.end method

.method public static drawLine(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V
    .registers 16

    div-float v0, p4, p3

    float-to-int v0, v0

    const/4 v1, 0x0

    :cond_4
    if-ge v1, v0, :cond_23

    add-int/lit8 v1, v1, 0x1

    int-to-float v2, v1

    mul-float/2addr v2, p3

    add-float v9, v2, p1

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, p3, v3

    add-float/2addr v2, v3

    add-float/2addr v2, p1

    move-object v3, p0

    move v4, v9

    move v5, p2

    move v6, v2

    move v7, p2

    move-object v8, p5

    .line 434
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    cmpl-float v3, v9, p4

    if-gez v3, :cond_23

    cmpl-float v2, v2, p4

    if-ltz v2, :cond_4

    :cond_23
    return-void
.end method

.method public static drawRect(Landroid/graphics/Canvas;FFFIIFFFLandroid/graphics/Paint;)V
    .registers 11

    add-float v0, p2, p8

    .line 184
    invoke-static {p4, p5, p6, p7}, Lcom/keephealth/android/util/ViewUtil;->calculateRectW(IIFF)F

    move-result p2

    add-float p5, p1, p2

    add-float/2addr p3, v0

    sub-float p6, p3, p8

    move-object p2, p0

    move p3, p1

    move p4, v0

    move-object p7, p9

    .line 186
    invoke-virtual/range {p2 .. p7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public static drawText(Landroid/graphics/Canvas;IFFFFFILjava/lang/String;Ljava/lang/String;)V
    .registers 13

    .line 227
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const/4 v1, 0x1

    .line 228
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 229
    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 230
    invoke-virtual {v0, p7}, Landroid/graphics/Paint;->setColor(I)V

    .line 232
    new-instance p7, Ljava/lang/StringBuilder;

    invoke-direct {p7}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit8 v1, p1, 0x3c

    invoke-virtual {p7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p7

    const-string v1, ""

    invoke-virtual {p7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p7

    invoke-virtual {p7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p7

    .line 233
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    rem-int/lit8 p1, p1, 0x3c

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 236
    invoke-virtual {v0, p5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 237
    invoke-static {v0, p7}, Lcom/keephealth/android/util/ViewUtil;->getTextRectHeight(Landroid/graphics/Paint;Ljava/lang/String;)F

    move-result v1

    .line 238
    invoke-virtual {p0, p7, p2, p3, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-float/2addr p2, p4

    .line 241
    invoke-static {v0, p7}, Lcom/keephealth/android/util/ViewUtil;->getTextRectWidth(Landroid/graphics/Paint;Ljava/lang/String;)F

    move-result p7

    add-float/2addr p2, p7

    .line 242
    invoke-virtual {v0, p6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 243
    invoke-static {v0, p8}, Lcom/keephealth/android/util/ViewUtil;->getTextRectHeight(Landroid/graphics/Paint;Ljava/lang/String;)F

    move-result p7

    cmpl-float v2, v1, p7

    if-lez v2, :cond_56

    sub-float/2addr v1, p7

    goto :goto_58

    :cond_56
    sub-float v1, p7, v1

    :goto_58
    const/high16 p7, 0x40800000    # 4.0f

    div-float/2addr v1, p7

    sub-float p7, p3, v1

    .line 245
    invoke-virtual {p0, p8, p2, p7, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-float/2addr p2, p4

    .line 248
    invoke-static {v0, p8}, Lcom/keephealth/android/util/ViewUtil;->getTextRectWidth(Landroid/graphics/Paint;Ljava/lang/String;)F

    move-result p8

    add-float/2addr p2, p8

    .line 249
    invoke-virtual {v0, p5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 250
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-float/2addr p2, p4

    .line 253
    invoke-static {v0, p1}, Lcom/keephealth/android/util/ViewUtil;->getTextRectWidth(Landroid/graphics/Paint;Ljava/lang/String;)F

    move-result p1

    add-float/2addr p2, p1

    .line 254
    invoke-virtual {v0, p6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 255
    invoke-virtual {p0, p9, p2, p7, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public static drawText(Landroid/graphics/Canvas;IFFFFFILjava/lang/String;Ljava/lang/String;Landroid/graphics/Paint$Align;)V
    .registers 15

    .line 272
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const/4 v1, 0x1

    .line 273
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 274
    invoke-virtual {v0, p10}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 275
    invoke-virtual {v0, p7}, Landroid/graphics/Paint;->setColor(I)V

    .line 277
    sget-object p7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    div-int/lit8 v1, p1, 0x3c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%02d"

    invoke-static {p7, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p7

    .line 278
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    rem-int/lit8 p1, p1, 0x3c

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, v2, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 280
    invoke-virtual {v0, p5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 281
    invoke-static {v0, p7}, Lcom/keephealth/android/util/ViewUtil;->getTextRectHeight(Landroid/graphics/Paint;Ljava/lang/String;)F

    move-result v1

    .line 282
    invoke-virtual {v0, p6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 283
    invoke-static {v0, p8}, Lcom/keephealth/android/util/ViewUtil;->getTextRectHeight(Landroid/graphics/Paint;Ljava/lang/String;)F

    move-result v2

    cmpl-float v3, v1, v2

    if-lez v3, :cond_45

    sub-float/2addr v1, v2

    goto :goto_47

    :cond_45
    sub-float v1, v2, v1

    .line 287
    :goto_47
    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    const/high16 v3, 0x40800000    # 4.0f

    if-ne p10, v2, :cond_7b

    .line 290
    invoke-virtual {v0, p5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 291
    invoke-virtual {p0, p7, p2, p3, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-float/2addr p2, p4

    .line 294
    invoke-static {v0, p7}, Lcom/keephealth/android/util/ViewUtil;->getTextRectWidth(Landroid/graphics/Paint;Ljava/lang/String;)F

    move-result p7

    add-float/2addr p2, p7

    .line 295
    invoke-virtual {v0, p6}, Landroid/graphics/Paint;->setTextSize(F)V

    div-float/2addr v1, v3

    sub-float p7, p3, v1

    .line 296
    invoke-virtual {p0, p8, p2, p7, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-float/2addr p2, p4

    .line 299
    invoke-static {v0, p8}, Lcom/keephealth/android/util/ViewUtil;->getTextRectWidth(Landroid/graphics/Paint;Ljava/lang/String;)F

    move-result p8

    add-float/2addr p2, p8

    .line 300
    invoke-virtual {v0, p5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 301
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-float/2addr p2, p4

    .line 304
    invoke-static {v0, p1}, Lcom/keephealth/android/util/ViewUtil;->getTextRectWidth(Landroid/graphics/Paint;Ljava/lang/String;)F

    move-result p1

    add-float/2addr p2, p1

    .line 305
    invoke-virtual {v0, p6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 306
    invoke-virtual {p0, p9, p2, p7, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_f3

    .line 307
    :cond_7b
    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    if-ne p10, v2, :cond_c2

    .line 312
    sget-object p10, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, p10}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    const/high16 p10, 0x40000000    # 2.0f

    div-float p10, p4, p10

    sub-float v2, p2, p10

    .line 314
    invoke-virtual {v0, p6}, Landroid/graphics/Paint;->setTextSize(F)V

    div-float/2addr v1, v3

    sub-float v1, p3, v1

    .line 315
    invoke-virtual {p0, p8, v2, v1, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 318
    sget-object v3, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    sub-float/2addr v2, p4

    .line 319
    invoke-static {v0, p8}, Lcom/keephealth/android/util/ViewUtil;->getTextRectWidth(Landroid/graphics/Paint;Ljava/lang/String;)F

    move-result p8

    sub-float/2addr v2, p8

    .line 320
    invoke-virtual {v0, p5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 321
    invoke-virtual {p0, p7, v2, p3, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 324
    sget-object p7, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, p7}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    add-float/2addr p2, p10

    .line 326
    invoke-virtual {v0, p5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 327
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 330
    sget-object p3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    add-float/2addr p2, p4

    .line 331
    invoke-static {v0, p1}, Lcom/keephealth/android/util/ViewUtil;->getTextRectWidth(Landroid/graphics/Paint;Ljava/lang/String;)F

    move-result p1

    add-float/2addr p2, p1

    .line 332
    invoke-virtual {v0, p6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 333
    invoke-virtual {p0, p9, p2, v1, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_f3

    .line 335
    :cond_c2
    sget-object v2, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    if-ne p10, v2, :cond_f3

    .line 338
    invoke-virtual {v0, p6}, Landroid/graphics/Paint;->setTextSize(F)V

    div-float/2addr v1, v3

    sub-float p10, p3, v1

    .line 339
    invoke-virtual {p0, p9, p2, p10, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    sub-float/2addr p2, p4

    .line 342
    invoke-static {v0, p9}, Lcom/keephealth/android/util/ViewUtil;->getTextRectWidth(Landroid/graphics/Paint;Ljava/lang/String;)F

    move-result p9

    sub-float/2addr p2, p9

    .line 343
    invoke-virtual {v0, p5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 344
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    sub-float/2addr p2, p4

    .line 347
    invoke-static {v0, p1}, Lcom/keephealth/android/util/ViewUtil;->getTextRectWidth(Landroid/graphics/Paint;Ljava/lang/String;)F

    move-result p1

    sub-float/2addr p2, p1

    .line 348
    invoke-virtual {v0, p6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 349
    invoke-virtual {p0, p8, p2, p10, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    sub-float/2addr p2, p4

    .line 352
    invoke-static {v0, p8}, Lcom/keephealth/android/util/ViewUtil;->getTextRectWidth(Landroid/graphics/Paint;Ljava/lang/String;)F

    move-result p1

    sub-float/2addr p2, p1

    .line 353
    invoke-virtual {v0, p5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 354
    invoke-virtual {p0, p7, p2, p3, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_f3
    :goto_f3
    return-void
.end method

.method public static getColorBetweenAB(IIFI)I
    .registers 7

    const/high16 v0, 0xff0000

    and-int v1, p1, v0

    shr-int/lit8 v1, v1, 0x10

    and-int/2addr v0, p0

    shr-int/lit8 v0, v0, 0x10

    sub-int/2addr v1, v0

    int-to-float v1, v1

    div-float/2addr v1, p2

    int-to-float p3, p3

    mul-float/2addr v1, p3

    int-to-float v0, v0

    add-float/2addr v1, v0

    const v0, 0xff00

    and-int v2, p1, v0

    and-int/2addr v0, p0

    sub-int/2addr v2, v0

    shr-int/lit8 v2, v2, 0x8

    int-to-float v2, v2

    div-float/2addr v2, p2

    mul-float/2addr v2, p3

    shr-int/lit8 v0, v0, 0x8

    int-to-float v0, v0

    add-float/2addr v2, v0

    and-int/lit16 p1, p1, 0xff

    and-int/lit16 p0, p0, 0xff

    sub-int/2addr p1, p0

    int-to-float p1, p1

    div-float/2addr p1, p2

    mul-float/2addr p1, p3

    int-to-float p0, p0

    add-float/2addr p1, p0

    float-to-int p0, v1

    float-to-int p2, v2

    float-to-int p1, p1

    .line 95
    invoke-static {p0, p2, p1}, Landroid/graphics/Color;->rgb(III)I

    move-result p0

    return p0
.end method

.method public static getTextHeight(Landroid/graphics/Paint;)F
    .registers 2

    .line 124
    invoke-virtual {p0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p0

    .line 125
    iget v0, p0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget p0, p0, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v0, p0

    return v0
.end method

.method public static getTextRectHeight(Landroid/graphics/Paint;Ljava/lang/String;)F
    .registers 5

    .line 149
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 150
    :cond_8
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    const/4 v1, 0x0

    .line 151
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 152
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result p0

    int-to-float p0, p0

    return p0
.end method

.method public static getTextRectWidth(Landroid/graphics/Paint;Ljava/lang/String;)F
    .registers 5

    .line 135
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 136
    :cond_8
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    const/4 v1, 0x0

    .line 138
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 140
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p0

    return p0
.end method

.method public static getTotalHeightOfListView(Landroid/widget/ListView;Landroid/widget/Adapter;)I
    .registers 8

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    move v1, v0

    move v2, v1

    .line 376
    :goto_6
    invoke-interface {p1}, Landroid/widget/Adapter;->getCount()I

    move-result v3

    if-ge v1, v3, :cond_2a

    const/4 v3, 0x0

    .line 377
    invoke-interface {p1, v1, v3, p0}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 378
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    if-nez v4, :cond_22

    .line 380
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 381
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 379
    invoke-virtual {v3, v4, v5}, Landroid/view/View;->measure(II)V

    .line 384
    :cond_22
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 386
    :cond_2a
    invoke-virtual {p0}, Landroid/widget/ListView;->getDividerHeight()I

    move-result p0

    invoke-interface {p1}, Landroid/widget/Adapter;->getCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    mul-int/2addr p0, p1

    add-int/2addr v2, p0

    return v2
.end method

.method public static getTotalHeightOfListView(Landroid/widget/ListView;Landroid/widget/Adapter;I)Z
    .registers 9

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 401
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move v1, v0

    move v2, v1

    .line 402
    :goto_9
    invoke-interface {p1}, Landroid/widget/Adapter;->getCount()I

    move-result v3

    if-ge v1, v3, :cond_31

    const/4 v3, 0x0

    .line 403
    invoke-interface {p1, v1, v3, p0}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 404
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    if-nez v4, :cond_25

    .line 406
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 407
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 405
    invoke-virtual {v3, v4, v5}, Landroid/view/View;->measure(II)V

    .line 411
    :cond_25
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v2, v3

    if-le v2, p2, :cond_2e

    const/4 p0, 0x1

    return p0

    :cond_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_31
    return v0
.end method

.method public static px2Dp(ILandroid/content/Context;)F
    .registers 2

    int-to-float p0, p0

    .line 362
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p0, p1

    return p0
.end method

.method public static startRotateAnimation(Landroid/view/View;)V
    .registers 9

    const/4 v0, 0x0

    .line 159
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 160
    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    .line 161
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v6, 0x1

    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v2, 0x0

    const v3, 0x43b38000    # 359.0f

    const/4 v4, 0x1

    const/high16 v5, 0x3f000000    # 0.5f

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    const-wide/16 v1, 0x1f4

    .line 162
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    const/4 v1, -0x1

    .line 163
    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setRepeatCount(I)V

    .line 164
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
