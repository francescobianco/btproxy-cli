.class final Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$SmoothScrollRunnable;
.super Ljava/lang/Object;
.source "PullToRefreshBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "SmoothScrollRunnable"
.end annotation


# instance fields
.field private mContinueRunning:Z

.field private mCurrentY:I

.field private final mDuration:J

.field private final mInterpolator:Landroid/view/animation/Interpolator;

.field private mListener:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$OnSmoothScrollFinishedListener;

.field private final mScrollFromY:I

.field private final mScrollToY:I

.field private mStartTime:J

.field final synthetic this$0:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;


# direct methods
.method public constructor <init>(Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;IIJLcom/keephealth/android/views/pullscrollview/PullToRefreshBase$OnSmoothScrollFinishedListener;)V
    .registers 9

    .line 1548
    iput-object p1, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$SmoothScrollRunnable;->this$0:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 1544
    iput-boolean v0, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$SmoothScrollRunnable;->mContinueRunning:Z

    const-wide/16 v0, -0x1

    .line 1545
    iput-wide v0, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$SmoothScrollRunnable;->mStartTime:J

    const/4 v0, -0x1

    .line 1546
    iput v0, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$SmoothScrollRunnable;->mCurrentY:I

    .line 1549
    iput p2, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$SmoothScrollRunnable;->mScrollFromY:I

    .line 1550
    iput p3, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$SmoothScrollRunnable;->mScrollToY:I

    .line 1551
    # getter for: Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mScrollAnimationInterpolator:Landroid/view/animation/Interpolator;
    invoke-static {p1}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->access$200(Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;)Landroid/view/animation/Interpolator;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$SmoothScrollRunnable;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 1552
    iput-wide p4, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$SmoothScrollRunnable;->mDuration:J

    .line 1553
    iput-object p6, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$SmoothScrollRunnable;->mListener:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$OnSmoothScrollFinishedListener;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 1563
    iget-wide v0, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$SmoothScrollRunnable;->mStartTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_f

    .line 1564
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$SmoothScrollRunnable;->mStartTime:J

    goto :goto_45

    .line 1572
    :cond_f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$SmoothScrollRunnable;->mStartTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    iget-wide v4, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$SmoothScrollRunnable;->mDuration:J

    div-long/2addr v0, v4

    .line 1573
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 1575
    iget v2, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$SmoothScrollRunnable;->mScrollFromY:I

    iget v3, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$SmoothScrollRunnable;->mScrollToY:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$SmoothScrollRunnable;->mInterpolator:Landroid/view/animation/Interpolator;

    long-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    .line 1576
    invoke-interface {v3, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    mul-float/2addr v2, v0

    .line 1575
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 1577
    iget v1, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$SmoothScrollRunnable;->mScrollFromY:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$SmoothScrollRunnable;->mCurrentY:I

    .line 1578
    iget-object v0, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$SmoothScrollRunnable;->this$0:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->setHeaderScroll(I)V

    .line 1582
    :goto_45
    iget-boolean v0, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$SmoothScrollRunnable;->mContinueRunning:Z

    if-eqz v0, :cond_55

    iget v0, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$SmoothScrollRunnable;->mScrollToY:I

    iget v1, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$SmoothScrollRunnable;->mCurrentY:I

    if-eq v0, v1, :cond_55

    .line 1583
    iget-object v0, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$SmoothScrollRunnable;->this$0:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;

    invoke-static {v0, p0}, Lcom/keephealth/android/views/pullscrollview/internal/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_5c

    .line 1585
    :cond_55
    iget-object v0, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$SmoothScrollRunnable;->mListener:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$OnSmoothScrollFinishedListener;

    if-eqz v0, :cond_5c

    .line 1586
    invoke-interface {v0}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$OnSmoothScrollFinishedListener;->onSmoothScrollFinished()V

    :cond_5c
    :goto_5c
    return-void
.end method

.method public stop()V
    .registers 2

    const/4 v0, 0x0

    .line 1592
    iput-boolean v0, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$SmoothScrollRunnable;->mContinueRunning:Z

    .line 1593
    iget-object v0, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$SmoothScrollRunnable;->this$0:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;

    invoke-virtual {v0, p0}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method
