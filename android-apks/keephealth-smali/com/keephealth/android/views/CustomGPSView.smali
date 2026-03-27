.class public Lcom/keephealth/android/views/CustomGPSView;
.super Landroid/view/View;
.source "CustomGPSView.java"


# instance fields
.field private badBg:Landroid/graphics/Bitmap;

.field private baseLine:F

.field private bottom:F

.field private commonH:F

.field private goodBg:Landroid/graphics/Bitmap;

.field private gps:Ljava/lang/String;

.field private gpsPaint:Landroid/graphics/Paint;

.field private gpsSignalBgColor:I

.field private gpsSignalColor:I

.field private gpsSignalMaxHeight:F

.field private gpsSingalText:Ljava/lang/String;

.field private gpsSingalWidth:F

.field private gpsTextColor:I

.field private gpsTextSize:F

.field private h:I

.field private left:F

.field private noBg:Landroid/graphics/Bitmap;

.field private right:F

.field private signalValue:I

.field private strongH:F

.field private top:F

.field private w:I

.field private weakH:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    .line 44
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 v0, 0x41800000    # 16.0f

    .line 34
    iput v0, p0, Lcom/keephealth/android/views/CustomGPSView;->gpsSignalMaxHeight:F

    const/high16 v1, 0x41000000    # 8.0f

    .line 35
    iput v1, p0, Lcom/keephealth/android/views/CustomGPSView;->weakH:F

    const/high16 v1, 0x41400000    # 12.0f

    .line 36
    iput v1, p0, Lcom/keephealth/android/views/CustomGPSView;->commonH:F

    .line 37
    iput v0, p0, Lcom/keephealth/android/views/CustomGPSView;->strongH:F

    const/4 v1, 0x1

    .line 39
    iput v1, p0, Lcom/keephealth/android/views/CustomGPSView;->signalValue:I

    .line 46
    sget-object v2, Lcom/keephealth/android/R$styleable;->CustomGPSView:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x7

    .line 48
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/keephealth/android/views/CustomGPSView;->gps:Ljava/lang/String;

    const/16 p2, 0x8

    .line 49
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/keephealth/android/views/CustomGPSView;->gpsTextSize:F

    const/16 p2, 0x9

    const/4 v0, 0x0

    .line 50
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/keephealth/android/views/CustomGPSView;->gpsTextColor:I

    const/4 p2, 0x2

    .line 51
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/keephealth/android/views/CustomGPSView;->gpsSignalColor:I

    .line 52
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/keephealth/android/views/CustomGPSView;->gpsSignalBgColor:I

    const/4 p2, 0x6

    const/high16 v2, 0x40800000    # 4.0f

    .line 53
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/keephealth/android/views/CustomGPSView;->gpsSingalWidth:F

    const/4 p2, 0x5

    .line 54
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/keephealth/android/views/CustomGPSView;->gpsSingalText:Ljava/lang/String;

    const/4 p2, 0x3

    .line 55
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/keephealth/android/views/CustomGPSView;->drawable2Bitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/keephealth/android/views/CustomGPSView;->goodBg:Landroid/graphics/Bitmap;

    .line 56
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/keephealth/android/views/CustomGPSView;->drawable2Bitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/keephealth/android/views/CustomGPSView;->badBg:Landroid/graphics/Bitmap;

    .line 59
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 61
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/keephealth/android/views/CustomGPSView;->gpsPaint:Landroid/graphics/Paint;

    .line 62
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 63
    iget-object p1, p0, Lcom/keephealth/android/views/CustomGPSView;->gpsPaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/keephealth/android/views/CustomGPSView;->gpsTextSize:F

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    return-void
.end method

.method private calculationSurplusHeight(F)F
    .registers 3

    .line 164
    iget v0, p0, Lcom/keephealth/android/views/CustomGPSView;->h:I

    int-to-float v0, v0

    sub-float/2addr v0, p1

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr v0, p1

    return v0
.end method

