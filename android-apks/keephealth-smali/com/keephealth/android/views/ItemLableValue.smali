.class public Lcom/keephealth/android/views/ItemLableValue;
.super Landroid/widget/RelativeLayout;
.source "ItemLableValue.java"


# instance fields
.field private background:Landroid/graphics/drawable/Drawable;

.field protected bottomLineColor:I

.field private context:Landroid/content/Context;

.field private hasBottomLine:Z

.field private hasTopLine:Z

.field private has_all_line:Z

.field private ivRoad:Landroid/widget/ImageView;

.field private lable:Ljava/lang/String;

.field private lableView:Landroid/widget/TextView;

.field private layoutBase:Landroid/widget/RelativeLayout;

.field private onClick:Landroid/view/View$OnClickListener;

.field protected paint:Landroid/graphics/Paint;

.field public rightIv:Landroid/view/View;

.field private targetActivty:Ljava/lang/String;

.field protected topLineColor:I

.field private value:Ljava/lang/String;

.field public valueView:Lcom/keephealth/android/views/ValueStateTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 56
    invoke-direct {p0, p1, v1, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 168
    new-instance v0, Lcom/keephealth/android/views/ItemLableValue$1;

    invoke-direct {v0, p0}, Lcom/keephealth/android/views/ItemLableValue$1;-><init>(Lcom/keephealth/android/views/ItemLableValue;)V

    iput-object v0, p0, Lcom/keephealth/android/views/ItemLableValue;->onClick:Landroid/view/View$OnClickListener;

    .line 57
    invoke-virtual {p0}, Lcom/keephealth/android/views/ItemLableValue;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_13

    return-void

    .line 58
    :cond_13
    invoke-virtual {p0, p1, v1}, Lcom/keephealth/android/views/ItemLableValue;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 61
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 168
    new-instance v0, Lcom/keephealth/android/views/ItemLableValue$1;

    invoke-direct {v0, p0}, Lcom/keephealth/android/views/ItemLableValue$1;-><init>(Lcom/keephealth/android/views/ItemLableValue;)V

    iput-object v0, p0, Lcom/keephealth/android/views/ItemLableValue;->onClick:Landroid/view/View$OnClickListener;

    .line 62
    invoke-virtual {p0}, Lcom/keephealth/android/views/ItemLableValue;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_12

    return-void

    .line 63
    :cond_12
    invoke-virtual {p0, p1, p2}, Lcom/keephealth/android/views/ItemLableValue;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 67
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 168
    new-instance p3, Lcom/keephealth/android/views/ItemLableValue$1;

    invoke-direct {p3, p0}, Lcom/keephealth/android/views/ItemLableValue$1;-><init>(Lcom/keephealth/android/views/ItemLableValue;)V

    iput-object p3, p0, Lcom/keephealth/android/views/ItemLableValue;->onClick:Landroid/view/View$OnClickListener;

    .line 68
    invoke-virtual {p0}, Lcom/keephealth/android/views/ItemLableValue;->isInEditMode()Z

    move-result p3

    if-eqz p3, :cond_11

    return-void

    .line 69
    :cond_11
    invoke-virtual {p0, p1, p2}, Lcom/keephealth/android/views/ItemLableValue;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Lcom/keephealth/android/views/ItemLableValue;)Ljava/lang/String;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/keephealth/android/views/ItemLableValue;->targetActivty:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public getTextView()Landroid/view/View;
    .registers 2

    .line 259
    iget-object v0, p0, Lcom/keephealth/android/views/ItemLableValue;->lableView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    .line 208
    iget-object v0, p0, Lcom/keephealth/android/views/ItemLableValue;->valueView:Lcom/keephealth/android/views/ValueStateTextView;

    invoke-virtual {v0}, Lcom/keephealth/android/views/ValueStateTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValueView()Lcom/keephealth/android/views/ValueStateTextView;
    .registers 2

    .line 267
    iget-object v0, p0, Lcom/keephealth/android/views/ItemLableValue;->valueView:Lcom/keephealth/android/views/ValueStateTextView;

    return-object v0
