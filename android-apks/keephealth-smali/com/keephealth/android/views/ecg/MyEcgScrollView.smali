.class public Lcom/keephealth/android/views/ecg/MyEcgScrollView;
.super Landroid/widget/HorizontalScrollView;
.source "MyEcgScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keephealth/android/views/ecg/MyEcgScrollView$OnScrollListener;
    }
.end annotation


# static fields
.field private static OFFSET_HEART_VALUE:F = 4096.0f

.field private static offsetBS:F = 1.5f

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

.field private mPaint01:Landroid/graphics/Paint;

.field protected mScrollListener:Lcom/keephealth/android/views/ecg/MyEcgScrollView$OnScrollListener;

.field private multiple_for_rect_width:F

.field private final offset:I

.field private offset_x_max:F

.field private rect_gap_x:F

.field private rect_high:I

.field private rect_width:F

.field private scroll:Z

.field private width:I

.field private x_change:F

.field private xori:I

.field private y_center:F


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 55
    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 25
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/keephealth/android/views/ecg/MyEcgScrollView;->data_source:Ljava/util/List;

    const/16 p1, 0x1e

    .line 32
    iput p1, p0, Lcom/keephealth/android/views/ecg/MyEcgScrollView;->dataNum_per_grid:I

    const/16 p1, 0x50

    .line 41
    iput p1, p0, Lcom/keephealth/android/views/ecg/MyEcgScrollView;->rect_high:I

    const/4 p1, 0x1

    .line 49
    iput p1, p0, Lcom/keephealth/android/views/ecg/MyEcgScrollView;->offset:I

    const/4 p1, 0x0

    .line 141
    iput-boolean p1, p0, Lcom/keephealth/android/views/ecg/MyEcgScrollView;->scroll:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 59
    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/keephealth/android/views/ecg/MyEcgScrollView;->data_source:Ljava/util/List;

    const/16 p1, 0x1e

    .line 32
    iput p1, p0, Lcom/keephealth/android/views/ecg/MyEcgScrollView;->dataNum_per_grid:I

    const/16 p1, 0x50

    .line 41
    iput p1, p0, Lcom/keephealth/android/views/ecg/MyEcgScrollView;->rect_high:I

    const/4 p1, 0x1

    .line 49
    iput p1, p0, Lcom/keephealth/android/views/ecg/MyEcgScrollView;->offset:I

    const/4 p1, 0x0

    .line 141
    iput-boolean p1, p0, Lcom/keephealth/android/views/ecg/MyEcgScrollView;->scroll:Z

    .line 60
    invoke-direct {p0}, Lcom/keephealth/android/views/ecg/MyEcgScrollView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 64
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/keephealth/android/views/ecg/MyEcgScrollView;->data_source:Ljava/util/List;

    const/16 p1, 0x1e

    .line 32
    iput p1, p0, Lcom/keephealth/android/views/ecg/MyEcgScrollView;->dataNum_per_grid:I

    const/16 p1, 0x50

    .line 41
    iput p1, p0, Lcom/keephealth/android/views/ecg/MyEcgScrollView;->rect_high:I

    const/4 p1, 0x1

    .line 49
    iput p1, p0, Lcom/keephealth/android/views/ecg/MyEcgScrollView;->offset:I

    const/4 p1, 0x0

    .line 141
    iput-boolean p1, p0, Lcom/keephealth/android/views/ecg/MyEcgScrollView;->scroll:Z

    return-void
.end method

