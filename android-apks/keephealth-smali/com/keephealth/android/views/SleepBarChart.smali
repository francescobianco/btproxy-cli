.class public Lcom/keephealth/android/views/SleepBarChart;
.super Landroid/view/View;
.source "SleepBarChart.java"


# instance fields
.field private bottomHeight:F

.field private bottomPaint:Landroid/graphics/Paint;

.field private centerHeight:F

.field private centerPaint:Landroid/graphics/Paint;

.field private centerWithd:F

.field private colors:[I

.field private endHeight:F

.field private h:I

.field private screenWidth:I

.field private sleepData:Lcom/keephealth/android/greendao/bean/HealthSleep;

.field private sleepItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/keephealth/android/greendao/bean/HealthSleepItem;",
            ">;"
        }
    .end annotation
.end field

.field private sleepPaint:Landroid/graphics/Paint;

.field private sleepTimes:[I

.field private startHeight:F

.field private textColor:I

.field private timeTextSize:F

.field private titleSpan:F

.field private tittleTextSize:F

.field private topBitmap:Landroid/graphics/Bitmap;

.field private topDrawable:Landroid/graphics/drawable/Drawable;

.field private topHeight:F

.field private topPaint:Landroid/graphics/Paint;

.field private topWidth:F

.field private w:I

.field private xBarHeight:F

.field private xLabelTextSize:F

.field private xLable:F

.field private xOffSet:F

.field private xOffet:I

.field private xtimes:[Ljava/lang/String;

.field private yLable:F

.field private yOffSet:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7

    .line 64
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    .line 34
    iput v0, p0, Lcom/keephealth/android/views/SleepBarChart;->textColor:I

    const/16 v0, 0x14

    .line 43
    iput v0, p0, Lcom/keephealth/android/views/SleepBarChart;->xOffet:I

    const/4 v0, 0x0

    .line 58
    iput v0, p0, Lcom/keephealth/android/views/SleepBarChart;->xLable:F

    iput v0, p0, Lcom/keephealth/android/views/SleepBarChart;->yLable:F

    const v0, -0x981e04

    const v1, -0xf8831e

    const v2, -0x110a02

    .line 61
    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/views/SleepBarChart;->colors:[I

    .line 65
    sget-object v0, Lcom/keephealth/android/R$styleable;->SleepBarChart:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 67
    invoke-virtual {p0}, Lcom/keephealth/android/views/SleepBarChart;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060154

    .line 68
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p2, v2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/keephealth/android/views/SleepBarChart;->textColor:I

    const/4 v1, 0x5

    const/high16 v2, 0x41a00000    # 20.0f

    .line 69
    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    iput v3, p0, Lcom/keephealth/android/views/SleepBarChart;->tittleTextSize:F

    .line 70
    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/keephealth/android/views/SleepBarChart;->xLabelTextSize:F

    const/4 v1, 0x4

    .line 71
    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/keephealth/android/views/SleepBarChart;->timeTextSize:F

    .line 73
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    const/4 p2, 0x2

    .line 76
    new-array p2, p2, [I

    iput-object p2, p0, Lcom/keephealth/android/views/SleepBarChart;->sleepTimes:[I

    .line 81
    invoke-direct {p0}, Lcom/keephealth/android/views/SleepBarChart;->initPaint()V

    const p2, 0x7f0d0065

    .line 83
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/keephealth/android/views/SleepBarChart;->topDrawable:Landroid/graphics/drawable/Drawable;

    .line 84
    invoke-static {v0, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/keephealth/android/views/SleepBarChart;->topBitmap:Landroid/graphics/Bitmap;

    .line 87
    invoke-static {p1}, Lcom/keephealth/android/util/ScreenUtil;->getScreenWidth(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/keephealth/android/views/SleepBarChart;->screenWidth:I

    return-void
.end method

.method private drawCenterData(Landroid/graphics/Canvas;)V
    .registers 15

    .line 139
    iget v0, p0, Lcom/keephealth/android/views/SleepBarChart;->h:I

    int-to-float v1, v0

    iget v2, p0, Lcom/keephealth/android/views/SleepBarChart;->topHeight:F

    sub-float/2addr v1, v2

    iget v3, p0, Lcom/keephealth/android/views/SleepBarChart;->bottomHeight:F

    sub-float/2addr v1, v3

    iput v1, p0, Lcom/keephealth/android/views/SleepBarChart;->centerHeight:F

    const/high16 v4, 0x41a00000    # 20.0f

    div-float/2addr v1, v4

    .line 140
    iput v1, p0, Lcom/keephealth/android/views/SleepBarChart;->yOffSet:F

    .line 141
    iget v4, p0, Lcom/keephealth/android/views/SleepBarChart;->w:I

    div-int/lit8 v5, v4, 0x1e

    int-to-float v5, v5

    iput v5, p0, Lcom/keephealth/android/views/SleepBarChart;->xOffSet:F

    int-to-float v4, v4

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    .line 142
    iput v4, p0, Lcom/keephealth/android/views/SleepBarChart;->centerWithd:F

    add-float/2addr v2, v1

    .line 143
    iput v2, p0, Lcom/keephealth/android/views/SleepBarChart;->startHeight:F

    int-to-float v0, v0

    sub-float/2addr v0, v3

    .line 144
    iget v1, p0, Lcom/keephealth/android/views/SleepBarChart;->xOffet:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/keephealth/android/views/SleepBarChart;->endHeight:F

    .line 145
    iget-object v0, p0, Lcom/keephealth/android/views/SleepBarChart;->centerPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 146
    iget-object v0, p0, Lcom/keephealth/android/views/SleepBarChart;->centerPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 147
    invoke-virtual {p0}, Lcom/keephealth/android/views/SleepBarChart;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v1, v0}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/keephealth/android/views/SleepBarChart;->xBarHeight:F

    .line 149
    invoke-virtual {p0}, Lcom/keephealth/android/views/SleepBarChart;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 154
    iget-object v1, p0, Lcom/keephealth/android/views/SleepBarChart;->sleepData:Lcom/keephealth/android/greendao/bean/HealthSleep;

    if-eqz v1, :cond_15e

    iget-object v1, p0, Lcom/keephealth/android/views/SleepBarChart;->sleepItems:Ljava/util/List;

    if-eqz v1, :cond_15e

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_15e

    const/4 v1, 0x6

    .line 157
    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/keephealth/android/views/SleepBarChart;->xtimes:[Ljava/lang/String;

    .line 158
    iget-object v1, p0, Lcom/keephealth/android/views/SleepBarChart;->sleepData:Lcom/keephealth/android/greendao/bean/HealthSleep;

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getTotalSleepMinutes()I

    move-result v1

    .line 159
    iget-object v2, p0, Lcom/keephealth/android/views/SleepBarChart;->xtimes:[Ljava/lang/String;

    array-length v2, v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    div-int/2addr v1, v2

    .line 160
    iget-object v2, p0, Lcom/keephealth/android/views/SleepBarChart;->sleepData:Lcom/keephealth/android/greendao/bean/HealthSleep;

    invoke-direct {p0, v2}, Lcom/keephealth/android/views/SleepBarChart;->getStartAndEndTime(Lcom/keephealth/android/greendao/bean/HealthSleep;)[I

    move-result-object v2

    const/4 v4, 0x0

    aget v2, v2, v4

    .line 161
    iget-object v5, p0, Lcom/keephealth/android/views/SleepBarChart;->sleepData:Lcom/keephealth/android/greendao/bean/HealthSleep;

    invoke-direct {p0, v5}, Lcom/keephealth/android/views/SleepBarChart;->getStartAndEndTime(Lcom/keephealth/android/greendao/bean/HealthSleep;)[I

    move-result-object v5

    aget v5, v5, v3

    .line 164
    const-string v7, ""

    move v9, v4

    move-object v8, v7

    :goto_84
    iget-object v10, p0, Lcom/keephealth/android/views/SleepBarChart;->xtimes:[Ljava/lang/String;

    array-length v11, v10

    if-ge v9, v11, :cond_e7

    if-nez v9, :cond_ac

    .line 166
    invoke-virtual {p0}, Lcom/keephealth/android/views/SleepBarChart;->getContext()Landroid/content/Context;

    move-result-object v7

    check-cast v7, Landroid/app/Activity;

    invoke-static {v7}, Lcom/keephealth/android/util/TimeUtil;->is24Hour(Landroid/content/Context;)Z

    move-result v7

    invoke-static {v2, v7, v0, v3}, Lcom/keephealth/android/util/TimeUtil;->timeFormatter(IZ[Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    .line 167
    iget-object v10, p0, Lcom/keephealth/android/views/SleepBarChart;->xtimes:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/keephealth/android/views/SleepBarChart;->getContext()Landroid/content/Context;

    move-result-object v11

    check-cast v11, Landroid/app/Activity;

    invoke-static {v11}, Lcom/keephealth/android/util/TimeUtil;->is24Hour(Landroid/content/Context;)Z

    move-result v11

    invoke-static {v2, v11, v0, v3, v3}, Lcom/keephealth/android/util/TimeUtil;->timeFormatter(IZ[Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v9

    goto :goto_e4

    .line 168
    :cond_ac
    array-length v11, v10

    sub-int/2addr v11, v3

    if-ne v9, v11, :cond_d1

    .line 169
    invoke-virtual {p0}, Lcom/keephealth/android/views/SleepBarChart;->getContext()Landroid/content/Context;

    move-result-object v8

    check-cast v8, Landroid/app/Activity;

    invoke-static {v8}, Lcom/keephealth/android/util/TimeUtil;->is24Hour(Landroid/content/Context;)Z

    move-result v8

    invoke-static {v5, v8, v0, v3}, Lcom/keephealth/android/util/TimeUtil;->timeFormatter(IZ[Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v8

    .line 170
    iget-object v10, p0, Lcom/keephealth/android/views/SleepBarChart;->xtimes:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/keephealth/android/views/SleepBarChart;->getContext()Landroid/content/Context;

    move-result-object v11

    check-cast v11, Landroid/app/Activity;

    invoke-static {v11}, Lcom/keephealth/android/util/TimeUtil;->is24Hour(Landroid/content/Context;)Z

    move-result v11

    invoke-static {v5, v11, v0, v3, v4}, Lcom/keephealth/android/util/TimeUtil;->timeFormatter(IZ[Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v9

    goto :goto_e4

    :cond_d1
    mul-int v11, v1, v9

    add-int/2addr v11, v2

    .line 172
    invoke-virtual {p0}, Lcom/keephealth/android/views/SleepBarChart;->getContext()Landroid/content/Context;

    move-result-object v12

    check-cast v12, Landroid/app/Activity;

    invoke-static {v12}, Lcom/keephealth/android/util/TimeUtil;->is24Hour(Landroid/content/Context;)Z

    move-result v12

    invoke-static {v11, v12, v0, v4}, Lcom/keephealth/android/util/TimeUtil;->timeFormatter(IZ[Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v9

    :goto_e4
    add-int/lit8 v9, v9, 0x1

    goto :goto_84

    .line 177
    :cond_e7
    iget v0, p0, Lcom/keephealth/android/views/SleepBarChart;->centerWithd:F

    array-length v1, v10

    sub-int/2addr v1, v3

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 178
    iget-object v1, p0, Lcom/keephealth/android/views/SleepBarChart;->centerPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/keephealth/android/views/SleepBarChart;->xLabelTextSize:F

    const v5, 0x3f4ccccd    # 0.8f

    mul-float/2addr v2, v5

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 179
    iget-object v1, p0, Lcom/keephealth/android/views/SleepBarChart;->xtimes:[Ljava/lang/String;

    if-eqz v1, :cond_134

    array-length v1, v1

    if-lez v1, :cond_134

    .line 180
    :goto_ff
    iget-object v1, p0, Lcom/keephealth/android/views/SleepBarChart;->xtimes:[Ljava/lang/String;

    array-length v2, v1

    if-ge v4, v2, :cond_134

    if-nez v4, :cond_10e

    .line 182
    iget-object v1, p0, Lcom/keephealth/android/views/SleepBarChart;->centerPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto :goto_121

    .line 183
    :cond_10e
    array-length v1, v1

    sub-int/2addr v1, v3

    if-ne v4, v1, :cond_11a

    .line 184
    iget-object v1, p0, Lcom/keephealth/android/views/SleepBarChart;->centerPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto :goto_121

    .line 186
    :cond_11a
    iget-object v1, p0, Lcom/keephealth/android/views/SleepBarChart;->centerPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 188
    :goto_121
    iget-object v1, p0, Lcom/keephealth/android/views/SleepBarChart;->xtimes:[Ljava/lang/String;

    aget-object v1, v1, v4

    int-to-float v2, v4

    mul-float/2addr v2, v0

    iget v5, p0, Lcom/keephealth/android/views/SleepBarChart;->xOffSet:F

    add-float/2addr v2, v5

    iget v5, p0, Lcom/keephealth/android/views/SleepBarChart;->endHeight:F

    iget-object v9, p0, Lcom/keephealth/android/views/SleepBarChart;->centerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v5, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_ff

    .line 193
    :cond_134
    iget-object v0, p0, Lcom/keephealth/android/views/SleepBarChart;->centerPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 194
    iget v0, p0, Lcom/keephealth/android/views/SleepBarChart;->xOffSet:F

    mul-float/2addr v0, v6

    iget v1, p0, Lcom/keephealth/android/views/SleepBarChart;->startHeight:F

    iget-object v2, p0, Lcom/keephealth/android/views/SleepBarChart;->centerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v0, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 195
    iget-object v0, p0, Lcom/keephealth/android/views/SleepBarChart;->centerPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 196
    iget v0, p0, Lcom/keephealth/android/views/SleepBarChart;->w:I

    int-to-float v0, v0

    iget v1, p0, Lcom/keephealth/android/views/SleepBarChart;->xOffSet:F

    mul-float/2addr v1, v6

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/keephealth/android/views/SleepBarChart;->startHeight:F

    iget-object v2, p0, Lcom/keephealth/android/views/SleepBarChart;->centerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v8, v0, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 199
    invoke-direct {p0, p1}, Lcom/keephealth/android/views/SleepBarChart;->drawSleepBar(Landroid/graphics/Canvas;)V

    goto :goto_190

    .line 202
    :cond_15e
    iget-object v0, p0, Lcom/keephealth/android/views/SleepBarChart;->centerPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/keephealth/android/views/SleepBarChart;->textColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 203
    iget-object v0, p0, Lcom/keephealth/android/views/SleepBarChart;->centerPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/keephealth/android/views/SleepBarChart;->xLabelTextSize:F

    const/high16 v2, 0x3fc00000    # 1.5f

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 204
    iget-object v0, p0, Lcom/keephealth/android/views/SleepBarChart;->centerPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 205
    invoke-virtual {p0}, Lcom/keephealth/android/views/SleepBarChart;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1005ba

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/views/SleepBarChart;->w:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/keephealth/android/views/SleepBarChart;->h:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/keephealth/android/views/SleepBarChart;->centerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 212
    :goto_190
    iget v8, p0, Lcom/keephealth/android/views/SleepBarChart;->xOffSet:F

    iget v0, p0, Lcom/keephealth/android/views/SleepBarChart;->endHeight:F

    iget v1, p0, Lcom/keephealth/android/views/SleepBarChart;->xBarHeight:F

    sub-float v9, v0, v1

    iget v2, p0, Lcom/keephealth/android/views/SleepBarChart;->w:I

    int-to-float v2, v2

    sub-float v10, v2, v8

    sub-float v11, v0, v1

    iget-object v12, p0, Lcom/keephealth/android/views/SleepBarChart;->centerPaint:Landroid/graphics/Paint;

    move-object v7, p1

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 215
    iget v0, p0, Lcom/keephealth/android/views/SleepBarChart;->xOffSet:F

    mul-float v8, v0, v6

    iget v1, p0, Lcom/keephealth/android/views/SleepBarChart;->endHeight:F

    iget v2, p0, Lcom/keephealth/android/views/SleepBarChart;->xBarHeight:F

    sub-float v9, v1, v2

    mul-float v10, v0, v6

    iget v11, p0, Lcom/keephealth/android/views/SleepBarChart;->startHeight:F

    iget-object v12, p0, Lcom/keephealth/android/views/SleepBarChart;->centerPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 216
    iget v0, p0, Lcom/keephealth/android/views/SleepBarChart;->w:I

    int-to-float v1, v0

    iget v2, p0, Lcom/keephealth/android/views/SleepBarChart;->xOffSet:F

    mul-float v3, v2, v6

    sub-float v8, v1, v3

    iget v1, p0, Lcom/keephealth/android/views/SleepBarChart;->endHeight:F

    iget v3, p0, Lcom/keephealth/android/views/SleepBarChart;->xBarHeight:F

    sub-float v9, v1, v3

    int-to-float v0, v0

    mul-float/2addr v2, v6

    sub-float v10, v0, v2

    iget v11, p0, Lcom/keephealth/android/views/SleepBarChart;->startHeight:F

    iget-object v12, p0, Lcom/keephealth/android/views/SleepBarChart;->centerPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawSleepBar(Landroid/graphics/Canvas;)V
    .registers 16

    .line 225
    iget v0, p0, Lcom/keephealth/android/views/SleepBarChart;->xOffSet:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v2, v0, v1

    .line 226
    iget v3, p0, Lcom/keephealth/android/views/SleepBarChart;->w:I

    int-to-float v3, v3

    mul-float/2addr v0, v1

    sub-float/2addr v3, v0

    .line 227
    iget v0, p0, Lcom/keephealth/android/views/SleepBarChart;->startHeight:F

    const/high16 v4, 0x40400000    # 3.0f

    iget v5, p0, Lcom/keephealth/android/views/SleepBarChart;->yOffSet:F

    mul-float/2addr v5, v4

    add-float/2addr v0, v5

    .line 228
    iget v4, p0, Lcom/keephealth/android/views/SleepBarChart;->endHeight:F

    iget v5, p0, Lcom/keephealth/android/views/SleepBarChart;->xBarHeight:F

    sub-float/2addr v4, v5

    sub-float/2addr v3, v2

    sub-float v5, v4, v0

    .line 232
    iget-object v6, p0, Lcom/keephealth/android/views/SleepBarChart;->sleepData:Lcom/keephealth/android/greendao/bean/HealthSleep;

    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getTotalSleepMinutes()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v3, v6

    .line 234
    iget-object v6, p0, Lcom/keephealth/android/views/SleepBarChart;->sleepPaint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    const/4 v12, 0x0

    move v13, v12

    .line 235
    :goto_2c
    iget-object v6, p0, Lcom/keephealth/android/views/SleepBarChart;->sleepItems:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v13, v6, :cond_c2

    .line 237
    iget-object v6, p0, Lcom/keephealth/android/views/SleepBarChart;->sleepItems:Ljava/util/List;

    invoke-interface {v6, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    .line 238
    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v7

    const/4 v8, 0x4

    const/high16 v9, 0x41a00000    # 20.0f

    if-ne v7, v8, :cond_55

    .line 239
    iget-object v7, p0, Lcom/keephealth/android/views/SleepBarChart;->sleepPaint:Landroid/graphics/Paint;

    iget-object v8, p0, Lcom/keephealth/android/views/SleepBarChart;->colors:[I

    aget v8, v8, v12

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v7, 0x41200000    # 10.0f

    :goto_50
    mul-float/2addr v7, v5

    div-float/2addr v7, v9

    add-float/2addr v7, v0

    :goto_53
    move v10, v7

    goto :goto_7e

    .line 241
    :cond_55
    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_69

    .line 242
    iget-object v7, p0, Lcom/keephealth/android/views/SleepBarChart;->sleepPaint:Landroid/graphics/Paint;

    iget-object v8, p0, Lcom/keephealth/android/views/SleepBarChart;->colors:[I

    const/4 v10, 0x1

    aget v8, v8, v10

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v7, 0x40c00000    # 6.0f

    goto :goto_50

    .line 244
    :cond_69
    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v7

    const/4 v10, 0x3

    if-ne v7, v10, :cond_7c

    .line 245
    iget-object v7, p0, Lcom/keephealth/android/views/SleepBarChart;->sleepPaint:Landroid/graphics/Paint;

    iget-object v10, p0, Lcom/keephealth/android/views/SleepBarChart;->colors:[I

    aget v8, v10, v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v7, 0x3f800000    # 1.0f

    goto :goto_50

    :cond_7c
    const/4 v7, 0x0

    goto :goto_53

    .line 248
    :goto_7e
    iget-object v7, p0, Lcom/keephealth/android/views/SleepBarChart;->sleepPaint:Landroid/graphics/Paint;

    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getOffsetMinute()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v3

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    if-nez v13, :cond_90

    .line 250
    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getOffsetMinute()I

    move-result v6

    goto :goto_a6

    .line 252
    :cond_90
    iget-object v7, p0, Lcom/keephealth/android/views/SleepBarChart;->sleepItems:Ljava/util/List;

    add-int/lit8 v8, v13, -0x1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    invoke-virtual {v7}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getOffsetMinute()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v3

    div-float/2addr v7, v1

    add-float/2addr v2, v7

    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getOffsetMinute()I

    move-result v6

    :goto_a6
    int-to-float v6, v6

    mul-float/2addr v6, v3

    div-float/2addr v6, v1

    add-float/2addr v2, v6

    .line 254
    iget v6, p0, Lcom/keephealth/android/views/SleepBarChart;->w:I

    int-to-float v6, v6

    iget v7, p0, Lcom/keephealth/android/views/SleepBarChart;->xOffSet:F

    mul-float/2addr v7, v1

    sub-float/2addr v6, v7

    cmpg-float v6, v2, v6

    if-gtz v6, :cond_be

    .line 255
    iget-object v11, p0, Lcom/keephealth/android/views/SleepBarChart;->sleepPaint:Landroid/graphics/Paint;

    move-object v6, p1

    move v7, v2

    move v8, v4

    move v9, v2

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_be
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_2c

    :cond_c2
    return-void
.end method

.method private drawTime(Landroid/graphics/Canvas;)V
    .registers 8

    .line 267
    iget-object v0, p0, Lcom/keephealth/android/views/SleepBarChart;->bottomPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 268
    iget v0, p0, Lcom/keephealth/android/views/SleepBarChart;->timeTextSize:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v0, v2

    .line 269
    iget-object v3, p0, Lcom/keephealth/android/views/SleepBarChart;->bottomPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 270
    iget v3, p0, Lcom/keephealth/android/views/SleepBarChart;->screenWidth:I

    const/16 v4, 0x2d0

    if-ne v3, v4, :cond_1d

    .line 271
    iget v0, p0, Lcom/keephealth/android/views/SleepBarChart;->timeTextSize:F

    const v3, 0x3fcccccd    # 1.6f

    :goto_1b
    mul-float/2addr v0, v3

    goto :goto_25

    :cond_1d
    if-ge v3, v4, :cond_25

    .line 273
    iget v0, p0, Lcom/keephealth/android/views/SleepBarChart;->timeTextSize:F

    const v3, 0x3f99999a    # 1.2f

    goto :goto_1b

    .line 276
    :cond_25
    :goto_25
    iget-object v3, p0, Lcom/keephealth/android/views/SleepBarChart;->sleepTimes:[I

    const/4 v4, 0x0

    aget v4, v3, v4

    const/4 v5, 0x1

    .line 277
    aget v3, v3, v5

    .line 278
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v4, v3}, Lcom/keephealth/android/views/SleepBarChart;->getTotalSleepTimeSpanText(II)Landroid/text/SpannableString;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 280
    iget-object v4, p0, Lcom/keephealth/android/views/SleepBarChart;->bottomPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 281
    iget-object v4, p0, Lcom/keephealth/android/views/SleepBarChart;->bottomPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 282
    iget-object v1, p0, Lcom/keephealth/android/views/SleepBarChart;->bottomPaint:Landroid/graphics/Paint;

    const/high16 v4, 0x3fc00000    # 1.5f

    mul-float/2addr v0, v4

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 283
    iget-object v0, p0, Lcom/keephealth/android/views/SleepBarChart;->bottomPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->ascent()F

    move-result v0

    iget-object v1, p0, Lcom/keephealth/android/views/SleepBarChart;->bottomPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->descent()F

    move-result v1

    add-float/2addr v0, v1

    .line 284
    iget v1, p0, Lcom/keephealth/android/views/SleepBarChart;->w:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v4, p0, Lcom/keephealth/android/views/SleepBarChart;->h:I

    int-to-float v4, v4

    div-float/2addr v0, v2

    add-float/2addr v4, v0

    iget-object v2, p0, Lcom/keephealth/android/views/SleepBarChart;->bottomPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v1, v4, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 287
    iget-object p1, p0, Lcom/keephealth/android/views/SleepBarChart;->bottomPaint:Landroid/graphics/Paint;

    invoke-static {p1, v3}, Lcom/keephealth/android/util/ViewUtil;->getTextRectHeight(Landroid/graphics/Paint;Ljava/lang/String;)F

    move-result p1

    sub-float/2addr p1, v0

    iput p1, p0, Lcom/keephealth/android/views/SleepBarChart;->bottomHeight:F

    return-void
.end method

.method private drawTitle(Landroid/graphics/Canvas;)V
    .registers 6

    .line 297
    iget-object v0, p0, Lcom/keephealth/android/views/SleepBarChart;->sleepData:Lcom/keephealth/android/greendao/bean/HealthSleep;

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/keephealth/android/views/SleepBarChart;->sleepItems:Ljava/util/List;

    if-eqz v0, :cond_30

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_30

    .line 298
    iget-object v0, p0, Lcom/keephealth/android/views/SleepBarChart;->topPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 299
    iget-object v0, p0, Lcom/keephealth/android/views/SleepBarChart;->topBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/keephealth/android/views/SleepBarChart;->topWidth:F

    .line 300
    iget-object v1, p0, Lcom/keephealth/android/views/SleepBarChart;->topBitmap:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/keephealth/android/views/SleepBarChart;->w:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v0, v3

    sub-float/2addr v2, v0

    iget v0, p0, Lcom/keephealth/android/views/SleepBarChart;->titleSpan:F

    iget-object v3, p0, Lcom/keephealth/android/views/SleepBarChart;->topPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 303
    :cond_30
    iget-object p1, p0, Lcom/keephealth/android/views/SleepBarChart;->topBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    int-to-float p1, p1

    iget v0, p0, Lcom/keephealth/android/views/SleepBarChart;->titleSpan:F

    add-float/2addr p1, v0

    iput p1, p0, Lcom/keephealth/android/views/SleepBarChart;->topHeight:F

    return-void
.end method

.method private getStartAndEndTime(Lcom/keephealth/android/greendao/bean/HealthSleep;)[I
    .registers 4

    .line 352
    invoke-virtual {p1}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getSleepEndedTimeH()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3c

    invoke-virtual {p1}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getSleepEndedTimeM()I

    move-result v1

    add-int/2addr v0, v1

    .line 353
    invoke-virtual {p1}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getTotalSleepMinutes()I

    move-result p1

    if-ge v0, p1, :cond_13

    add-int/lit16 v0, v0, 0x5a0

    :cond_13
    sub-int p1, v0, p1

    .line 359
    filled-new-array {p1, v0}, [I

    move-result-object p1

    return-object p1
.end method

.method private getTotalSleepTimeSpanText(II)Landroid/text/SpannableString;
    .registers 9

    .line 330
    invoke-virtual {p0}, Lcom/keephealth/android/views/SleepBarChart;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10076d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 331
    invoke-virtual {p0}, Lcom/keephealth/android/views/SleepBarChart;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100775

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 332
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 333
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 335
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v3, ""

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    .line 337
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 338
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    sub-int p2, v0, p2

    .line 339
    new-instance v1, Landroid/text/style/RelativeSizeSpan;

    const v3, 0x3faaaaab

    invoke-direct {v1, v3}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    const/4 v4, 0x0

    const/16 v5, 0x21

    invoke-virtual {v2, v1, v4, p1, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 340
    new-instance p1, Landroid/text/style/RelativeSizeSpan;

    invoke-direct {p1, v3}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {v2, p1, p2, v0, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v2
.end method

.method private initPaint()V
    .registers 3

    .line 95
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/keephealth/android/views/SleepBarChart;->topPaint:Landroid/graphics/Paint;

    .line 97
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/keephealth/android/views/SleepBarChart;->centerPaint:Landroid/graphics/Paint;

    .line 99
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/keephealth/android/views/SleepBarChart;->sleepPaint:Landroid/graphics/Paint;

    .line 101
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/keephealth/android/views/SleepBarChart;->bottomPaint:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 3

    .line 116
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 118
    iget v0, p0, Lcom/keephealth/android/views/SleepBarChart;->h:I

    div-int/lit8 v0, v0, 0xf

    int-to-float v0, v0

    iput v0, p0, Lcom/keephealth/android/views/SleepBarChart;->titleSpan:F

    .line 121
    invoke-direct {p0, p1}, Lcom/keephealth/android/views/SleepBarChart;->drawTitle(Landroid/graphics/Canvas;)V

    .line 124
    iget-object v0, p0, Lcom/keephealth/android/views/SleepBarChart;->sleepData:Lcom/keephealth/android/greendao/bean/HealthSleep;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/keephealth/android/views/SleepBarChart;->sleepItems:Ljava/util/List;

    if-eqz v0, :cond_1e

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1e

    .line 125
    invoke-direct {p0, p1}, Lcom/keephealth/android/views/SleepBarChart;->drawTime(Landroid/graphics/Canvas;)V

    .line 129
    :cond_1e
    invoke-direct {p0, p1}, Lcom/keephealth/android/views/SleepBarChart;->drawCenterData(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 5

    .line 107
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 109
    iput p1, p0, Lcom/keephealth/android/views/SleepBarChart;->w:I

    .line 110
    iput p2, p0, Lcom/keephealth/android/views/SleepBarChart;->h:I

    return-void
.end method

.method public setDatas(Lcom/keephealth/android/greendao/bean/HealthSleep;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/keephealth/android/greendao/bean/HealthSleep;",
            "Ljava/util/List<",
            "Lcom/keephealth/android/greendao/bean/HealthSleepItem;",
            ">;)V"
        }
    .end annotation

    .line 307
    iput-object p1, p0, Lcom/keephealth/android/views/SleepBarChart;->sleepData:Lcom/keephealth/android/greendao/bean/HealthSleep;

    .line 308
    iput-object p2, p0, Lcom/keephealth/android/views/SleepBarChart;->sleepItems:Ljava/util/List;

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_1d

    .line 311
    iget-object v1, p0, Lcom/keephealth/android/views/SleepBarChart;->sleepTimes:[I

    invoke-virtual {p1}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getTotalSleepMinutes()I

    move-result v2

    div-int/lit8 v2, v2, 0x3c

    aput v2, v1, v0

    .line 312
    iget-object v0, p0, Lcom/keephealth/android/views/SleepBarChart;->sleepTimes:[I

    invoke-virtual {p1}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getTotalSleepMinutes()I

    move-result p1

    rem-int/lit8 p1, p1, 0x3c

    aput p1, v0, p2

    goto :goto_23

    .line 315
    :cond_1d
    iget-object p1, p0, Lcom/keephealth/android/views/SleepBarChart;->sleepTimes:[I

    aput v0, p1, v0

    .line 316
    aput v0, p1, p2

    .line 319
    :goto_23
    invoke-virtual {p0}, Lcom/keephealth/android/views/SleepBarChart;->invalidate()V

    return-void
.end method
