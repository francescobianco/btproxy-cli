.class public Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;
.super Landroid/widget/PopupWindow;
.source "SmartPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keephealth/android/views/popupwindow/SmartPopupWindow$Builder;
    }
.end annotation


# instance fields
.field private isOnlyGetWH:Z

.field private isTouchOutsideDismiss:Z

.field private mAlpha:F

.field private mAnchorView:Landroid/view/View;

.field private mAnimationStyle:I

.field private mContentView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mHeight:I

.field private mHorizontalGravity:I

.field private mOffsetX:I

.field private mOffsetY:I

.field private final mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private mVerticalGravity:I

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 56
    invoke-direct {p0, p1, v0}, Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 60
    invoke-direct {p0, p1, p2, v0}, Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 64
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, -0x2

    .line 35
    iput p2, p0, Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;->mWidth:I

    .line 36
    iput p2, p0, Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;->mHeight:I

    const/high16 p2, 0x3f800000    # 1.0f

    .line 37
    iput p2, p0, Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;->mAlpha:F

    const/4 p2, 0x1

    .line 40
    iput-boolean p2, p0, Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;->isTouchOutsideDismiss:Z

    const/4 p3, -0x1

    .line 41
    iput p3, p0, Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;->mAnimationStyle:I

    .line 46
    iput-boolean p2, p0, Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;->isOnlyGetWH:Z

    const/4 p3, 0x2

    .line 48
    iput p3, p0, Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;->mVerticalGravity:I

    .line 50
    iput p2, p0, Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;->mHorizontalGravity:I

    .line 237
    new-instance p2, Lcom/keephealth/android/views/popupwindow/SmartPopupWindow$3;

    invoke-direct {p2, p0}, Lcom/keephealth/android/views/popupwindow/SmartPopupWindow$3;-><init>(Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;)V

    iput-object p2, p0, Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 65
    iput-object p1, p0, Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;)I
    .registers 1

    .line 33
    iget p0, p0, Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;->mWidth:I

    return p0
.end method

.method static synthetic access$002(Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;I)I
    .registers 2

    .line 33
    iput p1, p0, Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;->mWidth:I

    return p1
.end method

.method static synthetic access$100(Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;)I
    .registers 1

    .line 33
    iget p0, p0, Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;->mHeight:I

    return p0
.end method

.method static synthetic access$1000(Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;F)V
    .registers 2

    .line 33
    invoke-direct {p0, p1}, Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;->setWindowBackgroundAlpha(F)V

    return-void
.end method

.method static synthetic access$102(Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;I)I
    .registers 2

    .line 33
    iput p1, p0, Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;->mHeight:I

    return p1
.end method

.method static synthetic access$1102(Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;Landroid/content/Context;)Landroid/content/Context;
    .registers 2

    .line 33
    iput-object p1, p0, Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;->mContext:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic access$1202(Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;Landroid/view/View;)Landroid/view/View;
    .registers 2

    .line 33
    iput-object p1, p0, Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;->mContentView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$1302(Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;I)I
    .registers 2

    .line 33
    iput p1, p0, Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;->mAnimationStyle:I

    return p1
.end method

.method static synthetic access$1402(Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;F)F
    .registers 2

    .line 33
    iput p1, p0, Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;->mAlpha:F

    return p1
.end method

.method static synthetic access$1502(Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;Z)Z
    .registers 2

    .line 33
    iput-boolean p1, p0, Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;->isTouchOutsideDismiss:Z

    return p1
.end method

.method static synthetic access$200(Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;)Z
    .registers 1

    .line 33
    iget-boolean p0, p0, Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;->isOnlyGetWH:Z

    return p0
.end method

.method static synthetic access$300(Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;)V
    .registers 1

    .line 33
    invoke-direct {p0}, Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;->removeGlobalLayoutListener()V

    return-void
.end method

