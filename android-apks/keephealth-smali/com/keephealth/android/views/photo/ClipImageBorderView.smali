.class public Lcom/keephealth/android/views/photo/ClipImageBorderView;
.super Landroid/view/View;
.source "ClipImageBorderView.java"


# instance fields
.field private mBorderColor:I

.field private mBorderWidth:I

.field private mHorizontalPadding:I

.field private mPaint:Landroid/graphics/Paint;

.field private mVerticalPadding:I

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, p1, v0}, Lcom/keephealth/android/views/photo/ClipImageBorderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, p1, p2, v0}, Lcom/keephealth/android/views/photo/ClipImageBorderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    const-string p1, "#FFFFFF"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/keephealth/android/views/photo/ClipImageBorderView;->mBorderColor:I

    const/4 p1, 0x1

    .line 35
    iput p1, p0, Lcom/keephealth/android/views/photo/ClipImageBorderView;->mBorderWidth:I

    int-to-float p2, p1

    .line 54
    invoke-virtual {p0}, Lcom/keephealth/android/views/photo/ClipImageBorderView;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    .line 55
    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    .line 53
    invoke-static {p1, p2, p3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/keephealth/android/views/photo/ClipImageBorderView;->mBorderWidth:I

    .line 56
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/keephealth/android/views/photo/ClipImageBorderView;->mPaint:Landroid/graphics/Paint;

    .line 57
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 9

    .line 63
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 65
    invoke-virtual {p0}, Lcom/keephealth/android/views/photo/ClipImageBorderView;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/keephealth/android/views/photo/ClipImageBorderView;->mHorizontalPadding:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/keephealth/android/views/photo/ClipImageBorderView;->mWidth:I

    .line 67
    invoke-virtual {p0}, Lcom/keephealth/android/views/photo/ClipImageBorderView;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/keephealth/android/views/photo/ClipImageBorderView;->mWidth:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/keephealth/android/views/photo/ClipImageBorderView;->mVerticalPadding:I

    .line 68
    iget-object v0, p0, Lcom/keephealth/android/views/photo/ClipImageBorderView;->mPaint:Landroid/graphics/Paint;

    const-string v1, "#aa000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 69
    iget-object v0, p0, Lcom/keephealth/android/views/photo/ClipImageBorderView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 71
    iget v0, p0, Lcom/keephealth/android/views/photo/ClipImageBorderView;->mHorizontalPadding:I

    int-to-float v4, v0

    invoke-virtual {p0}, Lcom/keephealth/android/views/photo/ClipImageBorderView;->getHeight()I

    move-result v0

    int-to-float v5, v0

    iget-object v6, p0, Lcom/keephealth/android/views/photo/ClipImageBorderView;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 73
    invoke-virtual {p0}, Lcom/keephealth/android/views/photo/ClipImageBorderView;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/keephealth/android/views/photo/ClipImageBorderView;->mHorizontalPadding:I

    sub-int/2addr v0, v1

    int-to-float v2, v0

    invoke-virtual {p0}, Lcom/keephealth/android/views/photo/ClipImageBorderView;->getWidth()I

    move-result v0

    int-to-float v4, v0

    .line 74
    invoke-virtual {p0}, Lcom/keephealth/android/views/photo/ClipImageBorderView;->getHeight()I

    move-result v0

    int-to-float v5, v0

    iget-object v6, p0, Lcom/keephealth/android/views/photo/ClipImageBorderView;->mPaint:Landroid/graphics/Paint;

    move-object v1, p1

    .line 73
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 76
    iget v0, p0, Lcom/keephealth/android/views/photo/ClipImageBorderView;->mHorizontalPadding:I

    int-to-float v2, v0

    invoke-virtual {p0}, Lcom/keephealth/android/views/photo/ClipImageBorderView;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/keephealth/android/views/photo/ClipImageBorderView;->mHorizontalPadding:I

    sub-int/2addr v0, v1

    int-to-float v4, v0

    iget v0, p0, Lcom/keephealth/android/views/photo/ClipImageBorderView;->mVerticalPadding:I

    int-to-float v5, v0

    iget-object v6, p0, Lcom/keephealth/android/views/photo/ClipImageBorderView;->mPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 79
    iget v0, p0, Lcom/keephealth/android/views/photo/ClipImageBorderView;->mHorizontalPadding:I

    int-to-float v2, v0

    invoke-virtual {p0}, Lcom/keephealth/android/views/photo/ClipImageBorderView;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/keephealth/android/views/photo/ClipImageBorderView;->mVerticalPadding:I

    sub-int/2addr v0, v1

    int-to-float v3, v0

    .line 80
    invoke-virtual {p0}, Lcom/keephealth/android/views/photo/ClipImageBorderView;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/keephealth/android/views/photo/ClipImageBorderView;->mHorizontalPadding:I

    sub-int/2addr v0, v1

    int-to-float v4, v0

    invoke-virtual {p0}, Lcom/keephealth/android/views/photo/ClipImageBorderView;->getHeight()I

    move-result v0

    int-to-float v5, v0

    iget-object v6, p0, Lcom/keephealth/android/views/photo/ClipImageBorderView;->mPaint:Landroid/graphics/Paint;

    move-object v1, p1

    .line 79
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 82
    iget-object v0, p0, Lcom/keephealth/android/views/photo/ClipImageBorderView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/keephealth/android/views/photo/ClipImageBorderView;->mBorderColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 83
    iget-object v0, p0, Lcom/keephealth/android/views/photo/ClipImageBorderView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/keephealth/android/views/photo/ClipImageBorderView;->mBorderWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 84
    iget-object v0, p0, Lcom/keephealth/android/views/photo/ClipImageBorderView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 85
    iget v0, p0, Lcom/keephealth/android/views/photo/ClipImageBorderView;->mHorizontalPadding:I

    int-to-float v2, v0

    iget v0, p0, Lcom/keephealth/android/views/photo/ClipImageBorderView;->mVerticalPadding:I

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/keephealth/android/views/photo/ClipImageBorderView;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/keephealth/android/views/photo/ClipImageBorderView;->mHorizontalPadding:I

    sub-int/2addr v0, v1

    int-to-float v4, v0

    .line 86
    invoke-virtual {p0}, Lcom/keephealth/android/views/photo/ClipImageBorderView;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/keephealth/android/views/photo/ClipImageBorderView;->mVerticalPadding:I

    sub-int/2addr v0, v1

    int-to-float v5, v0

    iget-object v6, p0, Lcom/keephealth/android/views/photo/ClipImageBorderView;->mPaint:Landroid/graphics/Paint;

    move-object v1, p1

    .line 85
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public setHorizontalPadding(I)V
    .registers 2

    .line 92
    iput p1, p0, Lcom/keephealth/android/views/photo/ClipImageBorderView;->mHorizontalPadding:I

    return-void
.end method