.end method

.method protected init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 9

    .line 73
    iput-object p1, p0, Lcom/keephealth/android/views/ItemLableValue;->context:Landroid/content/Context;

    .line 74
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0147

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const v0, 0x7f0902f6

    .line 75
    invoke-virtual {p0, v0}, Lcom/keephealth/android/views/ItemLableValue;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keephealth/android/views/ItemLableValue;->lableView:Landroid/widget/TextView;

    const v0, 0x7f0907b0

    .line 76
    invoke-virtual {p0, v0}, Lcom/keephealth/android/views/ItemLableValue;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/ValueStateTextView;

    iput-object v0, p0, Lcom/keephealth/android/views/ItemLableValue;->valueView:Lcom/keephealth/android/views/ValueStateTextView;

    const v0, 0x7f0902fd

    .line 77
    invoke-virtual {p0, v0}, Lcom/keephealth/android/views/ItemLableValue;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/keephealth/android/views/ItemLableValue;->layoutBase:Landroid/widget/RelativeLayout;

    const v0, 0x7f0902c7

    .line 78
    invoke-virtual {p0, v0}, Lcom/keephealth/android/views/ItemLableValue;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/keephealth/android/views/ItemLableValue;->ivRoad:Landroid/widget/ImageView;

    const v0, 0x7f09032b

    .line 79
    invoke-virtual {p0, v0}, Lcom/keephealth/android/views/ItemLableValue;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 81
    sget-object v1, Lcom/keephealth/android/R$styleable;->ItemLableValue:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/16 p2, 0x9

    .line 83
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/keephealth/android/views/ItemLableValue;->lable:Ljava/lang/String;

    const/16 p2, 0x12

    .line 84
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/keephealth/android/views/ItemLableValue;->value:Ljava/lang/String;

    const/16 p2, 0xe

    .line 85
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/keephealth/android/views/ItemLableValue;->targetActivty:Ljava/lang/String;

    .line 86
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/keephealth/android/views/ItemLableValue;->background:Landroid/graphics/drawable/Drawable;

    const/16 p2, 0x11

    const/4 v1, 0x0

    .line 91
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    const/16 v3, 0xb

    const/16 v4, 0xc

    .line 92
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    const/4 v4, 0x4

    .line 93
    invoke-virtual {p1, v4, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/keephealth/android/views/ItemLableValue;->has_all_line:Z

    const/4 v4, 0x5

    .line 94
    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/keephealth/android/views/ItemLableValue;->setHasBottomLine(Z)V

    const/4 v2, 0x6

    .line 95
    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/keephealth/android/views/ItemLableValue;->setHasTopLine(Z)V

    .line 96
    invoke-virtual {p0}, Lcom/keephealth/android/views/ItemLableValue;->isHasBottomLine()Z

    move-result v2

    const v4, 0x7f0600a0

    if-eqz v2, :cond_a7

    .line 97
    invoke-virtual {p0}, Lcom/keephealth/android/views/ItemLableValue;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    const/4 v5, 0x2

    invoke-virtual {p1, v5, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/keephealth/android/views/ItemLableValue;->bottomLineColor:I

    .line 98
    invoke-virtual {p0}, Lcom/keephealth/android/views/ItemLableValue;->initDraw()V

    .line 100
    :cond_a7
    iget-object v2, p0, Lcom/keephealth/android/views/ItemLableValue;->background:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_b1

    .line 101
    iget-object v5, p0, Lcom/keephealth/android/views/ItemLableValue;->layoutBase:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v2}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_b7

    .line 103
    :cond_b1
    iget-object v2, p0, Lcom/keephealth/android/views/ItemLableValue;->layoutBase:Landroid/widget/RelativeLayout;

    const/4 v5, -0x1

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 105
    :goto_b7
    invoke-virtual {p0}, Lcom/keephealth/android/views/ItemLableValue;->isHasTopLine()Z

    move-result v2

    if-eqz v2, :cond_d0

    .line 106
    invoke-virtual {p0}, Lcom/keephealth/android/views/ItemLableValue;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    const/16 v4, 0xf

    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/keephealth/android/views/ItemLableValue;->topLineColor:I

    .line 107
    invoke-virtual {p0}, Lcom/keephealth/android/views/ItemLableValue;->initTopDraw()V

    :cond_d0
    const/16 v2, 0xd

    .line 110
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/16 v4, 0xa

    .line 111
    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-nez v4, :cond_e3

    const/16 v5, 0x8

    .line 113
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 115
    :cond_e3
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 116
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v2, :cond_fc

    .line 119
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    invoke-virtual {v2, v1, v1, p1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 120
    iget-object p1, p0, Lcom/keephealth/android/views/ItemLableValue;->valueView:Lcom/keephealth/android/views/ValueStateTextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, v2, v0}, Lcom/keephealth/android/views/ValueStateTextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_fc
    if-eqz p2, :cond_103

    .line 123
    iget-object p1, p0, Lcom/keephealth/android/views/ItemLableValue;->valueView:Lcom/keephealth/android/views/ValueStateTextView;

    invoke-virtual {p1, p2}, Lcom/keephealth/android/views/ValueStateTextView;->setTextColor(I)V

    .line 126
    :cond_103
    iget-object p1, p0, Lcom/keephealth/android/views/ItemLableValue;->lableView:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/keephealth/android/views/ItemLableValue;->lable:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    iget-object p1, p0, Lcom/keephealth/android/views/ItemLableValue;->valueView:Lcom/keephealth/android/views/ValueStateTextView;

    iget-object p2, p0, Lcom/keephealth/android/views/ItemLableValue;->value:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/keephealth/android/views/ValueStateTextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    iget-object p1, p0, Lcom/keephealth/android/views/ItemLableValue;->valueView:Lcom/keephealth/android/views/ValueStateTextView;

    int-to-float p2, v3

    invoke-virtual {p1, p2}, Lcom/keephealth/android/views/ValueStateTextView;->setTextSize(F)V

    .line 129
    iget-object p1, p0, Lcom/keephealth/android/views/ItemLableValue;->targetActivty:Ljava/lang/String;

    if-eqz p1, :cond_120

    .line 130
    iget-object p1, p0, Lcom/keephealth/android/views/ItemLableValue;->onClick:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, p1}, Lcom/keephealth/android/views/ItemLableValue;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_120
    return-void
