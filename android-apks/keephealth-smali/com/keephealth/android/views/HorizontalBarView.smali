.class public Lcom/keephealth/android/views/HorizontalBarView;
.super Landroid/view/View;
.source "HorizontalBarView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keephealth/android/views/HorizontalBarView$HoBarEntity;
    }
.end annotation


# instance fields
.field private barHeight:F

.field private barInterval:F

.field private barStartX:F

.field private contentTextHeight:F

.field private contentTextSize:I

.field private countMaxWidth:F

.field private countTextHeight:F

.field private countTextSize:I

.field private defaltHeight:I

.field private hoBarEntityList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/keephealth/android/views/HorizontalBarView$HoBarEntity;",
            ">;"
        }
    .end annotation
.end field

.field private mContentPaint:Landroid/graphics/Paint;

.field private mContentPaintColor:I

.field private mCountPaint:Landroid/graphics/Paint;

.field private mCountPaintColor:I

.field private mLinePaint:Landroid/graphics/Paint;

.field private mLinePaintColor:I

.field private maxCount:I

.field private mbarPaint:Landroid/graphics/Paint;

.field private mbarPaintColor:I

.field private rightInterval:F

.field private textMaxWidth:I

.field private topAndBottomInterval:F

.field private viewIntervar:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 54
    invoke-direct {p0, p1, v0}, Lcom/keephealth/android/views/HorizontalBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 58
    invoke-direct {p0, p1, p2, v0}, Lcom/keephealth/android/views/HorizontalBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 62
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/keephealth/android/views/HorizontalBarView;->hoBarEntityList:Ljava/util/ArrayList;

    const/4 p1, 0x0

    .line 30
    iput p1, p0, Lcom/keephealth/android/views/HorizontalBarView;->barStartX:F

    const/high16 p2, 0x41700000    # 15.0f

    .line 35
    invoke-virtual {p0, p2}, Lcom/keephealth/android/views/HorizontalBarView;->dp2px(F)I

    move-result p3

    int-to-float p3, p3

    iput p3, p0, Lcom/keephealth/android/views/HorizontalBarView;->barHeight:F

    .line 36
    invoke-virtual {p0, p2}, Lcom/keephealth/android/views/HorizontalBarView;->dp2px(F)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/keephealth/android/views/HorizontalBarView;->barInterval:F

    .line 37
    const-string p2, "#9e9e9e"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/keephealth/android/views/HorizontalBarView;->mContentPaintColor:I

    .line 38
    const-string p2, "#42aaf0"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/keephealth/android/views/HorizontalBarView;->mbarPaintColor:I

    .line 39
    const-string p2, "#5e5e5e"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/keephealth/android/views/HorizontalBarView;->mCountPaintColor:I

    .line 40
    const-string p2, "#ffffff"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/keephealth/android/views/HorizontalBarView;->mLinePaintColor:I

    const/16 p2, 0x1e

    .line 41
    iput p2, p0, Lcom/keephealth/android/views/HorizontalBarView;->contentTextSize:I

    .line 42
    iput p2, p0, Lcom/keephealth/android/views/HorizontalBarView;->countTextSize:I

    const/16 p2, 0xa

    .line 43
    iput p2, p0, Lcom/keephealth/android/views/HorizontalBarView;->viewIntervar:I

    const/high16 p2, 0x41200000    # 10.0f

    .line 44
    invoke-virtual {p0, p2}, Lcom/keephealth/android/views/HorizontalBarView;->dp2px(F)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/keephealth/android/views/HorizontalBarView;->topAndBottomInterval:F

    const/high16 p2, 0x41a00000    # 20.0f

    .line 45
    invoke-virtual {p0, p2}, Lcom/keephealth/android/views/HorizontalBarView;->dp2px(F)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/keephealth/android/views/HorizontalBarView;->rightInterval:F

    const/4 p2, 0x0

    .line 46
    iput p2, p0, Lcom/keephealth/android/views/HorizontalBarView;->defaltHeight:I

    .line 47
    iput p2, p0, Lcom/keephealth/android/views/HorizontalBarView;->textMaxWidth:I

    .line 48
    iput p2, p0, Lcom/keephealth/android/views/HorizontalBarView;->maxCount:I

    .line 49
    iput p1, p0, Lcom/keephealth/android/views/HorizontalBarView;->countMaxWidth:F

    .line 50
    iput p1, p0, Lcom/keephealth/android/views/HorizontalBarView;->contentTextHeight:F

    .line 51
    iput p1, p0, Lcom/keephealth/android/views/HorizontalBarView;->countTextHeight:F

    .line 63
    invoke-direct {p0}, Lcom/keephealth/android/views/HorizontalBarView;->initPaints()V

    return-void
