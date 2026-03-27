.class public Lcom/keephealth/android/views/StereoView;
.super Landroid/view/ViewGroup;
.source "StereoView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keephealth/android/views/StereoView$State;,
        Lcom/keephealth/android/views/StereoView$IStereoListener;
    }
.end annotation


# static fields
.field private static final flingSpeed:I = 0x320

.field private static final standerSpeed:I = 0x7d0


# instance fields
.field private addCount:I

.field private alreadyAdd:I

.field private iStereoListener:Lcom/keephealth/android/views/StereoView$IStereoListener;

.field private isAdding:Z

.field private isCan3D:Z

.field private isSliding:Z

.field private mAngle:F

.field private mCamera:Landroid/graphics/Camera;

.field private mContext:Landroid/content/Context;

.field private mCurScreen:I

.field private mDownX:F

.field private mDownY:F

.field private mHeight:I

.field private mMatrix:Landroid/graphics/Matrix;

.field private mScroller:Landroid/widget/Scroller;

.field private mStartScreen:I

.field private mState:Lcom/keephealth/android/views/StereoView$State;

.field private mTempY:F

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mWidth:I

.field private resistance:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, p1, v0}, Lcom/keephealth/android/views/StereoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 59
    invoke-direct {p0, p1, p2, v0}, Lcom/keephealth/android/views/StereoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 63
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x1

    .line 29
    iput p2, p0, Lcom/keephealth/android/views/StereoView;->mStartScreen:I

    const p3, 0x3fe66666    # 1.8f

    .line 30
    iput p3, p0, Lcom/keephealth/android/views/StereoView;->resistance:F

    const/high16 p3, 0x42b40000    # 90.0f

    .line 32
    iput p3, p0, Lcom/keephealth/android/views/StereoView;->mAngle:F

    .line 33
    iput-boolean p2, p0, Lcom/keephealth/android/views/StereoView;->isCan3D:Z

    const/4 p3, 0x0

    .line 45
    iput p3, p0, Lcom/keephealth/android/views/StereoView;->alreadyAdd:I

    .line 46
    iput-boolean p3, p0, Lcom/keephealth/android/views/StereoView;->isAdding:Z

    .line 47
    iput p2, p0, Lcom/keephealth/android/views/StereoView;->mCurScreen:I

    .line 50
    iput-boolean p3, p0, Lcom/keephealth/android/views/StereoView;->isSliding:Z

    .line 52
    sget-object p2, Lcom/keephealth/android/views/StereoView$State;->Normal:Lcom/keephealth/android/views/StereoView$State;

    iput-object p2, p0, Lcom/keephealth/android/views/StereoView;->mState:Lcom/keephealth/android/views/StereoView$State;

    .line 64
    iput-object p1, p0, Lcom/keephealth/android/views/StereoView;->mContext:Landroid/content/Context;

    .line 65
    invoke-direct {p0, p1}, Lcom/keephealth/android/views/StereoView;->init(Landroid/content/Context;)V

    return-void
.end method

.method private addNext()V
    .registers 4

    .line 313
    iget v0, p0, Lcom/keephealth/android/views/StereoView;->mCurScreen:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Lcom/keephealth/android/views/StereoView;->getChildCount()I

    move-result v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/keephealth/android/views/StereoView;->mCurScreen:I

    .line 314
    invoke-virtual {p0}, Lcom/keephealth/android/views/StereoView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    .line 315
    invoke-virtual {p0, v1}, Lcom/keephealth/android/views/StereoView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 316
    invoke-virtual {p0, v1}, Lcom/keephealth/android/views/StereoView;->removeViewAt(I)V

    add-int/lit8 v0, v0, -0x1

    .line 317
    invoke-virtual {p0, v2, v0}, Lcom/keephealth/android/views/StereoView;->addView(Landroid/view/View;I)V

    .line 318
    iget-object v0, p0, Lcom/keephealth/android/views/StereoView;->iStereoListener:Lcom/keephealth/android/views/StereoView$IStereoListener;

    if-eqz v0, :cond_25

    .line 319
    iget v1, p0, Lcom/keephealth/android/views/StereoView;->mCurScreen:I

    invoke-interface {v0, v1}, Lcom/keephealth/android/views/StereoView$IStereoListener;->toNext(I)V

    :cond_25
    return-void
.end method

