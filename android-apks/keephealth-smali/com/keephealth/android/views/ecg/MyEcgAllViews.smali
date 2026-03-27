.class public Lcom/keephealth/android/views/ecg/MyEcgAllViews;
.super Landroid/view/View;
.source "MyEcgAllViews.java"


# static fields
.field private static OFFSET_HEART_VALUE:F = 4096.0f

.field private static offsetBS:I = 0x1

.field private static startX:F

.field private static x_changed:F


# instance fields
.field private dataNum_per_grid:I

.field private data_num:I

.field public data_source:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private gap_grid:F

.field private gap_x:F

.field private grid_hori:I

.field private grid_ver:I

.field private height:I

.field private mHeight:I

.field private mPaint01:Landroid/graphics/Paint;

.field private multiple_for_rect_width:F

.field private final offset:I

.field private offset_x_max:F

.field private rect_gap_x:F

.field private rect_high:I

.field private rect_width:F

.field private width:I

.field private x_change:F

.field private xori:I


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 58
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 26
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/keephealth/android/views/ecg/MyEcgAllViews;->data_source:Ljava/util/List;

    const/16 p1, 0x1e

    .line 33
    iput p1, p0, Lcom/keephealth/android/views/ecg/MyEcgAllViews;->dataNum_per_grid:I

    const/16 p1, 0x50

    .line 41
    iput p1, p0, Lcom/keephealth/android/views/ecg/MyEcgAllViews;->rect_high:I

    const/4 p1, 0x1

    .line 49
    iput p1, p0, Lcom/keephealth/android/views/ecg/MyEcgAllViews;->offset:I

    const/16 p1, 0x32

    .line 52
    iput p1, p0, Lcom/keephealth/android/views/ecg/MyEcgAllViews;->mHeight:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 62
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/keephealth/android/views/ecg/MyEcgAllViews;->data_source:Ljava/util/List;

    const/16 p1, 0x1e

    .line 33
    iput p1, p0, Lcom/keephealth/android/views/ecg/MyEcgAllViews;->dataNum_per_grid:I

    const/16 p1, 0x50

    .line 41
    iput p1, p0, Lcom/keephealth/android/views/ecg/MyEcgAllViews;->rect_high:I

    const/4 p1, 0x1

    .line 49
    iput p1, p0, Lcom/keephealth/android/views/ecg/MyEcgAllViews;->offset:I

    const/16 p1, 0x32

    .line 52
    iput p1, p0, Lcom/keephealth/android/views/ecg/MyEcgAllViews;->mHeight:I

    .line 63
    invoke-direct {p0}, Lcom/keephealth/android/views/ecg/MyEcgAllViews;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 67
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/keephealth/android/views/ecg/MyEcgAllViews;->data_source:Ljava/util/List;

    const/16 p1, 0x1e

    .line 33
    iput p1, p0, Lcom/keephealth/android/views/ecg/MyEcgAllViews;->dataNum_per_grid:I

    const/16 p1, 0x50

    .line 41
    iput p1, p0, Lcom/keephealth/android/views/ecg/MyEcgAllViews;->rect_high:I

    const/4 p1, 0x1

    .line 49
    iput p1, p0, Lcom/keephealth/android/views/ecg/MyEcgAllViews;->offset:I

    const/16 p1, 0x32

    .line 52
    iput p1, p0, Lcom/keephealth/android/views/ecg/MyEcgAllViews;->mHeight:I

    return-void
.end method

