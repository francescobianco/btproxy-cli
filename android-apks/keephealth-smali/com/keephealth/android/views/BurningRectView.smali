.class public Lcom/keephealth/android/views/BurningRectView;
.super Landroid/view/View;
.source "BurningRectView.java"


# instance fields
.field private MAX_VALUE:I

.field private h:I

.field label:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mPaint:Landroid/graphics/Paint;

.field private normalColor:I

.field private normalSize:F

.field private precentPaint:Landroid/graphics/Paint;

.field private rectColor:I

.field private rectProportion:F

.field private text:Ljava/lang/String;

.field private textLeftPadding:F

.field private unit:Ljava/lang/String;

.field private unitColor:I

.field private unitSize:F

.field private value:I

.field private valueColor:I

.field private valueSize:F

.field private w:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    .line 39
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    iput-object p1, p0, Lcom/keephealth/android/views/BurningRectView;->mContext:Landroid/content/Context;

    .line 41
    sget-object v0, Lcom/keephealth/android/R$styleable;->BurningRectView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x2

    const/4 v0, 0x0

    .line 43
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/keephealth/android/views/BurningRectView;->rectColor:I

    .line 44
    invoke-virtual {p1, v0, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/keephealth/android/views/BurningRectView;->normalColor:I

    const/16 p2, 0x9

    .line 45
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/keephealth/android/views/BurningRectView;->valueColor:I

    const/4 p2, 0x7

    .line 46
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/keephealth/android/views/BurningRectView;->unitColor:I

    const/4 p2, 0x5

    const/high16 v0, 0x41a00000    # 20.0f

    .line 47
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/keephealth/android/views/BurningRectView;->textLeftPadding:F

    const/4 p2, 0x3

    const v0, 0x3f333333    # 0.7f

    .line 48
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/keephealth/android/views/BurningRectView;->rectProportion:F

    const/4 p2, 0x1

    const/high16 v0, 0x41800000    # 16.0f

    .line 49
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/keephealth/android/views/BurningRectView;->normalSize:F

    const/16 v1, 0xa

    .line 50
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/keephealth/android/views/BurningRectView;->valueSize:F

    const/16 v1, 0x8

    .line 51
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/keephealth/android/views/BurningRectView;->unitSize:F

    const/4 v0, 0x4

    .line 52
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/views/BurningRectView;->text:Ljava/lang/String;

    const/4 v0, 0x6

    .line 53
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/views/BurningRectView;->unit:Ljava/lang/String;

    .line 55
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 57
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/keephealth/android/views/BurningRectView;->mPaint:Landroid/graphics/Paint;

    .line 58
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 59
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/keephealth/android/views/BurningRectView;->precentPaint:Landroid/graphics/Paint;

    .line 60
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 13

    .line 75
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 80
    iget-object v0, p0, Lcom/keephealth/android/views/BurningRectView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/keephealth/android/views/BurningRectView;->rectColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 81
    iget v0, p0, Lcom/keephealth/android/views/BurningRectView;->h:I

    int-to-float v4, v0

    iget v5, p0, Lcom/keephealth/android/views/BurningRectView;->value:I

    iget v6, p0, Lcom/keephealth/android/views/BurningRectView;->MAX_VALUE:I

    iget v0, p0, Lcom/keephealth/android/views/BurningRectView;->w:I

    int-to-float v7, v0

    iget v8, p0, Lcom/keephealth/android/views/BurningRectView;->rectProportion:F

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/keephealth/android/views/BurningRectView;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v10}, Lcom/keephealth/android/util/ViewUtil;->drawRect(Landroid/graphics/Canvas;FFFIIFFFLandroid/graphics/Paint;)V

    .line 84
    iget v0, p0, Lcom/keephealth/android/views/BurningRectView;->textLeftPadding:F

    iget v1, p0, Lcom/keephealth/android/views/BurningRectView;->value:I

    iget v2, p0, Lcom/keephealth/android/views/BurningRectView;->MAX_VALUE:I

    iget v3, p0, Lcom/keephealth/android/views/BurningRectView;->w:I

    int-to-float v3, v3

    iget v4, p0, Lcom/keephealth/android/views/BurningRectView;->rectProportion:F

    invoke-static {v1, v2, v3, v4}, Lcom/keephealth/android/util/ViewUtil;->calculateRectW(IIFF)F

    move-result v1

    add-float/2addr v0, v1

    .line 87
    iget-object v1, p0, Lcom/keephealth/android/views/BurningRectView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 88
    iget-object v1, p0, Lcom/keephealth/android/views/BurningRectView;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/keephealth/android/views/BurningRectView;->normalColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 89
    iget-object v1, p0, Lcom/keephealth/android/views/BurningRectView;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/keephealth/android/views/BurningRectView;->normalSize:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 90
    iget-object v1, p0, Lcom/keephealth/android/views/BurningRectView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    .line 91
    invoke-virtual {p0}, Lcom/keephealth/android/views/BurningRectView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget v3, v1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    sub-int/2addr v2, v3

    iget v3, v1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v3, v1

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-float v1, v2

    .line 93
    iget-object v2, p0, Lcom/keephealth/android/views/BurningRectView;->text:Ljava/lang/String;

    iget-object v3, p0, Lcom/keephealth/android/views/BurningRectView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 95
    iget-object v2, p0, Lcom/keephealth/android/views/BurningRectView;->precentPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/keephealth/android/views/BurningRectView;->normalSize:F

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 96
    iget-object v2, p0, Lcom/keephealth/android/views/BurningRectView;->precentPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/keephealth/android/views/BurningRectView;->normalColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 97
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/keephealth/android/views/BurningRectView;->value:I

    int-to-float v3, v3

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/keephealth/android/views/BurningRectView;->MAX_VALUE:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/high16 v3, 0x40a00000    # 5.0f

    .line 98
    iget-object v4, p0, Lcom/keephealth/android/views/BurningRectView;->mContext:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/keephealth/android/views/BurningRectView;->precentPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v1, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 101
    iget-object v2, p0, Lcom/keephealth/android/views/BurningRectView;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 102
    iget-object v2, p0, Lcom/keephealth/android/views/BurningRectView;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/keephealth/android/views/BurningRectView;->valueColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 103
    iget-object v2, p0, Lcom/keephealth/android/views/BurningRectView;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/keephealth/android/views/BurningRectView;->valueSize:F

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 104
    iget-object v2, p0, Lcom/keephealth/android/views/BurningRectView;->mPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/keephealth/android/views/BurningRectView;->label:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/keephealth/android/util/ViewUtil;->getTextRectHeight(Landroid/graphics/Paint;Ljava/lang/String;)F

    .line 105
    iget-object v2, p0, Lcom/keephealth/android/views/BurningRectView;->mPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/keephealth/android/views/BurningRectView;->label:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/keephealth/android/util/ViewUtil;->getTextRectWidth(Landroid/graphics/Paint;Ljava/lang/String;)F

    move-result v2

    .line 106
    iget-object v3, p0, Lcom/keephealth/android/views/BurningRectView;->label:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/keephealth/android/views/BurningRectView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v0, v1, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 109
    iget v3, p0, Lcom/keephealth/android/views/BurningRectView;->value:I

    const v4, 0x7f100775

    const/16 v5, 0x3c

    if-le v3, v5, :cond_11b

    .line 110
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p0, Lcom/keephealth/android/views/BurningRectView;->value:I

    div-int/2addr v6, v5

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f10076d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v6, p0, Lcom/keephealth/android/views/BurningRectView;->value:I

    rem-int/2addr v6, v5

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_13b

    .line 112
    :cond_11b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p0, Lcom/keephealth/android/views/BurningRectView;->value:I

    rem-int/2addr v6, v5

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 115
    :goto_13b
    iget-object v4, p0, Lcom/keephealth/android/views/BurningRectView;->mPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/keephealth/android/views/BurningRectView;->unitColor:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 116
    iget-object v4, p0, Lcom/keephealth/android/views/BurningRectView;->mPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/keephealth/android/views/BurningRectView;->unitSize:F

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    add-float/2addr v0, v2

    .line 117
    iget v2, p0, Lcom/keephealth/android/views/BurningRectView;->textLeftPadding:F

    add-float/2addr v0, v2

    .line 119
    iget-object v2, p0, Lcom/keephealth/android/views/BurningRectView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v0, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 5

    .line 66
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 68
    iput p1, p0, Lcom/keephealth/android/views/BurningRectView;->w:I

    .line 69
    iput p2, p0, Lcom/keephealth/android/views/BurningRectView;->h:I

    return-void
.end method

.method public setData(IILjava/lang/String;)V
    .registers 4

    .line 130
    iput p1, p0, Lcom/keephealth/android/views/BurningRectView;->value:I

    .line 131
    iput p2, p0, Lcom/keephealth/android/views/BurningRectView;->MAX_VALUE:I

    .line 132
    iput-object p3, p0, Lcom/keephealth/android/views/BurningRectView;->label:Ljava/lang/String;

    .line 133
    invoke-virtual {p0}, Lcom/keephealth/android/views/BurningRectView;->postInvalidate()V

    return-void
.end method
