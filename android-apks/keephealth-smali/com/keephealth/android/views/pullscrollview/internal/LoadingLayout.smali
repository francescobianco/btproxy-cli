.class public abstract Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout;
.super Landroid/widget/FrameLayout;
.source "LoadingLayout.java"

# interfaces
.implements Lcom/keephealth/android/views/pullscrollview/ILoadingLayout;


# static fields
.field static final ANIMATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field static final LOG_TAG:Ljava/lang/String; = "PullToRefresh-LoadingLayout"


# instance fields
.field protected final mHeaderImage:Landroid/widget/ImageView;

.field protected final mHeaderProgress:Landroid/widget/ProgressBar;

.field private final mHeaderText:Landroid/widget/TextView;

.field private mInnerLayout:Landroid/widget/FrameLayout;

.field protected final mMode:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;

.field private mPullLabel:Ljava/lang/CharSequence;

.field private mRefreshingLabel:Ljava/lang/CharSequence;

.field private mReleaseLabel:Ljava/lang/CharSequence;

.field protected final mScrollDirection:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Orientation;

.field private final mSubHeaderText:Landroid/widget/TextView;

.field private mUseIntrinsicAnimation:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 47
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout;->ANIMATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Orientation;Landroid/content/res/TypedArray;)V
    .registers 13

    .line 67
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 68
    iput-object p2, p0, Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout;->mMode:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;

    .line 69
    iput-object p3, p0, Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout;->mScrollDirection:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Orientation;

    .line 71
    sget-object v0, Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout$1;->$SwitchMap$com$keephealth$android$views$pullscrollview$PullToRefreshBase$Orientation:[I

    invoke-virtual {p3}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Orientation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1d

    .line 77
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0c018d

    invoke-virtual {v0, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_27

    .line 73
    :cond_1d
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0c018c

    invoke-virtual {v0, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    :goto_27
    const v0, 0x7f090195

    .line 81
    invoke-virtual {p0, v0}, Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout;->mInnerLayout:Landroid/widget/FrameLayout;

    const v2, 0x7f09047e

    .line 82
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout;->mHeaderText:Landroid/widget/TextView;

    .line 83
    iget-object v0, p0, Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout;->mInnerLayout:Landroid/widget/FrameLayout;

    const v2, 0x7f09047c

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout;->mHeaderProgress:Landroid/widget/ProgressBar;

    .line 84
    iget-object v0, p0, Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout;->mInnerLayout:Landroid/widget/FrameLayout;

    const v2, 0x7f09047d

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    .line 85
    iget-object v0, p0, Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout;->mInnerLayout:Landroid/widget/FrameLayout;

    const v2, 0x7f09047b

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    .line 87
    iget-object v0, p0, Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout;->mInnerLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 89
    sget-object v2, Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout$1;->$SwitchMap$com$keephealth$android$views$pullscrollview$PullToRefreshBase$Mode:[I

    invoke-virtual {p2}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const v3, 0x7f1004d0

    const v4, 0x7f1004cf

    const v5, 0x7f1004ce

    const/4 v6, 0x5

    const/4 v7, 0x3

    if-eq v2, v1, :cond_9e

    .line 101
    sget-object v2, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Orientation;->VERTICAL:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Orientation;

    if-ne p3, v2, :cond_88

    const/16 p3, 0x50

    goto :goto_89

    :cond_88
    move p3, v6

    :goto_89
    iput p3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 104
    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout;->mPullLabel:Ljava/lang/CharSequence;

    .line 105
    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout;->mRefreshingLabel:Ljava/lang/CharSequence;

    .line 106
    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout;->mReleaseLabel:Ljava/lang/CharSequence;

    goto :goto_ba

    .line 91
    :cond_9e
    sget-object v2, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Orientation;->VERTICAL:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Orientation;

    if-ne p3, v2, :cond_a5

    const/16 p3, 0x30

    goto :goto_a6

    :cond_a5
    move p3, v7

    :goto_a6
    iput p3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 94
    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout;->mPullLabel:Ljava/lang/CharSequence;

    .line 95
    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout;->mRefreshingLabel:Ljava/lang/CharSequence;

    .line 96
    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout;->mReleaseLabel:Ljava/lang/CharSequence;

    :goto_ba
    const/4 p3, 0x7

    .line 110
    invoke-virtual {p4, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_ca

    .line 111
    invoke-virtual {p4, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    if-eqz p3, :cond_ca

    .line 113
    invoke-static {p0, p3}, Lcom/keephealth/android/views/pullscrollview/internal/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_ca
    const/16 p3, 0x9

    .line 117
    invoke-virtual {p4, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_df

    .line 118
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 119
    invoke-virtual {p4, p3, v0}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 120
    iget p3, v0, Landroid/util/TypedValue;->data:I

    invoke-direct {p0, p3}, Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout;->setTextAppearance(I)V

    :cond_df
    const/16 p3, 0x12

    .line 122
    invoke-virtual {p4, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_f4

    .line 123
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 124
    invoke-virtual {p4, p3, v0}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 125
    iget p3, v0, Landroid/util/TypedValue;->data:I

    invoke-direct {p0, p3}, Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout;->setSubTextAppearance(I)V

    :cond_f4
    const/16 p3, 0xa

    .line 129
    invoke-virtual {p4, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_105

    .line 130
    invoke-virtual {p4, p3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    if-eqz p3, :cond_105

    .line 132
    invoke-direct {p0, p3}, Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_105
    const/16 p3, 0x8

    .line 135
    invoke-virtual {p4, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_116

    .line 136
    invoke-virtual {p4, p3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    if-eqz p3, :cond_116

    .line 138
    invoke-direct {p0, p3}, Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout;->setSubTextColor(Landroid/content/res/ColorStateList;)V

    :cond_116
    const/4 p3, 0x2

    .line 144
    invoke-virtual {p4, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_122

    .line 145
    invoke-virtual {p4, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    goto :goto_123

    :cond_122
    const/4 p3, 0x0

    .line 150
    :goto_123
    sget-object v0, Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout$1;->$SwitchMap$com$keephealth$android$views$pullscrollview$PullToRefreshBase$Mode:[I

    invoke-virtual {p2}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;->ordinal()I

    move-result p2

    aget p2, v0, p2

    if-eq p2, v1, :cond_14b

    .line 153
    invoke-virtual {p4, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_138

    .line 154
    invoke-virtual {p4, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    goto :goto_168

    :cond_138
    const/4 p2, 0x6

    .line 155
    invoke-virtual {p4, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_168

    .line 156
    const-string p3, "ptrDrawableTop"

    const-string v0, "ptrDrawableStart"

    invoke-static {p3, v0}, Lcom/keephealth/android/views/pullscrollview/internal/Utils;->warnDeprecation(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-virtual {p4, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    goto :goto_168

    :cond_14b
    const/4 p2, 0x4

    .line 162
    invoke-virtual {p4, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_157

    .line 163
    invoke-virtual {p4, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    goto :goto_168

    .line 164
    :cond_157
    invoke-virtual {p4, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_168

    .line 165
    const-string p2, "ptrDrawableBottom"

    const-string p3, "ptrDrawableEnd"

    invoke-static {p2, p3}, Lcom/keephealth/android/views/pullscrollview/internal/Utils;->warnDeprecation(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    invoke-virtual {p4, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    :cond_168
    :goto_168
    if-nez p3, :cond_176

    .line 173
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p0}, Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout;->getDefaultDrawableResId()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 177
    :cond_176
    invoke-virtual {p0, p3}, Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout;->setLoadingDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 179
    invoke-virtual {p0}, Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout;->reset()V

    return-void
.end method

.method private setSubHeaderText(Ljava/lang/CharSequence;)V
    .registers 4

    .line 344
    iget-object v0, p0, Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    if-eqz v0, :cond_25

    .line 345
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_12

    .line 346
    iget-object p1, p0, Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_25

    .line 348
    :cond_12
    iget-object v0, p0, Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 352
    iget-object p1, p0, Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-ne v1, p1, :cond_25

    .line 353
    iget-object p1, p0, Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_25
    :goto_25
    return-void
.end method

.method private setSubTextAppearance(I)V
    .registers 4

    .line 360
    iget-object v0, p0, Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    if-eqz v0, :cond_b

    .line 361
    invoke-virtual {p0}, Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_b
    return-void
.end method

.method private setSubTextColor(Landroid/content/res/ColorStateList;)V
    .registers 3

    .line 366
    iget-object v0, p0, Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    if-eqz v0, :cond_7

    .line 367
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_7
    return-void
.end method

.method private setTextAppearance(I)V
    .registers 4

    .line 372
    iget-object v0, p0, Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout;->mHeaderText:Landroid/widget/TextView;

    if-eqz v0, :cond_b

    .line 373
    invoke-virtual {p0}, Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 375
    :cond_b
    iget-object v0, p0, Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    if-eqz v0, :cond_16

    .line 376
    invoke-virtual {p0}, Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_16
    return-void
.end method

.method private setTextColor(Landroid/content/res/ColorStateList;)V
    .registers 3

    .line 381
    iget-object v0, p0, Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout;->mHeaderText:Landroid/widget/TextView;

    if-eqz v0, :cond_7

    .line 382
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 384
    :cond_7
    iget-object v0, p0, Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    if-eqz v0, :cond_e

    .line 385
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_e
    return-void
.end method


# virtual methods
.method public final getContentSize()I
    .registers 3

    .line 195
    sget-object v0, Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout$1;->$SwitchMap$com$keephealth$android$views$pullscrollview$PullToRefreshBase$Orientation:[I

    iget-object v1, p0, Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout;->mScrollDirection:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Orientation;

    invoke-virtual {v1}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Orientation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_14

    .line 200
    iget-object v0, p0, Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout;->mInnerLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    return v0

    .line 197
    :cond_14
    iget-object v0, p0, Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout;->mInnerLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    return v0
.end method

.method protected abstract getDefaultDrawableResId()I
.end method

.method public final hideAllViews()V
    .registers 3

    .line 205
    iget-object v0, p0, Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-nez v0, :cond_e

    .line 206
    iget-object v0, p0, Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 208
    :cond_e
    iget-object v0, p0, Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout;->mHeaderProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1b

    .line 209
    iget-object v0, p0, Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout;->mHeaderProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 214
    :cond_1b
    iget-object v0, p0, Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_28

    .line 215
    iget-object v0, p0, Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_28
    return-void
.end method

.method protected abstract onLoadingDrawableSet(Landroid/graphics/drawable/Drawable;)V
.end method

.method public final onPull(F)V
    .registers 3

    .line 220
    iget-boolean v0, p0, Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout;->mUseIntrinsicAnimation:Z

    if-nez v0, :cond_7

    .line 221
    invoke-virtual {p0, p1}, Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout;->onPullImpl(F)V

    :cond_7
    return-void
.end method

.method protected abstract onPullImpl(F)V
.end method

.method public final pullToRefresh()V
    .registers 3

    .line 226
    iget-object v0, p0, Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout;->mHeaderText:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    .line 227
    iget-object v1, p0, Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout;->mPullLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    :cond_9
    invoke-virtual {p0}, Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout;->pullToRefreshImpl()V

    return-void
.end method

.method protected abstract pullToRefreshImpl()V
.end method

.method public final refreshing()V
    .registers 3

    .line 238
    iget-boolean v0, p0, Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout;->mUseIntrinsicAnimation:Z

    if-eqz v0, :cond_10

    .line 239
    iget-object v0, p0, Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_13

    .line 242
    :cond_10
    invoke-virtual {p0}, Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout;->refreshingImpl()V

    .line 244
    :goto_13
    iget-object v0, p0, Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    if-eqz v0, :cond_1c

    const/16 v1, 0x8

    .line 245
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1c
    return-void
.end method

.method protected abstract refreshingImpl()V
.end method

.method public final releaseToRefresh()V
    .registers 3

    .line 250
    iget-object v0, p0, Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout;->mHeaderText:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    .line 251
    iget-object v1, p0, Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout;->mReleaseLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 255
    :cond_9
    invoke-virtual {p0}, Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout;->releaseToRefreshImpl()V

    return-void
.end method

.method protected abstract releaseToRefreshImpl()V
.end method

.method public final reset()V
    .registers 3

    .line 259
    iget-object v0, p0, Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout;->mHeaderText:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    .line 260
    iget-object v1, p0, Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout;->mPullLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 263
    :cond_9
    iget-boolean v0, p0, Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout;->mUseIntrinsicAnimation:Z

    if-eqz v0, :cond_19

    .line 264
    iget-object v0, p0, Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    goto :goto_1c

    .line 267
    :cond_19
    invoke-virtual {p0}, Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout;->resetImpl()V

    .line 269
    :goto_1c
    iget-object v0, p0, Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    if-eqz v0, :cond_38

    .line 270
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 271
    iget-object v0, p0, Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_38

    .line 273
    :cond_32
    iget-object v0, p0, Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_38
    :goto_38
    return-void
.end method

.method protected abstract resetImpl()V
.end method

.method public final setHeight(I)V
    .registers 3

    .line 183
    invoke-virtual {p0}, Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 184
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 185
    invoke-virtual {p0}, Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout;->requestLayout()V

    return-void
.end method

.method public setLastUpdatedLabel(Ljava/lang/CharSequence;)V
    .registers 2

    .line 280
    invoke-direct {p0, p1}, Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout;->setSubHeaderText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setLoadingDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 285
    iget-object v0, p0, Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 286
    instance-of v0, p1, Landroid/graphics/drawable/AnimationDrawable;

    iput-boolean v0, p0, Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout;->mUseIntrinsicAnimation:Z

    .line 288
    invoke-virtual {p0, p1}, Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout;->onLoadingDrawableSet(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setPullLabel(Ljava/lang/CharSequence;)V
    .registers 2

    .line 292
    iput-object p1, p0, Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout;->mPullLabel:Ljava/lang/CharSequence;

    return-void
.end method

.method public setRefreshingLabel(Ljava/lang/CharSequence;)V
    .registers 3

    .line 297
    iput-object p1, p0, Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout;->mRefreshingLabel:Ljava/lang/CharSequence;

    .line 298
    iget-object v0, p0, Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setReleaseLabel(Ljava/lang/CharSequence;)V
    .registers 2

    .line 302
    iput-object p1, p0, Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout;->mReleaseLabel:Ljava/lang/CharSequence;

    return-void
.end method

.method public setTextTypeface(Landroid/graphics/Typeface;)V
    .registers 3

    .line 307
    iget-object v0, p0, Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method public final setWidth(I)V
    .registers 3

    .line 189
    invoke-virtual {p0}, Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 190
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 191
    invoke-virtual {p0}, Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout;->requestLayout()V

    return-void
.end method

.method public final showInvisibleViews()V
    .registers 4

    .line 311
    iget-object v0, p0, Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-ne v2, v0, :cond_f

    .line 312
    iget-object v0, p0, Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 314
    :cond_f
    iget-object v0, p0, Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout;->mHeaderProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-ne v2, v0, :cond_1c

    .line 315
    iget-object v0, p0, Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout;->mHeaderProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 320
    :cond_1c
    iget-object v0, p0, Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-ne v2, v0, :cond_29

    .line 321
    iget-object v0, p0, Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_29
    return-void
.end method