.method private addPre()V
    .registers 3

    .line 327
    iget v0, p0, Lcom/keephealth/android/views/StereoView;->mCurScreen:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0}, Lcom/keephealth/android/views/StereoView;->getChildCount()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/keephealth/android/views/StereoView;->getChildCount()I

    move-result v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/keephealth/android/views/StereoView;->mCurScreen:I

    .line 328
    invoke-virtual {p0}, Lcom/keephealth/android/views/StereoView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 329
    invoke-virtual {p0, v0}, Lcom/keephealth/android/views/StereoView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 330
    invoke-virtual {p0, v0}, Lcom/keephealth/android/views/StereoView;->removeViewAt(I)V

    const/4 v0, 0x0

    .line 331
    invoke-virtual {p0, v1, v0}, Lcom/keephealth/android/views/StereoView;->addView(Landroid/view/View;I)V

    .line 332
    iget-object v0, p0, Lcom/keephealth/android/views/StereoView;->iStereoListener:Lcom/keephealth/android/views/StereoView$IStereoListener;

    if-eqz v0, :cond_2a

    .line 333
    iget v1, p0, Lcom/keephealth/android/views/StereoView;->mCurScreen:I

    invoke-interface {v0, v1}, Lcom/keephealth/android/views/StereoView$IStereoListener;->toPre(I)V

    :cond_2a
    return-void
.end method

