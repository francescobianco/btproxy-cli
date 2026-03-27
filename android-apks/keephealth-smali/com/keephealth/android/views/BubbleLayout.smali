.class public Lcom/keephealth/android/views/BubbleLayout;
.super Landroid/widget/FrameLayout;
.source "BubbleLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keephealth/android/views/BubbleLayout$Look;,
        Lcom/keephealth/android/views/BubbleLayout$OnClickEdgeListener;
    }
.end annotation


# instance fields
.field private mBottom:I

.field private mBubbleColor:I

.field private mBubblePadding:I

.field private mBubbleRadius:I

.field private mContext:Landroid/content/Context;

.field private mHeight:I

.field private mLeft:I

.field private mListener:Lcom/keephealth/android/views/BubbleLayout$OnClickEdgeListener;

.field private mLook:Lcom/keephealth/android/views/BubbleLayout$Look;

.field private mLookLength:I

.field private mLookPosition:I

.field private mLookWidth:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPaint2:Landroid/graphics/Paint;

.field private mPath:Landroid/graphics/Path;

.field private mPath2:Landroid/graphics/Path;

.field private mRegion:Landroid/graphics/Region;

.field private mRight:I

.field private mShadowColor:I

.field private mShadowRadius:I

.field private mShadowX:I

.field private mShadowY:I

.field private mTop:I

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 83
    invoke-direct {p0, p1, v0}, Lcom/keephealth/android/views/BubbleLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 88
    invoke-direct {p0, p1, p2, v0}, Lcom/keephealth/android/views/BubbleLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    .line 93
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/views/BubbleLayout;->mRegion:Landroid/graphics/Region;

    .line 94
    iput-object p1, p0, Lcom/keephealth/android/views/BubbleLayout;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 95
    invoke-virtual {p0, v0, v1}, Lcom/keephealth/android/views/BubbleLayout;->setLayerType(ILandroid/graphics/Paint;)V

    const/4 v0, 0x0

    .line 96
    invoke-virtual {p0, v0}, Lcom/keephealth/android/views/BubbleLayout;->setWillNotDraw(Z)V

    .line 97
    sget-object v1, Lcom/keephealth/android/R$styleable;->BubbleLayout:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/keephealth/android/views/BubbleLayout;->initAttr(Landroid/content/res/TypedArray;)V

    .line 98
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x5

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/keephealth/android/views/BubbleLayout;->mPaint:Landroid/graphics/Paint;

    .line 99
    sget-object p3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 100
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/keephealth/android/views/BubbleLayout;->mPaint2:Landroid/graphics/Paint;

    .line 101
    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 102
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/keephealth/android/views/BubbleLayout;->mPath:Landroid/graphics/Path;

    .line 103
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/keephealth/android/views/BubbleLayout;->mPath2:Landroid/graphics/Path;

    .line 104
    invoke-virtual {p0}, Lcom/keephealth/android/views/BubbleLayout;->initPadding()V

    return-void
.end method

