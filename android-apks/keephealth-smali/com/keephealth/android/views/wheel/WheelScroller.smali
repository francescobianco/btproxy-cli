.class public Lcom/keephealth/android/views/wheel/WheelScroller;
.super Landroid/widget/Scroller;
.source "WheelScroller.java"


# static fields
.field public static final JUSTIFY_DURATION:I = 0x190


# instance fields
.field private currentIndex:I

.field private isScrolling:Z

.field private lastTouchY:F

.field private mScrollOffset:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field final mWheelView:Lcom/keephealth/android/views/wheel/WheelView;

.field onWheelChangedListener:Lcom/keephealth/android/views/wheel/OnWheelChangedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/keephealth/android/views/wheel/WheelView;)V
    .registers 3

    .line 23
    invoke-direct {p0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    .line 24
    iput-object p2, p0, Lcom/keephealth/android/views/wheel/WheelScroller;->mWheelView:Lcom/keephealth/android/views/wheel/WheelView;

    return-void
.end method

.method private doScroll(I)V
    .registers 3

    .line 52
    iget v0, p0, Lcom/keephealth/android/views/wheel/WheelScroller;->mScrollOffset:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/keephealth/android/views/wheel/WheelScroller;->mScrollOffset:I

    .line 53
    iget-object p1, p0, Lcom/keephealth/android/views/wheel/WheelScroller;->mWheelView:Lcom/keephealth/android/views/wheel/WheelView;

    invoke-virtual {p1}, Lcom/keephealth/android/views/wheel/WheelView;->isCyclic()Z

    move-result p1

    if-nez p1, :cond_26

    .line 55
    iget-object p1, p0, Lcom/keephealth/android/views/wheel/WheelScroller;->mWheelView:Lcom/keephealth/android/views/wheel/WheelView;

    invoke-virtual {p1}, Lcom/keephealth/android/views/wheel/WheelView;->getItemSize()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    iget-object v0, p0, Lcom/keephealth/android/views/wheel/WheelScroller;->mWheelView:Lcom/keephealth/android/views/wheel/WheelView;

    iget v0, v0, Lcom/keephealth/android/views/wheel/WheelView;->itemHeight:I

    mul-int/2addr p1, v0

    .line 56
    iget v0, p0, Lcom/keephealth/android/views/wheel/WheelScroller;->mScrollOffset:I

    if-gez v0, :cond_22

    const/4 p1, 0x0

    .line 57
    iput p1, p0, Lcom/keephealth/android/views/wheel/WheelScroller;->mScrollOffset:I

    goto :goto_26

    :cond_22
    if-le v0, p1, :cond_26

    .line 59
    iput p1, p0, Lcom/keephealth/android/views/wheel/WheelScroller;->mScrollOffset:I

    .line 62
    :cond_26
    :goto_26
    invoke-virtual {p0}, Lcom/keephealth/android/views/wheel/WheelScroller;->notifyWheelChangedListener()V

    return-void
.end method


# virtual methods
.method public computeScroll()V
    .registers 3

    .line 28
    iget-boolean v0, p0, Lcom/keephealth/android/views/wheel/WheelScroller;->isScrolling:Z

    if-eqz v0, :cond_21

    .line 29
    invoke-virtual {p0}, Lcom/keephealth/android/views/wheel/WheelScroller;->computeScrollOffset()Z

    move-result v0

    iput-boolean v0, p0, Lcom/keephealth/android/views/wheel/WheelScroller;->isScrolling:Z

    .line 30
    invoke-virtual {p0}, Lcom/keephealth/android/views/wheel/WheelScroller;->getCurrY()I

    move-result v0

    iget v1, p0, Lcom/keephealth/android/views/wheel/WheelScroller;->mScrollOffset:I

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/keephealth/android/views/wheel/WheelScroller;->doScroll(I)V

    .line 31
    iget-boolean v0, p0, Lcom/keephealth/android/views/wheel/WheelScroller;->isScrolling:Z

    if-eqz v0, :cond_1e

    .line 32
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/WheelScroller;->mWheelView:Lcom/keephealth/android/views/wheel/WheelView;

    invoke-virtual {v0}, Lcom/keephealth/android/views/wheel/WheelView;->postInvalidate()V

    goto :goto_21

    .line 35
    :cond_1e
    invoke-virtual {p0}, Lcom/keephealth/android/views/wheel/WheelScroller;->justify()V

    :cond_21
    :goto_21
    return-void
.end method

.method public getCurrentIndex()I
    .registers 5

    .line 77
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/WheelScroller;->mWheelView:Lcom/keephealth/android/views/wheel/WheelView;

    invoke-virtual {v0}, Lcom/keephealth/android/views/wheel/WheelView;->getAdapter()Lcom/keephealth/android/views/wheel/WheelAdapter;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 78
    :cond_a
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/WheelScroller;->mWheelView:Lcom/keephealth/android/views/wheel/WheelView;

    iget v0, v0, Lcom/keephealth/android/views/wheel/WheelView;->itemHeight:I

    .line 79
    iget-object v2, p0, Lcom/keephealth/android/views/wheel/WheelScroller;->mWheelView:Lcom/keephealth/android/views/wheel/WheelView;

    invoke-virtual {v2}, Lcom/keephealth/android/views/wheel/WheelView;->getItemSize()I

    move-result v2

    if-nez v2, :cond_17

    return v1

    .line 83
    :cond_17
    iget v1, p0, Lcom/keephealth/android/views/wheel/WheelScroller;->mScrollOffset:I

    if-gez v1, :cond_20

    .line 84
    div-int/lit8 v3, v0, 0x2

    sub-int/2addr v1, v3

    div-int/2addr v1, v0

    goto :goto_24

    .line 86
    :cond_20
    div-int/lit8 v3, v0, 0x2

    add-int/2addr v1, v3

    div-int/2addr v1, v0

    .line 88
    :goto_24
    rem-int/2addr v1, v2

    if-gez v1, :cond_28

    add-int/2addr v1, v2

    :cond_28
    return v1
.end method

.method public getItemIndex()I
    .registers 3

    .line 110
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/WheelScroller;->mWheelView:Lcom/keephealth/android/views/wheel/WheelView;

    iget v0, v0, Lcom/keephealth/android/views/wheel/WheelView;->itemHeight:I

    if-nez v0, :cond_8

    const/4 v0, 0x0

    goto :goto_f

    :cond_8
    iget v0, p0, Lcom/keephealth/android/views/wheel/WheelScroller;->mScrollOffset:I

    iget-object v1, p0, Lcom/keephealth/android/views/wheel/WheelScroller;->mWheelView:Lcom/keephealth/android/views/wheel/WheelView;

    iget v1, v1, Lcom/keephealth/android/views/wheel/WheelView;->itemHeight:I

    div-int/2addr v0, v1

    :goto_f
    return v0
.end method

.method public getItemOffset()I
    .registers 3

    .line 114
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/WheelScroller;->mWheelView:Lcom/keephealth/android/views/wheel/WheelView;

    iget v0, v0, Lcom/keephealth/android/views/wheel/WheelView;->itemHeight:I

    if-nez v0, :cond_8

    const/4 v0, 0x0

    goto :goto_f

    :cond_8
    iget v0, p0, Lcom/keephealth/android/views/wheel/WheelScroller;->mScrollOffset:I

    iget-object v1, p0, Lcom/keephealth/android/views/wheel/WheelScroller;->mWheelView:Lcom/keephealth/android/views/wheel/WheelView;

    iget v1, v1, Lcom/keephealth/android/views/wheel/WheelView;->itemHeight:I

    rem-int/2addr v0, v1

    :goto_f
    return v0
.end method

.method justify()V
    .registers 8

    .line 128
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/WheelScroller;->mWheelView:Lcom/keephealth/android/views/wheel/WheelView;

    iget v0, v0, Lcom/keephealth/android/views/wheel/WheelView;->itemHeight:I

    .line 129
    iget v3, p0, Lcom/keephealth/android/views/wheel/WheelScroller;->mScrollOffset:I

    rem-int v1, v3, v0

    const/4 v2, 0x1

    if-lez v1, :cond_20

    .line 130
    div-int/lit8 v4, v0, 0x2

    if-ge v1, v4, :cond_20

    .line 131
    iput-boolean v2, p0, Lcom/keephealth/android/views/wheel/WheelScroller;->isScrolling:Z

    neg-int v5, v1

    const/16 v6, 0x190

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    .line 132
    invoke-virtual/range {v1 .. v6}, Lcom/keephealth/android/views/wheel/WheelScroller;->startScroll(IIIII)V

    .line 133
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/WheelScroller;->mWheelView:Lcom/keephealth/android/views/wheel/WheelView;

    invoke-virtual {v0}, Lcom/keephealth/android/views/wheel/WheelView;->invalidate()V

    goto :goto_64

    .line 134
    :cond_20
    div-int/lit8 v4, v0, 0x2

    if-lt v1, v4, :cond_36

    .line 135
    iput-boolean v2, p0, Lcom/keephealth/android/views/wheel/WheelScroller;->isScrolling:Z

    sub-int v5, v0, v1

    const/16 v6, 0x190

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    .line 136
    invoke-virtual/range {v1 .. v6}, Lcom/keephealth/android/views/wheel/WheelScroller;->startScroll(IIIII)V

    .line 137
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/WheelScroller;->mWheelView:Lcom/keephealth/android/views/wheel/WheelView;

    invoke-virtual {v0}, Lcom/keephealth/android/views/wheel/WheelView;->invalidate()V

    goto :goto_64

    :cond_36
    if-gez v1, :cond_4e

    neg-int v4, v0

    .line 138
    div-int/lit8 v4, v4, 0x2

    if-le v1, v4, :cond_4e

    .line 139
    iput-boolean v2, p0, Lcom/keephealth/android/views/wheel/WheelScroller;->isScrolling:Z

    neg-int v5, v1

    const/16 v6, 0x190

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    .line 140
    invoke-virtual/range {v1 .. v6}, Lcom/keephealth/android/views/wheel/WheelScroller;->startScroll(IIIII)V

    .line 141
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/WheelScroller;->mWheelView:Lcom/keephealth/android/views/wheel/WheelView;

    invoke-virtual {v0}, Lcom/keephealth/android/views/wheel/WheelView;->invalidate()V

    goto :goto_64

    :cond_4e
    neg-int v0, v0

    .line 142
    div-int/lit8 v4, v0, 0x2

    if-gt v1, v4, :cond_64

    .line 143
    iput-boolean v2, p0, Lcom/keephealth/android/views/wheel/WheelScroller;->isScrolling:Z

    sub-int v5, v0, v1

    const/16 v6, 0x190

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    .line 144
    invoke-virtual/range {v1 .. v6}, Lcom/keephealth/android/views/wheel/WheelScroller;->startScroll(IIIII)V

    .line 145
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/WheelScroller;->mWheelView:Lcom/keephealth/android/views/wheel/WheelView;

    invoke-virtual {v0}, Lcom/keephealth/android/views/wheel/WheelView;->invalidate()V

    :cond_64
    :goto_64
    return-void
.end method

.method notifyWheelChangedListener()V
    .registers 5

    .line 66
    iget v0, p0, Lcom/keephealth/android/views/wheel/WheelScroller;->currentIndex:I

    .line 67
    invoke-virtual {p0}, Lcom/keephealth/android/views/wheel/WheelScroller;->getCurrentIndex()I

    move-result v1

    if-eq v0, v1, :cond_13

    .line 69
    iput v1, p0, Lcom/keephealth/android/views/wheel/WheelScroller;->currentIndex:I

    .line 70
    iget-object v2, p0, Lcom/keephealth/android/views/wheel/WheelScroller;->onWheelChangedListener:Lcom/keephealth/android/views/wheel/OnWheelChangedListener;

    if-eqz v2, :cond_13

    .line 71
    iget-object v3, p0, Lcom/keephealth/android/views/wheel/WheelScroller;->mWheelView:Lcom/keephealth/android/views/wheel/WheelView;

    invoke-interface {v2, v3, v0, v1}, Lcom/keephealth/android/views/wheel/OnWheelChangedListener;->onChanged(Lcom/keephealth/android/views/wheel/WheelView;II)V

    :cond_13
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 13

    .line 150
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/WheelScroller;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_a

    .line 151
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/views/wheel/WheelScroller;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 153
    :cond_a
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/WheelScroller;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 155
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_73

    if-eq v0, v1, :cond_36

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1f

    const/4 p1, 0x3

    if-eq v0, p1, :cond_68

    goto :goto_7f

    .line 162
    :cond_1f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 163
    iget v0, p0, Lcom/keephealth/android/views/wheel/WheelScroller;->lastTouchY:F

    sub-float v0, p1, v0

    float-to-int v0, v0

    if-eqz v0, :cond_33

    neg-int v0, v0

    .line 165
    invoke-direct {p0, v0}, Lcom/keephealth/android/views/wheel/WheelScroller;->doScroll(I)V

    .line 166
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/WheelScroller;->mWheelView:Lcom/keephealth/android/views/wheel/WheelView;

    invoke-virtual {v0}, Lcom/keephealth/android/views/wheel/WheelView;->invalidate()V

    .line 168
    :cond_33
    iput p1, p0, Lcom/keephealth/android/views/wheel/WheelScroller;->lastTouchY:F

    goto :goto_7f

    .line 171
    :cond_36
    iget-object p1, p0, Lcom/keephealth/android/views/wheel/WheelScroller;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v0, 0x3e8

    invoke-virtual {p1, v0}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 172
    iget-object p1, p0, Lcom/keephealth/android/views/wheel/WheelScroller;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result p1

    .line 174
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_65

    .line 175
    iput-boolean v1, p0, Lcom/keephealth/android/views/wheel/WheelScroller;->isScrolling:Z

    .line 176
    iget v4, p0, Lcom/keephealth/android/views/wheel/WheelScroller;->mScrollOffset:I

    neg-float p1, p1

    float-to-int v6, p1

    const/high16 v9, -0x80000000

    const v10, 0x7fffffff

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v10}, Lcom/keephealth/android/views/wheel/WheelScroller;->fling(IIIIIIII)V

    .line 177
    iget-object p1, p0, Lcom/keephealth/android/views/wheel/WheelScroller;->mWheelView:Lcom/keephealth/android/views/wheel/WheelView;

    invoke-virtual {p1}, Lcom/keephealth/android/views/wheel/WheelView;->invalidate()V

    goto :goto_68

    .line 179
    :cond_65
    invoke-virtual {p0}, Lcom/keephealth/android/views/wheel/WheelScroller;->justify()V

    .line 183
    :cond_68
    :goto_68
    iget-object p1, p0, Lcom/keephealth/android/views/wheel/WheelScroller;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_7f

    .line 184
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 p1, 0x0

    .line 185
    iput-object p1, p0, Lcom/keephealth/android/views/wheel/WheelScroller;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_7f

    .line 157
    :cond_73
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/keephealth/android/views/wheel/WheelScroller;->lastTouchY:F

    .line 158
    invoke-virtual {p0}, Lcom/keephealth/android/views/wheel/WheelScroller;->stopScrolling()V

    .line 159
    invoke-virtual {p0, v1}, Lcom/keephealth/android/views/wheel/WheelScroller;->forceFinished(Z)V

    :cond_7f
    :goto_7f
    return v1
