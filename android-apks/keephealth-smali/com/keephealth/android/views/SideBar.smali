.class public Lcom/keephealth/android/views/SideBar;
.super Landroid/view/View;
.source "SideBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keephealth/android/views/SideBar$OnTouchingLetterChangedListener;
    }
.end annotation


# instance fields
.field private b:[Ljava/lang/String;

.field private choose:I

.field private mTextDialog:Landroid/widget/TextView;

.field private onTouchingLetterChangedListener:Lcom/keephealth/android/views/SideBar$OnTouchingLetterChangedListener;

.field private paint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 40
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x1a

    .line 19
    new-array p1, p1, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "A"

    aput-object v1, p1, v0

    const/4 v0, 0x1

    const-string v1, "B"

    aput-object v1, p1, v0

    const/4 v0, 0x2

    const-string v1, "C"

    aput-object v1, p1, v0

    const/4 v0, 0x3

    const-string v1, "D"

    aput-object v1, p1, v0

    const/4 v0, 0x4

    const-string v1, "E"

    aput-object v1, p1, v0

    const/4 v0, 0x5

    const-string v1, "F"

    aput-object v1, p1, v0

    const/4 v0, 0x6

    const-string v1, "G"

    aput-object v1, p1, v0

    const/4 v0, 0x7

    const-string v1, "H"

    aput-object v1, p1, v0

    const/16 v0, 0x8

    const-string v1, "I"

    aput-object v1, p1, v0

    const/16 v0, 0x9

    const-string v1, "J"

    aput-object v1, p1, v0

    const/16 v0, 0xa

    const-string v1, "K"

    aput-object v1, p1, v0

    const/16 v0, 0xb

    const-string v1, "L"

    aput-object v1, p1, v0

    const/16 v0, 0xc

    const-string v1, "M"

    aput-object v1, p1, v0

    const/16 v0, 0xd

    const-string v1, "N"

    aput-object v1, p1, v0

    const/16 v0, 0xe

    const-string v1, "O"

    aput-object v1, p1, v0

    const/16 v0, 0xf

    const-string v1, "P"

    aput-object v1, p1, v0

    const/16 v0, 0x10

    const-string v1, "Q"

    aput-object v1, p1, v0

    const/16 v0, 0x11

    const-string v1, "R"

    aput-object v1, p1, v0

    const/16 v0, 0x12

    const-string v1, "S"

    aput-object v1, p1, v0

    const/16 v0, 0x13

    const-string v1, "T"

    aput-object v1, p1, v0

    const/16 v0, 0x14

    const-string v1, "U"

    aput-object v1, p1, v0

    const/16 v0, 0x15

    const-string v1, "V"

    aput-object v1, p1, v0

    const/16 v0, 0x16

    const-string v1, "W"

    aput-object v1, p1, v0

    const/16 v0, 0x17

    const-string v1, "X"

    aput-object v1, p1, v0

    const/16 v0, 0x18

    const-string v1, "Y"

    aput-object v1, p1, v0

    const/16 v0, 0x19

    const-string v1, "Z"

    aput-object v1, p1, v0

    iput-object p1, p0, Lcom/keephealth/android/views/SideBar;->b:[Ljava/lang/String;

    const/4 p1, -0x1

    .line 21
    iput p1, p0, Lcom/keephealth/android/views/SideBar;->choose:I

    .line 23
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/keephealth/android/views/SideBar;->paint:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 36
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p1, 0x1a

    .line 19
    new-array p1, p1, [Ljava/lang/String;

    const/4 p2, 0x0

    const-string v0, "A"

    aput-object v0, p1, p2

    const/4 p2, 0x1

    const-string v0, "B"

    aput-object v0, p1, p2

    const/4 p2, 0x2

    const-string v0, "C"

    aput-object v0, p1, p2

    const/4 p2, 0x3

    const-string v0, "D"

    aput-object v0, p1, p2

    const/4 p2, 0x4

    const-string v0, "E"

    aput-object v0, p1, p2

    const/4 p2, 0x5

    const-string v0, "F"

    aput-object v0, p1, p2

    const/4 p2, 0x6

    const-string v0, "G"

    aput-object v0, p1, p2

    const/4 p2, 0x7

    const-string v0, "H"

    aput-object v0, p1, p2

    const/16 p2, 0x8

    const-string v0, "I"

    aput-object v0, p1, p2

    const/16 p2, 0x9

    const-string v0, "J"

    aput-object v0, p1, p2

    const/16 p2, 0xa

    const-string v0, "K"

    aput-object v0, p1, p2

    const/16 p2, 0xb

    const-string v0, "L"

    aput-object v0, p1, p2

    const/16 p2, 0xc

    const-string v0, "M"

    aput-object v0, p1, p2

    const/16 p2, 0xd

    const-string v0, "N"

    aput-object v0, p1, p2

    const/16 p2, 0xe

    const-string v0, "O"

    aput-object v0, p1, p2

    const/16 p2, 0xf

    const-string v0, "P"

    aput-object v0, p1, p2

    const/16 p2, 0x10

    const-string v0, "Q"

    aput-object v0, p1, p2

    const/16 p2, 0x11

    const-string v0, "R"

    aput-object v0, p1, p2

    const/16 p2, 0x12

    const-string v0, "S"

    aput-object v0, p1, p2

    const/16 p2, 0x13

    const-string v0, "T"

    aput-object v0, p1, p2

    const/16 p2, 0x14

    const-string v0, "U"

    aput-object v0, p1, p2

    const/16 p2, 0x15

    const-string v0, "V"

    aput-object v0, p1, p2

    const/16 p2, 0x16

    const-string v0, "W"

    aput-object v0, p1, p2

    const/16 p2, 0x17

    const-string v0, "X"

    aput-object v0, p1, p2

    const/16 p2, 0x18

    const-string v0, "Y"

    aput-object v0, p1, p2

    const/16 p2, 0x19

    const-string v0, "Z"

    aput-object v0, p1, p2

    iput-object p1, p0, Lcom/keephealth/android/views/SideBar;->b:[Ljava/lang/String;

    const/4 p1, -0x1

    .line 21
    iput p1, p0, Lcom/keephealth/android/views/SideBar;->choose:I

    .line 23
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/keephealth/android/views/SideBar;->paint:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p1, 0x1a

    .line 19
    new-array p1, p1, [Ljava/lang/String;

    const/4 p2, 0x0

    const-string p3, "A"

    aput-object p3, p1, p2

    const/4 p2, 0x1

    const-string p3, "B"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "C"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "D"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "E"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "F"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "G"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "H"

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-string p3, "I"

    aput-object p3, p1, p2

    const/16 p2, 0x9

    const-string p3, "J"

    aput-object p3, p1, p2

    const/16 p2, 0xa

    const-string p3, "K"

    aput-object p3, p1, p2

    const/16 p2, 0xb

    const-string p3, "L"

    aput-object p3, p1, p2

    const/16 p2, 0xc

    const-string p3, "M"

    aput-object p3, p1, p2

    const/16 p2, 0xd

    const-string p3, "N"

    aput-object p3, p1, p2

    const/16 p2, 0xe

    const-string p3, "O"

    aput-object p3, p1, p2

    const/16 p2, 0xf

    const-string p3, "P"

    aput-object p3, p1, p2

    const/16 p2, 0x10

    const-string p3, "Q"

    aput-object p3, p1, p2

    const/16 p2, 0x11

    const-string p3, "R"

    aput-object p3, p1, p2

    const/16 p2, 0x12

    const-string p3, "S"

    aput-object p3, p1, p2

    const/16 p2, 0x13

    const-string p3, "T"

    aput-object p3, p1, p2

    const/16 p2, 0x14

    const-string p3, "U"

    aput-object p3, p1, p2

    const/16 p2, 0x15

    const-string p3, "V"

    aput-object p3, p1, p2

    const/16 p2, 0x16

    const-string p3, "W"

    aput-object p3, p1, p2

    const/16 p2, 0x17

    const-string p3, "X"

    aput-object p3, p1, p2

    const/16 p2, 0x18

    const-string p3, "Y"

    aput-object p3, p1, p2

    const/16 p2, 0x19

    const-string p3, "Z"

    aput-object p3, p1, p2

    iput-object p1, p0, Lcom/keephealth/android/views/SideBar;->b:[Ljava/lang/String;

    const/4 p1, -0x1

    .line 21
    iput p1, p0, Lcom/keephealth/android/views/SideBar;->choose:I

    .line 23
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/keephealth/android/views/SideBar;->paint:Landroid/graphics/Paint;

    return-void
.end method

.method private drawTextInCenter(Landroid/graphics/Canvas;Ljava/lang/String;FF)V
    .registers 8

    .line 92
    iget-object v0, p0, Lcom/keephealth/android/views/SideBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 94
    iget-object v1, p0, Lcom/keephealth/android/views/SideBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontSpacing()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr p4, v1

    .line 96
    iget v1, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    sub-float/2addr p4, v1

    .line 98
    iget v1, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    neg-float v1, v1

    iget v2, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    sub-float/2addr v1, v2

    cmpg-float v1, p4, v1

    if-gez v1, :cond_23

    .line 99
    iget p4, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    neg-float p4, p4

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    sub-float/2addr p4, v0

    .line 102
    :cond_23
    invoke-virtual {p0}, Lcom/keephealth/android/views/SideBar;->getHeight()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p4, v0

    if-lez v0, :cond_31

    .line 103
    invoke-virtual {p0}, Lcom/keephealth/android/views/SideBar;->getHeight()I

    move-result p4

    int-to-float p4, p4

    .line 106
    :cond_31
    iget-object v0, p0, Lcom/keephealth/android/views/SideBar;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 108
    iget-object v0, p0, Lcom/keephealth/android/views/SideBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, p4, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    .line 114
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 115
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 116
    iget v1, p0, Lcom/keephealth/android/views/SideBar;->choose:I

    .line 117
    iget-object v2, p0, Lcom/keephealth/android/views/SideBar;->onTouchingLetterChangedListener:Lcom/keephealth/android/views/SideBar$OnTouchingLetterChangedListener;

    .line 118
    invoke-virtual {p0}, Lcom/keephealth/android/views/SideBar;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr p1, v3

    iget-object v3, p0, Lcom/keephealth/android/views/SideBar;->b:[Ljava/lang/String;

    array-length v4, v3

    int-to-float v4, v4

    mul-float/2addr p1, v4

    float-to-int p1, p1

    const/4 v4, 0x1

    if-eq v0, v4, :cond_40

    if-eq v1, p1, :cond_4e

    if-ltz p1, :cond_4e

    .line 135
    array-length v0, v3

    if-ge p1, v0, :cond_4e

    if-eqz v2, :cond_29

    .line 137
    aget-object v0, v3, p1

    invoke-interface {v2, v0}, Lcom/keephealth/android/views/SideBar$OnTouchingLetterChangedListener;->onTouchingLetterChanged(Ljava/lang/String;)V

    .line 139
    :cond_29
    iget-object v0, p0, Lcom/keephealth/android/views/SideBar;->mTextDialog:Landroid/widget/TextView;

    if-eqz v0, :cond_3a

    .line 140
    iget-object v1, p0, Lcom/keephealth/android/views/SideBar;->b:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    iget-object v0, p0, Lcom/keephealth/android/views/SideBar;->mTextDialog:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 143
    :cond_3a
    iput p1, p0, Lcom/keephealth/android/views/SideBar;->choose:I

    .line 144
    invoke-virtual {p0}, Lcom/keephealth/android/views/SideBar;->invalidate()V

    goto :goto_4e

    :cond_40
    const/4 p1, -0x1

    .line 124
    iput p1, p0, Lcom/keephealth/android/views/SideBar;->choose:I

    .line 125
    invoke-virtual {p0}, Lcom/keephealth/android/views/SideBar;->invalidate()V

    .line 126
    iget-object p1, p0, Lcom/keephealth/android/views/SideBar;->mTextDialog:Landroid/widget/TextView;

    if-eqz p1, :cond_4e

    const/4 v0, 0x4

    .line 127
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_4e
    :goto_4e
    return v4
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 8

    .line 54
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 56
    invoke-virtual {p0}, Lcom/keephealth/android/views/SideBar;->getHeight()I

    move-result v0

    .line 57
    invoke-virtual {p0}, Lcom/keephealth/android/views/SideBar;->getWidth()I

    move-result v1

    int-to-float v0, v0

    .line 59
    iget-object v2, p0, Lcom/keephealth/android/views/SideBar;->b:[Ljava/lang/String;

    array-length v2, v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    const/4 v2, 0x0

    .line 61
    :goto_12
    iget-object v3, p0, Lcom/keephealth/android/views/SideBar;->b:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_63

    .line 62
    iget-object v3, p0, Lcom/keephealth/android/views/SideBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/keephealth/android/views/SideBar;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060113

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 63
    iget-object v3, p0, Lcom/keephealth/android/views/SideBar;->paint:Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 64
    iget-object v3, p0, Lcom/keephealth/android/views/SideBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/keephealth/android/views/SideBar;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0700ad

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 71
    div-int/lit8 v3, v1, 0x2

    int-to-float v3, v3

    iget-object v4, p0, Lcom/keephealth/android/views/SideBar;->paint:Landroid/graphics/Paint;

    iget-object v5, p0, Lcom/keephealth/android/views/SideBar;->b:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    int-to-float v4, v2

    mul-float/2addr v4, v0

    div-float v5, v0, v5

    add-float/2addr v4, v5

    .line 78
    iget-object v5, p0, Lcom/keephealth/android/views/SideBar;->b:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-direct {p0, p1, v5, v3, v4}, Lcom/keephealth/android/views/SideBar;->drawTextInCenter(Landroid/graphics/Canvas;Ljava/lang/String;FF)V

    .line 80
    iget-object v3, p0, Lcom/keephealth/android/views/SideBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->reset()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_63
    return-void
.end method

.method public setB([Ljava/lang/String;)V
    .registers 2

    .line 45
    iput-object p1, p0, Lcom/keephealth/android/views/SideBar;->b:[Ljava/lang/String;

    .line 46
    invoke-virtual {p0}, Lcom/keephealth/android/views/SideBar;->invalidate()V

    return-void
.end method

.method public setOnTouchingLetterChangedListener(Lcom/keephealth/android/views/SideBar$OnTouchingLetterChangedListener;)V
    .registers 2

    .line 159
    iput-object p1, p0, Lcom/keephealth/android/views/SideBar;->onTouchingLetterChangedListener:Lcom/keephealth/android/views/SideBar$OnTouchingLetterChangedListener;

    return-void
.end method

.method public setTextView(Landroid/widget/TextView;)V
    .registers 2

    .line 28
    iput-object p1, p0, Lcom/keephealth/android/views/SideBar;->mTextDialog:Landroid/widget/TextView;

    return-void
.end method