.end method

.method protected initDraw()V
    .registers 3

    const/4 v0, 0x0

    .line 135
    invoke-virtual {p0, v0}, Lcom/keephealth/android/views/ItemLableValue;->setWillNotDraw(Z)V

    .line 136
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/keephealth/android/views/ItemLableValue;->paint:Landroid/graphics/Paint;

    .line 137
    iget v1, p0, Lcom/keephealth/android/views/ItemLableValue;->bottomLineColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 138
    iget-object v0, p0, Lcom/keephealth/android/views/ItemLableValue;->paint:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method protected initTopDraw()V
    .registers 3

    const/4 v0, 0x0

    .line 143
    invoke-virtual {p0, v0}, Lcom/keephealth/android/views/ItemLableValue;->setWillNotDraw(Z)V

    .line 144
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/keephealth/android/views/ItemLableValue;->paint:Landroid/graphics/Paint;

    .line 145
    iget v1, p0, Lcom/keephealth/android/views/ItemLableValue;->topLineColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 146
    iget-object v0, p0, Lcom/keephealth/android/views/ItemLableValue;->paint:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method public isEnable()Z
    .registers 2

    .line 204
    iget-object v0, p0, Lcom/keephealth/android/views/ItemLableValue;->valueView:Lcom/keephealth/android/views/ValueStateTextView;

    invoke-virtual {v0}, Lcom/keephealth/android/views/ValueStateTextView;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public isHasBottomLine()Z
    .registers 2

    .line 241
    iget-boolean v0, p0, Lcom/keephealth/android/views/ItemLableValue;->hasBottomLine:Z

    return v0