.end method

.method public reset()V
    .registers 2

    const/4 v0, 0x0

    .line 118
    iput-boolean v0, p0, Lcom/keephealth/android/views/wheel/WheelScroller;->isScrolling:Z

    .line 119
    iput v0, p0, Lcom/keephealth/android/views/wheel/WheelScroller;->mScrollOffset:I

    .line 120
    invoke-virtual {p0}, Lcom/keephealth/android/views/wheel/WheelScroller;->notifyWheelChangedListener()V

    const/4 v0, 0x1

    .line 121
    invoke-virtual {p0, v0}, Lcom/keephealth/android/views/wheel/WheelScroller;->forceFinished(Z)V

    return-void
.end method

.method public setCurrentIndex(IZ)V
    .registers 9

    .line 96
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/WheelScroller;->mWheelView:Lcom/keephealth/android/views/wheel/WheelView;

    iget v0, v0, Lcom/keephealth/android/views/wheel/WheelView;->itemHeight:I

    mul-int/2addr p1, v0

    .line 97
    iget v2, p0, Lcom/keephealth/android/views/wheel/WheelScroller;->mScrollOffset:I

    sub-int v4, p1, v2

    if-nez v4, :cond_c

    return-void

    :cond_c
    if-eqz p2, :cond_1f

    const/4 p1, 0x1

    .line 100
    iput-boolean p1, p0, Lcom/keephealth/android/views/wheel/WheelScroller;->isScrolling:Z

    const/4 v3, 0x0

    const/16 v5, 0x190

    const/4 v1, 0x0

    move-object v0, p0

    .line 101
    invoke-virtual/range {v0 .. v5}, Lcom/keephealth/android/views/wheel/WheelScroller;->startScroll(IIIII)V

    .line 102
    iget-object p1, p0, Lcom/keephealth/android/views/wheel/WheelScroller;->mWheelView:Lcom/keephealth/android/views/wheel/WheelView;

    invoke-virtual {p1}, Lcom/keephealth/android/views/wheel/WheelView;->invalidate()V

    goto :goto_27

    .line 104
    :cond_1f
    invoke-direct {p0, v4}, Lcom/keephealth/android/views/wheel/WheelScroller;->doScroll(I)V

    .line 105
    iget-object p1, p0, Lcom/keephealth/android/views/wheel/WheelScroller;->mWheelView:Lcom/keephealth/android/views/wheel/WheelView;

    invoke-virtual {p1}, Lcom/keephealth/android/views/wheel/WheelView;->invalidate()V

    :goto_27
    return-void
.end method

.method public stopScrolling()V
    .registers 8

    .line 41
    invoke-virtual {p0}, Lcom/keephealth/android/views/wheel/WheelScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 42
    invoke-virtual {p0}, Lcom/keephealth/android/views/wheel/WheelScroller;->getCurrY()I

    move-result v3

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/keephealth/android/views/wheel/WheelScroller;->startScroll(IIIII)V

    .line 43
    invoke-virtual {p0}, Lcom/keephealth/android/views/wheel/WheelScroller;->abortAnimation()V

    .line 44
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/WheelScroller;->mWheelView:Lcom/keephealth/android/views/wheel/WheelView;

    invoke-virtual {v0}, Lcom/keephealth/android/views/wheel/WheelView;->postInvalidate()V

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lcom/keephealth/android/views/wheel/WheelScroller;->isScrolling:Z

    :cond_1d
    return-void
.end method
