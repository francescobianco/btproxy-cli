.class public Lcom/keephealth/android/views/wheel/Wheel3DView;
.super Lcom/keephealth/android/views/wheel/WheelView;
.source "Wheel3DView.java"


# instance fields
.field private mCamera:Landroid/graphics/Camera;

.field private mMatrix:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 14
    invoke-direct {p0, p1, v0}, Lcom/keephealth/android/views/wheel/Wheel3DView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/keephealth/android/views/wheel/WheelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    new-instance p1, Landroid/graphics/Camera;

    invoke-direct {p1}, Landroid/graphics/Camera;-><init>()V

    iput-object p1, p0, Lcom/keephealth/android/views/wheel/Wheel3DView;->mCamera:Landroid/graphics/Camera;

    .line 20
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/keephealth/android/views/wheel/Wheel3DView;->mMatrix:Landroid/graphics/Matrix;

    return-void
.end method

.method private drawText(Landroid/graphics/Canvas;Ljava/lang/CharSequence;FFFF)V
    .registers 14

    .line 136
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/Wheel3DView;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v0}, Landroid/graphics/Camera;->save()V

    .line 137
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/Wheel3DView;->mCamera:Landroid/graphics/Camera;

    const/4 v1, 0x0

    invoke-virtual {v0, p3, v1, p5}, Landroid/graphics/Camera;->translate(FFF)V

    .line 138
    iget-object p3, p0, Lcom/keephealth/android/views/wheel/Wheel3DView;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {p3, p6}, Landroid/graphics/Camera;->rotateX(F)V

    .line 139
    iget-object p3, p0, Lcom/keephealth/android/views/wheel/Wheel3DView;->mCamera:Landroid/graphics/Camera;

    iget-object p5, p0, Lcom/keephealth/android/views/wheel/Wheel3DView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p3, p5}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 140
    iget-object p3, p0, Lcom/keephealth/android/views/wheel/Wheel3DView;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {p3}, Landroid/graphics/Camera;->restore()V

    .line 142
    iget p3, p0, Lcom/keephealth/android/views/wheel/Wheel3DView;->centerX:I

    int-to-float v4, p3

    .line 143
    iget p3, p0, Lcom/keephealth/android/views/wheel/Wheel3DView;->centerY:I

    int-to-float p3, p3

    add-float/2addr p3, p4

    .line 146
    iget-object p4, p0, Lcom/keephealth/android/views/wheel/Wheel3DView;->mMatrix:Landroid/graphics/Matrix;

    neg-float p5, v4

    neg-float p6, p3

    invoke-virtual {p4, p5, p6}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 147
    iget-object p4, p0, Lcom/keephealth/android/views/wheel/Wheel3DView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p4, v4, p3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 149
    iget-object p4, p0, Lcom/keephealth/android/views/wheel/Wheel3DView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, p4}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 150
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    iget p4, p0, Lcom/keephealth/android/views/wheel/Wheel3DView;->baseline:I

    int-to-float p4, p4

    sub-float v5, p3, p4

    iget-object v6, p0, Lcom/keephealth/android/views/wheel/Wheel3DView;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    move-object v0, p1

    move-object v1, p2

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    return-void
.end method