.end method

.method private computeHeightAndTextMaxWidth()V
    .registers 9

    .line 169
    iget-object v0, p0, Lcom/keephealth/android/views/HorizontalBarView;->hoBarEntityList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_15

    .line 170
    invoke-virtual {p0}, Lcom/keephealth/android/views/HorizontalBarView;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/keephealth/android/views/HorizontalBarView;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/keephealth/android/views/HorizontalBarView;->defaltHeight:I

    goto/16 :goto_151

    .line 172
    :cond_15
    invoke-virtual {p0}, Lcom/keephealth/android/views/HorizontalBarView;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/keephealth/android/views/HorizontalBarView;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/keephealth/android/views/HorizontalBarView;->barHeight:F

    iget-object v2, p0, Lcom/keephealth/android/views/HorizontalBarView;->hoBarEntityList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/keephealth/android/views/HorizontalBarView;->hoBarEntityList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    iget v2, p0, Lcom/keephealth/android/views/HorizontalBarView;->barInterval:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    iget v2, p0, Lcom/keephealth/android/views/HorizontalBarView;->topAndBottomInterval:F

    mul-float/2addr v2, v1

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/keephealth/android/views/HorizontalBarView;->defaltHeight:I

    const/4 v0, 0x0

    move v1, v0

    .line 173
    :goto_44
    iget-object v2, p0, Lcom/keephealth/android/views/HorizontalBarView;->hoBarEntityList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const-string v3, ""

    if-ge v1, v2, :cond_107

    .line 174
    iget-object v2, p0, Lcom/keephealth/android/views/HorizontalBarView;->mContentPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/keephealth/android/views/HorizontalBarView;->hoBarEntityList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keephealth/android/views/HorizontalBarView$HoBarEntity;

    iget-object v4, v4, Lcom/keephealth/android/views/HorizontalBarView$HoBarEntity;->content:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    .line 175
    iget v4, p0, Lcom/keephealth/android/views/HorizontalBarView;->textMaxWidth:I

    int-to-float v4, v4

    cmpl-float v4, v2, v4

    if-lez v4, :cond_68

    float-to-int v2, v2

    .line 176
    iput v2, p0, Lcom/keephealth/android/views/HorizontalBarView;->textMaxWidth:I

    .line 179
    :cond_68
    iget v2, p0, Lcom/keephealth/android/views/HorizontalBarView;->contentTextHeight:F

    const/4 v4, 0x0

    cmpg-float v2, v2, v4

    if-gtz v2, :cond_98

    .line 180
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 181
    iget-object v5, p0, Lcom/keephealth/android/views/HorizontalBarView;->mContentPaint:Landroid/graphics/Paint;

    iget-object v6, p0, Lcom/keephealth/android/views/HorizontalBarView;->hoBarEntityList:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/keephealth/android/views/HorizontalBarView$HoBarEntity;

    iget-object v6, v6, Lcom/keephealth/android/views/HorizontalBarView$HoBarEntity;->content:Ljava/lang/String;

    iget-object v7, p0, Lcom/keephealth/android/views/HorizontalBarView;->hoBarEntityList:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/keephealth/android/views/HorizontalBarView$HoBarEntity;

    iget-object v7, v7, Lcom/keephealth/android/views/HorizontalBarView$HoBarEntity;->content:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v5, v6, v0, v7, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 182
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/keephealth/android/views/HorizontalBarView;->contentTextHeight:F

    .line 184
    :cond_98
    iget v2, p0, Lcom/keephealth/android/views/HorizontalBarView;->countTextHeight:F

    cmpg-float v2, v2, v4

    if-gtz v2, :cond_e9

    .line 185
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 186
    iget-object v4, p0, Lcom/keephealth/android/views/HorizontalBarView;->mCountPaint:Landroid/graphics/Paint;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/keephealth/android/views/HorizontalBarView;->hoBarEntityList:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/keephealth/android/views/HorizontalBarView$HoBarEntity;

    iget v6, v6, Lcom/keephealth/android/views/HorizontalBarView$HoBarEntity;->count:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/keephealth/android/views/HorizontalBarView;->hoBarEntityList:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/keephealth/android/views/HorizontalBarView$HoBarEntity;

    iget v7, v7, Lcom/keephealth/android/views/HorizontalBarView$HoBarEntity;->count:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v4, v5, v0, v3, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 187
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/keephealth/android/views/HorizontalBarView;->countTextHeight:F

    .line 189
    :cond_e9
    iget-object v2, p0, Lcom/keephealth/android/views/HorizontalBarView;->hoBarEntityList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/keephealth/android/views/HorizontalBarView$HoBarEntity;

    iget v2, v2, Lcom/keephealth/android/views/HorizontalBarView$HoBarEntity;->count:I

    iget v3, p0, Lcom/keephealth/android/views/HorizontalBarView;->maxCount:I

    if-le v2, v3, :cond_103

    .line 190
    iget-object v2, p0, Lcom/keephealth/android/views/HorizontalBarView;->hoBarEntityList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/keephealth/android/views/HorizontalBarView$HoBarEntity;

    iget v2, v2, Lcom/keephealth/android/views/HorizontalBarView$HoBarEntity;->count:I

    iput v2, p0, Lcom/keephealth/android/views/HorizontalBarView;->maxCount:I

    :cond_103
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_44

    .line 193
    :cond_107
    iget-object v0, p0, Lcom/keephealth/android/views/HorizontalBarView;->mCountPaint:Landroid/graphics/Paint;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/keephealth/android/views/HorizontalBarView;->maxCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/keephealth/android/views/HorizontalBarView;->countMaxWidth:F

    .line 194
    invoke-virtual {p0}, Lcom/keephealth/android/views/HorizontalBarView;->getPaddingLeft()I

    move-result v0

    iget v1, p0, Lcom/keephealth/android/views/HorizontalBarView;->textMaxWidth:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/keephealth/android/views/HorizontalBarView;->viewIntervar:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/keephealth/android/views/HorizontalBarView;->barStartX:F

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "textMaxWidth==="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/keephealth/android/views/HorizontalBarView;->textMaxWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    countMaxWidth==="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/views/HorizontalBarView;->countMaxWidth:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TAG"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_151
    return-void