.method static synthetic access$400(Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;)Landroid/view/View;
    .registers 1

    .line 33
    iget-object p0, p0, Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;->mAnchorView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$500(Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;)I
    .registers 1

    .line 33
    iget p0, p0, Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;->mVerticalGravity:I

    return p0
.end method

.method static synthetic access$600(Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;)I
    .registers 1

    .line 33
    iget p0, p0, Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;->mHorizontalGravity:I

    return p0
.end method

.method static synthetic access$700(Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;)I
    .registers 1

    .line 33
    iget p0, p0, Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;->mOffsetX:I

    return p0
.end method

.method static synthetic access$800(Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;)I
    .registers 1

    .line 33
    iget p0, p0, Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;->mOffsetY:I

    return p0
.end method

.method static synthetic access$900(Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;IILandroid/view/View;IIII)V
    .registers 8

    .line 33
    invoke-direct/range {p0 .. p7}, Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;->updateLocation(IILandroid/view/View;IIII)V

    return-void
.end method

.method private addGlobalLayoutListener(Landroid/view/View;)V
    .registers 3

    .line 272
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object v0, p0, Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method private calculateX(Landroid/view/View;III)I
    .registers 7

    const/4 v0, 0x2

    if-eqz p2, :cond_19

    const/4 v1, 0x1

    if-eq p2, v1, :cond_17

    if-eq p2, v0, :cond_12

    const/4 v0, 0x4

    if-eq p2, v0, :cond_c

    goto :goto_21

    .line 206
    :cond_c
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    sub-int/2addr p3, p1

    goto :goto_17

    .line 215
    :cond_12
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    goto :goto_20

    :cond_17
    :goto_17
    sub-int/2addr p4, p3

    goto :goto_21

    .line 209
    :cond_19
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    div-int/2addr p1, v0

    div-int/2addr p3, v0

    sub-int/2addr p1, p3

    :goto_20
    add-int/2addr p4, p1

    :goto_21
    return p4
.end method

.method private calculateY(Landroid/view/View;III)I
    .registers 6

    if-eqz p2, :cond_18

    const/4 v0, 0x1

    if-eq p2, v0, :cond_11

    const/4 v0, 0x3

    if-eq p2, v0, :cond_c

    const/4 p1, 0x4

    if-eq p2, p1, :cond_16

    goto :goto_22

    .line 187
    :cond_c
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    goto :goto_21

    .line 178
    :cond_11
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr p3, p1

    :cond_16
    sub-int/2addr p4, p3

    goto :goto_22

    .line 184
    :cond_18
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    div-int/lit8 p3, p3, 0x2

    add-int/2addr p1, p3

    :goto_21
    sub-int/2addr p4, p1

    :goto_22
    return p4
.end method

