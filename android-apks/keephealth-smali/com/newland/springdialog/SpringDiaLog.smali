.class public Lcom/newland/springdialog/SpringDiaLog;
.super Ljava/lang/Object;
.source "SpringDiaLog.java"


# instance fields
.field private androidContentView:Landroid/view/ViewGroup;

.field private heightY:D

.field private isCanceledOnTouchOutside:Z

.field private isOverScreen:Z

.field private isShowCloseButton:Z

.field private isShowing:Z

.field private isUseAnimation:Z

.field private mAnimationView:Landroid/widget/RelativeLayout;

.field private mBackGroudImg:I

.field private mCloseButton:Landroid/widget/ImageView;

.field private mCloseButtonImg:I

.field private mCloseButtonListener:Landroid/view/View$OnClickListener;

.field private mContainerView:Landroid/widget/RelativeLayout;

.field private mContentView:Landroid/view/View;

.field private mContentViewHeight:I

.field private mContentViewWidth:I

.field private mContentView_FrameLayout:Landroid/widget/FrameLayout;

.field private mContext:Landroid/app/Activity;

.field private mRootView:Landroid/view/View;

.field private mStartAnimAngle:I

.field private widthX:D


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;)V
    .registers 5

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 26
    iput v0, p0, Lcom/newland/springdialog/SpringDiaLog;->mBackGroudImg:I

    .line 27
    iput v0, p0, Lcom/newland/springdialog/SpringDiaLog;->mCloseButtonImg:I

    const/4 v0, 0x1

    .line 29
    iput-boolean v0, p0, Lcom/newland/springdialog/SpringDiaLog;->isOverScreen:Z

    .line 30
    iput-boolean v0, p0, Lcom/newland/springdialog/SpringDiaLog;->isShowCloseButton:Z

    .line 31
    iput-boolean v0, p0, Lcom/newland/springdialog/SpringDiaLog;->isCanceledOnTouchOutside:Z

    const/16 v1, 0x10e

    .line 32
    iput v1, p0, Lcom/newland/springdialog/SpringDiaLog;->mStartAnimAngle:I

    const/16 v1, 0x118

    .line 33
    iput v1, p0, Lcom/newland/springdialog/SpringDiaLog;->mContentViewWidth:I

    const/16 v1, 0x15e

    .line 34
    iput v1, p0, Lcom/newland/springdialog/SpringDiaLog;->mContentViewHeight:I

    .line 46
    iput-boolean v0, p0, Lcom/newland/springdialog/SpringDiaLog;->isUseAnimation:Z

    .line 50
    iput-object p1, p0, Lcom/newland/springdialog/SpringDiaLog;->mContext:Landroid/app/Activity;

    .line 51
    iput-object p2, p0, Lcom/newland/springdialog/SpringDiaLog;->mContentView:Landroid/view/View;

    .line 52
    invoke-direct {p0}, Lcom/newland/springdialog/SpringDiaLog;->initView()V

    return-void
.end method

.method static synthetic access$000(Lcom/newland/springdialog/SpringDiaLog;)Landroid/view/View$OnClickListener;
    .registers 1

    .line 22
    iget-object p0, p0, Lcom/newland/springdialog/SpringDiaLog;->mCloseButtonListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/newland/springdialog/SpringDiaLog;)Z
    .registers 1

    .line 22
    iget-boolean p0, p0, Lcom/newland/springdialog/SpringDiaLog;->isUseAnimation:Z

    return p0
.end method

.method static synthetic access$200(Lcom/newland/springdialog/SpringDiaLog;)Landroid/view/View;
    .registers 1

    .line 22
    iget-object p0, p0, Lcom/newland/springdialog/SpringDiaLog;->mRootView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$300(Lcom/newland/springdialog/SpringDiaLog;)Landroid/view/ViewGroup;
    .registers 1

    .line 22
    iget-object p0, p0, Lcom/newland/springdialog/SpringDiaLog;->androidContentView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$400(Lcom/newland/springdialog/SpringDiaLog;)D
    .registers 3

    .line 22
    iget-wide v0, p0, Lcom/newland/springdialog/SpringDiaLog;->widthX:D

    return-wide v0
.end method