.end method

.method private getScreenWidth()I
    .registers 3

    .line 250
    invoke-virtual {p0}, Lcom/keephealth/android/views/HorizontalBarView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    .line 251
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 252
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    return v0
.end method

.method private initPaints()V
    .registers 4

    .line 112
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/views/HorizontalBarView;->mContentPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    .line 113
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 114
    iget-object v0, p0, Lcom/keephealth/android/views/HorizontalBarView;->mContentPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 115
    iget-object v0, p0, Lcom/keephealth/android/views/HorizontalBarView;->mContentPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/keephealth/android/views/HorizontalBarView;->mContentPaintColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 116
    iget-object v0, p0, Lcom/keephealth/android/views/HorizontalBarView;->mContentPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/keephealth/android/views/HorizontalBarView;->contentTextSize:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 117
    iget-object v0, p0, Lcom/keephealth/android/views/HorizontalBarView;->mContentPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 118
    iget-object v0, p0, Lcom/keephealth/android/views/HorizontalBarView;->mContentPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 120
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/views/HorizontalBarView;->mbarPaint:Landroid/graphics/Paint;

    .line 121
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 122
    iget-object v0, p0, Lcom/keephealth/android/views/HorizontalBarView;->mbarPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 123
    iget-object v0, p0, Lcom/keephealth/android/views/HorizontalBarView;->mbarPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/keephealth/android/views/HorizontalBarView;->mbarPaintColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 124
    iget-object v0, p0, Lcom/keephealth/android/views/HorizontalBarView;->mbarPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 127
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/views/HorizontalBarView;->mCountPaint:Landroid/graphics/Paint;

    .line 128
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 129
    iget-object v0, p0, Lcom/keephealth/android/views/HorizontalBarView;->mCountPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 130
    iget-object v0, p0, Lcom/keephealth/android/views/HorizontalBarView;->mCountPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/keephealth/android/views/HorizontalBarView;->countTextSize:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 131
    iget-object v0, p0, Lcom/keephealth/android/views/HorizontalBarView;->mCountPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/keephealth/android/views/HorizontalBarView;->mCountPaintColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 132
    iget-object v0, p0, Lcom/keephealth/android/views/HorizontalBarView;->mCountPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 134
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/views/HorizontalBarView;->mLinePaint:Landroid/graphics/Paint;

    .line 135
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 136
    iget-object v0, p0, Lcom/keephealth/android/views/HorizontalBarView;->mLinePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 137
    iget-object v0, p0, Lcom/keephealth/android/views/HorizontalBarView;->mLinePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/keephealth/android/views/HorizontalBarView;->countTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 138
    iget-object v0, p0, Lcom/keephealth/android/views/HorizontalBarView;->mLinePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/keephealth/android/views/HorizontalBarView;->mLinePaintColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 139
    iget-object v0, p0, Lcom/keephealth/android/views/HorizontalBarView;->mLinePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 140
    iget-object v0, p0, Lcom/keephealth/android/views/HorizontalBarView;->mLinePaint:Landroid/graphics/Paint;

    const v1, 0x3f4ccccd    # 0.8f

    invoke-virtual {p0, v1}, Lcom/keephealth/android/views/HorizontalBarView;->dp2px(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method


# virtual methods
.method public dp2px(F)I
    .registers 3

    .line 107
    invoke-virtual {p0}, Lcom/keephealth/android/views/HorizontalBarView;->getContext()Landroid/content/Context;

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

.method public getBarHeight()F
    .registers 2

    .line 67
    iget v0, p0, Lcom/keephealth/android/views/HorizontalBarView;->barHeight:F

    return v0
.end method

.method public getBarInterval()F
    .registers 2

    .line 71
    iget v0, p0, Lcom/keephealth/android/views/HorizontalBarView;->barInterval:F

    return v0
.end method

.method public getContentTextSize()I
    .registers 2

    .line 91
    iget v0, p0, Lcom/keephealth/android/views/HorizontalBarView;->contentTextSize:I

    return v0
.end method

.method public getCountTextSize()I
    .registers 2

    .line 95
    iget v0, p0, Lcom/keephealth/android/views/HorizontalBarView;->countTextSize:I

    return v0
.end method

.method public getMbarPaintColor()I
    .registers 2

    .line 79
    iget v0, p0, Lcom/keephealth/android/views/HorizontalBarView;->mbarPaintColor:I

    return v0
.end method

.method public getTopAndBottomInterval()F
    .registers 2

    .line 103
    iget v0, p0, Lcom/keephealth/android/views/HorizontalBarView;->topAndBottomInterval:F

    return v0
.end method

.method public getViewIntervar()I
    .registers 2

    .line 99
    iget v0, p0, Lcom/keephealth/android/views/HorizontalBarView;->viewIntervar:I

    return v0
.end method

.method public getmContentPaintColor()I
    .registers 2

    .line 75
    iget v0, p0, Lcom/keephealth/android/views/HorizontalBarView;->mContentPaintColor:I

    return v0
.end method

.method public getmCountPaintColor()I
    .registers 2

    .line 83
    iget v0, p0, Lcom/keephealth/android/views/HorizontalBarView;->mCountPaintColor:I

    return v0
.end method

.method public getmLinePaintColor()I
    .registers 2

    .line 87
    iget v0, p0, Lcom/keephealth/android/views/HorizontalBarView;->mLinePaintColor:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 17

    move-object v0, p0

    move-object/from16 v7, p1

    .line 201
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 203
    invoke-virtual {p0}, Lcom/keephealth/android/views/HorizontalBarView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/keephealth/android/views/HorizontalBarView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, v0, Lcom/keephealth/android/views/HorizontalBarView;->barStartX:F

    sub-float/2addr v1, v2

    iget v2, v0, Lcom/keephealth/android/views/HorizontalBarView;->countMaxWidth:F

    sub-float/2addr v1, v2

    iget v2, v0, Lcom/keephealth/android/views/HorizontalBarView;->viewIntervar:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, v0, Lcom/keephealth/android/views/HorizontalBarView;->rightInterval:F

    sub-float v8, v1, v2

    .line 205
    iget v1, v0, Lcom/keephealth/android/views/HorizontalBarView;->maxCount:I

    if-lez v1, :cond_26

    int-to-float v1, v1

    div-float v1, v8, v1

    goto :goto_27

    :cond_26
    const/4 v1, 0x0

    :goto_27
    move v9, v1

    .line 210
    invoke-virtual {p0}, Lcom/keephealth/android/views/HorizontalBarView;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    iget v2, v0, Lcom/keephealth/android/views/HorizontalBarView;->topAndBottomInterval:F

    add-float v10, v1, v2

    .line 214
    iget v2, v0, Lcom/keephealth/android/views/HorizontalBarView;->barStartX:F

    iget v1, v0, Lcom/keephealth/android/views/HorizontalBarView;->viewIntervar:I

    int-to-float v1, v1

    sub-float v11, v2, v1

    .line 217
    invoke-virtual {p0}, Lcom/keephealth/android/views/HorizontalBarView;->getPaddingTop()I

    move-result v1

    int-to-float v3, v1

    invoke-virtual {p0}, Lcom/keephealth/android/views/HorizontalBarView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/keephealth/android/views/HorizontalBarView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v1, v4

    int-to-float v4, v1

    invoke-virtual {p0}, Lcom/keephealth/android/views/HorizontalBarView;->getPaddingTop()I

    move-result v1

    int-to-float v5, v1

    iget-object v6, v0, Lcom/keephealth/android/views/HorizontalBarView;->mLinePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 219
    iget v2, v0, Lcom/keephealth/android/views/HorizontalBarView;->barStartX:F

    invoke-virtual {p0}, Lcom/keephealth/android/views/HorizontalBarView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/keephealth/android/views/HorizontalBarView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v1, v3

    int-to-float v3, v1

    invoke-virtual {p0}, Lcom/keephealth/android/views/HorizontalBarView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/keephealth/android/views/HorizontalBarView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v1, v4

    int-to-float v4, v1

    invoke-virtual {p0}, Lcom/keephealth/android/views/HorizontalBarView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/keephealth/android/views/HorizontalBarView;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v1, v5

    int-to-float v5, v1

    iget-object v6, v0, Lcom/keephealth/android/views/HorizontalBarView;->mLinePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 221
    iget v2, v0, Lcom/keephealth/android/views/HorizontalBarView;->barStartX:F

    invoke-virtual {p0}, Lcom/keephealth/android/views/HorizontalBarView;->getPaddingTop()I

    move-result v1

    int-to-float v3, v1

    iget v4, v0, Lcom/keephealth/android/views/HorizontalBarView;->barStartX:F

    invoke-virtual {p0}, Lcom/keephealth/android/views/HorizontalBarView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/keephealth/android/views/HorizontalBarView;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v1, v5

    int-to-float v5, v1

    iget-object v6, v0, Lcom/keephealth/android/views/HorizontalBarView;->mLinePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/4 v1, 0x0

    move v12, v10

    move v10, v1

    .line 223
    :goto_97
    iget-object v1, v0, Lcom/keephealth/android/views/HorizontalBarView;->hoBarEntityList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v10, v1, :cond_162

    .line 224
    iget v1, v0, Lcom/keephealth/android/views/HorizontalBarView;->barStartX:F

    add-float/2addr v1, v8

    iget-object v2, v0, Lcom/keephealth/android/views/HorizontalBarView;->hoBarEntityList:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/keephealth/android/views/HorizontalBarView$HoBarEntity;

    iget v2, v2, Lcom/keephealth/android/views/HorizontalBarView$HoBarEntity;->count:I

    int-to-float v2, v2

    mul-float/2addr v2, v9

    sub-float/2addr v1, v2

    .line 225
    iget v2, v0, Lcom/keephealth/android/views/HorizontalBarView;->barStartX:F

    cmpg-float v3, v1, v2

    if-gtz v3, :cond_ba

    const/high16 v1, 0x40800000    # 4.0f

    div-float v1, v8, v1

    add-float/2addr v1, v2

    :cond_ba
    move v13, v1

    .line 228
    iget v1, v0, Lcom/keephealth/android/views/HorizontalBarView;->barHeight:F

    add-float v14, v12, v1

    .line 229
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "hoBarEntityList:barStartX-barEndX==="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v0, Lcom/keephealth/android/views/HorizontalBarView;->barStartX:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 231
    iget v2, v0, Lcom/keephealth/android/views/HorizontalBarView;->barStartX:F

    iget-object v6, v0, Lcom/keephealth/android/views/HorizontalBarView;->mbarPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v3, v12

    move v4, v13

    move v5, v14

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 234
    iget-object v1, v0, Lcom/keephealth/android/views/HorizontalBarView;->mContentPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    .line 235
    iget v2, v0, Lcom/keephealth/android/views/HorizontalBarView;->barHeight:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v2, v12

    iget v4, v1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v5, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v4, v5

    neg-int v4, v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    add-float/2addr v2, v4

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    int-to-float v1, v1

    sub-float/2addr v2, v1

    .line 236
    iget-object v1, v0, Lcom/keephealth/android/views/HorizontalBarView;->hoBarEntityList:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/views/HorizontalBarView$HoBarEntity;

    iget-object v1, v1, Lcom/keephealth/android/views/HorizontalBarView$HoBarEntity;->content:Ljava/lang/String;

    iget-object v4, v0, Lcom/keephealth/android/views/HorizontalBarView;->mContentPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v11, v2, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 239
    iget-object v1, v0, Lcom/keephealth/android/views/HorizontalBarView;->mCountPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    .line 240
    iget v2, v0, Lcom/keephealth/android/views/HorizontalBarView;->barHeight:F

    div-float/2addr v2, v3

    add-float/2addr v12, v2

    iget v2, v1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v3, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v2, v3

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v12, v2

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    int-to-float v1, v1

    sub-float/2addr v12, v1

    .line 241
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/keephealth/android/views/HorizontalBarView;->hoBarEntityList:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/keephealth/android/views/HorizontalBarView$HoBarEntity;

    iget-object v2, v2, Lcom/keephealth/android/views/HorizontalBarView$HoBarEntity;->rightContent:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, v0, Lcom/keephealth/android/views/HorizontalBarView;->viewIntervar:I

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v13, v2

    iget-object v2, v0, Lcom/keephealth/android/views/HorizontalBarView;->mCountPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v13, v12, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 243
    iget v1, v0, Lcom/keephealth/android/views/HorizontalBarView;->barInterval:F

    add-float v12, v14, v1

    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_97

    :cond_162
    return-void
.end method

.method protected onMeasure(II)V
    .registers 6

    .line 145
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 146
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 147
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 148
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 149
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/high16 v2, 0x40000000    # 2.0f

    if-ne v0, v2, :cond_18

    goto :goto_1c

    .line 155
    :cond_18
    invoke-direct {p0}, Lcom/keephealth/android/views/HorizontalBarView;->getScreenWidth()I

    move-result p1

    :goto_1c
    if-ne v1, v2, :cond_1f

    goto :goto_24

    .line 161
    :cond_1f
    invoke-direct {p0}, Lcom/keephealth/android/views/HorizontalBarView;->computeHeightAndTextMaxWidth()V

    .line 162
    iget p2, p0, Lcom/keephealth/android/views/HorizontalBarView;->defaltHeight:I

    .line 164
    :goto_24
    invoke-virtual {p0, p1, p2}, Lcom/keephealth/android/views/HorizontalBarView;->setMeasuredDimension(II)V

    return-void
.end method

.method public setHoBarData(Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/keephealth/android/views/HorizontalBarView$HoBarEntity;",
            ">;)V"
        }
    .end annotation

    .line 257
    iget-object v0, p0, Lcom/keephealth/android/views/HorizontalBarView;->hoBarEntityList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 258
    iget-object v0, p0, Lcom/keephealth/android/views/HorizontalBarView;->hoBarEntityList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 259
    invoke-virtual {p0}, Lcom/keephealth/android/views/HorizontalBarView;->requestLayout()V

    .line 260
    invoke-virtual {p0}, Lcom/keephealth/android/views/HorizontalBarView;->invalidate()V

    return-void
.end method
