.class public Lcom/keephealth/android/views/calendarview/weiget/WeekView;
.super Landroid/view/View;
.source "WeekView.java"


# instance fields
.field private context:Landroid/content/Context;

.field private mPaint:Landroid/graphics/Paint;

.field private weekArray:[Ljava/lang/String;

.field private weekColor:I

.field private weekSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 26
    invoke-direct {p0, p1, v0}, Lcom/keephealth/android/views/calendarview/weiget/WeekView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 30
    invoke-direct {p0, p1, p2, v0}, Lcom/keephealth/android/views/calendarview/weiget/WeekView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    invoke-virtual {p0}, Lcom/keephealth/android/views/calendarview/weiget/WeekView;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f030012

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/keephealth/android/views/calendarview/weiget/WeekView;->weekArray:[Ljava/lang/String;

    const/16 p3, 0xc

    .line 19
    iput p3, p0, Lcom/keephealth/android/views/calendarview/weiget/WeekView;->weekSize:I

    const/high16 p3, -0x1000000

    .line 20
    iput p3, p0, Lcom/keephealth/android/views/calendarview/weiget/WeekView;->weekColor:I

    .line 35
    iput-object p1, p0, Lcom/keephealth/android/views/calendarview/weiget/WeekView;->context:Landroid/content/Context;

    .line 36
    invoke-direct {p0, p2}, Lcom/keephealth/android/views/calendarview/weiget/WeekView;->initAttrs(Landroid/util/AttributeSet;)V

    .line 37
    invoke-direct {p0}, Lcom/keephealth/android/views/calendarview/weiget/WeekView;->initPaint()V

    const/4 p1, -0x1

    .line 38
    invoke-virtual {p0, p1}, Lcom/keephealth/android/views/calendarview/weiget/WeekView;->setBackgroundColor(I)V

    return-void
.end method

.method private initAttrs(Landroid/util/AttributeSet;)V
    .registers 7

    .line 43
    iget-object v0, p0, Lcom/keephealth/android/views/calendarview/weiget/WeekView;->context:Landroid/content/Context;

    sget-object v1, Lcom/keephealth/android/R$styleable;->WeekView:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v1

    .line 44
    :goto_b
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v3

    if-ge v2, v3, :cond_36

    .line 45
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    if-nez v3, :cond_20

    .line 47
    iget v3, p0, Lcom/keephealth/android/views/calendarview/weiget/WeekView;->weekColor:I

    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lcom/keephealth/android/views/calendarview/weiget/WeekView;->weekColor:I

    goto :goto_33

    :cond_20
    const/4 v4, 0x1

    if-ne v3, v4, :cond_2c

    .line 49
    iget v3, p0, Lcom/keephealth/android/views/calendarview/weiget/WeekView;->weekSize:I

    invoke-virtual {p1, v4, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, p0, Lcom/keephealth/android/views/calendarview/weiget/WeekView;->weekSize:I

    goto :goto_33

    :cond_2c
    const/4 v4, 0x2

    if-ne v3, v4, :cond_33

    .line 51
    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_33
    :goto_33
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 54
    :cond_36
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 56
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4f

    .line 57
    const-string p1, "\\."

    invoke-virtual {v0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 58
    array-length v0, p1

    const/4 v2, 0x7

    if-eq v0, v2, :cond_4a

    return-void

    .line 61
    :cond_4a
    iget-object v0, p0, Lcom/keephealth/android/views/calendarview/weiget/WeekView;->weekArray:[Ljava/lang/String;

    invoke-static {p1, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 64
    :cond_4f
    iget-object p1, p0, Lcom/keephealth/android/views/calendarview/weiget/WeekView;->context:Landroid/content/Context;

    iget v0, p0, Lcom/keephealth/android/views/calendarview/weiget/WeekView;->weekSize:I

    invoke-static {p1, v0}, Lcom/keephealth/android/views/calendarview/utils/CalendarUtil;->getTextSize1(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/keephealth/android/views/calendarview/weiget/WeekView;->weekSize:I

    return-void
.end method

.method private initPaint()V
    .registers 3

    .line 69
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/views/calendarview/weiget/WeekView;->mPaint:Landroid/graphics/Paint;

    .line 70
    iget v1, p0, Lcom/keephealth/android/views/calendarview/weiget/WeekView;->weekColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 71
    iget-object v0, p0, Lcom/keephealth/android/views/calendarview/weiget/WeekView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 72
    iget-object v0, p0, Lcom/keephealth/android/views/calendarview/weiget/WeekView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/keephealth/android/views/calendarview/weiget/WeekView;->weekSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 10

    .line 94
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 95
    invoke-virtual {p0}, Lcom/keephealth/android/views/calendarview/weiget/WeekView;->getWidth()I

    move-result v0

    .line 96
    invoke-virtual {p0}, Lcom/keephealth/android/views/calendarview/weiget/WeekView;->getHeight()I

    move-result v1

    .line 97
    div-int/lit8 v0, v0, 0x7

    const/4 v2, 0x0

    .line 99
    :goto_e
    iget-object v3, p0, Lcom/keephealth/android/views/calendarview/weiget/WeekView;->weekArray:[Ljava/lang/String;

    array-length v4, v3

    if-ge v2, v4, :cond_42

    .line 100
    aget-object v3, v3, v2

    .line 101
    iget-object v4, p0, Lcom/keephealth/android/views/calendarview/weiget/WeekView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    float-to-int v4, v4

    mul-int v5, v0, v2

    sub-int v4, v0, v4

    .line 102
    div-int/lit8 v4, v4, 0x2

    add-int/2addr v5, v4

    .line 103
    div-int/lit8 v4, v1, 0x2

    int-to-float v4, v4

    iget-object v6, p0, Lcom/keephealth/android/views/calendarview/weiget/WeekView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->ascent()F

    move-result v6

    iget-object v7, p0, Lcom/keephealth/android/views/calendarview/weiget/WeekView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v7}, Landroid/graphics/Paint;->descent()F

    move-result v7

    add-float/2addr v6, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    sub-float/2addr v4, v6

    float-to-int v4, v4

    int-to-float v5, v5

    int-to-float v4, v4

    .line 104
    iget-object v6, p0, Lcom/keephealth/android/views/calendarview/weiget/WeekView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v5, v4, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_42
    return-void
.end method

.method protected onMeasure(II)V
    .registers 6

    .line 77
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 79
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 80
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    .line 81
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 82
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    const/high16 v2, -0x80000000

    if-ne p2, v2, :cond_1f

    .line 84
    iget-object p2, p0, Lcom/keephealth/android/views/calendarview/weiget/WeekView;->context:Landroid/content/Context;

    const/16 v1, 0x23

    invoke-static {p2, v1}, Lcom/keephealth/android/views/calendarview/utils/CalendarUtil;->getPxSize(Landroid/content/Context;I)I

    move-result v1

    :cond_1f
    if-ne p1, v2, :cond_29

    .line 87
    iget-object p1, p0, Lcom/keephealth/android/views/calendarview/weiget/WeekView;->context:Landroid/content/Context;

    const/16 p2, 0x12c

    invoke-static {p1, p2}, Lcom/keephealth/android/views/calendarview/utils/CalendarUtil;->getPxSize(Landroid/content/Context;I)I

    move-result v0

    .line 89
    :cond_29
    invoke-virtual {p0, v0, v1}, Lcom/keephealth/android/views/calendarview/weiget/WeekView;->setMeasuredDimension(II)V

    return-void
.end method