.method private drawing(Landroid/graphics/Canvas;)V
    .registers 11

    .line 113
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 114
    sget v1, Lcom/keephealth/android/views/ecg/MyEcgAllViews;->x_changed:F

    iget v2, p0, Lcom/keephealth/android/views/ecg/MyEcgAllViews;->x_change:F

    add-float/2addr v1, v2

    sput v1, Lcom/keephealth/android/views/ecg/MyEcgAllViews;->x_changed:F

    .line 115
    iget v2, p0, Lcom/keephealth/android/views/ecg/MyEcgAllViews;->xori:I

    int-to-float v3, v2

    cmpl-float v3, v1, v3

    if-lez v3, :cond_17

    int-to-float v1, v2

    .line 116
    sput v1, Lcom/keephealth/android/views/ecg/MyEcgAllViews;->x_changed:F

    goto :goto_1f

    .line 117
    :cond_17
    iget v2, p0, Lcom/keephealth/android/views/ecg/MyEcgAllViews;->offset_x_max:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1f

    .line 118
    sput v2, Lcom/keephealth/android/views/ecg/MyEcgAllViews;->x_changed:F

    :cond_1f
    :goto_1f
    const/4 v1, 0x0

    const/4 v2, -0x3

    const/4 v3, 0x0

    move v4, v1

    .line 122
    :goto_23
    iget-object v5, p0, Lcom/keephealth/android/views/ecg/MyEcgAllViews;->data_source:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_d0

    .line 123
    iget-object v5, p0, Lcom/keephealth/android/views/ecg/MyEcgAllViews;->data_source:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    const/high16 v6, 0x43c80000    # 400.0f

    const/high16 v7, 0x41700000    # 15.0f

    if-ne v3, v5, :cond_66

    .line 124
    iget v5, p0, Lcom/keephealth/android/views/ecg/MyEcgAllViews;->mHeight:I

    int-to-float v5, v5

    invoke-static {v5}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(F)I

    move-result v5

    mul-int/2addr v5, v2

    invoke-static {v7}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(F)I

    move-result v7

    sub-int/2addr v5, v7

    int-to-float v5, v5

    iget-object v7, p0, Lcom/keephealth/android/views/ecg/MyEcgAllViews;->data_source:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    sget v8, Lcom/keephealth/android/views/ecg/MyEcgAllViews;->OFFSET_HEART_VALUE:F

    div-float/2addr v7, v8

    invoke-static {v6}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(F)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v7, v6

    add-float/2addr v5, v7

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 125
    iget-object v5, p0, Lcom/keephealth/android/views/ecg/MyEcgAllViews;->mPaint01:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_cc

    :cond_66
    const/high16 v5, 0x3f800000    # 1.0f

    add-float/2addr v4, v5

    .line 128
    iget v5, p0, Lcom/keephealth/android/views/ecg/MyEcgAllViews;->width:I

    int-to-float v5, v5

    cmpg-float v5, v4, v5

    if-gez v5, :cond_98

    .line 129
    iget v5, p0, Lcom/keephealth/android/views/ecg/MyEcgAllViews;->mHeight:I

    int-to-float v5, v5

    invoke-static {v5}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(F)I

    move-result v5

    mul-int/2addr v5, v2

    invoke-static {v7}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(F)I

    move-result v7

    sub-int/2addr v5, v7

    int-to-float v5, v5

    iget-object v7, p0, Lcom/keephealth/android/views/ecg/MyEcgAllViews;->data_source:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    sget v8, Lcom/keephealth/android/views/ecg/MyEcgAllViews;->OFFSET_HEART_VALUE:F

    div-float/2addr v7, v8

    invoke-static {v6}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(F)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v7, v6

    add-float/2addr v5, v7

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_cc

    .line 132
    :cond_98
    iget-object v4, p0, Lcom/keephealth/android/views/ecg/MyEcgAllViews;->mPaint01:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    add-int/lit8 v2, v2, 0x1

    .line 136
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 137
    iget v4, p0, Lcom/keephealth/android/views/ecg/MyEcgAllViews;->mHeight:I

    int-to-float v4, v4

    invoke-static {v4}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(F)I

    move-result v4

    mul-int/2addr v4, v2

    invoke-static {v7}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(F)I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, p0, Lcom/keephealth/android/views/ecg/MyEcgAllViews;->data_source:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    sget v7, Lcom/keephealth/android/views/ecg/MyEcgAllViews;->OFFSET_HEART_VALUE:F

    div-float/2addr v5, v7

    invoke-static {v6}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(F)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-virtual {v0, v1, v4}, Landroid/graphics/Path;->lineTo(FF)V

    move v4, v1

    :goto_cc
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_23

    :cond_d0
    return-void
.end method