.end method

.method public isHasTopLine()Z
    .registers 2

    .line 250
    iget-boolean v0, p0, Lcom/keephealth/android/views/ItemLableValue;->hasTopLine:Z

    return v0
.end method

.method public isOpen()Z
    .registers 2

    .line 216
    iget-object v0, p0, Lcom/keephealth/android/views/ItemLableValue;->valueView:Lcom/keephealth/android/views/ValueStateTextView;

    invoke-virtual {v0}, Lcom/keephealth/android/views/ValueStateTextView;->isOpen()Z

    move-result v0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 10

    .line 151
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 152
    invoke-virtual {p0}, Lcom/keephealth/android/views/ItemLableValue;->isHasBottomLine()Z

    move-result v0

    const/high16 v1, 0x420c0000    # 35.0f

    if-eqz v0, :cond_40

    .line 153
    iget-boolean v0, p0, Lcom/keephealth/android/views/ItemLableValue;->has_all_line:Z

    if-eqz v0, :cond_26

    .line 154
    invoke-virtual {p0}, Lcom/keephealth/android/views/ItemLableValue;->getMeasuredHeight()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Lcom/keephealth/android/views/ItemLableValue;->getMeasuredWidth()I

    move-result v0

    int-to-float v5, v0

    invoke-virtual {p0}, Lcom/keephealth/android/views/ItemLableValue;->getMeasuredHeight()I

    move-result v0

    int-to-float v6, v0

    iget-object v7, p0, Lcom/keephealth/android/views/ItemLableValue;->paint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_40

    .line 156
    :cond_26
    invoke-static {v1}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(F)I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/keephealth/android/views/ItemLableValue;->getMeasuredHeight()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Lcom/keephealth/android/views/ItemLableValue;->getMeasuredWidth()I

    move-result v0

    int-to-float v5, v0

    invoke-virtual {p0}, Lcom/keephealth/android/views/ItemLableValue;->getMeasuredHeight()I

    move-result v0

    int-to-float v6, v0

    iget-object v7, p0, Lcom/keephealth/android/views/ItemLableValue;->paint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 159
    :cond_40
    :goto_40
    invoke-virtual {p0}, Lcom/keephealth/android/views/ItemLableValue;->isHasTopLine()Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 160
    iget-boolean v0, p0, Lcom/keephealth/android/views/ItemLableValue;->has_all_line:Z

    if-eqz v0, :cond_59

    .line 161
    invoke-virtual {p0}, Lcom/keephealth/android/views/ItemLableValue;->getMeasuredWidth()I

    move-result v0

    int-to-float v4, v0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/keephealth/android/views/ItemLableValue;->paint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_6b

    .line 163
    :cond_59
    invoke-static {v1}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(F)I

    move-result v0

    int-to-float v2, v0

    invoke-virtual {p0}, Lcom/keephealth/android/views/ItemLableValue;->getMeasuredWidth()I

    move-result v0

    int-to-float v4, v0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/keephealth/android/views/ItemLableValue;->paint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_6b
    :goto_6b
    return-void
.end method

.method public setEnable(Z)V
    .registers 3

    .line 197
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 198
    iget-object v0, p0, Lcom/keephealth/android/views/ItemLableValue;->valueView:Lcom/keephealth/android/views/ValueStateTextView;

    invoke-virtual {v0, p1}, Lcom/keephealth/android/views/ValueStateTextView;->setEnabled(Z)V

    return-void
.end method

.method public setHasBottomLine(Z)V
    .registers 2

    .line 245
    iput-boolean p1, p0, Lcom/keephealth/android/views/ItemLableValue;->hasBottomLine:Z

    .line 246
    invoke-virtual {p0}, Lcom/keephealth/android/views/ItemLableValue;->invalidate()V

    return-void
