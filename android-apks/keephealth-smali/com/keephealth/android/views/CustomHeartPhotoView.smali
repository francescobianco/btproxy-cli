.class public Lcom/keephealth/android/views/CustomHeartPhotoView;
.super Landroid/view/View;
.source "CustomHeartPhotoView.java"


# instance fields
.field private MAX_HEART_RATE:I

.field private MIN_HEART_RATE:I

.field private bgColor:I

.field private centerY:Z

.field private h:I

.field private heartTotalHeight:F

.field private leftPadding:I

.field max:I

.field p:Landroid/graphics/Paint;

.field private photoBitmap:Landroid/graphics/Bitmap;

.field private photoPaint:Landroid/graphics/Paint;

.field private rightPadding:I

.field private title1:Ljava/lang/String;

.field private title2:Ljava/lang/String;

.field private title3:Ljava/lang/String;

.field private titlePaint:Landroid/graphics/Paint;

.field private value1:I

.field private value2:I

.field private value3:I

.field private valueBitmap:Landroid/graphics/Bitmap;

.field private valuePaint:Landroid/graphics/Paint;

.field private w:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 9

    .line 64
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v0, 0x14

    .line 40
    iput v0, p0, Lcom/keephealth/android/views/CustomHeartPhotoView;->leftPadding:I

    const/16 v0, 0x32

    iput v0, p0, Lcom/keephealth/android/views/CustomHeartPhotoView;->rightPadding:I

    const/16 v0, 0xe1

    .line 56
    iput v0, p0, Lcom/keephealth/android/views/CustomHeartPhotoView;->MAX_HEART_RATE:I

    const/16 v0, 0x1e

    iput v0, p0, Lcom/keephealth/android/views/CustomHeartPhotoView;->MIN_HEART_RATE:I

    rsub-int v1, v0, 0xe1

    add-int/2addr v1, v0

    int-to-float v0, v1

    .line 61
    iput v0, p0, Lcom/keephealth/android/views/CustomHeartPhotoView;->heartTotalHeight:F

    .line 66
    sget-object v0, Lcom/keephealth/android/R$styleable;->CustomHeartPhotoView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 68
    invoke-virtual {p0}, Lcom/keephealth/android/views/CustomHeartPhotoView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060163

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    const/4 v2, 0x4

    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 69
    invoke-virtual {p0}, Lcom/keephealth/android/views/CustomHeartPhotoView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060097

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {p2, v3, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    const/4 v3, 0x5

    const/high16 v4, 0x41200000    # 10.0f

    .line 70
    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    const/4 v4, 0x3

    const/high16 v5, 0x41700000    # 15.0f

    .line 71
    invoke-virtual {p2, v4, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    .line 72
    invoke-virtual {p0}, Lcom/keephealth/android/views/CustomHeartPhotoView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    const/4 v5, 0x0

    invoke-virtual {p2, v5, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/keephealth/android/views/CustomHeartPhotoView;->bgColor:I

    const/4 v1, 0x1

    .line 73
    invoke-virtual {p2, v1, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/keephealth/android/views/CustomHeartPhotoView;->centerY:Z

    .line 75
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 77
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/keephealth/android/views/CustomHeartPhotoView;->valuePaint:Landroid/graphics/Paint;

    .line 78
    sget-object v5, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p2, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 79
    iget-object p2, p0, Lcom/keephealth/android/views/CustomHeartPhotoView;->valuePaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v3, p2}, Lcom/keephealth/android/views/CustomHeartPhotoView;->setTextSize(FLandroid/graphics/Paint;)V

    .line 80
    iget-object p2, p0, Lcom/keephealth/android/views/CustomHeartPhotoView;->valuePaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 82
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/keephealth/android/views/CustomHeartPhotoView;->photoPaint:Landroid/graphics/Paint;

    .line 84
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/keephealth/android/views/CustomHeartPhotoView;->titlePaint:Landroid/graphics/Paint;

    .line 85
    sget-object v0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 86
    iget-object p2, p0, Lcom/keephealth/android/views/CustomHeartPhotoView;->titlePaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v4, p2}, Lcom/keephealth/android/views/CustomHeartPhotoView;->setTextSize(FLandroid/graphics/Paint;)V

    .line 87
    iget-object p2, p0, Lcom/keephealth/android/views/CustomHeartPhotoView;->titlePaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 90
    new-instance p2, Landroid/text/TextPaint;

    invoke-direct {p2, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object p2, p0, Lcom/keephealth/android/views/CustomHeartPhotoView;->p:Landroid/graphics/Paint;

    .line 91
    invoke-virtual {p0}, Lcom/keephealth/android/views/CustomHeartPhotoView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0600b2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 92
    iget-object p2, p0, Lcom/keephealth/android/views/CustomHeartPhotoView;->p:Landroid/graphics/Paint;

    const/high16 v0, 0x41400000    # 12.0f

    invoke-static {v0, p1}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    return-void
.end method

.method private calculateY(I)V
    .registers 2

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 114
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 116
    iget v2, v0, Lcom/keephealth/android/views/CustomHeartPhotoView;->bgColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 121
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/views/CustomHeartPhotoView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0063

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v0, Lcom/keephealth/android/views/CustomHeartPhotoView;->photoBitmap:Landroid/graphics/Bitmap;

    .line 122
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 123
    iget-object v3, v0, Lcom/keephealth/android/views/CustomHeartPhotoView;->photoBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 124
    iget v4, v0, Lcom/keephealth/android/views/CustomHeartPhotoView;->h:I

    sub-int/2addr v4, v3

    div-int/lit8 v4, v4, 0x2

    .line 125
    iget-object v5, v0, Lcom/keephealth/android/views/CustomHeartPhotoView;->photoBitmap:Landroid/graphics/Bitmap;

    iget v6, v0, Lcom/keephealth/android/views/CustomHeartPhotoView;->w:I

    sub-int/2addr v6, v2

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    int-to-float v4, v4

    iget-object v7, v0, Lcom/keephealth/android/views/CustomHeartPhotoView;->photoPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5, v6, v4, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 132
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/views/CustomHeartPhotoView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d0025

    invoke-static {v5, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, v0, Lcom/keephealth/android/views/CustomHeartPhotoView;->valueBitmap:Landroid/graphics/Bitmap;

    .line 133
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 134
    iget-object v6, v0, Lcom/keephealth/android/views/CustomHeartPhotoView;->valueBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v3, v3

    .line 136
    iget v7, v0, Lcom/keephealth/android/views/CustomHeartPhotoView;->heartTotalHeight:F

    div-float v8, v3, v7

    iget v9, v0, Lcom/keephealth/android/views/CustomHeartPhotoView;->value1:I

    int-to-float v9, v9

    mul-float/2addr v8, v9

    sub-float v8, v3, v8

    add-float/2addr v8, v4

    div-float v9, v3, v7

    .line 137
    iget v10, v0, Lcom/keephealth/android/views/CustomHeartPhotoView;->value2:I

    int-to-float v10, v10

    mul-float/2addr v9, v10

    sub-float v9, v3, v9

    add-float/2addr v9, v4

    div-float v7, v3, v7

    .line 138
    iget v10, v0, Lcom/keephealth/android/views/CustomHeartPhotoView;->value3:I

    int-to-float v10, v10

    mul-float/2addr v7, v10

    sub-float v7, v3, v7

    add-float/2addr v7, v4

    .line 144
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/views/CustomHeartPhotoView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f10048e

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Lcom/keephealth/android/views/CustomHeartPhotoView;->title1:Ljava/lang/String;

    .line 145
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/views/CustomHeartPhotoView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f100324

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Lcom/keephealth/android/views/CustomHeartPhotoView;->title2:Ljava/lang/String;

    .line 146
    const-string v10, ""

    iput-object v10, v0, Lcom/keephealth/android/views/CustomHeartPhotoView;->title3:Ljava/lang/String;

    .line 147
    iget-object v11, v0, Lcom/keephealth/android/views/CustomHeartPhotoView;->titlePaint:Landroid/graphics/Paint;

    sget-object v12, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 150
    iget v11, v0, Lcom/keephealth/android/views/CustomHeartPhotoView;->heartTotalHeight:F

    div-float v11, v3, v11

    iget v12, v0, Lcom/keephealth/android/views/CustomHeartPhotoView;->max:I

    int-to-double v12, v12

    const-wide v14, 0x3feb333333333333L    # 0.85

    mul-double/2addr v12, v14

    double-to-int v12, v12

    int-to-float v12, v12

    mul-float/2addr v11, v12

    sub-float v11, v3, v11

    add-float/2addr v11, v4

    .line 151
    iget-object v12, v0, Lcom/keephealth/android/views/CustomHeartPhotoView;->title1:Ljava/lang/String;

    iget v13, v0, Lcom/keephealth/android/views/CustomHeartPhotoView;->w:I

    add-int/2addr v13, v2

    div-int/lit8 v13, v13, 0x2

    iget v14, v0, Lcom/keephealth/android/views/CustomHeartPhotoView;->leftPadding:I

    mul-int/lit8 v14, v14, 0x4

    add-int/2addr v13, v14

    int-to-float v13, v13

    iget-object v14, v0, Lcom/keephealth/android/views/CustomHeartPhotoView;->titlePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v12, v13, v11, v14}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 154
    iget v12, v0, Lcom/keephealth/android/views/CustomHeartPhotoView;->max:I

    int-to-double v12, v12

    const-wide v14, 0x3feb333333333333L    # 0.85

    mul-double/2addr v12, v14

    double-to-int v12, v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    iget v13, v0, Lcom/keephealth/android/views/CustomHeartPhotoView;->w:I

    add-int/2addr v13, v2

    div-int/lit8 v13, v13, 0x2

    iget v14, v0, Lcom/keephealth/android/views/CustomHeartPhotoView;->leftPadding:I

    add-int/2addr v13, v14

    int-to-float v13, v13

    iget-object v14, v0, Lcom/keephealth/android/views/CustomHeartPhotoView;->titlePaint:Landroid/graphics/Paint;

    iget-object v15, v0, Lcom/keephealth/android/views/CustomHeartPhotoView;->title1:Ljava/lang/String;

    invoke-static {v14, v15}, Lcom/keephealth/android/util/ScreenUtil;->getTextHeight(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v14

    int-to-float v14, v14

    add-float/2addr v11, v14

    iget-object v14, v0, Lcom/keephealth/android/views/CustomHeartPhotoView;->p:Landroid/graphics/Paint;

    invoke-virtual {v1, v12, v13, v11, v14}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 157
    iget v11, v0, Lcom/keephealth/android/views/CustomHeartPhotoView;->heartTotalHeight:F

    div-float v11, v3, v11

    iget v12, v0, Lcom/keephealth/android/views/CustomHeartPhotoView;->max:I

    int-to-double v12, v12

    const-wide v14, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v12, v14

    double-to-int v12, v12

    int-to-float v12, v12

    mul-float/2addr v11, v12

    sub-float v11, v3, v11

    add-float/2addr v11, v4

    .line 159
    iget-object v12, v0, Lcom/keephealth/android/views/CustomHeartPhotoView;->title2:Ljava/lang/String;

    iget v13, v0, Lcom/keephealth/android/views/CustomHeartPhotoView;->w:I

    add-int/2addr v13, v2

    div-int/lit8 v13, v13, 0x2

    iget v14, v0, Lcom/keephealth/android/views/CustomHeartPhotoView;->leftPadding:I

    mul-int/lit8 v14, v14, 0x4

    add-int/2addr v13, v14

    int-to-float v13, v13

    iget-object v14, v0, Lcom/keephealth/android/views/CustomHeartPhotoView;->titlePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v12, v13, v11, v14}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 160
    iget-object v12, v0, Lcom/keephealth/android/views/CustomHeartPhotoView;->p:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/views/CustomHeartPhotoView;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0600b3

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getColor(I)I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setColor(I)V

    .line 162
    iget v12, v0, Lcom/keephealth/android/views/CustomHeartPhotoView;->max:I

    int-to-double v12, v12

    const-wide v14, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v12, v14

    double-to-int v12, v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    iget v13, v0, Lcom/keephealth/android/views/CustomHeartPhotoView;->w:I

    add-int/2addr v13, v2

    div-int/lit8 v13, v13, 0x2

    iget v14, v0, Lcom/keephealth/android/views/CustomHeartPhotoView;->leftPadding:I

    add-int/2addr v13, v14

    int-to-float v13, v13

    iget-object v14, v0, Lcom/keephealth/android/views/CustomHeartPhotoView;->titlePaint:Landroid/graphics/Paint;

    iget-object v15, v0, Lcom/keephealth/android/views/CustomHeartPhotoView;->title2:Ljava/lang/String;

    invoke-static {v14, v15}, Lcom/keephealth/android/util/ScreenUtil;->getTextHeight(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v14

    int-to-float v14, v14

    add-float/2addr v11, v14

    iget-object v14, v0, Lcom/keephealth/android/views/CustomHeartPhotoView;->p:Landroid/graphics/Paint;

    invoke-virtual {v1, v12, v13, v11, v14}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 165
    iget v11, v0, Lcom/keephealth/android/views/CustomHeartPhotoView;->heartTotalHeight:F

    div-float v11, v3, v11

    iget v12, v0, Lcom/keephealth/android/views/CustomHeartPhotoView;->max:I

    int-to-double v12, v12

    const-wide/high16 v14, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v12, v14

    double-to-int v12, v12

    int-to-float v12, v12

    mul-float/2addr v11, v12

    sub-float/2addr v3, v11

    add-float/2addr v4, v3

    .line 168
    iget-object v3, v0, Lcom/keephealth/android/views/CustomHeartPhotoView;->title3:Ljava/lang/String;

    iget v11, v0, Lcom/keephealth/android/views/CustomHeartPhotoView;->w:I

    add-int/2addr v11, v2

    div-int/lit8 v11, v11, 0x2

    iget v12, v0, Lcom/keephealth/android/views/CustomHeartPhotoView;->leftPadding:I

    mul-int/lit8 v12, v12, 0x4

    add-int/2addr v11, v12

    int-to-float v11, v11

    iget-object v12, v0, Lcom/keephealth/android/views/CustomHeartPhotoView;->titlePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v11, v4, v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 169
    iget-object v3, v0, Lcom/keephealth/android/views/CustomHeartPhotoView;->p:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/views/CustomHeartPhotoView;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0600b4

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    invoke-virtual {v3, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 171
    iget v3, v0, Lcom/keephealth/android/views/CustomHeartPhotoView;->max:I

    int-to-double v11, v3

    mul-double/2addr v11, v14

    double-to-int v3, v11

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iget v11, v0, Lcom/keephealth/android/views/CustomHeartPhotoView;->w:I

    add-int/2addr v11, v2

    div-int/lit8 v11, v11, 0x2

    iget v2, v0, Lcom/keephealth/android/views/CustomHeartPhotoView;->leftPadding:I

    add-int/2addr v11, v2

    int-to-float v2, v11

    iget-object v11, v0, Lcom/keephealth/android/views/CustomHeartPhotoView;->titlePaint:Landroid/graphics/Paint;

    iget-object v12, v0, Lcom/keephealth/android/views/CustomHeartPhotoView;->title3:Ljava/lang/String;

    invoke-static {v11, v12}, Lcom/keephealth/android/util/ScreenUtil;->getTextHeight(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v4, v11

    iget-object v11, v0, Lcom/keephealth/android/views/CustomHeartPhotoView;->p:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v2, v4, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    sub-float v2, v9, v8

    sub-float v3, v7, v9

    int-to-float v4, v6

    cmpg-float v8, v3, v4

    if-gez v8, :cond_199

    sub-float/2addr v4, v3

    sub-float/2addr v9, v4

    .line 189
    const-string v2, "\u2461\u4e2d\u95f4\u56fe\u7247\u548c\u4e0b\u9762\u51fa\u73b0\u91cd\u53e0 + \u4e2d\u95f4\u56fe\u7247\u548c\u4e0a\u9762\u56fe\u7247\u51fa\u73b0\u91cd\u53e0"

    invoke-static {v2}, Lcom/keephealth/android/util/log/DebugLog;->e(Ljava/lang/String;)V

    goto :goto_1a2

    :cond_199
    cmpg-float v2, v2, v4

    if-gez v2, :cond_1a2

    .line 195
    const-string v2, "\u2460\u4e2d\u95f4\u56fe\u7247\u548c\u4e0a\u9762\u56fe\u7247\u51fa\u73b0\u91cd\u53e0"

    invoke-static {v2}, Lcom/keephealth/android/util/log/DebugLog;->e(Ljava/lang/String;)V

    .line 201
    :cond_1a2
    :goto_1a2
    iget-object v2, v0, Lcom/keephealth/android/views/CustomHeartPhotoView;->valueBitmap:Landroid/graphics/Bitmap;

    iget v3, v0, Lcom/keephealth/android/views/CustomHeartPhotoView;->w:I

    mul-int/lit8 v3, v3, 0x5

    div-int/lit8 v3, v3, 0xc

    div-int/lit8 v4, v5, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-int/lit8 v8, v6, 0x2

    int-to-float v8, v8

    sub-float v11, v9, v8

    iget-object v12, v0, Lcom/keephealth/android/views/CustomHeartPhotoView;->valuePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3, v11, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 202
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, v0, Lcom/keephealth/android/views/CustomHeartPhotoView;->value2:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v3, v0, Lcom/keephealth/android/views/CustomHeartPhotoView;->w:I

    mul-int/lit8 v3, v3, 0x5

    div-int/lit8 v3, v3, 0xc

    div-int/lit8 v5, v5, 0xa

    sub-int/2addr v3, v5

    int-to-float v3, v3

    div-int/lit8 v6, v6, 0xa

    int-to-float v6, v6

    add-float/2addr v9, v6

    iget-object v11, v0, Lcom/keephealth/android/views/CustomHeartPhotoView;->valuePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3, v9, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 203
    iget-object v2, v0, Lcom/keephealth/android/views/CustomHeartPhotoView;->valueBitmap:Landroid/graphics/Bitmap;

    iget v3, v0, Lcom/keephealth/android/views/CustomHeartPhotoView;->w:I

    mul-int/lit8 v3, v3, 0x5

    div-int/lit8 v3, v3, 0xc

    sub-int/2addr v3, v4

    int-to-float v3, v3

    sub-float v4, v7, v8

    iget-object v8, v0, Lcom/keephealth/android/views/CustomHeartPhotoView;->valuePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3, v4, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 204
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, v0, Lcom/keephealth/android/views/CustomHeartPhotoView;->value3:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v3, v0, Lcom/keephealth/android/views/CustomHeartPhotoView;->w:I

    mul-int/lit8 v3, v3, 0x5

    div-int/lit8 v3, v3, 0xc

    sub-int/2addr v3, v5

    int-to-float v3, v3

    add-float/2addr v7, v6

    iget-object v4, v0, Lcom/keephealth/android/views/CustomHeartPhotoView;->valuePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3, v7, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 5

    .line 97
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 99
    iput p1, p0, Lcom/keephealth/android/views/CustomHeartPhotoView;->w:I

    .line 100
    iput p2, p0, Lcom/keephealth/android/views/CustomHeartPhotoView;->h:I

    .line 102
    invoke-virtual {p0}, Lcom/keephealth/android/views/CustomHeartPhotoView;->invalidate()V

    return-void
.end method

.method public setHeartRateValue(III)V
    .registers 4

    .line 227
    iput p1, p0, Lcom/keephealth/android/views/CustomHeartPhotoView;->value2:I

    .line 228
    iput p2, p0, Lcom/keephealth/android/views/CustomHeartPhotoView;->value3:I

    .line 229
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->get(I)I

    move-result p1

    sub-int/2addr p1, p3

    rsub-int p1, p1, 0xdc

    iput p1, p0, Lcom/keephealth/android/views/CustomHeartPhotoView;->max:I

    .line 230
    invoke-virtual {p0}, Lcom/keephealth/android/views/CustomHeartPhotoView;->invalidate()V

    return-void
.end method

.method public setHeartRateValue(Lcom/keephealth/android/model/bean/HeartRateInterval;)V
    .registers 6

    .line 214
    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/HeartRateInterval;->getBurnFatThreshold()I

    move-result v0

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/HeartRateInterval;->getLimintThreshold()I

    move-result v1

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/HeartRateInterval;->getAerobicThreshold()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 215
    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/HeartRateInterval;->getBurnFatThreshold()I

    move-result v1

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/HeartRateInterval;->getLimintThreshold()I

    move-result v2

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/HeartRateInterval;->getAerobicThreshold()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 216
    iput v0, p0, Lcom/keephealth/android/views/CustomHeartPhotoView;->value1:I

    .line 217
    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/HeartRateInterval;->getAerobicThreshold()I

    move-result p1

    iput p1, p0, Lcom/keephealth/android/views/CustomHeartPhotoView;->value2:I

    .line 218
    iput v1, p0, Lcom/keephealth/android/views/CustomHeartPhotoView;->value3:I

    .line 219
    invoke-virtual {p0}, Lcom/keephealth/android/views/CustomHeartPhotoView;->invalidate()V

    return-void
.end method

.method public setTextSize(FLandroid/graphics/Paint;)V
    .registers 5

    .line 234
    invoke-virtual {p0}, Lcom/keephealth/android/views/CustomHeartPhotoView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_b

    .line 238
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    goto :goto_f

    .line 240
    :cond_b
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    :goto_f
    const/4 v1, 0x2

    .line 242
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 241
    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    int-to-float p1, p1

    .line 243
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    return-void
.end method