.method private init()V
    .registers 3

    .line 74
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/views/ecg/MyEcgAllViews;->mPaint01:Landroid/graphics/Paint;

    .line 75
    const-string v1, "#000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 76
    iget-object v0, p0, Lcom/keephealth/android/views/ecg/MyEcgAllViews;->mPaint01:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 77
    iget-object v0, p0, Lcom/keephealth/android/views/ecg/MyEcgAllViews;->mPaint01:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 2

    .line 105
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 106
    invoke-direct {p0, p1}, Lcom/keephealth/android/views/ecg/MyEcgAllViews;->drawing(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 11

    if-eqz p1, :cond_91

    const/4 v0, 0x0

    .line 83
    iput v0, p0, Lcom/keephealth/android/views/ecg/MyEcgAllViews;->xori:I

    const/high16 v0, 0x41f00000    # 30.0f

    .line 84
    iput v0, p0, Lcom/keephealth/android/views/ecg/MyEcgAllViews;->gap_grid:F

    .line 85
    invoke-virtual {p0}, Lcom/keephealth/android/views/ecg/MyEcgAllViews;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/views/ecg/MyEcgAllViews;->width:I

    .line 86
    invoke-virtual {p0}, Lcom/keephealth/android/views/ecg/MyEcgAllViews;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/views/ecg/MyEcgAllViews;->height:I

    .line 87
    iget v1, p0, Lcom/keephealth/android/views/ecg/MyEcgAllViews;->gap_grid:F

    float-to-int v2, v1

    div-int/2addr v0, v2

    iput v0, p0, Lcom/keephealth/android/views/ecg/MyEcgAllViews;->grid_hori:I

    .line 88
    iget v0, p0, Lcom/keephealth/android/views/ecg/MyEcgAllViews;->width:I

    float-to-int v2, v1

    div-int/2addr v0, v2

    iput v0, p0, Lcom/keephealth/android/views/ecg/MyEcgAllViews;->grid_ver:I

    .line 89
    iget v0, p0, Lcom/keephealth/android/views/ecg/MyEcgAllViews;->dataNum_per_grid:I

    int-to-float v0, v0

    div-float/2addr v1, v0

    iput v1, p0, Lcom/keephealth/android/views/ecg/MyEcgAllViews;->gap_x:F

    .line 90
    iget-object v0, p0, Lcom/keephealth/android/views/ecg/MyEcgAllViews;->data_source:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/views/ecg/MyEcgAllViews;->data_num:I

    const/4 v1, 0x0

    .line 91
    iput v1, p0, Lcom/keephealth/android/views/ecg/MyEcgAllViews;->x_change:F

    .line 92
    sput v1, Lcom/keephealth/android/views/ecg/MyEcgAllViews;->x_changed:F

    .line 93
    iget v1, p0, Lcom/keephealth/android/views/ecg/MyEcgAllViews;->width:I

    int-to-float v2, v1

    iget v3, p0, Lcom/keephealth/android/views/ecg/MyEcgAllViews;->gap_x:F

    int-to-float v4, v0

    mul-float/2addr v4, v3

    sub-float/2addr v2, v4

    iput v2, p0, Lcom/keephealth/android/views/ecg/MyEcgAllViews;->offset_x_max:F

    int-to-float v2, v1

    int-to-float v4, v0

    div-float/2addr v2, v4

    .line 94
    iput v2, p0, Lcom/keephealth/android/views/ecg/MyEcgAllViews;->rect_gap_x:F

    int-to-float v2, v1

    int-to-float v4, v1

    mul-float/2addr v2, v4

    int-to-float v0, v0

    mul-float/2addr v3, v0

    div-float/2addr v2, v3

    .line 95
    iput v2, p0, Lcom/keephealth/android/views/ecg/MyEcgAllViews;->rect_width:F

    int-to-float v0, v1

    div-float/2addr v0, v2

    .line 96
    iput v0, p0, Lcom/keephealth/android/views/ecg/MyEcgAllViews;->multiple_for_rect_width:F

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u672c\u9875\u9762\u5bbd\uff1a "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/keephealth/android/views/ecg/MyEcgAllViews;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  \u9ad8:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/views/ecg/MyEcgAllViews;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "json"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "\u4e24\u70b9\u95f4\u6a2a\u5750\u6807\u95f4\u8ddd:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/keephealth/android/views/ecg/MyEcgAllViews;->gap_x:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "   \u77e9\u5f62\u533a\u57df\u4e24\u70b9\u95f4\u6a2a\u5750\u6807\u95f4\u8ddd\uff1a"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/keephealth/android/views/ecg/MyEcgAllViews;->rect_gap_x:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_91
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    return-void
.end method

.method public setData(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 149
    iput-object p1, p0, Lcom/keephealth/android/views/ecg/MyEcgAllViews;->data_source:Ljava/util/List;

    .line 150
    invoke-virtual {p0}, Lcom/keephealth/android/views/ecg/MyEcgAllViews;->invalidate()V

    return-void
.end method