.method private dismissBackgroundAnimator()V
    .registers 5

    .line 304
    iget v0, p0, Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;->mAlpha:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v1

    if-ltz v2, :cond_9

    return-void

    :cond_9
    const/4 v2, 0x2

    .line 305
    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v0, 0x1

    aput v1, v2, v0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 306
    new-instance v1, Lcom/keephealth/android/views/popupwindow/SmartPopupWindow$5;

    invoke-direct {v1, p0}, Lcom/keephealth/android/views/popupwindow/SmartPopupWindow$5;-><init>(Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v1, 0x168

    .line 314
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 315
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private static getDropDownMeasureSpecMode(I)I
    .registers 2

    const/4 v0, -0x2

    if-eq p0, v0, :cond_6

    const/high16 p0, 0x40000000    # 2.0f

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method private static makeDropDownMeasureSpec(I)I
    .registers 2

    .line 224
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p0}, Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;->getDropDownMeasureSpecMode(I)I

    move-result p0

    invoke-static {v0, p0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    return p0
.end method

.method private removeGlobalLayoutListener()V
    .registers 3

    .line 262
    invoke-virtual {p0}, Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 264
    invoke-virtual {p0}, Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_13
    return-void
.end method

.method private setWindowBackgroundAlpha(F)V
    .registers 4

    .line 322
    iget-object v0, p0, Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;->mContext:Landroid/content/Context;

    if-nez v0, :cond_5

    return-void

    .line 323
    :cond_5
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_18

    .line 324
    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 325
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 326
    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 327
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_18
    return-void
.end method

.method private showBackgroundAnimator()V
    .registers 5

    .line 286
    iget v0, p0, Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;->mAlpha:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v1

    if-ltz v2, :cond_9

    return-void

    :cond_9
    const/4 v2, 0x2

    .line 287
    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v1, v2, v3

    const/4 v1, 0x1

    aput v0, v2, v1

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 288
    new-instance v1, Lcom/keephealth/android/views/popupwindow/SmartPopupWindow$4;

    invoke-direct {v1, p0}, Lcom/keephealth/android/views/popupwindow/SmartPopupWindow$4;-><init>(Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v1, 0x168

    .line 296
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 297
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private touchOutsideDismiss(Z)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_31

    .line 80
    invoke-virtual {p0, v1}, Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;->setFocusable(Z)V

    .line 81
    invoke-virtual {p0, v0}, Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;->setOutsideTouchable(Z)V

    const/4 p1, 0x0

    .line 82
    invoke-virtual {p0, p1}, Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 84
    invoke-virtual {p0}, Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;->getContentView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 85
    invoke-virtual {p0}, Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;->getContentView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 86
    invoke-virtual {p0}, Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;->getContentView()Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/keephealth/android/views/popupwindow/SmartPopupWindow$1;

    invoke-direct {v0, p0}, Lcom/keephealth/android/views/popupwindow/SmartPopupWindow$1;-><init>(Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 97
    new-instance p1, Lcom/keephealth/android/views/popupwindow/SmartPopupWindow$2;

    invoke-direct {p1, p0}, Lcom/keephealth/android/views/popupwindow/SmartPopupWindow$2;-><init>(Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;)V

    invoke-virtual {p0, p1}, Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    goto :goto_3f

    .line 116
    :cond_31
    invoke-virtual {p0, v1}, Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;->setFocusable(Z)V

    .line 117
    invoke-virtual {p0, v1}, Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;->setOutsideTouchable(Z)V

    .line 118
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, p1}, Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_3f
    return-void
.end method

.method private updateLocation(IILandroid/view/View;IIII)V
    .registers 14

    .line 256
    invoke-direct {p0, p3, p5, p1, p6}, Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;->calculateX(Landroid/view/View;III)I

    move-result v2

    .line 257
    invoke-direct {p0, p3, p4, p2, p7}, Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;->calculateY(Landroid/view/View;III)I

    move-result v3

    move-object v0, p0

    move-object v1, p3

    move v4, p1

    move v5, p2

    .line 258
    invoke-virtual/range {v0 .. v5}, Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;->update(Landroid/view/View;IIII)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .registers 1

    .line 277
    invoke-super {p0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 278
    invoke-direct {p0}, Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;->dismissBackgroundAnimator()V

    .line 279
    invoke-direct {p0}, Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;->removeGlobalLayoutListener()V

    return-void
.end method

.method public init()V
    .registers 3

    .line 69
    iget-object v0, p0, Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;->setContentView(Landroid/view/View;)V

    .line 70
    iget v0, p0, Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;->mHeight:I

    invoke-virtual {p0, v0}, Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;->setHeight(I)V

    .line 71
    iget v0, p0, Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;->mWidth:I

    invoke-virtual {p0, v0}, Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;->setWidth(I)V

    .line 72
    iget-boolean v0, p0, Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;->isTouchOutsideDismiss:Z

    invoke-direct {p0, v0}, Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;->touchOutsideDismiss(Z)V

    .line 73
    iget v0, p0, Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;->mAnimationStyle:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1c

    .line 74
    invoke-virtual {p0, v0}, Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;->setAnimationStyle(I)V

    :cond_1c
    return-void
.end method

.method public showAtAnchorView(Landroid/view/View;II)V
    .registers 5

    const/4 v0, 0x1

    .line 133
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;->showAtAnchorView(Landroid/view/View;IIZ)V

    return-void
.end method

.method public showAtAnchorView(Landroid/view/View;IIII)V
    .registers 13

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 140
    invoke-virtual/range {v0 .. v6}, Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;->showAtAnchorView(Landroid/view/View;IIIIZ)V

    return-void
.end method

.method public showAtAnchorView(Landroid/view/View;IIIIZ)V
    .registers 12

    const/4 v0, 0x0

    .line 144
    iput-boolean v0, p0, Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;->isOnlyGetWH:Z

    .line 145
    iput-object p1, p0, Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;->mAnchorView:Landroid/view/View;

    .line 146
    iput p4, p0, Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;->mOffsetX:I

    .line 147
    iput p5, p0, Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;->mOffsetY:I

    .line 148
    iput p2, p0, Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;->mVerticalGravity:I

    .line 149
    iput p3, p0, Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;->mHorizontalGravity:I

    .line 150
    invoke-direct {p0}, Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;->showBackgroundAnimator()V

    .line 151
    invoke-virtual {p0}, Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;->getContentView()Landroid/view/View;

    move-result-object v1

    .line 152
    invoke-direct {p0, v1}, Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;->addGlobalLayoutListener(Landroid/view/View;)V

    .line 153
    invoke-virtual {p0, p6}, Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;->setClippingEnabled(Z)V

    .line 154
    invoke-virtual {p0}, Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;->getWidth()I

    move-result v2

    invoke-static {v2}, Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;->makeDropDownMeasureSpec(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;->getHeight()I

    move-result v3

    invoke-static {v3}, Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;->makeDropDownMeasureSpec(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/view/View;->measure(II)V

    .line 155
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 156
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    if-nez p6, :cond_49

    const/4 v3, 0x2

    .line 158
    new-array v3, v3, [I

    .line 159
    invoke-virtual {p1, v3}, Landroid/view/View;->getLocationInWindow([I)V

    .line 160
    aget v4, v3, v0

    add-int/2addr p4, v4

    const/4 v4, 0x1

    .line 161
    aget v3, v3, v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr p5, v3

    .line 163
    :cond_49
    invoke-direct {p0, p1, p2, v1, p5}, Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;->calculateY(Landroid/view/View;III)I

    move-result p2

    .line 164
    invoke-direct {p0, p1, p3, v2, p4}, Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;->calculateX(Landroid/view/View;III)I

    move-result p3

    if-eqz p6, :cond_57

    .line 166
    invoke-static {p0, p1, p3, p2, v0}, Landroidx/core/widget/PopupWindowCompat;->showAsDropDown(Landroid/widget/PopupWindow;Landroid/view/View;III)V

    goto :goto_5a

    .line 168
    :cond_57
    invoke-virtual {p0, p1, v0, p3, p2}, Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;->showAtLocation(Landroid/view/View;III)V

    :goto_5a
    return-void
.end method

.method public showAtAnchorView(Landroid/view/View;IIZ)V
    .registers 12

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v6, p4

    .line 137
    invoke-virtual/range {v0 .. v6}, Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;->showAtAnchorView(Landroid/view/View;IIIIZ)V

    return-void
.end method

.method public showAtLocation(Landroid/view/View;III)V
    .registers 6

    const/4 v0, 0x1

    .line 124
    iput-boolean v0, p0, Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;->isOnlyGetWH:Z

    .line 125
    iput-object p1, p0, Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;->mAnchorView:Landroid/view/View;

    .line 126
    iput p3, p0, Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;->mOffsetX:I

    .line 127
    iput p4, p0, Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;->mOffsetY:I

    .line 128
    invoke-virtual {p0}, Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;->addGlobalLayoutListener(Landroid/view/View;)V

    .line 129
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method