# virtual methods
.method protected drawItem(Landroid/graphics/Canvas;II)V
    .registers 21

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move/from16 v0, p2

    .line 53
    invoke-virtual {v7, v0}, Lcom/keephealth/android/views/wheel/Wheel3DView;->getCharSequence(I)Ljava/lang/CharSequence;

    move-result-object v9

    if-nez v9, :cond_d

    return-void

    .line 58
    :cond_d
    iget v1, v7, Lcom/keephealth/android/views/wheel/Wheel3DView;->itemHeight:I

    int-to-double v1, v1

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/views/wheel/Wheel3DView;->getVisibleItems()I

    move-result v3

    int-to-double v3, v3

    const-wide v5, 0x3fd3333333333333L    # 0.3

    sub-double/2addr v3, v5

    mul-double/2addr v1, v3

    double-to-int v1, v1

    int-to-double v1, v1

    const-wide v3, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v1, v3

    double-to-int v1, v1

    .line 62
    iget-object v2, v7, Lcom/keephealth/android/views/wheel/Wheel3DView;->mScroller:Lcom/keephealth/android/views/wheel/WheelScroller;

    invoke-virtual {v2}, Lcom/keephealth/android/views/wheel/WheelScroller;->getItemIndex()I

    move-result v2

    sub-int/2addr v0, v2

    iget v2, v7, Lcom/keephealth/android/views/wheel/Wheel3DView;->itemHeight:I

    mul-int/2addr v0, v2

    sub-int v0, v0, p3

    .line 64
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-double v5, v2

    int-to-double v1, v1

    mul-double/2addr v3, v1

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double/2addr v3, v10

    cmpl-double v3, v5, v3

    if-lez v3, :cond_40

    return-void

    :cond_40
    int-to-double v3, v0

    div-double/2addr v3, v1

    neg-double v5, v3

    .line 68
    invoke-static {v5, v6}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v5

    double-to-float v10, v5

    .line 72
    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    mul-double/2addr v5, v1

    double-to-float v11, v5

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    .line 74
    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    sub-double/2addr v5, v12

    mul-double/2addr v5, v1

    double-to-float v12, v5

    .line 76
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/views/wheel/Wheel3DView;->getTextSize()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3d4ccccd    # 0.05f

    mul-float/2addr v1, v2

    .line 78
    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    const-wide v4, 0x406fe00000000000L    # 255.0

    mul-double/2addr v2, v4

    double-to-int v13, v2

    .line 80
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/views/wheel/Wheel3DView;->getPaddingLeft()I

    move-result v14

    .line 81
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/views/wheel/Wheel3DView;->getWidth()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/views/wheel/Wheel3DView;->getPaddingRight()I

    move-result v3

    sub-int v15, v2, v3

    .line 82
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/views/wheel/Wheel3DView;->getPaddingTop()I

    move-result v6

    .line 83
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/views/wheel/Wheel3DView;->getHeight()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/views/wheel/Wheel3DView;->getPaddingBottom()I

    move-result v3

    sub-int v5, v2, v3

    .line 86
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/4 v3, 0x0

    const/16 v16, 0x0

    if-gtz v2, :cond_b8

    .line 87
    iget-object v0, v7, Lcom/keephealth/android/views/wheel/Wheel3DView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/views/wheel/Wheel3DView;->getSelectedColor()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 88
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 89
    invoke-virtual {v8, v1, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 90
    iget v0, v7, Lcom/keephealth/android/views/wheel/Wheel3DView;->upperLimit:I

    iget v1, v7, Lcom/keephealth/android/views/wheel/Wheel3DView;->lowerLimit:I

    invoke-virtual {v8, v14, v0, v15, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v9

    move/from16 v3, v16

    move v4, v11

    move v5, v12

    move v6, v10

    .line 91
    invoke-direct/range {v0 .. v6}, Lcom/keephealth/android/views/wheel/Wheel3DView;->drawText(Landroid/graphics/Canvas;Ljava/lang/CharSequence;FFFF)V

    .line 92
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_185

    :cond_b8
    if-lez v0, :cond_10c

    .line 95
    iget v2, v7, Lcom/keephealth/android/views/wheel/Wheel3DView;->itemHeight:I

    if-ge v0, v2, :cond_10c

    .line 96
    iget-object v0, v7, Lcom/keephealth/android/views/wheel/Wheel3DView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/views/wheel/Wheel3DView;->getSelectedColor()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 97
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 98
    invoke-virtual {v8, v1, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 99
    iget v0, v7, Lcom/keephealth/android/views/wheel/Wheel3DView;->upperLimit:I

    iget v1, v7, Lcom/keephealth/android/views/wheel/Wheel3DView;->lowerLimit:I

    invoke-virtual {v8, v14, v0, v15, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v9

    move/from16 v3, v16

    move v4, v11

    move v6, v5

    move v5, v12

    move/from16 p2, v12

    move v12, v6

    move v6, v10

    .line 100
    invoke-direct/range {v0 .. v6}, Lcom/keephealth/android/views/wheel/Wheel3DView;->drawText(Landroid/graphics/Canvas;Ljava/lang/CharSequence;FFFF)V

    .line 101
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 103
    iget-object v0, v7, Lcom/keephealth/android/views/wheel/Wheel3DView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/views/wheel/Wheel3DView;->getUnselectedColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 104
    iget-object v0, v7, Lcom/keephealth/android/views/wheel/Wheel3DView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v13}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 105
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 106
    iget v0, v7, Lcom/keephealth/android/views/wheel/Wheel3DView;->lowerLimit:I

    invoke-virtual {v8, v14, v0, v15, v12}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v5, p2

    .line 107
    invoke-direct/range {v0 .. v6}, Lcom/keephealth/android/views/wheel/Wheel3DView;->drawText(Landroid/graphics/Canvas;Ljava/lang/CharSequence;FFFF)V

    .line 108
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_185

    :cond_10c
    move/from16 p2, v12

    move v12, v5

    if-gez v0, :cond_15f

    .line 111
    iget v2, v7, Lcom/keephealth/android/views/wheel/Wheel3DView;->itemHeight:I

    neg-int v2, v2

    if-le v0, v2, :cond_15f

    .line 112
    iget-object v0, v7, Lcom/keephealth/android/views/wheel/Wheel3DView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/views/wheel/Wheel3DView;->getSelectedColor()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 113
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 114
    invoke-virtual {v8, v1, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 115
    iget v0, v7, Lcom/keephealth/android/views/wheel/Wheel3DView;->upperLimit:I

    iget v1, v7, Lcom/keephealth/android/views/wheel/Wheel3DView;->lowerLimit:I

    invoke-virtual {v8, v14, v0, v15, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v9

    move/from16 v3, v16

    move v4, v11

    move/from16 v5, p2

    move v12, v6

    move v6, v10

    .line 116
    invoke-direct/range {v0 .. v6}, Lcom/keephealth/android/views/wheel/Wheel3DView;->drawText(Landroid/graphics/Canvas;Ljava/lang/CharSequence;FFFF)V

    .line 117
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 119
    iget-object v0, v7, Lcom/keephealth/android/views/wheel/Wheel3DView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/views/wheel/Wheel3DView;->getUnselectedColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 120
    iget-object v0, v7, Lcom/keephealth/android/views/wheel/Wheel3DView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v13}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 121
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 122
    iget v0, v7, Lcom/keephealth/android/views/wheel/Wheel3DView;->upperLimit:I

    invoke-virtual {v8, v14, v12, v15, v0}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 123
    invoke-direct/range {v0 .. v6}, Lcom/keephealth/android/views/wheel/Wheel3DView;->drawText(Landroid/graphics/Canvas;Ljava/lang/CharSequence;FFFF)V

    .line 124
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_185

    :cond_15f
    move v0, v6

    .line 126
    iget-object v1, v7, Lcom/keephealth/android/views/wheel/Wheel3DView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/views/wheel/Wheel3DView;->getUnselectedColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 127
    iget-object v1, v7, Lcom/keephealth/android/views/wheel/Wheel3DView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v13}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 128
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 129
    invoke-virtual {v8, v14, v0, v15, v12}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v9

    move/from16 v3, v16

    move v4, v11

    move/from16 v5, p2

    move v6, v10

    .line 130
    invoke-direct/range {v0 .. v6}, Lcom/keephealth/android/views/wheel/Wheel3DView;->drawText(Landroid/graphics/Canvas;Ljava/lang/CharSequence;FFFF)V

    .line 131
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :goto_185
    return-void
.end method

.method public getPrefHeight()I
    .registers 6

    .line 39
    invoke-virtual {p0}, Lcom/keephealth/android/views/wheel/Wheel3DView;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/keephealth/android/views/wheel/Wheel3DView;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    .line 40
    iget v1, p0, Lcom/keephealth/android/views/wheel/Wheel3DView;->itemHeight:I

    invoke-virtual {p0}, Lcom/keephealth/android/views/wheel/Wheel3DView;->getVisibleItems()I

    move-result v2

    mul-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x2

    int-to-double v1, v1

    const-wide v3, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v1, v3

    double-to-int v1, v1

    add-int/2addr v1, v0

    return v1
.end method

.method public getPrefWidth()I
    .registers 7

    .line 27
    invoke-super {p0}, Lcom/keephealth/android/views/wheel/WheelView;->getPrefWidth()I

    move-result v0

    .line 28
    iget v1, p0, Lcom/keephealth/android/views/wheel/Wheel3DView;->itemHeight:I

    invoke-virtual {p0}, Lcom/keephealth/android/views/wheel/Wheel3DView;->getVisibleItems()I

    move-result v2

    mul-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x2

    int-to-double v1, v1

    const-wide v3, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v1, v3

    double-to-int v1, v1

    const-wide v2, 0x3fb0c152382d7365L    # 0.06544984694978735

    .line 29
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    int-to-double v4, v1

    mul-double/2addr v2, v4

    double-to-int v1, v2

    add-int/2addr v0, v1

    return v0
.end method