.method private initAttr(Landroid/content/res/TypedArray;)V
    .registers 6

    .line 132
    sget-object v0, Lcom/keephealth/android/views/BubbleLayout$Look;->BOTTOM:Lcom/keephealth/android/views/BubbleLayout$Look;

    iget v0, v0, Lcom/keephealth/android/views/BubbleLayout$Look;->value:I

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-static {v0}, Lcom/keephealth/android/views/BubbleLayout$Look;->getType(I)Lcom/keephealth/android/views/BubbleLayout$Look;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/views/BubbleLayout;->mLook:Lcom/keephealth/android/views/BubbleLayout$Look;

    .line 133
    iget v0, p0, Lcom/keephealth/android/views/BubbleLayout;->mWidth:I

    const/4 v1, 0x2

    div-int/2addr v0, v1

    const/4 v2, 0x5

    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/views/BubbleLayout;->mLookPosition:I

    .line 134
    iget-object v0, p0, Lcom/keephealth/android/views/BubbleLayout;->mContext:Landroid/content/Context;

    const/high16 v2, 0x41880000    # 17.0f

    invoke-static {v2, v0}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v0

    const/4 v3, 0x6

    invoke-virtual {p1, v3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/views/BubbleLayout;->mLookWidth:I

    .line 135
    iget-object v0, p0, Lcom/keephealth/android/views/BubbleLayout;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v0

    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/views/BubbleLayout;->mLookLength:I

    const v0, 0x40533333    # 3.3f

    .line 136
    iget-object v2, p0, Lcom/keephealth/android/views/BubbleLayout;->mContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v0

    const/16 v2, 0x8

    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/views/BubbleLayout;->mShadowRadius:I

    .line 137
    iget-object v0, p0, Lcom/keephealth/android/views/BubbleLayout;->mContext:Landroid/content/Context;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2, v0}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v0

    const/16 v3, 0x9

    invoke-virtual {p1, v3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/views/BubbleLayout;->mShadowX:I

    .line 138
    iget-object v0, p0, Lcom/keephealth/android/views/BubbleLayout;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v0

    const/16 v2, 0xa

    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/views/BubbleLayout;->mShadowY:I

    const/high16 v0, 0x40e00000    # 7.0f

    .line 139
    iget-object v2, p0, Lcom/keephealth/android/views/BubbleLayout;->mContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v0

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/views/BubbleLayout;->mBubbleRadius:I

    const/high16 v0, 0x41000000    # 8.0f

    .line 140
    iget-object v1, p0, Lcom/keephealth/android/views/BubbleLayout;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/views/BubbleLayout;->mBubblePadding:I

    const/4 v0, 0x7

    const v1, -0x777778

    .line 141
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/views/BubbleLayout;->mShadowColor:I

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 142
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/views/BubbleLayout;->mBubbleColor:I

    .line 143
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private initData()V
    .registers 8

    .line 175
    iget-object v0, p0, Lcom/keephealth/android/views/BubbleLayout;->mPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/CornerPathEffect;

    iget v2, p0, Lcom/keephealth/android/views/BubbleLayout;->mBubbleRadius:I

    int-to-float v2, v2

    invoke-direct {v1, v2}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 177
    iget-object v0, p0, Lcom/keephealth/android/views/BubbleLayout;->mPaint2:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/CornerPathEffect;

    iget v2, p0, Lcom/keephealth/android/views/BubbleLayout;->mBubbleRadius:I

    int-to-float v2, v2

    invoke-direct {v1, v2}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 178
    iget v0, p0, Lcom/keephealth/android/views/BubbleLayout;->mBubblePadding:I

    iget-object v1, p0, Lcom/keephealth/android/views/BubbleLayout;->mLook:Lcom/keephealth/android/views/BubbleLayout$Look;

    sget-object v2, Lcom/keephealth/android/views/BubbleLayout$Look;->LEFT:Lcom/keephealth/android/views/BubbleLayout$Look;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_26

    iget v1, p0, Lcom/keephealth/android/views/BubbleLayout;->mLookLength:I

    goto :goto_27

    :cond_26
    move v1, v3

    :goto_27
    add-int/2addr v0, v1

    iput v0, p0, Lcom/keephealth/android/views/BubbleLayout;->mLeft:I

    .line 179
    iget v0, p0, Lcom/keephealth/android/views/BubbleLayout;->mBubblePadding:I

    iget-object v1, p0, Lcom/keephealth/android/views/BubbleLayout;->mLook:Lcom/keephealth/android/views/BubbleLayout$Look;

    sget-object v2, Lcom/keephealth/android/views/BubbleLayout$Look;->TOP:Lcom/keephealth/android/views/BubbleLayout$Look;

    if-ne v1, v2, :cond_35

    iget v1, p0, Lcom/keephealth/android/views/BubbleLayout;->mLookLength:I

    goto :goto_36

    :cond_35
    move v1, v3

    :goto_36
    add-int/2addr v0, v1

    iput v0, p0, Lcom/keephealth/android/views/BubbleLayout;->mTop:I

    .line 180
    iget v0, p0, Lcom/keephealth/android/views/BubbleLayout;->mWidth:I

    iget v1, p0, Lcom/keephealth/android/views/BubbleLayout;->mBubblePadding:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/keephealth/android/views/BubbleLayout;->mLook:Lcom/keephealth/android/views/BubbleLayout$Look;

    sget-object v2, Lcom/keephealth/android/views/BubbleLayout$Look;->RIGHT:Lcom/keephealth/android/views/BubbleLayout$Look;

    if-ne v1, v2, :cond_47

    iget v1, p0, Lcom/keephealth/android/views/BubbleLayout;->mLookLength:I

    goto :goto_48

    :cond_47
    move v1, v3

    :goto_48
    sub-int/2addr v0, v1

    iput v0, p0, Lcom/keephealth/android/views/BubbleLayout;->mRight:I

    .line 181
    iget v0, p0, Lcom/keephealth/android/views/BubbleLayout;->mHeight:I

    iget v1, p0, Lcom/keephealth/android/views/BubbleLayout;->mBubblePadding:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/keephealth/android/views/BubbleLayout;->mLook:Lcom/keephealth/android/views/BubbleLayout$Look;

    sget-object v2, Lcom/keephealth/android/views/BubbleLayout$Look;->BOTTOM:Lcom/keephealth/android/views/BubbleLayout$Look;

    if-ne v1, v2, :cond_58

    iget v3, p0, Lcom/keephealth/android/views/BubbleLayout;->mLookLength:I

    :cond_58
    sub-int/2addr v0, v3

    iput v0, p0, Lcom/keephealth/android/views/BubbleLayout;->mBottom:I

    .line 182
    iget-object v0, p0, Lcom/keephealth/android/views/BubbleLayout;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/keephealth/android/views/BubbleLayout;->mBubbleColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 183
    iget-object v0, p0, Lcom/keephealth/android/views/BubbleLayout;->mPaint2:Landroid/graphics/Paint;

    iget v1, p0, Lcom/keephealth/android/views/BubbleLayout;->mShadowColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 184
    iget-object v0, p0, Lcom/keephealth/android/views/BubbleLayout;->mPaint2:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 185
    iget-object v0, p0, Lcom/keephealth/android/views/BubbleLayout;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 186
    iget-object v0, p0, Lcom/keephealth/android/views/BubbleLayout;->mPath2:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 187
    iget v0, p0, Lcom/keephealth/android/views/BubbleLayout;->mLookPosition:I

    iget v1, p0, Lcom/keephealth/android/views/BubbleLayout;->mLookLength:I

    add-int v2, v0, v1

    iget v3, p0, Lcom/keephealth/android/views/BubbleLayout;->mBottom:I

    if-le v2, v3, :cond_88

    iget v2, p0, Lcom/keephealth/android/views/BubbleLayout;->mLookWidth:I

    sub-int/2addr v3, v2

    goto :goto_89

    :cond_88
    move v3, v0

    .line 188
    :goto_89
    iget v2, p0, Lcom/keephealth/android/views/BubbleLayout;->mBubblePadding:I

    if-le v3, v2, :cond_8e

    goto :goto_8f

    :cond_8e
    move v3, v2

    :goto_8f
    add-int/2addr v1, v0

    .line 189
    iget v4, p0, Lcom/keephealth/android/views/BubbleLayout;->mRight:I

    if-le v1, v4, :cond_98

    iget v0, p0, Lcom/keephealth/android/views/BubbleLayout;->mLookWidth:I

    sub-int v0, v4, v0

    :cond_98
    if-le v0, v2, :cond_9b

    move v2, v0

    .line 192
    :cond_9b
    sget-object v0, Lcom/keephealth/android/views/BubbleLayout$1;->$SwitchMap$com$keephealth$android$views$BubbleLayout$Look:[I

    iget-object v1, p0, Lcom/keephealth/android/views/BubbleLayout;->mLook:Lcom/keephealth/android/views/BubbleLayout$Look;

    invoke-virtual {v1}, Lcom/keephealth/android/views/BubbleLayout$Look;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v4, 0x2

    if-eq v0, v1, :cond_1a3

    if-eq v0, v4, :cond_153

    const/4 v1, 0x3

    if-eq v0, v1, :cond_103

    const/4 v1, 0x4

    if-eq v0, v1, :cond_b3

    goto/16 :goto_24b

    .line 213
    :cond_b3
    iget-object v0, p0, Lcom/keephealth/android/views/BubbleLayout;->mPath:Landroid/graphics/Path;

    iget v1, p0, Lcom/keephealth/android/views/BubbleLayout;->mRight:I

    int-to-float v1, v1

    int-to-float v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 214
    iget-object v0, p0, Lcom/keephealth/android/views/BubbleLayout;->mPath:Landroid/graphics/Path;

    iget v1, p0, Lcom/keephealth/android/views/BubbleLayout;->mLookLength:I

    int-to-float v1, v1

    iget v2, p0, Lcom/keephealth/android/views/BubbleLayout;->mLookWidth:I

    div-int/2addr v2, v4

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 215
    iget-object v0, p0, Lcom/keephealth/android/views/BubbleLayout;->mPath:Landroid/graphics/Path;

    iget v1, p0, Lcom/keephealth/android/views/BubbleLayout;->mLookLength:I

    neg-int v1, v1

    int-to-float v1, v1

    iget v2, p0, Lcom/keephealth/android/views/BubbleLayout;->mLookWidth:I

    div-int/2addr v2, v4

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 216
    iget-object v0, p0, Lcom/keephealth/android/views/BubbleLayout;->mPath:Landroid/graphics/Path;

    iget v1, p0, Lcom/keephealth/android/views/BubbleLayout;->mRight:I

    int-to-float v1, v1

    iget v2, p0, Lcom/keephealth/android/views/BubbleLayout;->mBottom:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 217
    iget-object v0, p0, Lcom/keephealth/android/views/BubbleLayout;->mPath:Landroid/graphics/Path;

    iget v1, p0, Lcom/keephealth/android/views/BubbleLayout;->mLeft:I

    int-to-float v1, v1

    iget v2, p0, Lcom/keephealth/android/views/BubbleLayout;->mBottom:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 218
    iget-object v0, p0, Lcom/keephealth/android/views/BubbleLayout;->mPath:Landroid/graphics/Path;

    iget v1, p0, Lcom/keephealth/android/views/BubbleLayout;->mLeft:I

    int-to-float v1, v1

    iget v2, p0, Lcom/keephealth/android/views/BubbleLayout;->mTop:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 219
    iget-object v0, p0, Lcom/keephealth/android/views/BubbleLayout;->mPath:Landroid/graphics/Path;

    iget v1, p0, Lcom/keephealth/android/views/BubbleLayout;->mRight:I

    int-to-float v1, v1

    iget v2, p0, Lcom/keephealth/android/views/BubbleLayout;->mTop:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_24b

    .line 195
    :cond_103
    iget-object v0, p0, Lcom/keephealth/android/views/BubbleLayout;->mPath:Landroid/graphics/Path;

    iget v1, p0, Lcom/keephealth/android/views/BubbleLayout;->mLeft:I

    int-to-float v1, v1

    int-to-float v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 196
    iget-object v0, p0, Lcom/keephealth/android/views/BubbleLayout;->mPath:Landroid/graphics/Path;

    iget v1, p0, Lcom/keephealth/android/views/BubbleLayout;->mLookLength:I

    neg-int v1, v1

    int-to-float v1, v1

    iget v2, p0, Lcom/keephealth/android/views/BubbleLayout;->mLookWidth:I

    div-int/2addr v2, v4

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 197
    iget-object v0, p0, Lcom/keephealth/android/views/BubbleLayout;->mPath:Landroid/graphics/Path;

    iget v1, p0, Lcom/keephealth/android/views/BubbleLayout;->mLookLength:I

    int-to-float v1, v1

    iget v2, p0, Lcom/keephealth/android/views/BubbleLayout;->mLookWidth:I

    div-int/2addr v2, v4

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 198
    iget-object v0, p0, Lcom/keephealth/android/views/BubbleLayout;->mPath:Landroid/graphics/Path;

    iget v1, p0, Lcom/keephealth/android/views/BubbleLayout;->mLeft:I

    int-to-float v1, v1

    iget v2, p0, Lcom/keephealth/android/views/BubbleLayout;->mBottom:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 199
    iget-object v0, p0, Lcom/keephealth/android/views/BubbleLayout;->mPath:Landroid/graphics/Path;

    iget v1, p0, Lcom/keephealth/android/views/BubbleLayout;->mRight:I

    int-to-float v1, v1

    iget v2, p0, Lcom/keephealth/android/views/BubbleLayout;->mBottom:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 200
    iget-object v0, p0, Lcom/keephealth/android/views/BubbleLayout;->mPath:Landroid/graphics/Path;

    iget v1, p0, Lcom/keephealth/android/views/BubbleLayout;->mRight:I

    int-to-float v1, v1

    iget v2, p0, Lcom/keephealth/android/views/BubbleLayout;->mTop:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 201
    iget-object v0, p0, Lcom/keephealth/android/views/BubbleLayout;->mPath:Landroid/graphics/Path;

    iget v1, p0, Lcom/keephealth/android/views/BubbleLayout;->mLeft:I

    int-to-float v1, v1

    iget v2, p0, Lcom/keephealth/android/views/BubbleLayout;->mTop:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_24b

    .line 204
    :cond_153
    iget-object v0, p0, Lcom/keephealth/android/views/BubbleLayout;->mPath:Landroid/graphics/Path;

    int-to-float v1, v2

    iget v2, p0, Lcom/keephealth/android/views/BubbleLayout;->mTop:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 205
    iget-object v0, p0, Lcom/keephealth/android/views/BubbleLayout;->mPath:Landroid/graphics/Path;

    iget v1, p0, Lcom/keephealth/android/views/BubbleLayout;->mLookWidth:I

    div-int/2addr v1, v4

    int-to-float v1, v1

    iget v2, p0, Lcom/keephealth/android/views/BubbleLayout;->mLookLength:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 206
    iget-object v0, p0, Lcom/keephealth/android/views/BubbleLayout;->mPath:Landroid/graphics/Path;

    iget v1, p0, Lcom/keephealth/android/views/BubbleLayout;->mLookWidth:I

    div-int/2addr v1, v4

    int-to-float v1, v1

    iget v2, p0, Lcom/keephealth/android/views/BubbleLayout;->mLookLength:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 207
    iget-object v0, p0, Lcom/keephealth/android/views/BubbleLayout;->mPath:Landroid/graphics/Path;

    iget v1, p0, Lcom/keephealth/android/views/BubbleLayout;->mRight:I

    int-to-float v1, v1

    iget v2, p0, Lcom/keephealth/android/views/BubbleLayout;->mTop:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 208
    iget-object v0, p0, Lcom/keephealth/android/views/BubbleLayout;->mPath:Landroid/graphics/Path;

    iget v1, p0, Lcom/keephealth/android/views/BubbleLayout;->mRight:I

    int-to-float v1, v1

    iget v2, p0, Lcom/keephealth/android/views/BubbleLayout;->mBottom:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 209
    iget-object v0, p0, Lcom/keephealth/android/views/BubbleLayout;->mPath:Landroid/graphics/Path;

    iget v1, p0, Lcom/keephealth/android/views/BubbleLayout;->mLeft:I

    int-to-float v1, v1

    iget v2, p0, Lcom/keephealth/android/views/BubbleLayout;->mBottom:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 210
    iget-object v0, p0, Lcom/keephealth/android/views/BubbleLayout;->mPath:Landroid/graphics/Path;

    iget v1, p0, Lcom/keephealth/android/views/BubbleLayout;->mLeft:I

    int-to-float v1, v1

    iget v2, p0, Lcom/keephealth/android/views/BubbleLayout;->mTop:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_24b

    .line 222
    :cond_1a3
    iget v0, p0, Lcom/keephealth/android/views/BubbleLayout;->mWidth:I

    div-int/2addr v0, v4

    iget v1, p0, Lcom/keephealth/android/views/BubbleLayout;->mLookWidth:I

    div-int/2addr v1, v4

    sub-int/2addr v0, v1

    .line 223
    iget-object v1, p0, Lcom/keephealth/android/views/BubbleLayout;->mPath:Landroid/graphics/Path;

    int-to-float v2, v0

    iget v3, p0, Lcom/keephealth/android/views/BubbleLayout;->mBottom:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 224
    iget-object v1, p0, Lcom/keephealth/android/views/BubbleLayout;->mPath:Landroid/graphics/Path;

    iget v3, p0, Lcom/keephealth/android/views/BubbleLayout;->mLookWidth:I

    div-int/2addr v3, v4

    add-int/2addr v3, v0

    int-to-float v3, v3

    iget v5, p0, Lcom/keephealth/android/views/BubbleLayout;->mBottom:I

    iget v6, p0, Lcom/keephealth/android/views/BubbleLayout;->mLookLength:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {v1, v3, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 225
    iget-object v1, p0, Lcom/keephealth/android/views/BubbleLayout;->mPath:Landroid/graphics/Path;

    iget v3, p0, Lcom/keephealth/android/views/BubbleLayout;->mLookWidth:I

    add-int/2addr v3, v0

    int-to-float v3, v3

    iget v5, p0, Lcom/keephealth/android/views/BubbleLayout;->mBottom:I

    int-to-float v5, v5

    invoke-virtual {v1, v3, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 226
    iget-object v1, p0, Lcom/keephealth/android/views/BubbleLayout;->mPath:Landroid/graphics/Path;

    iget v3, p0, Lcom/keephealth/android/views/BubbleLayout;->mRight:I

    int-to-float v3, v3

    iget v5, p0, Lcom/keephealth/android/views/BubbleLayout;->mBottom:I

    int-to-float v5, v5

    invoke-virtual {v1, v3, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 227
    iget-object v1, p0, Lcom/keephealth/android/views/BubbleLayout;->mPath:Landroid/graphics/Path;

    iget v3, p0, Lcom/keephealth/android/views/BubbleLayout;->mRight:I

    int-to-float v3, v3

    iget v5, p0, Lcom/keephealth/android/views/BubbleLayout;->mTop:I

    int-to-float v5, v5

    invoke-virtual {v1, v3, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 228
    iget-object v1, p0, Lcom/keephealth/android/views/BubbleLayout;->mPath:Landroid/graphics/Path;

    iget v3, p0, Lcom/keephealth/android/views/BubbleLayout;->mLeft:I

    int-to-float v3, v3

    iget v5, p0, Lcom/keephealth/android/views/BubbleLayout;->mTop:I

    int-to-float v5, v5

    invoke-virtual {v1, v3, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 229
    iget-object v1, p0, Lcom/keephealth/android/views/BubbleLayout;->mPath:Landroid/graphics/Path;

    iget v3, p0, Lcom/keephealth/android/views/BubbleLayout;->mLeft:I

    int-to-float v3, v3

    iget v5, p0, Lcom/keephealth/android/views/BubbleLayout;->mBottom:I

    int-to-float v5, v5

    invoke-virtual {v1, v3, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 231
    iget-object v1, p0, Lcom/keephealth/android/views/BubbleLayout;->mPath2:Landroid/graphics/Path;

    iget v3, p0, Lcom/keephealth/android/views/BubbleLayout;->mBottom:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 232
    iget-object v1, p0, Lcom/keephealth/android/views/BubbleLayout;->mPath2:Landroid/graphics/Path;

    iget v2, p0, Lcom/keephealth/android/views/BubbleLayout;->mLookWidth:I

    div-int/2addr v2, v4

    add-int/2addr v2, v0

    int-to-float v2, v2

    iget v3, p0, Lcom/keephealth/android/views/BubbleLayout;->mBottom:I

    iget v4, p0, Lcom/keephealth/android/views/BubbleLayout;->mLookLength:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 233
    iget-object v1, p0, Lcom/keephealth/android/views/BubbleLayout;->mPath2:Landroid/graphics/Path;

    iget v2, p0, Lcom/keephealth/android/views/BubbleLayout;->mLookWidth:I

    add-int/2addr v0, v2

    int-to-float v0, v0

    iget v2, p0, Lcom/keephealth/android/views/BubbleLayout;->mBottom:I

    int-to-float v2, v2

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 234
    iget-object v0, p0, Lcom/keephealth/android/views/BubbleLayout;->mPath2:Landroid/graphics/Path;

    iget v1, p0, Lcom/keephealth/android/views/BubbleLayout;->mRight:I

    int-to-float v1, v1

    iget v2, p0, Lcom/keephealth/android/views/BubbleLayout;->mBottom:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 235
    iget-object v0, p0, Lcom/keephealth/android/views/BubbleLayout;->mPath2:Landroid/graphics/Path;

    iget v1, p0, Lcom/keephealth/android/views/BubbleLayout;->mRight:I

    int-to-float v1, v1

    iget v2, p0, Lcom/keephealth/android/views/BubbleLayout;->mTop:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 236
    iget-object v0, p0, Lcom/keephealth/android/views/BubbleLayout;->mPath2:Landroid/graphics/Path;

    iget v1, p0, Lcom/keephealth/android/views/BubbleLayout;->mLeft:I

    int-to-float v1, v1

    iget v2, p0, Lcom/keephealth/android/views/BubbleLayout;->mTop:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 237
    iget-object v0, p0, Lcom/keephealth/android/views/BubbleLayout;->mPath2:Landroid/graphics/Path;

    iget v1, p0, Lcom/keephealth/android/views/BubbleLayout;->mLeft:I

    int-to-float v1, v1

    iget v2, p0, Lcom/keephealth/android/views/BubbleLayout;->mBottom:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 242
    :goto_24b
    iget-object v0, p0, Lcom/keephealth/android/views/BubbleLayout;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 243
    iget-object v0, p0, Lcom/keephealth/android/views/BubbleLayout;->mPath2:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    return-void
.end method


# virtual methods
.method public getBubbleColor()I
    .registers 2

    .line 327
    iget v0, p0, Lcom/keephealth/android/views/BubbleLayout;->mBubbleColor:I

    return v0
.end method

.method public getBubbleRadius()I
    .registers 2

    .line 322
    iget v0, p0, Lcom/keephealth/android/views/BubbleLayout;->mBubbleRadius:I

    return v0
.end method

.method public getLook()Lcom/keephealth/android/views/BubbleLayout$Look;
    .registers 2

    .line 282
    iget-object v0, p0, Lcom/keephealth/android/views/BubbleLayout;->mLook:Lcom/keephealth/android/views/BubbleLayout$Look;

    return-object v0
.end method

.method public getLookLength()I
    .registers 2

    .line 297
    iget v0, p0, Lcom/keephealth/android/views/BubbleLayout;->mLookLength:I

    return v0
.end method

.method public getLookPosition()I
    .registers 2

    .line 287
    iget v0, p0, Lcom/keephealth/android/views/BubbleLayout;->mLookPosition:I

    return v0
.end method

.method public getLookWidth()I
    .registers 2

    .line 292
    iget v0, p0, Lcom/keephealth/android/views/BubbleLayout;->mLookWidth:I

    return v0
.end method

.method public getPaint()Landroid/graphics/Paint;
    .registers 2

    .line 272
    iget-object v0, p0, Lcom/keephealth/android/views/BubbleLayout;->mPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getPath()Landroid/graphics/Path;
    .registers 2

    .line 277
    iget-object v0, p0, Lcom/keephealth/android/views/BubbleLayout;->mPath:Landroid/graphics/Path;

    return-object v0
.end method

.method public getShadowColor()I
    .registers 2

    .line 302
    iget v0, p0, Lcom/keephealth/android/views/BubbleLayout;->mShadowColor:I

    return v0
.end method

.method public getShadowRadius()I
    .registers 2

    .line 307
    iget v0, p0, Lcom/keephealth/android/views/BubbleLayout;->mShadowRadius:I

    return v0
.end method

.method public getShadowX()I
    .registers 2

    .line 312
    iget v0, p0, Lcom/keephealth/android/views/BubbleLayout;->mShadowX:I

    return v0
.end method

.method public getShadowY()I
    .registers 2

    .line 317
    iget v0, p0, Lcom/keephealth/android/views/BubbleLayout;->mShadowY:I

    return v0
.end method

.method public initPadding()V
    .registers 5

    .line 109
    iget v0, p0, Lcom/keephealth/android/views/BubbleLayout;->mBubblePadding:I

    const/4 v1, 0x2

    mul-int/2addr v0, v1

    .line 110
    sget-object v2, Lcom/keephealth/android/views/BubbleLayout$1;->$SwitchMap$com$keephealth$android$views$BubbleLayout$Look:[I

    iget-object v3, p0, Lcom/keephealth/android/views/BubbleLayout;->mLook:Lcom/keephealth/android/views/BubbleLayout$Look;

    invoke-virtual {v3}, Lcom/keephealth/android/views/BubbleLayout$Look;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2f

    if-eq v2, v1, :cond_28

    const/4 v1, 0x3

    if-eq v2, v1, :cond_21

    const/4 v1, 0x4

    if-eq v2, v1, :cond_1a

    goto :goto_35

    .line 122
    :cond_1a
    iget v1, p0, Lcom/keephealth/android/views/BubbleLayout;->mLookLength:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v0, v0, v1, v0}, Lcom/keephealth/android/views/BubbleLayout;->setPadding(IIII)V

    goto :goto_35

    .line 119
    :cond_21
    iget v1, p0, Lcom/keephealth/android/views/BubbleLayout;->mLookLength:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1, v0, v0, v0}, Lcom/keephealth/android/views/BubbleLayout;->setPadding(IIII)V

    goto :goto_35

    .line 116
    :cond_28
    iget v1, p0, Lcom/keephealth/android/views/BubbleLayout;->mLookLength:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v0, v1, v0, v0}, Lcom/keephealth/android/views/BubbleLayout;->setPadding(IIII)V

    goto :goto_35

    .line 113
    :cond_2f
    iget v1, p0, Lcom/keephealth/android/views/BubbleLayout;->mLookLength:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v0, v0, v0, v1}, Lcom/keephealth/android/views/BubbleLayout;->setPadding(IIII)V

    :goto_35
    return-void
.end method

.method public invalidate()V
    .registers 1

    .line 159
    invoke-direct {p0}, Lcom/keephealth/android/views/BubbleLayout;->initData()V

    .line 160
    invoke-super {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 4

    .line 249
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 250
    iget-object v0, p0, Lcom/keephealth/android/views/BubbleLayout;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/keephealth/android/views/BubbleLayout;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 251
    iget-object v0, p0, Lcom/keephealth/android/views/BubbleLayout;->mPath2:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/keephealth/android/views/BubbleLayout;->mPaint2:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 3

    .line 408
    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_80

    .line 410
    check-cast p1, Landroid/os/Bundle;

    .line 411
    const-string v0, "mLookPosition"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/views/BubbleLayout;->mLookPosition:I

    .line 412
    const-string v0, "mLookWidth"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/views/BubbleLayout;->mLookWidth:I

    .line 413
    const-string v0, "mLookLength"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/views/BubbleLayout;->mLookLength:I

    .line 414
    const-string v0, "mShadowColor"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/views/BubbleLayout;->mShadowColor:I

    .line 415
    const-string v0, "mShadowRadius"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/views/BubbleLayout;->mShadowRadius:I

    .line 416
    const-string v0, "mShadowX"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/views/BubbleLayout;->mShadowX:I

    .line 417
    const-string v0, "mShadowY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/views/BubbleLayout;->mShadowY:I

    .line 418
    const-string v0, "mBubbleRadius"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/views/BubbleLayout;->mBubbleRadius:I

    .line 419
    const-string v0, "mWidth"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/views/BubbleLayout;->mWidth:I

    .line 420
    const-string v0, "mHeight"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/views/BubbleLayout;->mHeight:I

    .line 421
    const-string v0, "mLeft"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/views/BubbleLayout;->mLeft:I

    .line 422
    const-string v0, "mTop"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/views/BubbleLayout;->mTop:I

    .line 423
    const-string v0, "mRight"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/views/BubbleLayout;->mRight:I

    .line 424
    const-string v0, "mBottom"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/views/BubbleLayout;->mBottom:I

    .line 425
    const-string v0, "instanceState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 428
    :cond_80
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 4

    .line 385
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 386
    const-string v1, "instanceState"

    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 387
    const-string v1, "mLookPosition"

    iget v2, p0, Lcom/keephealth/android/views/BubbleLayout;->mLookPosition:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 388
    const-string v1, "mLookWidth"

    iget v2, p0, Lcom/keephealth/android/views/BubbleLayout;->mLookWidth:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 389
    const-string v1, "mLookLength"

    iget v2, p0, Lcom/keephealth/android/views/BubbleLayout;->mLookLength:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 390
    const-string v1, "mShadowColor"

    iget v2, p0, Lcom/keephealth/android/views/BubbleLayout;->mShadowColor:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 391
    const-string v1, "mShadowRadius"

    iget v2, p0, Lcom/keephealth/android/views/BubbleLayout;->mShadowRadius:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 392
    const-string v1, "mShadowX"

    iget v2, p0, Lcom/keephealth/android/views/BubbleLayout;->mShadowX:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 393
    const-string v1, "mShadowY"

    iget v2, p0, Lcom/keephealth/android/views/BubbleLayout;->mShadowY:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 394
    const-string v1, "mBubbleRadius"

    iget v2, p0, Lcom/keephealth/android/views/BubbleLayout;->mBubbleRadius:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 395
    const-string v1, "mWidth"

    iget v2, p0, Lcom/keephealth/android/views/BubbleLayout;->mWidth:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 396
    const-string v1, "mHeight"

    iget v2, p0, Lcom/keephealth/android/views/BubbleLayout;->mHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 397
    const-string v1, "mLeft"

    iget v2, p0, Lcom/keephealth/android/views/BubbleLayout;->mLeft:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 398
    const-string v1, "mTop"

    iget v2, p0, Lcom/keephealth/android/views/BubbleLayout;->mTop:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 399
    const-string v1, "mRight"

    iget v2, p0, Lcom/keephealth/android/views/BubbleLayout;->mRight:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 400
    const-string v1, "mBottom"

    iget v2, p0, Lcom/keephealth/android/views/BubbleLayout;->mBottom:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .registers 5

    .line 150
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 151
    iput p1, p0, Lcom/keephealth/android/views/BubbleLayout;->mWidth:I

    .line 152
    iput p2, p0, Lcom/keephealth/android/views/BubbleLayout;->mHeight:I

    .line 153
    invoke-direct {p0}, Lcom/keephealth/android/views/BubbleLayout;->initData()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 9

    .line 257
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_42

    .line 259
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 260
    iget-object v1, p0, Lcom/keephealth/android/views/BubbleLayout;->mPath:Landroid/graphics/Path;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 261
    iget-object v1, p0, Lcom/keephealth/android/views/BubbleLayout;->mRegion:Landroid/graphics/Region;

    iget-object v2, p0, Lcom/keephealth/android/views/BubbleLayout;->mPath:Landroid/graphics/Path;

    new-instance v3, Landroid/graphics/Region;

    iget v4, v0, Landroid/graphics/RectF;->left:F

    float-to-int v4, v4

    iget v5, v0, Landroid/graphics/RectF;->top:F

    float-to-int v5, v5

    iget v6, v0, Landroid/graphics/RectF;->right:F

    float-to-int v6, v6

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    float-to-int v0, v0

    invoke-direct {v3, v4, v5, v6, v0}, Landroid/graphics/Region;-><init>(IIII)V

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Region;->setPath(Landroid/graphics/Path;Landroid/graphics/Region;)Z

    .line 262
    iget-object v0, p0, Lcom/keephealth/android/views/BubbleLayout;->mRegion:Landroid/graphics/Region;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->contains(II)Z

    move-result v0

    if-nez v0, :cond_42

    iget-object v0, p0, Lcom/keephealth/android/views/BubbleLayout;->mListener:Lcom/keephealth/android/views/BubbleLayout$OnClickEdgeListener;

    if-eqz v0, :cond_42

    .line 264
    invoke-interface {v0}, Lcom/keephealth/android/views/BubbleLayout$OnClickEdgeListener;->edge()V

    .line 267
    :cond_42
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public postInvalidate()V
    .registers 1

    .line 166
    invoke-direct {p0}, Lcom/keephealth/android/views/BubbleLayout;->initData()V

    .line 167
    invoke-super {p0}, Landroid/widget/FrameLayout;->postInvalidate()V

    return-void
.end method

.method public setBubbleColor(I)V
    .registers 2

    .line 332
    iput p1, p0, Lcom/keephealth/android/views/BubbleLayout;->mBubbleColor:I

    return-void
.end method

.method public setBubbleRadius(I)V
    .registers 2

    .line 379
    iput p1, p0, Lcom/keephealth/android/views/BubbleLayout;->mBubbleRadius:I

    return-void
.end method

.method public setLook(Lcom/keephealth/android/views/BubbleLayout$Look;)V
    .registers 2

    .line 337
    iput-object p1, p0, Lcom/keephealth/android/views/BubbleLayout;->mLook:Lcom/keephealth/android/views/BubbleLayout$Look;

    .line 338
    invoke-virtual {p0}, Lcom/keephealth/android/views/BubbleLayout;->initPadding()V

    return-void
.end method

.method public setLookLength(I)V
    .registers 2

    .line 353
    iput p1, p0, Lcom/keephealth/android/views/BubbleLayout;->mLookLength:I

    .line 354
    invoke-virtual {p0}, Lcom/keephealth/android/views/BubbleLayout;->initPadding()V

    return-void
.end method

.method public setLookPosition(I)V
    .registers 2

    .line 343
    iput p1, p0, Lcom/keephealth/android/views/BubbleLayout;->mLookPosition:I

    return-void
.end method

.method public setLookWidth(I)V
    .registers 2

    .line 348
    iput p1, p0, Lcom/keephealth/android/views/BubbleLayout;->mLookWidth:I

    return-void
.end method

.method public setOnClickEdgeListener(Lcom/keephealth/android/views/BubbleLayout$OnClickEdgeListener;)V
    .registers 2

    .line 433
    iput-object p1, p0, Lcom/keephealth/android/views/BubbleLayout;->mListener:Lcom/keephealth/android/views/BubbleLayout$OnClickEdgeListener;

    return-void
.end method

.method public setShadowColor(I)V
    .registers 2

    .line 359
    iput p1, p0, Lcom/keephealth/android/views/BubbleLayout;->mShadowColor:I

    return-void
.end method

.method public setShadowRadius(I)V
    .registers 2

    .line 364
    iput p1, p0, Lcom/keephealth/android/views/BubbleLayout;->mShadowRadius:I

    return-void
.end method

.method public setShadowX(I)V
    .registers 2

    .line 369
    iput p1, p0, Lcom/keephealth/android/views/BubbleLayout;->mShadowX:I

    return-void
.end method

.method public setShadowY(I)V
    .registers 2

    .line 374
    iput p1, p0, Lcom/keephealth/android/views/BubbleLayout;->mShadowY:I

    return-void
.end method
