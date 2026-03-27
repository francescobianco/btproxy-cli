.class public Lcom/google/maps/android/ui/RotationLayout;
.super Landroid/widget/FrameLayout;
.source "RotationLayout.java"


# instance fields
.field private mRotation:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 33
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 6

    .line 64
    iget v0, p0, Lcom/google/maps/android/ui/RotationLayout;->mRotation:I

    if-nez v0, :cond_8

    .line 65
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void

    :cond_8
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne v0, v1, :cond_30

    .line 70
    invoke-virtual {p0}, Lcom/google/maps/android/ui/RotationLayout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 71
    invoke-virtual {p0}, Lcom/google/maps/android/ui/RotationLayout;->getWidth()I

    move-result v0

    div-int/2addr v0, v3

    int-to-float v0, v0

    const/high16 v1, 0x42b40000    # 90.0f

    invoke-virtual {p1, v1, v0, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 72
    invoke-virtual {p0}, Lcom/google/maps/android/ui/RotationLayout;->getHeight()I

    move-result v0

    div-int/2addr v0, v3

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/google/maps/android/ui/RotationLayout;->getWidth()I

    move-result v1

    div-int/2addr v1, v3

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_67

    :cond_30
    if-ne v0, v3, :cond_44

    .line 74
    invoke-virtual {p0}, Lcom/google/maps/android/ui/RotationLayout;->getWidth()I

    move-result v0

    div-int/2addr v0, v3

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/google/maps/android/ui/RotationLayout;->getHeight()I

    move-result v1

    div-int/2addr v1, v3

    int-to-float v1, v1

    const/high16 v2, 0x43340000    # 180.0f

    invoke-virtual {p1, v2, v0, v1}, Landroid/graphics/Canvas;->rotate(FFF)V

    goto :goto_67

    .line 76
    :cond_44
    invoke-virtual {p0}, Lcom/google/maps/android/ui/RotationLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 77
    invoke-virtual {p0}, Lcom/google/maps/android/ui/RotationLayout;->getWidth()I

    move-result v0

    div-int/2addr v0, v3

    int-to-float v0, v0

    const/high16 v1, 0x43870000    # 270.0f

    invoke-virtual {p1, v1, v0, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 78
    invoke-virtual {p0}, Lcom/google/maps/android/ui/RotationLayout;->getHeight()I

    move-result v0

    div-int/2addr v0, v3

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/google/maps/android/ui/RotationLayout;->getWidth()I

    move-result v1

    neg-int v1, v1

    div-int/2addr v1, v3

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 81
    :goto_67
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .registers 5

    .line 46
    iget v0, p0, Lcom/google/maps/android/ui/RotationLayout;->mRotation:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_d

    const/4 v1, 0x3

    if-ne v0, v1, :cond_9

    goto :goto_d

    .line 50
    :cond_9
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    goto :goto_1b

    .line 47
    :cond_d
    :goto_d
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 48
    invoke-virtual {p0}, Lcom/google/maps/android/ui/RotationLayout;->getMeasuredHeight()I

    move-result p1

    invoke-virtual {p0}, Lcom/google/maps/android/ui/RotationLayout;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/google/maps/android/ui/RotationLayout;->setMeasuredDimension(II)V

    :goto_1b
    return-void
.end method

.method public setViewRotation(I)V
    .registers 2

    add-int/lit16 p1, p1, 0x168

    .line 58
    rem-int/lit16 p1, p1, 0x168

    div-int/lit8 p1, p1, 0x5a

    iput p1, p0, Lcom/google/maps/android/ui/RotationLayout;->mRotation:I

    return-void
.end method