.method private drawing(Landroid/graphics/Canvas;)V
    .registers 9

    .line 111
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 112
    sget v1, Lcom/keephealth/android/views/ecg/MyEcgScrollView;->x_changed:F

    iget v2, p0, Lcom/keephealth/android/views/ecg/MyEcgScrollView;->x_change:F

    add-float/2addr v1, v2

    sput v1, Lcom/keephealth/android/views/ecg/MyEcgScrollView;->x_changed:F

    .line 113
    iget v2, p0, Lcom/keephealth/android/views/ecg/MyEcgScrollView;->xori:I

    int-to-float v3, v2

    cmpl-float v3, v1, v3

    if-lez v3, :cond_17

    int-to-float v1, v2

    .line 114
    sput v1, Lcom/keephealth/android/views/ecg/MyEcgScrollView;->x_changed:F

    goto :goto_1f

    .line 115
    :cond_17
    iget v2, p0, Lcom/keephealth/android/views/ecg/MyEcgScrollView;->offset_x_max:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1f

    .line 116
    sput v2, Lcom/keephealth/android/views/ecg/MyEcgScrollView;->x_changed:F

    :cond_1f
    :goto_1f
    const/4 v1, 0x1

    move v2, v1

    .line 120
    :goto_21
    iget-object v3, p0, Lcom/keephealth/android/views/ecg/MyEcgScrollView;->data_source:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/high16 v4, 0x45000000    # 2048.0f

    if-ge v2, v3, :cond_69

    .line 121
    iget v3, p0, Lcom/keephealth/android/views/ecg/MyEcgScrollView;->xori:I

    int-to-float v3, v3

    iget v5, p0, Lcom/keephealth/android/views/ecg/MyEcgScrollView;->gap_x:F

    int-to-float v6, v2

    mul-float/2addr v5, v6

    add-float/2addr v3, v5

    sget v5, Lcom/keephealth/android/views/ecg/MyEcgScrollView;->x_changed:F

    add-float/2addr v3, v5

    const/4 v5, 0x0

    cmpl-float v5, v3, v5

    if-ltz v5, :cond_66

    .line 125
    iget-object v1, p0, Lcom/keephealth/android/views/ecg/MyEcgScrollView;->data_source:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v5, p0, Lcom/keephealth/android/views/ecg/MyEcgScrollView;->data_source:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    sub-float/2addr v5, v4

    sget v6, Lcom/keephealth/android/views/ecg/MyEcgScrollView;->offsetBS:F

    mul-float/2addr v5, v6

    add-float/2addr v1, v5

    .line 126
    invoke-virtual {p0}, Lcom/keephealth/android/views/ecg/MyEcgScrollView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v1, v5

    sget v5, Lcom/keephealth/android/views/ecg/MyEcgScrollView;->OFFSET_HEART_VALUE:F

    div-float/2addr v1, v5

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Path;->moveTo(FF)V

    move v1, v2

    goto :goto_69

    :cond_66
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    .line 130
    :cond_69
    :goto_69
    iget-object v2, p0, Lcom/keephealth/android/views/ecg/MyEcgScrollView;->data_source:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_b0

    .line 131
    iget v2, p0, Lcom/keephealth/android/views/ecg/MyEcgScrollView;->xori:I

    int-to-float v2, v2

    iget v3, p0, Lcom/keephealth/android/views/ecg/MyEcgScrollView;->gap_x:F

    int-to-float v5, v1

    mul-float/2addr v5, v3

    add-float/2addr v2, v5

    sget v5, Lcom/keephealth/android/views/ecg/MyEcgScrollView;->x_changed:F

    add-float/2addr v2, v5

    .line 132
    iget v5, p0, Lcom/keephealth/android/views/ecg/MyEcgScrollView;->width:I

    int-to-float v5, v5

    add-float/2addr v5, v3

    cmpg-float v3, v2, v5

    if-gez v3, :cond_ad

    .line 134
    iget-object v3, p0, Lcom/keephealth/android/views/ecg/MyEcgScrollView;->data_source:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iget-object v5, p0, Lcom/keephealth/android/views/ecg/MyEcgScrollView;->data_source:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    sub-float/2addr v5, v4

    sget v6, Lcom/keephealth/android/views/ecg/MyEcgScrollView;->offsetBS:F

    mul-float/2addr v5, v6

    add-float/2addr v3, v5

    .line 135
    invoke-virtual {p0}, Lcom/keephealth/android/views/ecg/MyEcgScrollView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v3, v5

    sget v5, Lcom/keephealth/android/views/ecg/MyEcgScrollView;->OFFSET_HEART_VALUE:F

    div-float/2addr v3, v5

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_ad
    add-int/lit8 v1, v1, 0x1

    goto :goto_69

    .line 138
    :cond_b0
    iget-object v1, p0, Lcom/keephealth/android/views/ecg/MyEcgScrollView;->mPaint01:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private init()V
    .registers 3

    .line 71
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/views/ecg/MyEcgScrollView;->mPaint01:Landroid/graphics/Paint;

    .line 72
    const-string v1, "#000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 73
    iget-object v0, p0, Lcom/keephealth/android/views/ecg/MyEcgScrollView;->mPaint01:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 74
    iget-object v0, p0, Lcom/keephealth/android/views/ecg/MyEcgScrollView;->mPaint01:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 2

    .line 103
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->draw(Landroid/graphics/Canvas;)V

    .line 104
    invoke-direct {p0, p1}, Lcom/keephealth/android/views/ecg/MyEcgScrollView;->drawing(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 11

    if-eqz p1, :cond_9a

    const/4 v0, 0x0

    .line 80
    iput v0, p0, Lcom/keephealth/android/views/ecg/MyEcgScrollView;->xori:I

    const/high16 v0, 0x42700000    # 60.0f

    .line 81
    iput v0, p0, Lcom/keephealth/android/views/ecg/MyEcgScrollView;->gap_grid:F

    .line 82
    invoke-virtual {p0}, Lcom/keephealth/android/views/ecg/MyEcgScrollView;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/views/ecg/MyEcgScrollView;->width:I

    .line 83
    invoke-virtual {p0}, Lcom/keephealth/android/views/ecg/MyEcgScrollView;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/views/ecg/MyEcgScrollView;->height:I

    .line 84
    iget v1, p0, Lcom/keephealth/android/views/ecg/MyEcgScrollView;->gap_grid:F

    float-to-int v2, v1

    div-int v2, v0, v2

    iput v2, p0, Lcom/keephealth/android/views/ecg/MyEcgScrollView;->grid_hori:I

    .line 85
    iget v2, p0, Lcom/keephealth/android/views/ecg/MyEcgScrollView;->width:I

    float-to-int v3, v1

    div-int/2addr v2, v3

    iput v2, p0, Lcom/keephealth/android/views/ecg/MyEcgScrollView;->grid_ver:I

    .line 86
    iget v2, p0, Lcom/keephealth/android/views/ecg/MyEcgScrollView;->rect_high:I

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/keephealth/android/views/ecg/MyEcgScrollView;->y_center:F

    .line 87
    iget v0, p0, Lcom/keephealth/android/views/ecg/MyEcgScrollView;->dataNum_per_grid:I

    int-to-float v0, v0

    div-float/2addr v1, v0

    iput v1, p0, Lcom/keephealth/android/views/ecg/MyEcgScrollView;->gap_x:F

    .line 88
    iget-object v0, p0, Lcom/keephealth/android/views/ecg/MyEcgScrollView;->data_source:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/views/ecg/MyEcgScrollView;->data_num:I

    const/4 v1, 0x0

    .line 89
    iput v1, p0, Lcom/keephealth/android/views/ecg/MyEcgScrollView;->x_change:F

    .line 90
    sput v1, Lcom/keephealth/android/views/ecg/MyEcgScrollView;->x_changed:F

    .line 91
    iget v1, p0, Lcom/keephealth/android/views/ecg/MyEcgScrollView;->width:I

    int-to-float v2, v1

    iget v3, p0, Lcom/keephealth/android/views/ecg/MyEcgScrollView;->gap_x:F

    int-to-float v4, v0

    mul-float/2addr v4, v3

    sub-float/2addr v2, v4

    iput v2, p0, Lcom/keephealth/android/views/ecg/MyEcgScrollView;->offset_x_max:F

    int-to-float v2, v1

    int-to-float v4, v0

    div-float/2addr v2, v4

    .line 92
    iput v2, p0, Lcom/keephealth/android/views/ecg/MyEcgScrollView;->rect_gap_x:F

    int-to-float v2, v1

    int-to-float v4, v1

    mul-float/2addr v2, v4

    int-to-float v0, v0

    mul-float/2addr v3, v0

    div-float/2addr v2, v3

    .line 93
    iput v2, p0, Lcom/keephealth/android/views/ecg/MyEcgScrollView;->rect_width:F

    int-to-float v0, v1

    div-float/2addr v0, v2

    .line 94
    iput v0, p0, Lcom/keephealth/android/views/ecg/MyEcgScrollView;->multiple_for_rect_width:F

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u672c\u9875\u9762\u5bbd\uff1a "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/keephealth/android/views/ecg/MyEcgScrollView;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  \u9ad8:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/views/ecg/MyEcgScrollView;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "json"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "\u4e24\u70b9\u95f4\u6a2a\u5750\u6807\u95f4\u8ddd:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/keephealth/android/views/ecg/MyEcgScrollView;->gap_x:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "   \u77e9\u5f62\u533a\u57df\u4e24\u70b9\u95f4\u6a2a\u5750\u6807\u95f4\u8ddd\uff1a"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/keephealth/android/views/ecg/MyEcgScrollView;->rect_gap_x:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_9a
    invoke-super/range {p0 .. p5}, Landroid/widget/HorizontalScrollView;->onLayout(ZIIII)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    .line 144
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_27

    const/4 v2, 0x2

    if-eq v0, v2, :cond_b

    goto :goto_2d

    .line 149
    :cond_b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    sget v0, Lcom/keephealth/android/views/ecg/MyEcgScrollView;->startX:F

    sub-float/2addr p1, v0

    iput p1, p0, Lcom/keephealth/android/views/ecg/MyEcgScrollView;->x_change:F

    .line 151
    iput-boolean v1, p0, Lcom/keephealth/android/views/ecg/MyEcgScrollView;->scroll:Z

    .line 152
    iget-object v0, p0, Lcom/keephealth/android/views/ecg/MyEcgScrollView;->mScrollListener:Lcom/keephealth/android/views/ecg/MyEcgScrollView$OnScrollListener;

    const v2, 0x461c4000    # 10000.0f

    mul-float/2addr p1, v2

    iget v2, p0, Lcom/keephealth/android/views/ecg/MyEcgScrollView;->offset_x_max:F

    div-float/2addr p1, v2

    float-to-int p1, p1

    invoke-interface {v0, p1}, Lcom/keephealth/android/views/ecg/MyEcgScrollView$OnScrollListener;->onScroll(I)V

    .line 153
    invoke-virtual {p0}, Lcom/keephealth/android/views/ecg/MyEcgScrollView;->invalidate()V

    goto :goto_2d

    .line 146
    :cond_27
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    sput p1, Lcom/keephealth/android/views/ecg/MyEcgScrollView;->startX:F

    :goto_2d
    return v1
.end method

.method public setChange(I)V
    .registers 3

    .line 159
    iget-boolean v0, p0, Lcom/keephealth/android/views/ecg/MyEcgScrollView;->scroll:Z

    if-nez v0, :cond_11

    int-to-float p1, p1

    .line 160
    iget v0, p0, Lcom/keephealth/android/views/ecg/MyEcgScrollView;->offset_x_max:F

    mul-float/2addr p1, v0

    const v0, 0x461c4000    # 10000.0f

    div-float/2addr p1, v0

    iput p1, p0, Lcom/keephealth/android/views/ecg/MyEcgScrollView;->x_change:F

    .line 161
    invoke-virtual {p0}, Lcom/keephealth/android/views/ecg/MyEcgScrollView;->invalidate()V

    :cond_11
    const/4 p1, 0x0

    .line 163
    iput-boolean p1, p0, Lcom/keephealth/android/views/ecg/MyEcgScrollView;->scroll:Z

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

    .line 170
    iput-object p1, p0, Lcom/keephealth/android/views/ecg/MyEcgScrollView;->data_source:Ljava/util/List;

    .line 171
    invoke-virtual {p0}, Lcom/keephealth/android/views/ecg/MyEcgScrollView;->invalidate()V

    return-void
.end method

.method public setmScrollListener(Lcom/keephealth/android/views/ecg/MyEcgScrollView$OnScrollListener;)V
    .registers 2

    .line 179
    iput-object p1, p0, Lcom/keephealth/android/views/ecg/MyEcgScrollView;->mScrollListener:Lcom/keephealth/android/views/ecg/MyEcgScrollView$OnScrollListener;

    return-void
.end method