.method private drawGPSSignalStrength(Landroid/graphics/Canvas;III)V
    .registers 14

    .line 132
    iget v0, p0, Lcom/keephealth/android/views/CustomGPSView;->w:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    int-to-float v0, v0

    .line 135
    iget-object v1, p0, Lcom/keephealth/android/views/CustomGPSView;->gpsPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 136
    iget-object v1, p0, Lcom/keephealth/android/views/CustomGPSView;->gpsPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 137
    iget p3, p0, Lcom/keephealth/android/views/CustomGPSView;->gpsSingalWidth:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float v2, p3, v1

    sub-float v4, v0, v2

    iput v4, p0, Lcom/keephealth/android/views/CustomGPSView;->left:F

    .line 138
    iget v7, p0, Lcom/keephealth/android/views/CustomGPSView;->baseLine:F

    iget v2, p0, Lcom/keephealth/android/views/CustomGPSView;->commonH:F

    sub-float v5, v7, v2

    iput v5, p0, Lcom/keephealth/android/views/CustomGPSView;->top:F

    div-float/2addr p3, v1

    add-float v6, v0, p3

    .line 139
    iput v6, p0, Lcom/keephealth/android/views/CustomGPSView;->right:F

    .line 140
    iput v7, p0, Lcom/keephealth/android/views/CustomGPSView;->bottom:F

    .line 141
    iget-object v8, p0, Lcom/keephealth/android/views/CustomGPSView;->gpsPaint:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 144
    iget-object p3, p0, Lcom/keephealth/android/views/CustomGPSView;->gpsPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {p3, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 145
    iget-object p3, p0, Lcom/keephealth/android/views/CustomGPSView;->gpsPaint:Landroid/graphics/Paint;

    invoke-virtual {p3, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 146
    iget p2, p0, Lcom/keephealth/android/views/CustomGPSView;->gpsSingalWidth:F

    div-float p3, p2, v1

    sub-float p3, v0, p3

    mul-float v2, p2, v1

    sub-float v4, p3, v2

    iput v4, p0, Lcom/keephealth/android/views/CustomGPSView;->left:F

    .line 147
    iget v7, p0, Lcom/keephealth/android/views/CustomGPSView;->baseLine:F

    iget p3, p0, Lcom/keephealth/android/views/CustomGPSView;->weakH:F

    sub-float v5, v7, p3

    iput v5, p0, Lcom/keephealth/android/views/CustomGPSView;->top:F

    div-float p3, p2, v1

    sub-float p3, v0, p3

    sub-float v6, p3, p2

    .line 148
    iput v6, p0, Lcom/keephealth/android/views/CustomGPSView;->right:F

    .line 149
    iput v7, p0, Lcom/keephealth/android/views/CustomGPSView;->bottom:F

    .line 150
    iget-object v8, p0, Lcom/keephealth/android/views/CustomGPSView;->gpsPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 153
    iget-object p2, p0, Lcom/keephealth/android/views/CustomGPSView;->gpsPaint:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 154
    iget-object p2, p0, Lcom/keephealth/android/views/CustomGPSView;->gpsPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p4}, Landroid/graphics/Paint;->setColor(I)V

    .line 155
    iget p2, p0, Lcom/keephealth/android/views/CustomGPSView;->gpsSingalWidth:F

    div-float p3, p2, v1

    add-float/2addr p3, v0

    add-float v3, p3, p2

    iput v3, p0, Lcom/keephealth/android/views/CustomGPSView;->left:F

    .line 156
    iget v6, p0, Lcom/keephealth/android/views/CustomGPSView;->baseLine:F

    iget p3, p0, Lcom/keephealth/android/views/CustomGPSView;->strongH:F

    sub-float v4, v6, p3

    iput v4, p0, Lcom/keephealth/android/views/CustomGPSView;->top:F

    div-float p3, p2, v1

    add-float/2addr v0, p3

    mul-float/2addr p2, v1

    add-float v5, v0, p2

    .line 157
    iput v5, p0, Lcom/keephealth/android/views/CustomGPSView;->right:F

    .line 158
    iput v6, p0, Lcom/keephealth/android/views/CustomGPSView;->bottom:F

    .line 159
    iget-object v7, p0, Lcom/keephealth/android/views/CustomGPSView;->gpsPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawable2Bitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .registers 2

    .line 189
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public getGPSSignalStrength()I
    .registers 2

    .line 179
    iget v0, p0, Lcom/keephealth/android/views/CustomGPSView;->signalValue:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 7

    .line 91
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 96
    iget-object v0, p0, Lcom/keephealth/android/views/CustomGPSView;->gpsPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 97
    iget-object v0, p0, Lcom/keephealth/android/views/CustomGPSView;->gpsPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/keephealth/android/views/CustomGPSView;->gpsTextColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 98
    iget v0, p0, Lcom/keephealth/android/views/CustomGPSView;->w:I

    div-int/lit8 v0, v0, 0x3

    int-to-float v0, v0

    .line 99
    iget-object v1, p0, Lcom/keephealth/android/views/CustomGPSView;->gpsPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/keephealth/android/views/CustomGPSView;->gps:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/keephealth/android/util/ViewUtil;->getTextRectHeight(Landroid/graphics/Paint;Ljava/lang/String;)F

    move-result v1

    .line 100
    iget-object v2, p0, Lcom/keephealth/android/views/CustomGPSView;->gps:Ljava/lang/String;

    iget v3, p0, Lcom/keephealth/android/views/CustomGPSView;->h:I

    int-to-float v3, v3

    invoke-direct {p0, v1}, Lcom/keephealth/android/views/CustomGPSView;->calculationSurplusHeight(F)F

    move-result v1

    sub-float/2addr v3, v1

    iget-object v1, p0, Lcom/keephealth/android/views/CustomGPSView;->gpsPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v3, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 106
    iget v0, p0, Lcom/keephealth/android/views/CustomGPSView;->w:I

    mul-int/lit8 v0, v0, 0x3

    int-to-float v0, v0

    const/high16 v1, 0x40a00000    # 5.0f

    div-float/2addr v0, v1

    .line 107
    iget-object v1, p0, Lcom/keephealth/android/views/CustomGPSView;->gpsPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 109
    iget v1, p0, Lcom/keephealth/android/views/CustomGPSView;->signalValue:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_42

    goto :goto_6c

    :cond_42
    const/4 v2, 0x2

    const/high16 v3, 0x40000000    # 2.0f

    if-ne v1, v2, :cond_5a

    .line 114
    iget-object v1, p0, Lcom/keephealth/android/views/CustomGPSView;->badBg:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/keephealth/android/views/CustomGPSView;->h:I

    iget-object v4, p0, Lcom/keephealth/android/views/CustomGPSView;->goodBg:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    int-to-float v2, v2

    div-float/2addr v2, v3

    iget-object v3, p0, Lcom/keephealth/android/views/CustomGPSView;->gpsPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_6c

    :cond_5a
    if-nez v1, :cond_6c

    .line 117
    iget-object v1, p0, Lcom/keephealth/android/views/CustomGPSView;->goodBg:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/keephealth/android/views/CustomGPSView;->h:I

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    int-to-float v2, v2

    div-float/2addr v2, v3

    iget-object v3, p0, Lcom/keephealth/android/views/CustomGPSView;->gpsPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_6c
    :goto_6c
    return-void
.end method

.method protected onMeasure(II)V
    .registers 4

    .line 70
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 71
    iget v0, p0, Lcom/keephealth/android/views/CustomGPSView;->gpsTextSize:F

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 72
    iget-object v0, p0, Lcom/keephealth/android/views/CustomGPSView;->gps:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    .line 73
    iget-object v0, p0, Lcom/keephealth/android/views/CustomGPSView;->goodBg:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p1, v0

    .line 74
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/keephealth/android/views/CustomGPSView;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 5

    .line 80
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 82
    iput p1, p0, Lcom/keephealth/android/views/CustomGPSView;->w:I

    .line 83
    iput p2, p0, Lcom/keephealth/android/views/CustomGPSView;->h:I

    int-to-float p1, p2

    .line 85
    iget p2, p0, Lcom/keephealth/android/views/CustomGPSView;->gpsSignalMaxHeight:F

    invoke-direct {p0, p2}, Lcom/keephealth/android/views/CustomGPSView;->calculationSurplusHeight(F)F

    move-result p2

    sub-float/2addr p1, p2

    iput p1, p0, Lcom/keephealth/android/views/CustomGPSView;->baseLine:F

    return-void
.end method

.method public setGPSSignalStrength(I)V
    .registers 2

    .line 171
    iput p1, p0, Lcom/keephealth/android/views/CustomGPSView;->signalValue:I

    .line 172
    invoke-virtual {p0}, Lcom/keephealth/android/views/CustomGPSView;->invalidate()V

    return-void
.end method
