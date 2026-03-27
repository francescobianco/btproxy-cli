.class public Lcom/keephealth/android/views/ecg/ThreeLineView;
.super Landroid/view/View;
.source "ThreeLineView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ThreeLineView"


# instance fields
.field private baseStartX:F

.field private color_one:I

.field private color_three:I

.field private color_two:I

.field private index_one:I

.field private index_three:I

.field private index_two:I

.field private lineheight:I

.field protected mHeightY:F

.field private mIsFirstLoad:Z

.field private mMargin:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPaintTimes:I

.field private mTriangleHeight:I

.field private mTriangleLength:I

.field protected mWidthX:F

.field private mbottom:F

.field private moveOffset:F

.field private mright:F

.field private mtop:F

.field private path:Landroid/graphics/Path;

.field private rect:Landroid/graphics/RectF;

.field private rectF:Landroid/graphics/RectF;

.field private roundRectRadius:I

.field private scorePaint:Landroid/graphics/Paint;

.field private socre:I

.field protected startX:F

.field tB:F

.field tT:F

.field private textWidth:F

.field private tipHeight:I

.field private tipWidth:I

.field tl:F

.field tr:F

.field private txtPaint:Landroid/graphics/Paint;

.field txtX:F

.field txtY:F

.field private txt_color:I

.field private txt_color_sorce:I

.field private txt_one:Ljava/lang/String;

.field private txt_size_sorce:I

.field private txt_sizeb:I

.field private txt_three:Ljava/lang/String;

.field private txt_two:Ljava/lang/String;

.field private txt_up:Ljava/lang/String;

.field private txt_up_color:I

.field private txt_up_size:I

.field private x1:F

.field private x2:F

.field private x3:F

.field private y1:F

.field private y2:F

.field private y3:F


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 95
    invoke-direct {p0, p1, v0}, Lcom/keephealth/android/views/ecg/ThreeLineView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 100
    invoke-direct {p0, p1, p2, v0}, Lcom/keephealth/android/views/ecg/ThreeLineView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7

    .line 105
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 47
    iput p3, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->mMargin:I

    .line 53
    iput p3, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->socre:I

    const/high16 v0, 0x41200000    # 10.0f

    .line 68
    invoke-virtual {p0, v0}, Lcom/keephealth/android/views/ecg/ThreeLineView;->dip2px(F)I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->mTriangleLength:I

    const/high16 v0, 0x40a00000    # 5.0f

    .line 69
    invoke-virtual {p0, v0}, Lcom/keephealth/android/views/ecg/ThreeLineView;->dip2px(F)I

    move-result v1

    iput v1, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->mTriangleHeight:I

    .line 75
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->rectF:Landroid/graphics/RectF;

    .line 85
    iput p3, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->mPaintTimes:I

    const/4 v1, 0x0

    .line 88
    iput v1, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->moveOffset:F

    const/4 v2, 0x1

    .line 91
    iput-boolean v2, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->mIsFirstLoad:Z

    .line 107
    invoke-direct {p0, p1, p2}, Lcom/keephealth/android/views/ecg/ThreeLineView;->initAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 108
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->mPaint:Landroid/graphics/Paint;

    .line 110
    iget p2, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->color_one:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 111
    iget-object p1, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->mPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 112
    iget-object p1, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 113
    iget-object p1, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 114
    iget-object p1, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->mPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 115
    iget-object p1, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->mPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    .line 116
    invoke-static {p2, p3}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p2

    .line 115
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 118
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->rect:Landroid/graphics/RectF;

    .line 119
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->path:Landroid/graphics/Path;

    .line 122
    invoke-virtual {p0, v0}, Lcom/keephealth/android/views/ecg/ThreeLineView;->dip2px(F)I

    move-result p1

    iput p1, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->roundRectRadius:I

    .line 127
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->txtPaint:Landroid/graphics/Paint;

    .line 129
    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 130
    iget-object p1, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->txtPaint:Landroid/graphics/Paint;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 131
    iget-object p1, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->txtPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 132
    iget-object p1, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->txtPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 133
    iget-object p1, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->txtPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-static {p2, p3}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 136
    new-instance p1, Landroid/graphics/Paint;

    const/16 p2, 0x21

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->scorePaint:Landroid/graphics/Paint;

    return-void
.end method