.end method

.method public setHasTopLine(Z)V
    .registers 2

    .line 254
    iput-boolean p1, p0, Lcom/keephealth/android/views/ItemLableValue;->hasTopLine:Z

    .line 255
    invoke-virtual {p0}, Lcom/keephealth/android/views/ItemLableValue;->invalidate()V

    return-void
.end method

.method public setLable(Ljava/lang/String;)V
    .registers 3

    .line 263
    iget-object v0, p0, Lcom/keephealth/android/views/ItemLableValue;->lableView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setLableColor(I)V
    .registers 3

    .line 271
    iget-object v0, p0, Lcom/keephealth/android/views/ItemLableValue;->lableView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public setOpen(Z)V
    .registers 3

    .line 220
    iget-object v0, p0, Lcom/keephealth/android/views/ItemLableValue;->valueView:Lcom/keephealth/android/views/ValueStateTextView;

    invoke-virtual {v0, p1}, Lcom/keephealth/android/views/ValueStateTextView;->setOpen(Z)V

    .line 221
    iget-object v0, p0, Lcom/keephealth/android/views/ItemLableValue;->valueView:Lcom/keephealth/android/views/ValueStateTextView;

    if-eqz p1, :cond_d

    const p1, 0x7f1004f0

    goto :goto_10

    :cond_d
    const p1, 0x7f1004ef

    :goto_10
    invoke-virtual {v0, p1}, Lcom/keephealth/android/views/ValueStateTextView;->setText(I)V

    return-void
.end method

.method public setRightBitmap(I)V
    .registers 3

    if-eqz p1, :cond_8

    .line 276
    iget-object v0, p0, Lcom/keephealth/android/views/ItemLableValue;->ivRoad:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_e

    .line 278
    :cond_8
    iget-object p1, p0, Lcom/keephealth/android/views/ItemLableValue;->ivRoad:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_e
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .registers 3

    .line 212
    iget-object v0, p0, Lcom/keephealth/android/views/ItemLableValue;->valueView:Lcom/keephealth/android/views/ValueStateTextView;

    invoke-virtual {v0, p1}, Lcom/keephealth/android/views/ValueStateTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setValueColor(I)V
    .registers 3

    .line 237
    iget-object v0, p0, Lcom/keephealth/android/views/ItemLableValue;->valueView:Lcom/keephealth/android/views/ValueStateTextView;

    invoke-virtual {v0, p1}, Lcom/keephealth/android/views/ValueStateTextView;->setTextColor(I)V

    return-void
.end method

.method public setValueState(ZI)V
    .registers 3

    .line 225
    invoke-virtual {p0, p1}, Lcom/keephealth/android/views/ItemLableValue;->setEnable(Z)V

    .line 226
    invoke-virtual {p0, p1}, Lcom/keephealth/android/views/ItemLableValue;->setOpen(Z)V

    .line 227
    iget-object p1, p0, Lcom/keephealth/android/views/ItemLableValue;->valueView:Lcom/keephealth/android/views/ValueStateTextView;

    invoke-virtual {p1, p2}, Lcom/keephealth/android/views/ValueStateTextView;->setText(I)V

    return-void
.end method

.method public setValueState(ZLjava/lang/String;)V
    .registers 3

    .line 231
    invoke-virtual {p0, p1}, Lcom/keephealth/android/views/ItemLableValue;->setEnable(Z)V

    .line 232
    invoke-virtual {p0, p1}, Lcom/keephealth/android/views/ItemLableValue;->setOpen(Z)V

    .line 233
    iget-object p1, p0, Lcom/keephealth/android/views/ItemLableValue;->valueView:Lcom/keephealth/android/views/ValueStateTextView;

    invoke-virtual {p1, p2}, Lcom/keephealth/android/views/ValueStateTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
