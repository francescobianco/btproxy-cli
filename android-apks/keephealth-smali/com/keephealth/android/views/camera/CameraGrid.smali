.class public Lcom/keephealth/android/views/camera/CameraGrid;
.super Landroid/view/View;
.source "CameraGrid.java"


# instance fields
.field private mPaint:Landroid/graphics/Paint;

.field private showGrid:Z

.field private topBannerWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 20
    invoke-direct {p0, p1, v0}, Lcom/keephealth/android/views/camera/CameraGrid;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 24
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 16
    iput p1, p0, Lcom/keephealth/android/views/camera/CameraGrid;->topBannerWidth:I

    const/4 p1, 0x1

    .line 53
    iput-boolean p1, p0, Lcom/keephealth/android/views/camera/CameraGrid;->showGrid:Z

    .line 25
    invoke-direct {p0}, Lcom/keephealth/android/views/camera/CameraGrid;->init()V

    return-void
.end method

.method private init()V
    .registers 3

    .line 29
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/views/camera/CameraGrid;->mPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    .line 30
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 31
    iget-object v0, p0, Lcom/keephealth/android/views/camera/CameraGrid;->mPaint:Landroid/graphics/Paint;

    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 32
    iget-object v0, p0, Lcom/keephealth/android/views/camera/CameraGrid;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method


# virtual methods
.method public getTopWidth()I
    .registers 2

    .line 64
    iget v0, p0, Lcom/keephealth/android/views/camera/CameraGrid;->topBannerWidth:I

    return v0
.end method

.method public isShowGrid()Z
    .registers 2

    .line 56
    iget-boolean v0, p0, Lcom/keephealth/android/views/camera/CameraGrid;->showGrid:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 16

    .line 39
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 40
    invoke-virtual {p0}, Lcom/keephealth/android/views/camera/CameraGrid;->getWidth()I

    move-result v0

    .line 41
    invoke-virtual {p0}, Lcom/keephealth/android/views/camera/CameraGrid;->getHeight()I

    move-result v1

    if-ge v0, v1, :cond_11

    sub-int v2, v1, v0

    .line 43
    iput v2, p0, Lcom/keephealth/android/views/camera/CameraGrid;->topBannerWidth:I

    .line 45
    :cond_11
    iget-boolean v2, p0, Lcom/keephealth/android/views/camera/CameraGrid;->showGrid:Z

    if-eqz v2, :cond_47

    .line 46
    div-int/lit8 v2, v0, 0x3

    int-to-float v6, v2

    int-to-float v11, v1

    iget-object v8, p0, Lcom/keephealth/android/views/camera/CameraGrid;->mPaint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    move-object v3, p1

    move v4, v6

    move v7, v11

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    mul-int/lit8 v2, v0, 0x2

    .line 47
    div-int/lit8 v2, v2, 0x3

    int-to-float v10, v2

    const/4 v9, 0x0

    iget-object v12, p0, Lcom/keephealth/android/views/camera/CameraGrid;->mPaint:Landroid/graphics/Paint;

    move-object v7, p1

    move v8, v10

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 48
    div-int/lit8 v2, v1, 0x3

    int-to-float v7, v2

    int-to-float v11, v0

    iget-object v8, p0, Lcom/keephealth/android/views/camera/CameraGrid;->mPaint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    move v5, v7

    move v6, v11

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    mul-int/lit8 v1, v1, 0x2

    .line 49
    div-int/lit8 v1, v1, 0x3

    int-to-float v12, v1

    iget-object v13, p0, Lcom/keephealth/android/views/camera/CameraGrid;->mPaint:Landroid/graphics/Paint;

    move-object v8, p1

    move v10, v12

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_47
    return-void
.end method

.method public setShowGrid(Z)V
    .registers 2

    .line 60
    iput-boolean p1, p0, Lcom/keephealth/android/views/camera/CameraGrid;->showGrid:Z

    return-void
.end method