.method private initAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7

    .line 142
    const-string v0, "#666666"

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v1, Lcom/keephealth/android/R$styleable;->LineView:[I

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v1, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 146
    :try_start_d
    const-string p2, "#ff871c"

    .line 147
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    .line 146
    invoke-virtual {p1, v2, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->color_one:I

    .line 148
    const-string p2, "#ffcc1c"

    .line 149
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    const/4 v1, 0x2

    .line 148
    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->color_two:I

    .line 150
    const-string p2, "#a5e725"

    .line 151
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    const/4 v1, 0x1

    .line 150
    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->color_three:I

    const/4 p2, 0x7

    const/16 v1, 0x8

    .line 153
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->lineheight:I

    const/4 p2, 0x4

    const/16 v2, 0x32

    .line 156
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->index_one:I

    const/4 p2, 0x6

    const/16 v2, 0x50

    .line 158
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->index_two:I

    const/4 p2, 0x5

    const/16 v2, 0x64

    .line 160
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->index_three:I

    const/16 p2, 0xa

    const/16 v2, 0x2d

    .line 163
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->tipWidth:I

    const/16 p2, 0x9

    const/16 v2, 0x1e

    .line 165
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->tipHeight:I

    .line 169
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    const/16 v3, 0xb

    .line 168
    invoke-virtual {p1, v3, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->txt_color:I

    const/16 p2, 0xf

    const/16 v3, 0x24

    .line 170
    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->txt_sizeb:I

    const/16 p2, 0xe

    const/16 v3, 0x5e

    .line 173
    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->txt_size_sorce:I

    .line 177
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    const/16 v0, 0xc

    .line 175
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->txt_color_sorce:I

    const/16 p2, 0x14

    const/16 v0, 0x22

    .line 179
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->txt_up_size:I

    .line 181
    const-string p2, "#999999"

    .line 183
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    const/16 v0, 0x13

    .line 181
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->txt_up_color:I

    .line 185
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->mMargin:I

    const/16 p2, 0xd

    .line 188
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->txt_one:Ljava/lang/String;

    const/16 p2, 0x11

    .line 189
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->txt_two:Ljava/lang/String;

    const/16 p2, 0x10

    .line 190
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->txt_three:Ljava/lang/String;

    const/16 p2, 0x12

    .line 191
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->txt_up:Ljava/lang/String;
    :try_end_d5
    .catchall {:try_start_d .. :try_end_d5} :catchall_d9

    .line 194
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_d9
    move-exception p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 195
    throw p2
.end method


# virtual methods
.method public dip2px(F)I
    .registers 3

    .line 403
    invoke-virtual {p0}, Lcom/keephealth/android/views/ecg/ThreeLineView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 10

    .line 230
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 232
    iget-boolean v0, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->mIsFirstLoad:Z

    const/4 v1, 0x0

    const/high16 v2, 0x40000000    # 2.0f

    if-eqz v0, :cond_11

    .line 233
    iget v0, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->startX:F

    iput v0, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->baseStartX:F

    .line 234
    iput v1, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->mPaintTimes:I

    goto :goto_4b

    .line 236
    :cond_11
    iget v0, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->mPaintTimes:I

    iget v3, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->index_one:I

    if-gt v0, v3, :cond_21

    .line 237
    iget v3, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->startX:F

    int-to-float v0, v0

    iget v4, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->moveOffset:F

    mul-float/2addr v0, v4

    add-float/2addr v3, v0

    iput v3, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->baseStartX:F

    goto :goto_4b

    :cond_21
    if-le v0, v3, :cond_35

    .line 238
    iget v4, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->index_two:I

    if-gt v0, v4, :cond_35

    .line 239
    iget v4, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->startX:F

    iget v5, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->mright:F

    add-float/2addr v4, v5

    sub-int/2addr v0, v3

    int-to-float v0, v0

    iget v3, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->moveOffset:F

    mul-float/2addr v0, v3

    add-float/2addr v4, v0

    iput v4, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->baseStartX:F

    goto :goto_4b

    .line 240
    :cond_35
    iget v3, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->index_two:I

    if-le v0, v3, :cond_4b

    iget v4, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->index_three:I

    if-gt v0, v4, :cond_4b

    .line 241
    iget v4, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->startX:F

    iget v5, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->mright:F

    mul-float/2addr v5, v2

    add-float/2addr v4, v5

    sub-int/2addr v0, v3

    int-to-float v0, v0

    iget v3, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->moveOffset:F

    mul-float/2addr v0, v3

    add-float/2addr v4, v0

    iput v4, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->baseStartX:F

    .line 247
    :cond_4b
    :goto_4b
    iput-boolean v1, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->mIsFirstLoad:Z

    .line 250
    iget-object v0, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->color_one:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 251
    iget-object v0, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->rect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->startX:F

    iget v3, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->mtop:F

    iget v4, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->mright:F

    add-float/2addr v4, v1

    iget v5, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->mbottom:F

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 252
    iget-object v0, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->rect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 254
    iget-object v0, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->color_two:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 255
    iget-object v0, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->rect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->startX:F

    iget v3, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->mright:F

    add-float v4, v1, v3

    iget v5, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->mtop:F

    mul-float/2addr v3, v2

    add-float/2addr v1, v3

    iget v3, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->mbottom:F

    invoke-virtual {v0, v4, v5, v1, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 256
    iget-object v0, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->rect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 258
    iget-object v0, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->color_three:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 259
    iget-object v0, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->rect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->startX:F

    iget v3, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->mright:F

    mul-float/2addr v3, v2

    add-float/2addr v3, v1

    iget v4, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->mtop:F

    iget v5, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->mWidthX:F

    add-float/2addr v1, v5

    iget v5, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->mbottom:F

    invoke-virtual {v0, v3, v4, v1, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 260
    iget-object v0, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->rect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 263
    iget-object v0, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->txtPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->txt_color:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 264
    iget-object v0, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->txtPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->txt_sizeb:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 266
    iget-object v0, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->txt_one:Ljava/lang/String;

    iget v1, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->startX:F

    iget v3, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->mright:F

    div-float/2addr v3, v2

    add-float/2addr v1, v3

    iget v3, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->mbottom:F

    iget v4, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->lineheight:I

    mul-int/lit8 v4, v4, 0x5

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->txtPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 268
    iget-object v0, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->txt_two:Ljava/lang/String;

    iget v1, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->startX:F

    iget v3, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->mright:F

    add-float/2addr v1, v3

    div-float/2addr v3, v2

    add-float/2addr v1, v3

    iget v3, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->mbottom:F

    iget v4, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->lineheight:I

    mul-int/lit8 v4, v4, 0x5

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->txtPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 270
    iget-object v0, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->txt_three:Ljava/lang/String;

    iget v1, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->startX:F

    iget v3, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->mright:F

    mul-float v4, v3, v2

    add-float/2addr v1, v4

    div-float/2addr v3, v2

    add-float/2addr v1, v3

    iget v3, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->mbottom:F

    iget v4, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->lineheight:I

    mul-int/lit8 v4, v4, 0x5

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->txtPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 283
    iget v0, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->baseStartX:F

    iget v1, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->mTriangleLength:I

    div-int/lit8 v3, v1, 0x2

    int-to-float v3, v3

    add-float/2addr v3, v0

    iput v3, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->x1:F

    .line 284
    iget v3, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->mtop:F

    const/high16 v4, 0x41200000    # 10.0f

    sub-float v5, v3, v4

    iget v6, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->mTriangleHeight:I

    int-to-float v7, v6

    sub-float/2addr v5, v7

    iput v5, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->y1:F

    .line 285
    iput v0, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->x2:F

    sub-float v7, v3, v4

    .line 286
    iput v7, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->y2:F

    .line 287
    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float v1, v0, v1

    iput v1, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->x3:F

    sub-float/2addr v3, v4

    int-to-float v1, v6

    sub-float/2addr v3, v1

    .line 288
    iput v3, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->y3:F

    .line 290
    iget v1, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->tipWidth:I

    div-int/lit8 v3, v1, 0x2

    int-to-float v3, v3

    sub-float v3, v0, v3

    iput v3, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->tl:F

    .line 291
    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->tr:F

    .line 292
    iget v1, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->tipHeight:I

    int-to-float v1, v1

    sub-float v1, v5, v1

    iput v1, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->tT:F

    const/high16 v4, 0x3f800000    # 1.0f

    add-float/2addr v5, v4

    .line 293
    iput v5, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->tB:F

    sub-float/2addr v0, v3

    div-float/2addr v0, v2

    add-float/2addr v3, v0

    .line 295
    iput v3, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->txtX:F

    sub-float/2addr v5, v1

    div-float/2addr v5, v2

    add-float/2addr v1, v5

    .line 296
    iput v1, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->txtY:F

    .line 298
    iget-object v0, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 299
    iget-object v0, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->path:Landroid/graphics/Path;

    iget v1, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->x1:F

    iget v3, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->y1:F

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 300
    iget-object v0, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->path:Landroid/graphics/Path;

    iget v1, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->x2:F

    iget v3, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->y2:F

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 301
    iget-object v0, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->path:Landroid/graphics/Path;

    iget v1, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->x3:F

    iget v3, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->y3:F

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 302
    iget-object v0, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 304
    iget v0, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->mPaintTimes:I

    iget v1, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->index_one:I

    const-string v3, ""

    if-gt v0, v1, :cond_1ff

    .line 305
    iget-object v0, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->color_one:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 306
    iget v0, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->mright:F

    iget v1, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->index_one:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->moveOffset:F

    .line 309
    iget-object v0, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 311
    iget-object v0, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->rectF:Landroid/graphics/RectF;

    iget v1, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->tl:F

    iget v2, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->tT:F

    iget v4, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->tr:F

    iget v5, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->tB:F

    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 312
    iget-object v0, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->rectF:Landroid/graphics/RectF;

    iget v1, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->roundRectRadius:I

    int-to-float v2, v1

    int-to-float v1, v1

    iget-object v4, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 314
    iget-object v0, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->txtPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->txt_color_sorce:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 315
    iget-object v0, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->txtPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->txt_size_sorce:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 316
    iget-object v0, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->txtPaint:Landroid/graphics/Paint;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->mPaintTimes:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->textWidth:F

    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->mPaintTimes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->x2:F

    iget v2, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->tB:F

    iget v3, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->tipHeight:I

    div-int/lit8 v3, v3, 0x4

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->txtPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 327
    iget p1, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->mPaintTimes:I

    iget v0, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->socre:I

    if-ge p1, v0, :cond_334

    .line 328
    iget v0, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->startX:F

    int-to-float p1, p1

    iget v1, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->moveOffset:F

    mul-float/2addr p1, v1

    add-float/2addr v0, p1

    iput v0, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->baseStartX:F

    goto/16 :goto_334

    :cond_1ff
    if-le v0, v1, :cond_299

    .line 331
    iget v1, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->index_two:I

    if-gt v0, v1, :cond_299

    .line 332
    iget-object v0, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->color_two:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 335
    iget v0, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->mright:F

    iget v1, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->index_two:I

    iget v2, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->index_one:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->moveOffset:F

    .line 336
    iget-object v0, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 338
    iget-object v0, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->rectF:Landroid/graphics/RectF;

    iget v1, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->tl:F

    iget v2, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->tT:F

    iget v4, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->tr:F

    iget v5, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->tB:F

    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 339
    iget-object v0, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->rectF:Landroid/graphics/RectF;

    iget v1, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->roundRectRadius:I

    int-to-float v2, v1

    int-to-float v1, v1

    iget-object v4, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 341
    iget-object v0, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->txtPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->txt_color_sorce:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 342
    iget-object v0, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->txtPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->txt_size_sorce:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 343
    iget-object v0, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->txtPaint:Landroid/graphics/Paint;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->mPaintTimes:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->textWidth:F

    .line 344
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->mPaintTimes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->x2:F

    iget v2, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->tB:F

    iget v3, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->tipHeight:I

    div-int/lit8 v3, v3, 0x4

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->txtPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 351
    iget p1, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->mPaintTimes:I

    iget v0, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->socre:I

    if-ge p1, v0, :cond_334

    .line 352
    iget v0, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->startX:F

    iget v1, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->mright:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->index_one:I

    sub-int/2addr p1, v1

    int-to-float p1, p1

    iget v1, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->moveOffset:F

    mul-float/2addr p1, v1

    add-float/2addr v0, p1

    iput v0, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->baseStartX:F

    goto/16 :goto_334

    .line 355
    :cond_299
    iget v1, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->index_two:I

    if-le v0, v1, :cond_334

    iget v1, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->index_three:I

    if-gt v0, v1, :cond_334

    .line 356
    iget-object v0, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->color_three:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 357
    iget v0, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->mright:F

    iget v1, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->index_three:I

    iget v4, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->index_two:I

    sub-int/2addr v1, v4

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->moveOffset:F

    .line 358
    iget-object v0, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 360
    iget-object v0, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->rectF:Landroid/graphics/RectF;

    iget v1, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->tl:F

    iget v4, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->tT:F

    iget v5, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->tr:F

    iget v6, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->tB:F

    invoke-virtual {v0, v1, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 361
    iget-object v0, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->rectF:Landroid/graphics/RectF;

    iget v1, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->roundRectRadius:I

    int-to-float v4, v1

    int-to-float v1, v1

    iget-object v5, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4, v1, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 363
    iget-object v0, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->txtPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->txt_color_sorce:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 364
    iget-object v0, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->txtPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->txt_size_sorce:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 365
    iget-object v0, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->txtPaint:Landroid/graphics/Paint;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->mPaintTimes:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->textWidth:F

    .line 366
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->mPaintTimes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->x2:F

    iget v3, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->tB:F

    iget v4, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->tipHeight:I

    div-int/lit8 v4, v4, 0x4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->txtPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 373
    iget p1, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->mPaintTimes:I

    iget v0, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->socre:I

    if-ge p1, v0, :cond_334

    .line 374
    iget v0, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->startX:F

    iget v1, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->mright:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->index_two:I

    sub-int/2addr p1, v1

    int-to-float p1, p1

    iget v1, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->moveOffset:F

    mul-float/2addr p1, v1

    add-float/2addr v0, p1

    iput v0, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->baseStartX:F

    .line 377
    :cond_334
    :goto_334
    iget p1, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->mPaintTimes:I

    iget v0, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->socre:I

    if-ge p1, v0, :cond_341

    add-int/lit8 p1, p1, 0x1

    .line 378
    iput p1, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->mPaintTimes:I

    .line 379
    invoke-virtual {p0}, Lcom/keephealth/android/views/ecg/ThreeLineView;->postInvalidate()V

    :cond_341
    return-void
.end method

.method protected onMeasure(II)V
    .registers 6

    .line 202
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 204
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 205
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 207
    invoke-virtual {p0, p1, p2}, Lcom/keephealth/android/views/ecg/ThreeLineView;->setMeasuredDimension(II)V

    .line 210
    iget v0, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->mMargin:I

    sub-int/2addr p1, v0

    int-to-float p1, p1

    iput p1, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->mWidthX:F

    int-to-float p2, p2

    .line 211
    iput p2, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->mHeightY:F

    .line 212
    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->startX:F

    .line 214
    iget-boolean v1, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->mIsFirstLoad:Z

    if-eqz v1, :cond_22

    .line 215
    iput v0, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->baseStartX:F

    :cond_22
    const/4 v0, 0x0

    .line 218
    iput-boolean v0, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->mIsFirstLoad:Z

    .line 220
    iget v0, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->lineheight:I

    int-to-float v1, v0

    sub-float v1, p2, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iput v1, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->mtop:F

    const/high16 v1, 0x40400000    # 3.0f

    div-float/2addr p1, v1

    .line 221
    iput p1, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->mright:F

    int-to-float p1, v0

    add-float/2addr p2, p1

    div-float/2addr p2, v2

    .line 222
    iput p2, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->mbottom:F

    return-void
.end method

.method public declared-synchronized setSorce(I)V
    .registers 3

    monitor-enter p0

    if-lez p1, :cond_13

    const/16 v0, 0x64

    if-gt p1, v0, :cond_13

    const/4 v0, 0x1

    .line 389
    :try_start_8
    iput-boolean v0, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->mIsFirstLoad:Z

    .line 390
    iput p1, p0, Lcom/keephealth/android/views/ecg/ThreeLineView;->socre:I

    .line 391
    invoke-virtual {p0}, Lcom/keephealth/android/views/ecg/ThreeLineView;->postInvalidate()V
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_10

    goto :goto_13

    :catchall_10
    move-exception p1

    monitor-exit p0

    throw p1

    .line 394
    :cond_13
    :goto_13
    monitor-exit p0

    return-void
.end method

.method public sp2px(F)I
    .registers 3

    .line 415
    invoke-virtual {p0}, Lcom/keephealth/android/views/ecg/ThreeLineView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method