.method static synthetic access$500(Lcom/newland/springdialog/SpringDiaLog;)D
    .registers 3

    .line 22
    iget-wide v0, p0, Lcom/newland/springdialog/SpringDiaLog;->heightY:D

    return-wide v0
.end method

.method static synthetic access$600(Lcom/newland/springdialog/SpringDiaLog;)Landroid/widget/RelativeLayout;
    .registers 1

    .line 22
    iget-object p0, p0, Lcom/newland/springdialog/SpringDiaLog;->mAnimationView:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method private initDisplayOpinion()V
    .registers 4

    .line 93
    iget-object v0, p0, Lcom/newland/springdialog/SpringDiaLog;->mContext:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 94
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    sput v1, Lcom/newland/springdialog/DisplayUtil;->density:F

    .line 95
    iget v1, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    sput v1, Lcom/newland/springdialog/DisplayUtil;->densityDPI:I

    .line 96
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v1, Lcom/newland/springdialog/DisplayUtil;->screenWidthPx:I

    .line 97
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    sput v1, Lcom/newland/springdialog/DisplayUtil;->screenhightPx:I

    .line 98
    iget-object v1, p0, Lcom/newland/springdialog/SpringDiaLog;->mContext:Landroid/app/Activity;

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    invoke-static {v1, v2}, Lcom/newland/springdialog/DisplayUtil;->px2dip(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    sput v1, Lcom/newland/springdialog/DisplayUtil;->screenWidthDip:F

    .line 99
    iget-object v1, p0, Lcom/newland/springdialog/SpringDiaLog;->mContext:Landroid/app/Activity;

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    invoke-static {v1, v0}, Lcom/newland/springdialog/DisplayUtil;->px2dip(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/newland/springdialog/DisplayUtil;->screenHightDip:F

    return-void
.end method

.method private initView()V
    .registers 5

    .line 62
    invoke-direct {p0}, Lcom/newland/springdialog/SpringDiaLog;->initDisplayOpinion()V

    .line 63
    sget v0, Lcom/newland/springdialog/DisplayUtil;->screenhightPx:I

    sget v1, Lcom/newland/springdialog/DisplayUtil;->screenhightPx:I

    mul-int/2addr v0, v1

    sget v1, Lcom/newland/springdialog/DisplayUtil;->screenWidthPx:I

    sget v2, Lcom/newland/springdialog/DisplayUtil;->screenWidthPx:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 64
    iget v2, p0, Lcom/newland/springdialog/SpringDiaLog;->mStartAnimAngle:I

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    neg-double v2, v2

    mul-double/2addr v2, v0

    iput-wide v2, p0, Lcom/newland/springdialog/SpringDiaLog;->heightY:D

    .line 65
    iget v2, p0, Lcom/newland/springdialog/SpringDiaLog;->mStartAnimAngle:I

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double/2addr v2, v0

    iput-wide v2, p0, Lcom/newland/springdialog/SpringDiaLog;->widthX:D

    .line 66
    iget-boolean v0, p0, Lcom/newland/springdialog/SpringDiaLog;->isOverScreen:Z

    if-eqz v0, :cond_43

    .line 67
    iget-object v0, p0, Lcom/newland/springdialog/SpringDiaLog;->mContext:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/newland/springdialog/SpringDiaLog;->androidContentView:Landroid/view/ViewGroup;

    goto :goto_54

    .line 69
    :cond_43
    iget-object v0, p0, Lcom/newland/springdialog/SpringDiaLog;->mContext:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/newland/springdialog/SpringDiaLog;->androidContentView:Landroid/view/ViewGroup;

    .line 71
    :goto_54
    iget-object v0, p0, Lcom/newland/springdialog/SpringDiaLog;->mContext:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/newland/springdialog/R$layout;->spring_dialog_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/newland/springdialog/SpringDiaLog;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_a3

    .line 73
    sget v1, Lcom/newland/springdialog/R$id;->iv_close:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/newland/springdialog/SpringDiaLog;->mCloseButton:Landroid/widget/ImageView;

    .line 74
    iget-object v1, p0, Lcom/newland/springdialog/SpringDiaLog;->mContext:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/newland/springdialog/R$drawable;->closebutton:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 76
    iget-object v0, p0, Lcom/newland/springdialog/SpringDiaLog;->mRootView:Landroid/view/View;

    sget v1, Lcom/newland/springdialog/R$id;->contentView:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/newland/springdialog/SpringDiaLog;->mContainerView:Landroid/widget/RelativeLayout;

    .line 78
    iget-object v0, p0, Lcom/newland/springdialog/SpringDiaLog;->mRootView:Landroid/view/View;

    sget v1, Lcom/newland/springdialog/R$id;->anim_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/newland/springdialog/SpringDiaLog;->mAnimationView:Landroid/widget/RelativeLayout;

    .line 80
    iget-object v0, p0, Lcom/newland/springdialog/SpringDiaLog;->mRootView:Landroid/view/View;

    sget v1, Lcom/newland/springdialog/R$id;->fl_content_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/newland/springdialog/SpringDiaLog;->mContentView_FrameLayout:Landroid/widget/FrameLayout;

    goto :goto_aa

    .line 83
    :cond_a3
    const-string v0, "\u63a7\u4ef6\u521d\u59cb\u5316\u5931\u8d25"

    const-string v1, "LayoutInflater\u83b7\u53d6\u6839\u89c6\u56fe\u5931\u8d25\uff01"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_aa
    return-void
.end method


# virtual methods
.method public close()V
    .registers 11

    .line 192
    iget-boolean v0, p0, Lcom/newland/springdialog/SpringDiaLog;->isShowing:Z

    if-eqz v0, :cond_36

    .line 193
    iget-boolean v0, p0, Lcom/newland/springdialog/SpringDiaLog;->isUseAnimation:Z

    if-nez v0, :cond_10

    .line 194
    iget-object v0, p0, Lcom/newland/springdialog/SpringDiaLog;->androidContentView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/newland/springdialog/SpringDiaLog;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_32

    .line 196
    :cond_10
    iget-object v0, p0, Lcom/newland/springdialog/SpringDiaLog;->mAnimationView:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lcom/newland/springdialog/AnimSpring;->getInstance(Landroid/view/View;)Lcom/newland/springdialog/AnimSpring;

    move-result-object v1

    iget-wide v2, p0, Lcom/newland/springdialog/SpringDiaLog;->widthX:D

    neg-double v6, v2

    iget-wide v2, p0, Lcom/newland/springdialog/SpringDiaLog;->heightY:D

    neg-double v8, v2

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    invoke-virtual/range {v1 .. v9}, Lcom/newland/springdialog/AnimSpring;->startTranslationAnim(DDDD)Lcom/newland/springdialog/AnimSpring;

    .line 197
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 198
    new-instance v1, Lcom/newland/springdialog/SpringDiaLog$3;

    invoke-direct {v1, p0}, Lcom/newland/springdialog/SpringDiaLog$3;-><init>(Lcom/newland/springdialog/SpringDiaLog;)V

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_32
    const/4 v0, 0x0

    .line 205
    iput-boolean v0, p0, Lcom/newland/springdialog/SpringDiaLog;->isShowing:Z

    goto :goto_3d

    .line 207
    :cond_36
    const-string v0, "\u5173\u95ed\u5931\u8d25"

    const-string v1, "\u5f39\u6846\u672a\u663e\u793a\uff01"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3d
    return-void
.end method

.method public getAndroidContentView()Landroid/view/ViewGroup;
    .registers 2

    .line 276
    iget-object v0, p0, Lcom/newland/springdialog/SpringDiaLog;->androidContentView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getRootView()Landroid/view/View;
    .registers 2

    .line 287
    iget-object v0, p0, Lcom/newland/springdialog/SpringDiaLog;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method public isOverScreen()Z
    .registers 2

    .line 230
    iget-boolean v0, p0, Lcom/newland/springdialog/SpringDiaLog;->isOverScreen:Z

    return v0
.end method

.method public setBackGroudImg(I)Lcom/newland/springdialog/SpringDiaLog;
    .registers 2

    .line 215
    iput p1, p0, Lcom/newland/springdialog/SpringDiaLog;->mBackGroudImg:I

    return-object p0
.end method

.method public setCanceledOnTouchOutside(Z)Lcom/newland/springdialog/SpringDiaLog;
    .registers 2

    .line 244
    iput-boolean p1, p0, Lcom/newland/springdialog/SpringDiaLog;->isCanceledOnTouchOutside:Z

    return-object p0
.end method

.method public setCloseButtonImg(I)Lcom/newland/springdialog/SpringDiaLog;
    .registers 2

    .line 220
    iput p1, p0, Lcom/newland/springdialog/SpringDiaLog;->mCloseButtonImg:I

    return-object p0
.end method

.method public setCloseButtonListener(Landroid/view/View$OnClickListener;)Lcom/newland/springdialog/SpringDiaLog;
    .registers 2

    .line 225
    iput-object p1, p0, Lcom/newland/springdialog/SpringDiaLog;->mCloseButtonListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public setContentViewHeight(I)Lcom/newland/springdialog/SpringDiaLog;
    .registers 2

    .line 259
    iput p1, p0, Lcom/newland/springdialog/SpringDiaLog;->mContentViewHeight:I

    return-object p0
.end method

.method public setContentViewWidth(I)Lcom/newland/springdialog/SpringDiaLog;
    .registers 2

    .line 254
    iput p1, p0, Lcom/newland/springdialog/SpringDiaLog;->mContentViewWidth:I

    return-object p0
.end method

.method public setOverScreen(Z)Lcom/newland/springdialog/SpringDiaLog;
    .registers 2

    .line 234
    iput-boolean p1, p0, Lcom/newland/springdialog/SpringDiaLog;->isOverScreen:Z

    return-object p0
.end method

.method public setShowCloseButton(Z)Lcom/newland/springdialog/SpringDiaLog;
    .registers 2

    .line 239
    iput-boolean p1, p0, Lcom/newland/springdialog/SpringDiaLog;->isShowCloseButton:Z

    return-object p0
.end method

.method public setStartAnimAngle(I)Lcom/newland/springdialog/SpringDiaLog;
    .registers 2

    .line 249
    iput p1, p0, Lcom/newland/springdialog/SpringDiaLog;->mStartAnimAngle:I

    return-object p0
.end method

.method public setUseAnimation(Z)Lcom/newland/springdialog/SpringDiaLog;
    .registers 2

    .line 264
    iput-boolean p1, p0, Lcom/newland/springdialog/SpringDiaLog;->isUseAnimation:Z

    return-object p0
.end method

.method public show()V
    .registers 11

    .line 108
    iget-object v0, p0, Lcom/newland/springdialog/SpringDiaLog;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_d9

    const/4 v0, 0x1

    .line 109
    iput-boolean v0, p0, Lcom/newland/springdialog/SpringDiaLog;->isShowing:Z

    .line 110
    iget-boolean v0, p0, Lcom/newland/springdialog/SpringDiaLog;->isShowCloseButton:Z

    if-eqz v0, :cond_16

    .line 111
    iget-object v0, p0, Lcom/newland/springdialog/SpringDiaLog;->mCloseButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/newland/springdialog/SpringDiaLog$1;

    invoke-direct {v1, p0}, Lcom/newland/springdialog/SpringDiaLog$1;-><init>(Lcom/newland/springdialog/SpringDiaLog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2b

    .line 132
    :cond_16
    iget-object v0, p0, Lcom/newland/springdialog/SpringDiaLog;->mCloseButton:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 133
    iget-boolean v0, p0, Lcom/newland/springdialog/SpringDiaLog;->isCanceledOnTouchOutside:Z

    if-eqz v0, :cond_2b

    .line 134
    iget-object v0, p0, Lcom/newland/springdialog/SpringDiaLog;->mRootView:Landroid/view/View;

    new-instance v1, Lcom/newland/springdialog/SpringDiaLog$2;

    invoke-direct {v1, p0}, Lcom/newland/springdialog/SpringDiaLog$2;-><init>(Lcom/newland/springdialog/SpringDiaLog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    :cond_2b
    :goto_2b
    iget v0, p0, Lcom/newland/springdialog/SpringDiaLog;->mCloseButtonImg:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_41

    .line 155
    iget-object v0, p0, Lcom/newland/springdialog/SpringDiaLog;->mCloseButton:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/newland/springdialog/SpringDiaLog;->mContext:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/newland/springdialog/SpringDiaLog;->mCloseButtonImg:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 157
    :cond_41
    iget v0, p0, Lcom/newland/springdialog/SpringDiaLog;->mBackGroudImg:I

    if-eq v0, v1, :cond_56

    .line 158
    iget-object v0, p0, Lcom/newland/springdialog/SpringDiaLog;->mContainerView:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/newland/springdialog/SpringDiaLog;->mContext:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/newland/springdialog/SpringDiaLog;->mBackGroudImg:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 162
    :cond_56
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 163
    iget-object v2, p0, Lcom/newland/springdialog/SpringDiaLog;->mContext:Landroid/app/Activity;

    iget v3, p0, Lcom/newland/springdialog/SpringDiaLog;->mContentViewWidth:I

    int-to-float v3, v3

    invoke-static {v2, v3}, Lcom/newland/springdialog/DisplayUtil;->dip2px(Landroid/content/Context;F)I

    move-result v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 164
    iget-object v2, p0, Lcom/newland/springdialog/SpringDiaLog;->mContext:Landroid/app/Activity;

    iget v3, p0, Lcom/newland/springdialog/SpringDiaLog;->mContentViewHeight:I

    int-to-float v3, v3

    invoke-static {v2, v3}, Lcom/newland/springdialog/DisplayUtil;->dip2px(Landroid/content/Context;F)I

    move-result v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 165
    iget-object v2, p0, Lcom/newland/springdialog/SpringDiaLog;->mContainerView:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 168
    iget-object v0, p0, Lcom/newland/springdialog/SpringDiaLog;->mContentView_FrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 169
    iget-object v0, p0, Lcom/newland/springdialog/SpringDiaLog;->mContentView_FrameLayout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/newland/springdialog/SpringDiaLog;->mContentView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 170
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 171
    iget-object v1, p0, Lcom/newland/springdialog/SpringDiaLog;->androidContentView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/newland/springdialog/SpringDiaLog;->mRootView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 172
    iget-object v1, p0, Lcom/newland/springdialog/SpringDiaLog;->androidContentView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/newland/springdialog/SpringDiaLog;->mRootView:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 174
    iget-boolean v0, p0, Lcom/newland/springdialog/SpringDiaLog;->isUseAnimation:Z

    if-eqz v0, :cond_e0

    .line 176
    sget v0, Lcom/newland/springdialog/DisplayUtil;->screenhightPx:I

    sget v1, Lcom/newland/springdialog/DisplayUtil;->screenhightPx:I

    mul-int/2addr v0, v1

    sget v1, Lcom/newland/springdialog/DisplayUtil;->screenWidthPx:I

    sget v2, Lcom/newland/springdialog/DisplayUtil;->screenWidthPx:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 177
    iget v2, p0, Lcom/newland/springdialog/SpringDiaLog;->mStartAnimAngle:I

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    neg-double v2, v2

    mul-double/2addr v2, v0

    iput-wide v2, p0, Lcom/newland/springdialog/SpringDiaLog;->heightY:D

    .line 178
    iget v2, p0, Lcom/newland/springdialog/SpringDiaLog;->mStartAnimAngle:I

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double/2addr v2, v0

    iput-wide v2, p0, Lcom/newland/springdialog/SpringDiaLog;->widthX:D

    .line 179
    iget-object v0, p0, Lcom/newland/springdialog/SpringDiaLog;->mAnimationView:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lcom/newland/springdialog/AnimSpring;->getInstance(Landroid/view/View;)Lcom/newland/springdialog/AnimSpring;

    move-result-object v1

    iget-wide v2, p0, Lcom/newland/springdialog/SpringDiaLog;->widthX:D

    iget-wide v4, p0, Lcom/newland/springdialog/SpringDiaLog;->heightY:D

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    invoke-virtual/range {v1 .. v9}, Lcom/newland/springdialog/AnimSpring;->startTranslationAnim(DDDD)Lcom/newland/springdialog/AnimSpring;

    goto :goto_e0

    .line 182
    :cond_d9
    const-string v0, "\u63a7\u4ef6\u521d\u59cb\u5316\u5931\u8d25"

    const-string v1, "LayoutInflater\u83b7\u53d6\u6839\u89c6\u56fe\u5931\u8d25\uff01"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e0
    :goto_e0
    return-void
.end method
