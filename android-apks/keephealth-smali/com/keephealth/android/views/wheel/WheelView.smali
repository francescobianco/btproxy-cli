.class public Lcom/keephealth/android/views/wheel/WheelView;
.super Landroid/view/View;
.source "WheelView.java"


# instance fields
.field private adapter:Lcom/keephealth/android/views/wheel/WheelAdapter;

.field baseline:I

.field private centerDrawable:Landroid/graphics/drawable/Drawable;

.field centerX:I

.field centerY:I

.field private isLeftCenterRight:I

.field itemHeight:I

.field itemWidth:I

.field lowerLimit:I

.field private mCyclic:Z

.field private mDividerBottom:Landroid/graphics/drawable/Drawable;

.field private mDividerTop:Landroid/graphics/drawable/Drawable;

.field private mLineSpace:I

.field mPaint:Landroid/graphics/Paint;

.field mScroller:Lcom/keephealth/android/views/wheel/WheelScroller;

.field private mSelectedColor:I

.field private mTextSize:I

.field private mUnselectedColor:I

.field private mVisibleItems:I

.field private showLine:Z

.field textSizeItem:I

.field upperLimit:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 56
    invoke-direct {p0, p1, v0}, Lcom/keephealth/android/views/wheel/WheelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 11

    .line 60
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x5

    .line 29
    iput v0, p0, Lcom/keephealth/android/views/wheel/WheelView;->mVisibleItems:I

    const/16 v1, 0x14

    .line 30
    iput v1, p0, Lcom/keephealth/android/views/wheel/WheelView;->mLineSpace:I

    const/16 v1, 0x18

    .line 31
    iput v1, p0, Lcom/keephealth/android/views/wheel/WheelView;->mTextSize:I

    const/4 v1, 0x0

    .line 48
    iput-object v1, p0, Lcom/keephealth/android/views/wheel/WheelView;->adapter:Lcom/keephealth/android/views/wheel/WheelAdapter;

    .line 61
    sget-object v1, Lcom/keephealth/android/R$styleable;->WheelView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 62
    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    const/16 v3, 0xa

    .line 63
    iget v4, p0, Lcom/keephealth/android/views/wheel/WheelView;->mVisibleItems:I

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    const/16 v4, 0x8

    .line 64
    iget v5, p0, Lcom/keephealth/android/views/wheel/WheelView;->mLineSpace:I

    invoke-virtual {p2, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    .line 65
    iget v5, p0, Lcom/keephealth/android/views/wheel/WheelView;->mTextSize:I

    invoke-virtual {p2, v2, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/keephealth/android/views/wheel/WheelView;->textSizeItem:I

    const/16 v5, 0x9

    .line 66
    invoke-virtual {p2, v5, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    const/4 v6, 0x7

    .line 67
    invoke-virtual {p2, v6, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    const/4 v6, 0x4

    const/4 v7, -0x1

    .line 68
    invoke-virtual {p2, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, p0, Lcom/keephealth/android/views/wheel/WheelView;->isLeftCenterRight:I

    const/4 v6, 0x1

    .line 69
    invoke-virtual {p2, v0, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/keephealth/android/views/wheel/WheelView;->showLine:Z

    if-eqz v0, :cond_79

    const/4 v0, 0x3

    .line 71
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p0, Lcom/keephealth/android/views/wheel/WheelView;->mDividerTop:Landroid/graphics/drawable/Drawable;

    .line 72
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/views/wheel/WheelView;->mDividerBottom:Landroid/graphics/drawable/Drawable;

    .line 73
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/WheelView;->mDividerTop:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_79

    .line 74
    invoke-virtual {p0}, Lcom/keephealth/android/views/wheel/WheelView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v7, 0x7f080162

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/views/wheel/WheelView;->mDividerTop:Landroid/graphics/drawable/Drawable;

    .line 75
    invoke-virtual {p0}, Lcom/keephealth/android/views/wheel/WheelView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/views/wheel/WheelView;->mDividerBottom:Landroid/graphics/drawable/Drawable;

    .line 79
    :cond_79
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 81
    new-instance p2, Landroid/text/TextPaint;

    invoke-direct {p2}, Landroid/text/TextPaint;-><init>()V

    iput-object p2, p0, Lcom/keephealth/android/views/wheel/WheelView;->mPaint:Landroid/graphics/Paint;

    .line 82
    invoke-virtual {p2, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 83
    iget-object p2, p0, Lcom/keephealth/android/views/wheel/WheelView;->mPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 85
    new-instance p2, Lcom/keephealth/android/views/wheel/WheelScroller;

    invoke-direct {p2, p1, p0}, Lcom/keephealth/android/views/wheel/WheelScroller;-><init>(Landroid/content/Context;Lcom/keephealth/android/views/wheel/WheelView;)V

    iput-object p2, p0, Lcom/keephealth/android/views/wheel/WheelView;->mScroller:Lcom/keephealth/android/views/wheel/WheelScroller;

    .line 87
    invoke-virtual {p0, v1}, Lcom/keephealth/android/views/wheel/WheelView;->setCyclic(Z)V

    .line 88
    invoke-virtual {p0, v3}, Lcom/keephealth/android/views/wheel/WheelView;->setVisibleItems(I)V

    .line 89
    invoke-virtual {p0, v4}, Lcom/keephealth/android/views/wheel/WheelView;->setLineSpace(I)V

    .line 90
    iget p1, p0, Lcom/keephealth/android/views/wheel/WheelView;->textSizeItem:I

    invoke-virtual {p0, p1}, Lcom/keephealth/android/views/wheel/WheelView;->setTextSize(I)V

    .line 91
    invoke-virtual {p0, v5}, Lcom/keephealth/android/views/wheel/WheelView;->setSelectedColor(I)V

    .line 92
    invoke-virtual {p0, v2}, Lcom/keephealth/android/views/wheel/WheelView;->setUnselectedColor(I)V

    return-void
.end method


# virtual methods
.method public addChangingListener(Lcom/keephealth/android/views/wheel/OnWheelChangedListener;)V
    .registers 3

    .line 450
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/WheelView;->mScroller:Lcom/keephealth/android/views/wheel/WheelScroller;

    iput-object p1, v0, Lcom/keephealth/android/views/wheel/WheelScroller;->onWheelChangedListener:Lcom/keephealth/android/views/wheel/OnWheelChangedListener;

    return-void
.end method

.method public computeScroll()V
    .registers 2

    .line 332
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/WheelView;->mScroller:Lcom/keephealth/android/views/wheel/WheelScroller;

    invoke-virtual {v0}, Lcom/keephealth/android/views/wheel/WheelScroller;->computeScroll()V

    return-void
.end method

.method protected drawItem(Landroid/graphics/Canvas;II)V
    .registers 15

    .line 241
    invoke-virtual {p0, p2}, Lcom/keephealth/android/views/wheel/WheelView;->getCharSequence(I)Ljava/lang/CharSequence;

    move-result-object v7

    if-nez v7, :cond_7

    return-void

    .line 245
    :cond_7
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/WheelView;->mScroller:Lcom/keephealth/android/views/wheel/WheelScroller;

    invoke-virtual {v0}, Lcom/keephealth/android/views/wheel/WheelScroller;->getItemIndex()I

    move-result v0

    sub-int/2addr p2, v0

    iget v0, p0, Lcom/keephealth/android/views/wheel/WheelView;->itemHeight:I

    mul-int/2addr p2, v0

    sub-int/2addr p2, p3

    .line 247
    invoke-virtual {p0}, Lcom/keephealth/android/views/wheel/WheelView;->getPaddingLeft()I

    move-result p3

    .line 248
    invoke-virtual {p0}, Lcom/keephealth/android/views/wheel/WheelView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/keephealth/android/views/wheel/WheelView;->getPaddingRight()I

    move-result v1

    sub-int v8, v0, v1

    .line 249
    invoke-virtual {p0}, Lcom/keephealth/android/views/wheel/WheelView;->getPaddingTop()I

    move-result v9

    .line 250
    invoke-virtual {p0}, Lcom/keephealth/android/views/wheel/WheelView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/keephealth/android/views/wheel/WheelView;->getPaddingBottom()I

    move-result v1

    sub-int v10, v0, v1

    .line 253
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-gtz v0, :cond_68

    .line 254
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/WheelView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/keephealth/android/views/wheel/WheelView;->mSelectedColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 255
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/WheelView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/keephealth/android/views/wheel/WheelView;->textSizeItem:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 256
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 257
    iget v0, p0, Lcom/keephealth/android/views/wheel/WheelView;->upperLimit:I

    iget v1, p0, Lcom/keephealth/android/views/wheel/WheelView;->lowerLimit:I

    invoke-virtual {p1, p3, v0, v8, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 258
    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v3

    iget p3, p0, Lcom/keephealth/android/views/wheel/WheelView;->centerX:I

    int-to-float v4, p3

    iget p3, p0, Lcom/keephealth/android/views/wheel/WheelView;->centerY:I

    add-int/2addr p3, p2

    iget p2, p0, Lcom/keephealth/android/views/wheel/WheelView;->baseline:I

    sub-int/2addr p3, p2

    int-to-float v5, p3

    iget-object v6, p0, Lcom/keephealth/android/views/wheel/WheelView;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    move-object v0, p1

    move-object v1, v7

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 259
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_16c

    :cond_68
    if-lez p2, :cond_d0

    .line 262
    iget v0, p0, Lcom/keephealth/android/views/wheel/WheelView;->itemHeight:I

    if-ge p2, v0, :cond_d0

    .line 263
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/WheelView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/keephealth/android/views/wheel/WheelView;->mSelectedColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 264
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 265
    iget v0, p0, Lcom/keephealth/android/views/wheel/WheelView;->upperLimit:I

    iget v1, p0, Lcom/keephealth/android/views/wheel/WheelView;->lowerLimit:I

    invoke-virtual {p1, p3, v0, v8, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 266
    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v3

    iget v0, p0, Lcom/keephealth/android/views/wheel/WheelView;->centerX:I

    int-to-float v4, v0

    iget v0, p0, Lcom/keephealth/android/views/wheel/WheelView;->centerY:I

    add-int/2addr v0, p2

    iget v1, p0, Lcom/keephealth/android/views/wheel/WheelView;->baseline:I

    sub-int/2addr v0, v1

    int-to-float v5, v0

    iget-object v6, p0, Lcom/keephealth/android/views/wheel/WheelView;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    move-object v0, p1

    move-object v1, v7

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 267
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 269
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/WheelView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/keephealth/android/views/wheel/WheelView;->mUnselectedColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 270
    iget v0, p0, Lcom/keephealth/android/views/wheel/WheelView;->isLeftCenterRight:I

    if-ltz v0, :cond_ad

    .line 271
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/WheelView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/keephealth/android/views/wheel/WheelView;->textSizeItem:I

    add-int/lit8 v1, v1, -0xc

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 273
    :cond_ad
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 274
    iget v0, p0, Lcom/keephealth/android/views/wheel/WheelView;->lowerLimit:I

    invoke-virtual {p1, p3, v0, v8, v10}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 275
    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v3

    iget p3, p0, Lcom/keephealth/android/views/wheel/WheelView;->centerX:I

    int-to-float v4, p3

    iget p3, p0, Lcom/keephealth/android/views/wheel/WheelView;->centerY:I

    add-int/2addr p3, p2

    iget p2, p0, Lcom/keephealth/android/views/wheel/WheelView;->baseline:I

    sub-int/2addr p3, p2

    int-to-float v5, p3

    iget-object v6, p0, Lcom/keephealth/android/views/wheel/WheelView;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    move-object v0, p1

    move-object v1, v7

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 276
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_16c

    :cond_d0
    if-gez p2, :cond_138

    .line 279
    iget v0, p0, Lcom/keephealth/android/views/wheel/WheelView;->itemHeight:I

    neg-int v0, v0

    if-le p2, v0, :cond_138

    .line 280
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/WheelView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/keephealth/android/views/wheel/WheelView;->mSelectedColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 281
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 282
    iget v0, p0, Lcom/keephealth/android/views/wheel/WheelView;->upperLimit:I

    iget v1, p0, Lcom/keephealth/android/views/wheel/WheelView;->lowerLimit:I

    invoke-virtual {p1, p3, v0, v8, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 283
    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v3

    iget v0, p0, Lcom/keephealth/android/views/wheel/WheelView;->centerX:I

    int-to-float v4, v0

    iget v0, p0, Lcom/keephealth/android/views/wheel/WheelView;->centerY:I

    add-int/2addr v0, p2

    iget v1, p0, Lcom/keephealth/android/views/wheel/WheelView;->baseline:I

    sub-int/2addr v0, v1

    int-to-float v5, v0

    iget-object v6, p0, Lcom/keephealth/android/views/wheel/WheelView;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    move-object v0, p1

    move-object v1, v7

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 284
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 286
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/WheelView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/keephealth/android/views/wheel/WheelView;->mUnselectedColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 287
    iget v0, p0, Lcom/keephealth/android/views/wheel/WheelView;->isLeftCenterRight:I

    if-ltz v0, :cond_116

    .line 288
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/WheelView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/keephealth/android/views/wheel/WheelView;->textSizeItem:I

    add-int/lit8 v1, v1, -0xc

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 290
    :cond_116
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 291
    iget v0, p0, Lcom/keephealth/android/views/wheel/WheelView;->upperLimit:I

    invoke-virtual {p1, p3, v9, v8, v0}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 292
    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v3

    iget p3, p0, Lcom/keephealth/android/views/wheel/WheelView;->centerX:I

    int-to-float v4, p3

    iget p3, p0, Lcom/keephealth/android/views/wheel/WheelView;->centerY:I

    add-int/2addr p3, p2

    iget p2, p0, Lcom/keephealth/android/views/wheel/WheelView;->baseline:I

    sub-int/2addr p3, p2

    int-to-float v5, p3

    iget-object v6, p0, Lcom/keephealth/android/views/wheel/WheelView;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    move-object v0, p1

    move-object v1, v7

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 293
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_16c

    .line 295
    :cond_138
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/WheelView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/keephealth/android/views/wheel/WheelView;->mUnselectedColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 296
    iget v0, p0, Lcom/keephealth/android/views/wheel/WheelView;->isLeftCenterRight:I

    if-ltz v0, :cond_14d

    .line 297
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/WheelView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/keephealth/android/views/wheel/WheelView;->textSizeItem:I

    add-int/lit8 v1, v1, -0xc

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 299
    :cond_14d
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 300
    invoke-virtual {p1, p3, v9, v8, v10}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 301
    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v3

    iget p3, p0, Lcom/keephealth/android/views/wheel/WheelView;->centerX:I

    int-to-float v4, p3

    iget p3, p0, Lcom/keephealth/android/views/wheel/WheelView;->centerY:I

    add-int/2addr p3, p2

    iget p2, p0, Lcom/keephealth/android/views/wheel/WheelView;->baseline:I

    sub-int/2addr p3, p2

    int-to-float v5, p3

    iget-object v6, p0, Lcom/keephealth/android/views/wheel/WheelView;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    move-object v0, p1

    move-object v1, v7

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 302
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :goto_16c
    return-void
.end method

.method public getAdapter()Lcom/keephealth/android/views/wheel/WheelAdapter;
    .registers 2

    .line 432
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/WheelView;->adapter:Lcom/keephealth/android/views/wheel/WheelAdapter;

    return-object v0
.end method

.method getCharSequence(I)Ljava/lang/CharSequence;
    .registers 5

    .line 307
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/WheelView;->adapter:Lcom/keephealth/android/views/wheel/WheelAdapter;

    if-nez v0, :cond_7

    const-string p1, ""

    return-object p1

    .line 308
    :cond_7
    invoke-interface {v0}, Lcom/keephealth/android/views/wheel/WheelAdapter;->getItemsCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_f

    return-object v1

    .line 311
    :cond_f
    invoke-virtual {p0}, Lcom/keephealth/android/views/wheel/WheelView;->isCyclic()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 312
    rem-int/2addr p1, v0

    if-gez p1, :cond_19

    add-int/2addr p1, v0

    .line 316
    :cond_19
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/WheelView;->adapter:Lcom/keephealth/android/views/wheel/WheelAdapter;

    invoke-interface {v0, p1}, Lcom/keephealth/android/views/wheel/WheelAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2a

    :cond_20
    if-ltz p1, :cond_2a

    if-ge p1, v0, :cond_2a

    .line 319
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/WheelView;->adapter:Lcom/keephealth/android/views/wheel/WheelAdapter;

    invoke-interface {v0, p1}, Lcom/keephealth/android/views/wheel/WheelAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v1

    :cond_2a
    :goto_2a
    return-object v1
.end method

.method public getCurrentItem()I
    .registers 2

    .line 406
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/WheelView;->mScroller:Lcom/keephealth/android/views/wheel/WheelScroller;

    invoke-virtual {v0}, Lcom/keephealth/android/views/wheel/WheelScroller;->getCurrentIndex()I

    move-result v0

    return v0
.end method

.method public getItemSize()I
    .registers 2

    .line 402
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/WheelView;->adapter:Lcom/keephealth/android/views/wheel/WheelAdapter;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-interface {v0}, Lcom/keephealth/android/views/wheel/WheelAdapter;->getItemsCount()I

    move-result v0

    :goto_a
    return v0
.end method

.method public getLineSpace()I
    .registers 2

    .line 357
    iget v0, p0, Lcom/keephealth/android/views/wheel/WheelView;->mLineSpace:I

    return v0
.end method

.method public getPrefHeight()I
    .registers 4

    .line 175
    invoke-virtual {p0}, Lcom/keephealth/android/views/wheel/WheelView;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/keephealth/android/views/wheel/WheelView;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    .line 176
    iget v1, p0, Lcom/keephealth/android/views/wheel/WheelView;->itemHeight:I

    iget v2, p0, Lcom/keephealth/android/views/wheel/WheelView;->mVisibleItems:I

    mul-int/2addr v1, v2

    add-int/2addr v1, v0

    return v1
.end method

.method public getPrefWidth()I
    .registers 5

    .line 166
    invoke-virtual {p0}, Lcom/keephealth/android/views/wheel/WheelView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/keephealth/android/views/wheel/WheelView;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    .line 167
    iget v1, p0, Lcom/keephealth/android/views/wheel/WheelView;->itemWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/keephealth/android/views/wheel/WheelView;->mTextSize:I

    int-to-float v2, v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    add-int/2addr v1, v0

    return v1
.end method

.method public getSelectedColor()I
    .registers 2

    .line 384
    iget v0, p0, Lcom/keephealth/android/views/wheel/WheelView;->mSelectedColor:I

    return v0
.end method

.method public getTextSize()I
    .registers 2

    .line 369
    iget v0, p0, Lcom/keephealth/android/views/wheel/WheelView;->mTextSize:I

    return v0
.end method

.method public getUnselectedColor()I
    .registers 2

    .line 393
    iget v0, p0, Lcom/keephealth/android/views/wheel/WheelView;->mUnselectedColor:I

    return v0
.end method

.method public getVisibleItems()I
    .registers 2

    .line 346
    iget v0, p0, Lcom/keephealth/android/views/wheel/WheelView;->mVisibleItems:I

    return v0
.end method

.method public isCyclic()Z
    .registers 2

    .line 336
    iget-boolean v0, p0, Lcom/keephealth/android/views/wheel/WheelView;->mCyclic:Z

    return v0
.end method

.method measureItemSize()V
    .registers 5

    .line 189
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/WheelView;->adapter:Lcom/keephealth/android/views/wheel/WheelAdapter;

    if-eqz v0, :cond_29

    const/4 v0, 0x0

    move v1, v0

    .line 191
    :goto_6
    iget-object v2, p0, Lcom/keephealth/android/views/wheel/WheelView;->adapter:Lcom/keephealth/android/views/wheel/WheelAdapter;

    invoke-interface {v2}, Lcom/keephealth/android/views/wheel/WheelAdapter;->getItemsCount()I

    move-result v2

    if-ge v0, v2, :cond_27

    .line 192
    iget-object v2, p0, Lcom/keephealth/android/views/wheel/WheelView;->adapter:Lcom/keephealth/android/views/wheel/WheelAdapter;

    invoke-interface {v2, v0}, Lcom/keephealth/android/views/wheel/WheelAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/keephealth/android/views/wheel/WheelView;->mPaint:Landroid/graphics/Paint;

    check-cast v3, Landroid/text/TextPaint;

    invoke-static {v2, v3}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v2

    .line 193
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 195
    :cond_27
    iput v1, p0, Lcom/keephealth/android/views/wheel/WheelView;->itemWidth:I

    .line 197
    :cond_29
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/WheelView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    move-result v0

    iget v1, p0, Lcom/keephealth/android/views/wheel/WheelView;->mLineSpace:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 198
    iget v1, p0, Lcom/keephealth/android/views/wheel/WheelView;->itemHeight:I

    if-eq v1, v0, :cond_40

    .line 199
    iput v0, p0, Lcom/keephealth/android/views/wheel/WheelView;->itemHeight:I

    :cond_40
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 6

    .line 205
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/WheelView;->adapter:Lcom/keephealth/android/views/wheel/WheelAdapter;

    if-nez v0, :cond_5

    return-void

    .line 206
    :cond_5
    iget v0, p0, Lcom/keephealth/android/views/wheel/WheelView;->isLeftCenterRight:I

    if-ltz v0, :cond_10

    .line 207
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/WheelView;->centerDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_10

    .line 208
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 211
    :cond_10
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/WheelView;->mScroller:Lcom/keephealth/android/views/wheel/WheelScroller;

    invoke-virtual {v0}, Lcom/keephealth/android/views/wheel/WheelScroller;->getItemIndex()I

    move-result v0

    .line 212
    iget-object v1, p0, Lcom/keephealth/android/views/wheel/WheelView;->mScroller:Lcom/keephealth/android/views/wheel/WheelScroller;

    invoke-virtual {v1}, Lcom/keephealth/android/views/wheel/WheelScroller;->getItemOffset()I

    move-result v1

    .line 213
    iget v2, p0, Lcom/keephealth/android/views/wheel/WheelView;->mVisibleItems:I

    add-int/lit8 v2, v2, 0x1

    div-int/lit8 v2, v2, 0x2

    if-gez v1, :cond_2a

    sub-int v3, v0, v2

    add-int/lit8 v3, v3, -0x1

    :goto_28
    add-int/2addr v0, v2

    goto :goto_35

    :cond_2a
    if-lez v1, :cond_32

    sub-int v3, v0, v2

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_35

    :cond_32
    sub-int v3, v0, v2

    goto :goto_28

    :goto_35
    if-ge v3, v0, :cond_3d

    .line 226
    invoke-virtual {p0, p1, v3, v1}, Lcom/keephealth/android/views/wheel/WheelView;->drawItem(Landroid/graphics/Canvas;II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_35

    .line 228
    :cond_3d
    iget v0, p0, Lcom/keephealth/android/views/wheel/WheelView;->isLeftCenterRight:I

    if-ltz v0, :cond_42

    goto :goto_50

    .line 230
    :cond_42
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/WheelView;->mDividerTop:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_49

    .line 231
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 233
    :cond_49
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/WheelView;->mDividerBottom:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_50

    .line 234
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_50
    :goto_50
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 7

    .line 120
    iget-object p1, p0, Lcom/keephealth/android/views/wheel/WheelView;->adapter:Lcom/keephealth/android/views/wheel/WheelAdapter;

    if-nez p1, :cond_5

    return-void

    .line 124
    :cond_5
    iget p1, p0, Lcom/keephealth/android/views/wheel/WheelView;->centerY:I

    iget p2, p0, Lcom/keephealth/android/views/wheel/WheelView;->itemHeight:I

    div-int/lit8 p3, p2, 0x2

    sub-int p3, p1, p3

    iput p3, p0, Lcom/keephealth/android/views/wheel/WheelView;->upperLimit:I

    .line 126
    div-int/lit8 p2, p2, 0x2

    add-int/2addr p1, p2

    iput p1, p0, Lcom/keephealth/android/views/wheel/WheelView;->lowerLimit:I

    .line 128
    iget p1, p0, Lcom/keephealth/android/views/wheel/WheelView;->isLeftCenterRight:I

    const/4 p2, 0x1

    if-nez p1, :cond_27

    .line 129
    invoke-virtual {p0}, Lcom/keephealth/android/views/wheel/WheelView;->getContext()Landroid/content/Context;

    move-result-object p1

    const p3, 0x7f08015e

    invoke-static {p1, p3}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/views/wheel/WheelView;->centerDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_44

    :cond_27
    if-ne p1, p2, :cond_37

    .line 131
    invoke-virtual {p0}, Lcom/keephealth/android/views/wheel/WheelView;->getContext()Landroid/content/Context;

    move-result-object p1

    const p3, 0x7f08015d

    invoke-static {p1, p3}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/views/wheel/WheelView;->centerDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_44

    .line 133
    :cond_37
    invoke-virtual {p0}, Lcom/keephealth/android/views/wheel/WheelView;->getContext()Landroid/content/Context;

    move-result-object p1

    const p3, 0x7f08015f

    invoke-static {p1, p3}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/views/wheel/WheelView;->centerDrawable:Landroid/graphics/drawable/Drawable;

    .line 137
    :goto_44
    iget-object p1, p0, Lcom/keephealth/android/views/wheel/WheelView;->centerDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_8c

    .line 138
    iget p3, p0, Lcom/keephealth/android/views/wheel/WheelView;->isLeftCenterRight:I

    if-nez p3, :cond_61

    .line 139
    invoke-virtual {p0}, Lcom/keephealth/android/views/wheel/WheelView;->getPaddingLeft()I

    move-result p2

    iget p3, p0, Lcom/keephealth/android/views/wheel/WheelView;->upperLimit:I

    invoke-virtual {p0}, Lcom/keephealth/android/views/wheel/WheelView;->getWidth()I

    move-result p4

    invoke-virtual {p0}, Lcom/keephealth/android/views/wheel/WheelView;->getPaddingRight()I

    move-result p5

    sub-int/2addr p4, p5

    iget p5, p0, Lcom/keephealth/android/views/wheel/WheelView;->lowerLimit:I

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_8c

    :cond_61
    if-ne p3, p2, :cond_78

    .line 141
    invoke-virtual {p0}, Lcom/keephealth/android/views/wheel/WheelView;->getPaddingLeft()I

    move-result p2

    iget p3, p0, Lcom/keephealth/android/views/wheel/WheelView;->upperLimit:I

    invoke-virtual {p0}, Lcom/keephealth/android/views/wheel/WheelView;->getWidth()I

    move-result p4

    invoke-virtual {p0}, Lcom/keephealth/android/views/wheel/WheelView;->getPaddingRight()I

    move-result p5

    sub-int/2addr p4, p5

    iget p5, p0, Lcom/keephealth/android/views/wheel/WheelView;->lowerLimit:I

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_8c

    .line 143
    :cond_78
    invoke-virtual {p0}, Lcom/keephealth/android/views/wheel/WheelView;->getPaddingLeft()I

    move-result p2

    iget p3, p0, Lcom/keephealth/android/views/wheel/WheelView;->upperLimit:I

    invoke-virtual {p0}, Lcom/keephealth/android/views/wheel/WheelView;->getWidth()I

    move-result p4

    invoke-virtual {p0}, Lcom/keephealth/android/views/wheel/WheelView;->getPaddingRight()I

    move-result p5

    sub-int/2addr p4, p5

    iget p5, p0, Lcom/keephealth/android/views/wheel/WheelView;->lowerLimit:I

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 147
    :cond_8c
    :goto_8c
    iget-object p1, p0, Lcom/keephealth/android/views/wheel/WheelView;->mDividerTop:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_ab

    .line 148
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    .line 150
    iget-object p2, p0, Lcom/keephealth/android/views/wheel/WheelView;->mDividerTop:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/keephealth/android/views/wheel/WheelView;->getPaddingLeft()I

    move-result p3

    iget p4, p0, Lcom/keephealth/android/views/wheel/WheelView;->upperLimit:I

    .line 151
    invoke-virtual {p0}, Lcom/keephealth/android/views/wheel/WheelView;->getWidth()I

    move-result p5

    invoke-virtual {p0}, Lcom/keephealth/android/views/wheel/WheelView;->getPaddingRight()I

    move-result v0

    sub-int/2addr p5, v0

    iget v0, p0, Lcom/keephealth/android/views/wheel/WheelView;->upperLimit:I

    add-int/2addr v0, p1

    .line 150
    invoke-virtual {p2, p3, p4, p5, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 155
    :cond_ab
    iget-object p1, p0, Lcom/keephealth/android/views/wheel/WheelView;->mDividerBottom:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_ca

    .line 156
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    .line 157
    iget-object p2, p0, Lcom/keephealth/android/views/wheel/WheelView;->mDividerBottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/keephealth/android/views/wheel/WheelView;->getPaddingLeft()I

    move-result p3

    iget p4, p0, Lcom/keephealth/android/views/wheel/WheelView;->lowerLimit:I

    sub-int/2addr p4, p1

    .line 158
    invoke-virtual {p0}, Lcom/keephealth/android/views/wheel/WheelView;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Lcom/keephealth/android/views/wheel/WheelView;->getPaddingRight()I

    move-result p5

    sub-int/2addr p1, p5

    iget p5, p0, Lcom/keephealth/android/views/wheel/WheelView;->lowerLimit:I

    .line 157
    invoke-virtual {p2, p3, p4, p1, p5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_ca
    return-void
.end method

.method protected onMeasure(II)V
    .registers 6

    .line 97
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 98
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 99
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 100
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/high16 v2, 0x40000000    # 2.0f

    if-ne v0, v2, :cond_1a

    if-ne v1, v2, :cond_1a

    .line 103
    invoke-virtual {p0, p1, p2}, Lcom/keephealth/android/views/wheel/WheelView;->setMeasuredDimension(II)V

    goto :goto_39

    :cond_1a
    if-ne v0, v2, :cond_24

    .line 106
    invoke-virtual {p0}, Lcom/keephealth/android/views/wheel/WheelView;->getPrefHeight()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/keephealth/android/views/wheel/WheelView;->setMeasuredDimension(II)V

    goto :goto_39

    :cond_24
    if-ne v1, v2, :cond_2e

    .line 108
    invoke-virtual {p0}, Lcom/keephealth/android/views/wheel/WheelView;->getPrefWidth()I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/keephealth/android/views/wheel/WheelView;->setMeasuredDimension(II)V

    goto :goto_39

    .line 111
    :cond_2e
    invoke-virtual {p0}, Lcom/keephealth/android/views/wheel/WheelView;->getPrefWidth()I

    move-result p1

    invoke-virtual {p0}, Lcom/keephealth/android/views/wheel/WheelView;->getPrefHeight()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/keephealth/android/views/wheel/WheelView;->setMeasuredDimension(II)V

    .line 114
    :goto_39
    invoke-virtual {p0}, Lcom/keephealth/android/views/wheel/WheelView;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Lcom/keephealth/android/views/wheel/WheelView;->getPaddingLeft()I

    move-result p2

    sub-int/2addr p1, p2

    invoke-virtual {p0}, Lcom/keephealth/android/views/wheel/WheelView;->getPaddingRight()I

    move-result p2

    sub-int/2addr p1, p2

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/keephealth/android/views/wheel/WheelView;->centerX:I

    .line 115
    invoke-virtual {p0}, Lcom/keephealth/android/views/wheel/WheelView;->getMeasuredHeight()I

    move-result p1

    invoke-virtual {p0}, Lcom/keephealth/android/views/wheel/WheelView;->getPaddingTop()I

    move-result p2

    sub-int/2addr p1, p2

    invoke-virtual {p0}, Lcom/keephealth/android/views/wheel/WheelView;->getPaddingBottom()I

    move-result p2

    sub-int/2addr p1, p2

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/keephealth/android/views/wheel/WheelView;->centerY:I

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 327
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/WheelView;->mScroller:Lcom/keephealth/android/views/wheel/WheelScroller;

    invoke-virtual {v0, p1}, Lcom/keephealth/android/views/wheel/WheelScroller;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setAdapter(Lcom/keephealth/android/views/wheel/WheelAdapter;)V
    .registers 2

    .line 441
    iput-object p1, p0, Lcom/keephealth/android/views/wheel/WheelView;->adapter:Lcom/keephealth/android/views/wheel/WheelAdapter;

    .line 442
    iget-object p1, p0, Lcom/keephealth/android/views/wheel/WheelView;->mScroller:Lcom/keephealth/android/views/wheel/WheelScroller;

    invoke-virtual {p1}, Lcom/keephealth/android/views/wheel/WheelScroller;->reset()V

    .line 443
    invoke-virtual {p0}, Lcom/keephealth/android/views/wheel/WheelView;->measureItemSize()V

    .line 444
    invoke-virtual {p0}, Lcom/keephealth/android/views/wheel/WheelView;->requestLayout()V

    .line 445
    invoke-virtual {p0}, Lcom/keephealth/android/views/wheel/WheelView;->invalidate()V

    return-void
.end method

.method public setCurrentItem(I)V
    .registers 3

    const/4 v0, 0x0

    .line 415
    invoke-virtual {p0, p1, v0}, Lcom/keephealth/android/views/wheel/WheelView;->setCurrentItem(IZ)V

    return-void
.end method

.method public setCurrentItem(IZ)V
    .registers 4

    .line 419
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/WheelView;->adapter:Lcom/keephealth/android/views/wheel/WheelAdapter;

    if-eqz v0, :cond_10

    invoke-interface {v0}, Lcom/keephealth/android/views/wheel/WheelAdapter;->getItemsCount()I

    move-result v0

    if-nez v0, :cond_b

    goto :goto_10

    .line 422
    :cond_b
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/WheelView;->mScroller:Lcom/keephealth/android/views/wheel/WheelScroller;

    invoke-virtual {v0, p1, p2}, Lcom/keephealth/android/views/wheel/WheelScroller;->setCurrentIndex(IZ)V

    :cond_10
    :goto_10
    return-void
.end method

.method public setCyclic(Z)V
    .registers 2

    .line 340
    iput-boolean p1, p0, Lcom/keephealth/android/views/wheel/WheelView;->mCyclic:Z

    return-void
.end method

.method public setLineSpace(I)V
    .registers 2

    .line 361
    iput p1, p0, Lcom/keephealth/android/views/wheel/WheelView;->mLineSpace:I

    .line 362
    iget-object p1, p0, Lcom/keephealth/android/views/wheel/WheelView;->mScroller:Lcom/keephealth/android/views/wheel/WheelScroller;

    invoke-virtual {p1}, Lcom/keephealth/android/views/wheel/WheelScroller;->reset()V

    .line 363
    invoke-virtual {p0}, Lcom/keephealth/android/views/wheel/WheelView;->measureItemSize()V

    .line 364
    invoke-virtual {p0}, Lcom/keephealth/android/views/wheel/WheelView;->requestLayout()V

    .line 365
    invoke-virtual {p0}, Lcom/keephealth/android/views/wheel/WheelView;->invalidate()V

    return-void
.end method

.method public setSelectedColor(I)V
    .registers 2

    .line 388
    iput p1, p0, Lcom/keephealth/android/views/wheel/WheelView;->mSelectedColor:I

    .line 389
    invoke-virtual {p0}, Lcom/keephealth/android/views/wheel/WheelView;->invalidate()V

    return-void
.end method

.method public setTextSize(I)V
    .registers 3

    .line 373
    iput p1, p0, Lcom/keephealth/android/views/wheel/WheelView;->mTextSize:I

    .line 374
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/WheelView;->mPaint:Landroid/graphics/Paint;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 375
    iget-object p1, p0, Lcom/keephealth/android/views/wheel/WheelView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p1

    .line 376
    iget v0, p1, Landroid/graphics/Paint$FontMetrics;->top:F

    iget p1, p1, Landroid/graphics/Paint$FontMetrics;->bottom:F

    add-float/2addr v0, p1

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr v0, p1

    float-to-int p1, v0

    iput p1, p0, Lcom/keephealth/android/views/wheel/WheelView;->baseline:I

    .line 377
    iget-object p1, p0, Lcom/keephealth/android/views/wheel/WheelView;->mScroller:Lcom/keephealth/android/views/wheel/WheelScroller;

    invoke-virtual {p1}, Lcom/keephealth/android/views/wheel/WheelScroller;->reset()V

    .line 378
    invoke-virtual {p0}, Lcom/keephealth/android/views/wheel/WheelView;->measureItemSize()V

    .line 379
    invoke-virtual {p0}, Lcom/keephealth/android/views/wheel/WheelView;->requestLayout()V

    .line 380
    invoke-virtual {p0}, Lcom/keephealth/android/views/wheel/WheelView;->invalidate()V

    return-void
.end method

.method public setUnselectedColor(I)V
    .registers 2

    .line 397
    iput p1, p0, Lcom/keephealth/android/views/wheel/WheelView;->mUnselectedColor:I

    .line 398
    invoke-virtual {p0}, Lcom/keephealth/android/views/wheel/WheelView;->invalidate()V

    return-void
.end method

.method public setVisibleItems(I)V
    .registers 2

    .line 350
    div-int/lit8 p1, p1, 0x2

    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iput p1, p0, Lcom/keephealth/android/views/wheel/WheelView;->mVisibleItems:I

    .line 351
    iget-object p1, p0, Lcom/keephealth/android/views/wheel/WheelView;->mScroller:Lcom/keephealth/android/views/wheel/WheelScroller;

    invoke-virtual {p1}, Lcom/keephealth/android/views/wheel/WheelScroller;->reset()V

    .line 352
    invoke-virtual {p0}, Lcom/keephealth/android/views/wheel/WheelView;->requestLayout()V

    .line 353
    invoke-virtual {p0}, Lcom/keephealth/android/views/wheel/WheelView;->invalidate()V

    return-void
.end method