.method private changeByState(F)V
    .registers 4

    const/4 v0, 0x0

    .line 197
    iput v0, p0, Lcom/keephealth/android/views/StereoView;->alreadyAdd:I

    .line 198
    invoke-virtual {p0}, Lcom/keephealth/android/views/StereoView;->getScrollY()I

    move-result v0

    iget v1, p0, Lcom/keephealth/android/views/StereoView;->mHeight:I

    if-eq v0, v1, :cond_2d

    .line 199
    sget-object v0, Lcom/keephealth/android/views/StereoView$1;->$SwitchMap$com$keephealth$android$views$StereoView$State:[I

    iget-object v1, p0, Lcom/keephealth/android/views/StereoView;->mState:Lcom/keephealth/android/views/StereoView$State;

    invoke-virtual {v1}, Lcom/keephealth/android/views/StereoView$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_27

    const/4 v1, 0x2

    if-eq v0, v1, :cond_23

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1f

    goto :goto_2a

    .line 207
    :cond_1f
    invoke-direct {p0, p1}, Lcom/keephealth/android/views/StereoView;->toNextAction(F)V

    goto :goto_2a

    .line 204
    :cond_23
    invoke-direct {p0, p1}, Lcom/keephealth/android/views/StereoView;->toPreAction(F)V

    goto :goto_2a

    .line 201
    :cond_27
    invoke-direct {p0}, Lcom/keephealth/android/views/StereoView;->toNormalAction()V

    .line 210
    :goto_2a
    invoke-virtual {p0}, Lcom/keephealth/android/views/StereoView;->invalidate()V

    :cond_2d
    return-void
.end method

.method private drawScreen(Landroid/graphics/Canvas;IJ)V
    .registers 10

    .line 375
    iget v0, p0, Lcom/keephealth/android/views/StereoView;->mHeight:I

    mul-int/2addr v0, p2

    .line 377
    invoke-virtual {p0}, Lcom/keephealth/android/views/StereoView;->getScrollY()I

    move-result v1

    iget v2, p0, Lcom/keephealth/android/views/StereoView;->mHeight:I

    add-int/2addr v1, v2

    if-ge v1, v0, :cond_d

    return-void

    .line 380
    :cond_d
    invoke-virtual {p0}, Lcom/keephealth/android/views/StereoView;->getScrollY()I

    move-result v1

    iget v2, p0, Lcom/keephealth/android/views/StereoView;->mHeight:I

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_17

    return-void

    .line 383
    :cond_17
    iget v1, p0, Lcom/keephealth/android/views/StereoView;->mWidth:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    .line 384
    invoke-virtual {p0}, Lcom/keephealth/android/views/StereoView;->getScrollY()I

    move-result v2

    if-le v2, v0, :cond_27

    iget v2, p0, Lcom/keephealth/android/views/StereoView;->mHeight:I

    add-int/2addr v2, v0

    int-to-float v2, v2

    goto :goto_28

    :cond_27
    int-to-float v2, v0

    .line 385
    :goto_28
    iget v3, p0, Lcom/keephealth/android/views/StereoView;->mAngle:F

    invoke-virtual {p0}, Lcom/keephealth/android/views/StereoView;->getScrollY()I

    move-result v4

    sub-int/2addr v4, v0

    int-to-float v0, v4

    mul-float/2addr v3, v0

    iget v0, p0, Lcom/keephealth/android/views/StereoView;->mHeight:I

    int-to-float v0, v0

    div-float/2addr v3, v0

    const/high16 v0, 0x42b40000    # 90.0f

    cmpl-float v0, v3, v0

    if-gtz v0, :cond_76

    const/high16 v0, -0x3d4c0000    # -90.0f

    cmpg-float v0, v3, v0

    if-gez v0, :cond_42

    goto :goto_76

    .line 389
    :cond_42
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 391
    iget-object v0, p0, Lcom/keephealth/android/views/StereoView;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v0}, Landroid/graphics/Camera;->save()V

    .line 392
    iget-object v0, p0, Lcom/keephealth/android/views/StereoView;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v0, v3}, Landroid/graphics/Camera;->rotateX(F)V

    .line 393
    iget-object v0, p0, Lcom/keephealth/android/views/StereoView;->mCamera:Landroid/graphics/Camera;

    iget-object v3, p0, Lcom/keephealth/android/views/StereoView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v3}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 394
    iget-object v0, p0, Lcom/keephealth/android/views/StereoView;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v0}, Landroid/graphics/Camera;->restore()V

    .line 396
    iget-object v0, p0, Lcom/keephealth/android/views/StereoView;->mMatrix:Landroid/graphics/Matrix;

    neg-float v3, v1

    neg-float v4, v2

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 397
    iget-object v0, p0, Lcom/keephealth/android/views/StereoView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 398
    iget-object v0, p0, Lcom/keephealth/android/views/StereoView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 399
    invoke-virtual {p0, p2}, Lcom/keephealth/android/views/StereoView;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/keephealth/android/views/StereoView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 400
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_76
    :goto_76
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .registers 3

    .line 72
    invoke-virtual {p0}, Lcom/keephealth/android/views/StereoView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/views/StereoView;->mTouchSlop:I

    .line 73
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/views/StereoView;->mCamera:Landroid/graphics/Camera;

    .line 74
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/views/StereoView;->mMatrix:Landroid/graphics/Matrix;

    .line 75
    iget-object v0, p0, Lcom/keephealth/android/views/StereoView;->mScroller:Landroid/widget/Scroller;

    if-nez v0, :cond_27

    .line 76
    new-instance v0, Landroid/widget/Scroller;

    invoke-direct {v0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/keephealth/android/views/StereoView;->mScroller:Landroid/widget/Scroller;

    :cond_27
    return-void
.end method

.method private recycleMove(I)V
    .registers 6

    .line 338
    iget v0, p0, Lcom/keephealth/android/views/StereoView;->mHeight:I

    rem-int/2addr p1, v0

    int-to-float p1, p1

    .line 339
    iget v0, p0, Lcom/keephealth/android/views/StereoView;->resistance:F

    div-float/2addr p1, v0

    float-to-int p1, p1

    .line 340
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/keephealth/android/views/StereoView;->mHeight:I

    div-int/lit8 v1, v1, 0x4

    if-le v0, v1, :cond_13

    return-void

    :cond_13
    const/4 v0, 0x0

    .line 343
    invoke-virtual {p0, v0, p1}, Lcom/keephealth/android/views/StereoView;->scrollBy(II)V

    .line 344
    invoke-virtual {p0}, Lcom/keephealth/android/views/StereoView;->getScrollY()I

    move-result p1

    const/4 v1, 0x5

    if-ge p1, v1, :cond_2b

    iget p1, p0, Lcom/keephealth/android/views/StereoView;->mStartScreen:I

    if-eqz p1, :cond_2b

    .line 345
    invoke-direct {p0}, Lcom/keephealth/android/views/StereoView;->addPre()V

    .line 346
    iget p1, p0, Lcom/keephealth/android/views/StereoView;->mHeight:I

    invoke-virtual {p0, v0, p1}, Lcom/keephealth/android/views/StereoView;->scrollBy(II)V

    goto :goto_44

    .line 347
    :cond_2b
    invoke-virtual {p0}, Lcom/keephealth/android/views/StereoView;->getScrollY()I

    move-result p1

    invoke-virtual {p0}, Lcom/keephealth/android/views/StereoView;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcom/keephealth/android/views/StereoView;->mHeight:I

    mul-int/2addr v2, v3

    sub-int/2addr v2, v1

    if-le p1, v2, :cond_44

    .line 348
    invoke-direct {p0}, Lcom/keephealth/android/views/StereoView;->addNext()V

    .line 349
    iget p1, p0, Lcom/keephealth/android/views/StereoView;->mHeight:I

    neg-int p1, p1

    invoke-virtual {p0, v0, p1}, Lcom/keephealth/android/views/StereoView;->scrollBy(II)V

    :cond_44
    :goto_44
    return-void
.end method

.method private toNextAction(F)V
    .registers 10

    .line 262
    sget-object v0, Lcom/keephealth/android/views/StereoView$State;->ToNext:Lcom/keephealth/android/views/StereoView$State;

    iput-object v0, p0, Lcom/keephealth/android/views/StereoView;->mState:Lcom/keephealth/android/views/StereoView$State;

    .line 263
    invoke-direct {p0}, Lcom/keephealth/android/views/StereoView;->addNext()V

    .line 264
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x44fa0000    # 2000.0f

    sub-float/2addr v0, v1

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1a

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sub-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    .line 265
    :goto_1b
    div-int/lit16 v0, v0, 0x320

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keephealth/android/views/StereoView;->addCount:I

    .line 266
    invoke-virtual {p0}, Lcom/keephealth/android/views/StereoView;->getScrollY()I

    move-result v0

    iget v1, p0, Lcom/keephealth/android/views/StereoView;->mHeight:I

    sub-int v4, v0, v1

    .line 267
    invoke-virtual {p0, v4}, Lcom/keephealth/android/views/StereoView;->setScrollY(I)V

    .line 268
    iget v0, p0, Lcom/keephealth/android/views/StereoView;->mHeight:I

    iget v1, p0, Lcom/keephealth/android/views/StereoView;->mStartScreen:I

    mul-int/2addr v1, v0

    sub-int/2addr v1, v4

    iget v2, p0, Lcom/keephealth/android/views/StereoView;->addCount:I

    add-int/lit8 v2, v2, -0x1

    mul-int/2addr v2, v0

    add-int v6, v1, v2

    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u591a\u540e\u4e00\u9875startY "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " yVelocity "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " delta "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "  getScrollY() "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/keephealth/android/views/StereoView;->getScrollY()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " addCount "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcom/keephealth/android/views/StereoView;->addCount:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 270
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result p1

    mul-int/lit8 v7, p1, 0x3

    .line 271
    iget-object v2, p0, Lcom/keephealth/android/views/StereoView;->mScroller:Landroid/widget/Scroller;

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 272
    iget p1, p0, Lcom/keephealth/android/views/StereoView;->addCount:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/keephealth/android/views/StereoView;->addCount:I

    return-void
.end method

.method private toNormalAction()V
    .registers 8

    .line 221
    sget-object v0, Lcom/keephealth/android/views/StereoView$State;->Normal:Lcom/keephealth/android/views/StereoView$State;

    iput-object v0, p0, Lcom/keephealth/android/views/StereoView;->mState:Lcom/keephealth/android/views/StereoView$State;

    const/4 v0, 0x0

    .line 222
    iput v0, p0, Lcom/keephealth/android/views/StereoView;->addCount:I

    .line 223
    invoke-virtual {p0}, Lcom/keephealth/android/views/StereoView;->getScrollY()I

    move-result v3

    .line 224
    iget v0, p0, Lcom/keephealth/android/views/StereoView;->mHeight:I

    iget v1, p0, Lcom/keephealth/android/views/StereoView;->mStartScreen:I

    mul-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/keephealth/android/views/StereoView;->getScrollY()I

    move-result v1

    sub-int v5, v0, v1

    .line 225
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v0

    mul-int/lit8 v6, v0, 0x4

    .line 226
    iget-object v1, p0, Lcom/keephealth/android/views/StereoView;->mScroller:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    return-void
.end method

.method private toPreAction(F)V
    .registers 9

    .line 238
    sget-object v0, Lcom/keephealth/android/views/StereoView$State;->ToPre:Lcom/keephealth/android/views/StereoView$State;

    iput-object v0, p0, Lcom/keephealth/android/views/StereoView;->mState:Lcom/keephealth/android/views/StereoView$State;

    .line 239
    invoke-direct {p0}, Lcom/keephealth/android/views/StereoView;->addPre()V

    const/high16 v0, 0x44fa0000    # 2000.0f

    sub-float/2addr p1, v0

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_11

    float-to-int p1, p1

    goto :goto_12

    :cond_11
    const/4 p1, 0x0

    .line 242
    :goto_12
    div-int/lit16 p1, p1, 0x320

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/keephealth/android/views/StereoView;->addCount:I

    .line 244
    invoke-virtual {p0}, Lcom/keephealth/android/views/StereoView;->getScrollY()I

    move-result p1

    iget v0, p0, Lcom/keephealth/android/views/StereoView;->mHeight:I

    add-int v3, p1, v0

    .line 245
    invoke-virtual {p0, v3}, Lcom/keephealth/android/views/StereoView;->setScrollY(I)V

    .line 247
    iget p1, p0, Lcom/keephealth/android/views/StereoView;->mStartScreen:I

    iget v0, p0, Lcom/keephealth/android/views/StereoView;->mHeight:I

    mul-int/2addr p1, v0

    sub-int p1, v3, p1

    neg-int p1, p1

    iget v1, p0, Lcom/keephealth/android/views/StereoView;->addCount:I

    add-int/lit8 v1, v1, -0x1

    mul-int/2addr v1, v0

    sub-int v5, p1, v1

    .line 248
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result p1

    mul-int/lit8 v6, p1, 0x3

    .line 249
    iget-object v1, p0, Lcom/keephealth/android/views/StereoView;->mScroller:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 250
    iget p1, p0, Lcom/keephealth/android/views/StereoView;->addCount:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/keephealth/android/views/StereoView;->addCount:I

    return-void
.end method


# virtual methods
.method public computeScroll()V
    .registers 6

    .line 279
    iget-object v0, p0, Lcom/keephealth/android/views/StereoView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_8b

    .line 280
    iget-object v0, p0, Lcom/keephealth/android/views/StereoView;->mState:Lcom/keephealth/android/views/StereoView$State;

    sget-object v1, Lcom/keephealth/android/views/StereoView$State;->ToPre:Lcom/keephealth/android/views/StereoView$State;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_42

    .line 281
    iget-object v0, p0, Lcom/keephealth/android/views/StereoView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iget-object v1, p0, Lcom/keephealth/android/views/StereoView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    iget v3, p0, Lcom/keephealth/android/views/StereoView;->mHeight:I

    iget v4, p0, Lcom/keephealth/android/views/StereoView;->alreadyAdd:I

    mul-int/2addr v3, v4

    add-int/2addr v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/keephealth/android/views/StereoView;->scrollTo(II)V

    .line 282
    invoke-virtual {p0}, Lcom/keephealth/android/views/StereoView;->getScrollY()I

    move-result v0

    iget v1, p0, Lcom/keephealth/android/views/StereoView;->mHeight:I

    add-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_88

    iget v0, p0, Lcom/keephealth/android/views/StereoView;->addCount:I

    if-lez v0, :cond_88

    .line 283
    iput-boolean v2, p0, Lcom/keephealth/android/views/StereoView;->isAdding:Z

    .line 284
    invoke-direct {p0}, Lcom/keephealth/android/views/StereoView;->addPre()V

    .line 285
    iget v0, p0, Lcom/keephealth/android/views/StereoView;->alreadyAdd:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/keephealth/android/views/StereoView;->alreadyAdd:I

    .line 286
    iget v0, p0, Lcom/keephealth/android/views/StereoView;->addCount:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/keephealth/android/views/StereoView;->addCount:I

    goto :goto_88

    .line 288
    :cond_42
    iget-object v0, p0, Lcom/keephealth/android/views/StereoView;->mState:Lcom/keephealth/android/views/StereoView$State;

    sget-object v1, Lcom/keephealth/android/views/StereoView$State;->ToNext:Lcom/keephealth/android/views/StereoView$State;

    if-ne v0, v1, :cond_79

    .line 289
    iget-object v0, p0, Lcom/keephealth/android/views/StereoView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iget-object v1, p0, Lcom/keephealth/android/views/StereoView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    iget v3, p0, Lcom/keephealth/android/views/StereoView;->mHeight:I

    iget v4, p0, Lcom/keephealth/android/views/StereoView;->alreadyAdd:I

    mul-int/2addr v3, v4

    sub-int/2addr v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/keephealth/android/views/StereoView;->scrollTo(II)V

    .line 290
    invoke-virtual {p0}, Lcom/keephealth/android/views/StereoView;->getScrollY()I

    move-result v0

    iget v1, p0, Lcom/keephealth/android/views/StereoView;->mHeight:I

    if-le v0, v1, :cond_88

    iget v0, p0, Lcom/keephealth/android/views/StereoView;->addCount:I

    if-lez v0, :cond_88

    .line 291
    iput-boolean v2, p0, Lcom/keephealth/android/views/StereoView;->isAdding:Z

    .line 292
    invoke-direct {p0}, Lcom/keephealth/android/views/StereoView;->addNext()V

    .line 293
    iget v0, p0, Lcom/keephealth/android/views/StereoView;->addCount:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/keephealth/android/views/StereoView;->addCount:I

    .line 294
    iget v0, p0, Lcom/keephealth/android/views/StereoView;->alreadyAdd:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/keephealth/android/views/StereoView;->alreadyAdd:I

    goto :goto_88

    .line 298
    :cond_79
    iget-object v0, p0, Lcom/keephealth/android/views/StereoView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iget-object v1, p0, Lcom/keephealth/android/views/StereoView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/keephealth/android/views/StereoView;->scrollTo(II)V

    .line 300
    :cond_88
    :goto_88
    invoke-virtual {p0}, Lcom/keephealth/android/views/StereoView;->postInvalidate()V

    .line 303
    :cond_8b
    iget-object v0, p0, Lcom/keephealth/android/views/StereoView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_98

    const/4 v0, 0x0

    .line 304
    iput v0, p0, Lcom/keephealth/android/views/StereoView;->alreadyAdd:I

    .line 305
    iput v0, p0, Lcom/keephealth/android/views/StereoView;->addCount:I

    :cond_98
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 6

    .line 360
    iget-boolean v0, p0, Lcom/keephealth/android/views/StereoView;->isAdding:Z

    const/4 v1, 0x0

    if-nez v0, :cond_19

    iget-boolean v0, p0, Lcom/keephealth/android/views/StereoView;->isCan3D:Z

    if-eqz v0, :cond_19

    .line 365
    :goto_9
    invoke-virtual {p0}, Lcom/keephealth/android/views/StereoView;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_1e

    .line 366
    invoke-virtual {p0}, Lcom/keephealth/android/views/StereoView;->getDrawingTime()J

    move-result-wide v2

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/keephealth/android/views/StereoView;->drawScreen(Landroid/graphics/Canvas;IJ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 369
    :cond_19
    iput-boolean v1, p0, Lcom/keephealth/android/views/StereoView;->isAdding:Z

    .line 370
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    :cond_1e
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    .line 107
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 108
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 109
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-eqz v2, :cond_1d

    const/4 v0, 0x2

    if-eq v2, v0, :cond_12

    goto :goto_46

    .line 123
    :cond_12
    iget-boolean v0, p0, Lcom/keephealth/android/views/StereoView;->isSliding:Z

    if-nez v0, :cond_46

    .line 124
    invoke-virtual {p0, p1}, Lcom/keephealth/android/views/StereoView;->isCanSliding(Landroid/view/MotionEvent;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/keephealth/android/views/StereoView;->isSliding:Z

    goto :goto_46

    :cond_1d
    const/4 v2, 0x0

    .line 111
    iput-boolean v2, p0, Lcom/keephealth/android/views/StereoView;->isSliding:Z

    .line 112
    iput v0, p0, Lcom/keephealth/android/views/StereoView;->mDownX:F

    .line 113
    iput v1, p0, Lcom/keephealth/android/views/StereoView;->mDownY:F

    iput v1, p0, Lcom/keephealth/android/views/StereoView;->mTempY:F

    .line 114
    iget-object v0, p0, Lcom/keephealth/android/views/StereoView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_46

    .line 116
    iget-object v0, p0, Lcom/keephealth/android/views/StereoView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->setFinalY(I)V

    .line 117
    iget-object v0, p0, Lcom/keephealth/android/views/StereoView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 118
    invoke-virtual {p0}, Lcom/keephealth/android/views/StereoView;->getScrollY()I

    move-result v0

    invoke-virtual {p0, v2, v0}, Lcom/keephealth/android/views/StereoView;->scrollTo(II)V

    const/4 v0, 0x1

    .line 119
    iput-boolean v0, p0, Lcom/keephealth/android/views/StereoView;->isSliding:Z

    .line 130
    :cond_46
    :goto_46
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public isCanSliding(Landroid/view/MotionEvent;)Z
    .registers 5

    .line 188
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 189
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/keephealth/android/views/StereoView;->mTempY:F

    .line 190
    iget v1, p0, Lcom/keephealth/android/views/StereoView;->mDownX:F

    sub-float v1, p1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/keephealth/android/views/StereoView;->mTouchSlop:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2d

    iget v1, p0, Lcom/keephealth/android/views/StereoView;->mDownY:F

    sub-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v1, p0, Lcom/keephealth/android/views/StereoView;->mDownX:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_2d

    const/4 p1, 0x1

    return p1

    :cond_2d
    const/4 p1, 0x0

    return p1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    .line 135
    iget-boolean p1, p0, Lcom/keephealth/android/views/StereoView;->isSliding:Z

    return p1
.end method

.method protected onLayout(ZIIII)V
    .registers 7

    const/4 p1, 0x0

    move p2, p1

    move p3, p2

    .line 95
    :goto_3
    invoke-virtual {p0}, Lcom/keephealth/android/views/StereoView;->getChildCount()I

    move-result p4

    if-ge p2, p4, :cond_29

    .line 96
    invoke-virtual {p0, p2}, Lcom/keephealth/android/views/StereoView;->getChildAt(I)Landroid/view/View;

    move-result-object p4

    .line 97
    invoke-virtual {p4}, Landroid/view/View;->getVisibility()I

    move-result p5

    const/16 v0, 0x8

    if-eq p5, v0, :cond_26

    .line 99
    invoke-virtual {p4}, Landroid/view/View;->getMeasuredWidth()I

    move-result p5

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v0, p3

    .line 98
    invoke-virtual {p4, p1, p3, p5, v0}, Landroid/view/View;->layout(IIII)V

    .line 100
    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    move-result p4

    add-int/2addr p3, p4

    :cond_26
    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_29
    return-void
.end method

.method protected onMeasure(II)V
    .registers 3

    .line 83
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 84
    invoke-virtual {p0, p1, p2}, Lcom/keephealth/android/views/StereoView;->measureChildren(II)V

    .line 85
    invoke-virtual {p0}, Lcom/keephealth/android/views/StereoView;->getMeasuredWidth()I

    move-result p1

    iput p1, p0, Lcom/keephealth/android/views/StereoView;->mWidth:I

    .line 86
    invoke-virtual {p0}, Lcom/keephealth/android/views/StereoView;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Lcom/keephealth/android/views/StereoView;->mHeight:I

    .line 88
    iget p2, p0, Lcom/keephealth/android/views/StereoView;->mStartScreen:I

    mul-int/2addr p2, p1

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/keephealth/android/views/StereoView;->scrollTo(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    .line 140
    iget-object v0, p0, Lcom/keephealth/android/views/StereoView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_a

    .line 141
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/views/StereoView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 143
    :cond_a
    iget-object v0, p0, Lcom/keephealth/android/views/StereoView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 144
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    .line 145
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_98

    if-eq v1, v2, :cond_3a

    const/4 v2, 0x2

    if-eq v1, v2, :cond_24

    const/4 v0, 0x3

    if-eq v1, v0, :cond_3a

    goto/16 :goto_93

    .line 149
    :cond_24
    iget-boolean v1, p0, Lcom/keephealth/android/views/StereoView;->isSliding:Z

    if-eqz v1, :cond_93

    .line 150
    iget v1, p0, Lcom/keephealth/android/views/StereoView;->mDownY:F

    sub-float/2addr v1, v0

    float-to-int v1, v1

    .line 151
    iput v0, p0, Lcom/keephealth/android/views/StereoView;->mDownY:F

    .line 152
    iget-object v0, p0, Lcom/keephealth/android/views/StereoView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_93

    .line 154
    invoke-direct {p0, v1}, Lcom/keephealth/android/views/StereoView;->recycleMove(I)V

    goto :goto_93

    .line 160
    :cond_3a
    iget-boolean v0, p0, Lcom/keephealth/android/views/StereoView;->isSliding:Z

    if-eqz v0, :cond_89

    const/4 v0, 0x0

    .line 161
    iput-boolean v0, p0, Lcom/keephealth/android/views/StereoView;->isSliding:Z

    .line 162
    iget-object v0, p0, Lcom/keephealth/android/views/StereoView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 163
    iget-object v0, p0, Lcom/keephealth/android/views/StereoView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    const/high16 v1, 0x44fa0000    # 2000.0f

    cmpl-float v1, v0, v1

    if-gtz v1, :cond_82

    .line 165
    invoke-virtual {p0}, Lcom/keephealth/android/views/StereoView;->getScrollY()I

    move-result v1

    iget v2, p0, Lcom/keephealth/android/views/StereoView;->mHeight:I

    div-int/lit8 v3, v2, 0x2

    add-int/2addr v1, v3

    div-int/2addr v1, v2

    iget v2, p0, Lcom/keephealth/android/views/StereoView;->mStartScreen:I

    if-ge v1, v2, :cond_63

    goto :goto_82

    :cond_63
    const/high16 v1, -0x3b060000    # -2000.0f

    cmpg-float v1, v0, v1

    if-ltz v1, :cond_7d

    .line 167
    invoke-virtual {p0}, Lcom/keephealth/android/views/StereoView;->getScrollY()I

    move-result v1

    iget v2, p0, Lcom/keephealth/android/views/StereoView;->mHeight:I

    div-int/lit8 v3, v2, 0x2

    add-int/2addr v1, v3

    div-int/2addr v1, v2

    iget v2, p0, Lcom/keephealth/android/views/StereoView;->mStartScreen:I

    if-le v1, v2, :cond_78

    goto :goto_7d

    .line 171
    :cond_78
    sget-object v1, Lcom/keephealth/android/views/StereoView$State;->Normal:Lcom/keephealth/android/views/StereoView$State;

    iput-object v1, p0, Lcom/keephealth/android/views/StereoView;->mState:Lcom/keephealth/android/views/StereoView$State;

    goto :goto_86

    .line 169
    :cond_7d
    :goto_7d
    sget-object v1, Lcom/keephealth/android/views/StereoView$State;->ToNext:Lcom/keephealth/android/views/StereoView$State;

    iput-object v1, p0, Lcom/keephealth/android/views/StereoView;->mState:Lcom/keephealth/android/views/StereoView$State;

    goto :goto_86

    .line 166
    :cond_82
    :goto_82
    sget-object v1, Lcom/keephealth/android/views/StereoView$State;->ToPre:Lcom/keephealth/android/views/StereoView$State;

    iput-object v1, p0, Lcom/keephealth/android/views/StereoView;->mState:Lcom/keephealth/android/views/StereoView$State;

    .line 174
    :goto_86
    invoke-direct {p0, v0}, Lcom/keephealth/android/views/StereoView;->changeByState(F)V

    .line 176
    :cond_89
    iget-object v0, p0, Lcom/keephealth/android/views/StereoView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_93

    .line 177
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    .line 178
    iput-object v0, p0, Lcom/keephealth/android/views/StereoView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 182
    :cond_93
    :goto_93
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_98
    return v2
.end method

.method public setAngle(F)Lcom/keephealth/android/views/StereoView;
    .registers 3

    const/high16 v0, 0x43340000    # 180.0f

    sub-float/2addr v0, p1

    .line 450
    iput v0, p0, Lcom/keephealth/android/views/StereoView;->mAngle:F

    return-object p0
.end method

.method public setCan3D(Z)Lcom/keephealth/android/views/StereoView;
    .registers 2

    .line 461
    iput-boolean p1, p0, Lcom/keephealth/android/views/StereoView;->isCan3D:Z

    return-object p0
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)Lcom/keephealth/android/views/StereoView;
    .registers 4

    .line 439
    new-instance v0, Landroid/widget/Scroller;

    iget-object v1, p0, Lcom/keephealth/android/views/StereoView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/keephealth/android/views/StereoView;->mScroller:Landroid/widget/Scroller;

    return-object p0
.end method

.method public setItem(I)Lcom/keephealth/android/views/StereoView;
    .registers 4

    .line 473
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u4e4b\u524dcurScreen "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/keephealth/android/views/StereoView;->mCurScreen:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 474
    iget-object v0, p0, Lcom/keephealth/android/views/StereoView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_26

    .line 475
    iget-object v0, p0, Lcom/keephealth/android/views/StereoView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 476
    const-string v0, "\u5f3a\u5236\u5b8c\u6210"

    invoke-static {v0}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    :cond_26
    if-ltz p1, :cond_70

    .line 478
    invoke-virtual {p0}, Lcom/keephealth/android/views/StereoView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-gt p1, v0, :cond_70

    .line 482
    iget v0, p0, Lcom/keephealth/android/views/StereoView;->mCurScreen:I

    if-le p1, v0, :cond_40

    sub-int/2addr p1, v0

    add-int/lit8 p1, p1, -0x1

    mul-int/lit16 p1, p1, 0x320

    rsub-int p1, p1, -0x7d0

    int-to-float p1, p1

    .line 484
    invoke-direct {p0, p1}, Lcom/keephealth/android/views/StereoView;->toNextAction(F)V

    goto :goto_4d

    :cond_40
    if-ge p1, v0, :cond_4d

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    mul-int/lit16 v0, v0, 0x320

    add-int/lit16 v0, v0, 0x7d0

    int-to-float p1, v0

    .line 487
    invoke-direct {p0, p1}, Lcom/keephealth/android/views/StereoView;->toPreAction(F)V

    .line 489
    :cond_4d
    :goto_4d
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "\u4e4b\u540ecurScreen "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/keephealth/android/views/StereoView;->mCurScreen:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " getScrollY "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/keephealth/android/views/StereoView;->getScrollY()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    return-object p0

    .line 479
    :cond_70
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "\u8bf7\u8f93\u5165\u89c4\u5b9a\u8303\u56f4\u5185item\u4f4d\u7f6e\u53f7"

    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setResistance(F)Lcom/keephealth/android/views/StereoView;
    .registers 2

    .line 428
    iput p1, p0, Lcom/keephealth/android/views/StereoView;->resistance:F

    return-object p0
.end method

.method public setStartScreen(I)Lcom/keephealth/android/views/StereoView;
    .registers 3

    if-lez p1, :cond_f

    .line 412
    invoke-virtual {p0}, Lcom/keephealth/android/views/StereoView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_f

    .line 416
    iput p1, p0, Lcom/keephealth/android/views/StereoView;->mStartScreen:I

    .line 417
    iput p1, p0, Lcom/keephealth/android/views/StereoView;->mCurScreen:I

    return-object p0

    .line 413
    :cond_f
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "\u8bf7\u8f93\u5165\u89c4\u5b9a\u8303\u56f4\u5185startScreen\u4f4d\u7f6e\u53f7"

    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setiStereoListener(Lcom/keephealth/android/views/StereoView$IStereoListener;)V
    .registers 2

    .line 531
    iput-object p1, p0, Lcom/keephealth/android/views/StereoView;->iStereoListener:Lcom/keephealth/android/views/StereoView$IStereoListener;

    return-void
.end method

.method public toNext()Lcom/keephealth/android/views/StereoView;
    .registers 2

    .line 513
    iget-object v0, p0, Lcom/keephealth/android/views/StereoView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_12

    .line 514
    iget-object v0, p0, Lcom/keephealth/android/views/StereoView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 515
    const-string v0, "\u5f3a\u5236\u5b8c\u6210"

    invoke-static {v0}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    :cond_12
    const/high16 v0, -0x3b060000    # -2000.0f

    .line 517
    invoke-direct {p0, v0}, Lcom/keephealth/android/views/StereoView;->toNextAction(F)V

    return-object p0
.end method

.method public toPre()Lcom/keephealth/android/views/StereoView;
    .registers 2

    .line 499
    iget-object v0, p0, Lcom/keephealth/android/views/StereoView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_12

    .line 500
    iget-object v0, p0, Lcom/keephealth/android/views/StereoView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 501
    const-string v0, "\u5f3a\u5236\u5b8c\u6210"

    invoke-static {v0}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    :cond_12
    const/high16 v0, 0x44fa0000    # 2000.0f

    .line 503
    invoke-direct {p0, v0}, Lcom/keephealth/android/views/StereoView;->toPreAction(F)V

    return-object p0
.end method
