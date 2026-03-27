.class Lcom/keephealth/android/views/gallery/view/ImagePreviewView$FlatGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ImagePreviewView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/views/gallery/view/ImagePreviewView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlatGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/views/gallery/view/ImagePreviewView;


# direct methods
.method private constructor <init>(Lcom/keephealth/android/views/gallery/view/ImagePreviewView;)V
    .registers 2

    .line 425
    iput-object p1, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView$FlatGestureListener;->this$0:Lcom/keephealth/android/views/gallery/view/ImagePreviewView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/keephealth/android/views/gallery/view/ImagePreviewView;Lcom/keephealth/android/views/gallery/view/ImagePreviewView$1;)V
    .registers 3

    .line 425
    invoke-direct {p0, p1}, Lcom/keephealth/android/views/gallery/view/ImagePreviewView$FlatGestureListener;-><init>(Lcom/keephealth/android/views/gallery/view/ImagePreviewView;)V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .registers 11

    .line 505
    iget-object p1, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView$FlatGestureListener;->this$0:Lcom/keephealth/android/views/gallery/view/ImagePreviewView;

    const/4 v0, 0x1

    # setter for: Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->isAutoScale:Z
    invoke-static {p1, v0}, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->access$1502(Lcom/keephealth/android/views/gallery/view/ImagePreviewView;Z)Z

    .line 506
    iget-object p1, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView$FlatGestureListener;->this$0:Lcom/keephealth/android/views/gallery/view/ImagePreviewView;

    # invokes: Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->getResetScaleAnimator()Landroid/animation/ValueAnimator;
    invoke-static {p1}, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->access$1600(Lcom/keephealth/android/views/gallery/view/ImagePreviewView;)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 508
    iget-object v1, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView$FlatGestureListener;->this$0:Lcom/keephealth/android/views/gallery/view/ImagePreviewView;

    # getter for: Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->scale:F
    invoke-static {v1}, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->access$200(Lcom/keephealth/android/views/gallery/view/ImagePreviewView;)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-nez v1, :cond_89

    .line 509
    new-array v1, v4, [F

    fill-array-data v1, :array_aa

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 511
    iget-object v1, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView$FlatGestureListener;->this$0:Lcom/keephealth/android/views/gallery/view/ImagePreviewView;

    # invokes: Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->getResetXAnimator()Landroid/animation/ValueAnimator;
    invoke-static {v1}, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->access$1200(Lcom/keephealth/android/views/gallery/view/ImagePreviewView;)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 512
    iget-object v2, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView$FlatGestureListener;->this$0:Lcom/keephealth/android/views/gallery/view/ImagePreviewView;

    # invokes: Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->getResetYAnimator()Landroid/animation/ValueAnimator;
    invoke-static {v2}, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->access$1400(Lcom/keephealth/android/views/gallery/view/ImagePreviewView;)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 513
    iget-object v5, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView$FlatGestureListener;->this$0:Lcom/keephealth/android/views/gallery/view/ImagePreviewView;

    # getter for: Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->translateLeft:F
    invoke-static {v5}, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->access$300(Lcom/keephealth/android/views/gallery/view/ImagePreviewView;)F

    move-result v5

    iget-object v6, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView$FlatGestureListener;->this$0:Lcom/keephealth/android/views/gallery/view/ImagePreviewView;

    invoke-virtual {v6}, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView$FlatGestureListener;->this$0:Lcom/keephealth/android/views/gallery/view/ImagePreviewView;

    # getter for: Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->mBoundWidth:I
    invoke-static {v7}, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->access$500(Lcom/keephealth/android/views/gallery/view/ImagePreviewView;)I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, 0x40000000    # 2.0f

    mul-float/2addr v7, v8

    sub-float/2addr v6, v7

    div-float/2addr v6, v8

    new-array v7, v4, [F

    aput v5, v7, v3

    aput v6, v7, v0

    invoke-virtual {v1, v7}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 514
    iget-object v5, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView$FlatGestureListener;->this$0:Lcom/keephealth/android/views/gallery/view/ImagePreviewView;

    # getter for: Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->translateTop:F
    invoke-static {v5}, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->access$400(Lcom/keephealth/android/views/gallery/view/ImagePreviewView;)F

    move-result v5

    iget-object v6, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView$FlatGestureListener;->this$0:Lcom/keephealth/android/views/gallery/view/ImagePreviewView;

    invoke-virtual {v6}, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->getHeight()I

    move-result v7

    iget-object v8, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView$FlatGestureListener;->this$0:Lcom/keephealth/android/views/gallery/view/ImagePreviewView;

    # getter for: Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->mBoundHeight:I
    invoke-static {v8}, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->access$600(Lcom/keephealth/android/views/gallery/view/ImagePreviewView;)I

    move-result v8

    mul-int/2addr v8, v4

    # invokes: Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->getDefaultTranslateTop(II)F
    invoke-static {v6, v7, v8}, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->access$1700(Lcom/keephealth/android/views/gallery/view/ImagePreviewView;II)F

    move-result v6

    new-array v4, v4, [F

    aput v5, v4, v3

    aput v6, v4, v0

    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 515
    iget-object v3, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView$FlatGestureListener;->this$0:Lcom/keephealth/android/views/gallery/view/ImagePreviewView;

    invoke-virtual {v3}, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->getOnTranslateXAnimationUpdate()Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 516
    iget-object v3, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView$FlatGestureListener;->this$0:Lcom/keephealth/android/views/gallery/view/ImagePreviewView;

    invoke-virtual {v3}, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->getOnTranslateYAnimationUpdate()Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 517
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 518
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_9d

    .line 520
    :cond_89
    iget-object v1, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView$FlatGestureListener;->this$0:Lcom/keephealth/android/views/gallery/view/ImagePreviewView;

    # getter for: Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->scale:F
    invoke-static {v1}, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->access$200(Lcom/keephealth/android/views/gallery/view/ImagePreviewView;)F

    move-result v1

    new-array v4, v4, [F

    aput v1, v4, v3

    aput v2, v4, v0

    invoke-virtual {p1, v4}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 521
    iget-object v1, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView$FlatGestureListener;->this$0:Lcom/keephealth/android/views/gallery/view/ImagePreviewView;

    # invokes: Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->resetDefaultState()V
    invoke-static {v1}, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->access$1800(Lcom/keephealth/android/views/gallery/view/ImagePreviewView;)V

    .line 524
    :goto_9d
    iget-object v1, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView$FlatGestureListener;->this$0:Lcom/keephealth/android/views/gallery/view/ImagePreviewView;

    invoke-virtual {v1}, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->getOnScaleAnimationUpdate()Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 525
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return v0

    :array_aa
    .array-data 4
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
    .end array-data
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 12

    .line 478
    iget-object p1, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView$FlatGestureListener;->this$0:Lcom/keephealth/android/views/gallery/view/ImagePreviewView;

    # getter for: Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->mBoundWidth:I
    invoke-static {p1}, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->access$500(Lcom/keephealth/android/views/gallery/view/ImagePreviewView;)I

    move-result p1

    int-to-float p1, p1

    iget-object p2, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView$FlatGestureListener;->this$0:Lcom/keephealth/android/views/gallery/view/ImagePreviewView;

    # getter for: Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->scale:F
    invoke-static {p2}, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->access$200(Lcom/keephealth/android/views/gallery/view/ImagePreviewView;)F

    move-result p2

    mul-float/2addr p1, p2

    iget-object p2, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView$FlatGestureListener;->this$0:Lcom/keephealth/android/views/gallery/view/ImagePreviewView;

    invoke-virtual {p2}, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->getWidth()I

    move-result p2

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    const/4 p2, 0x0

    const/4 v0, 0x2

    const-wide/16 v1, 0x12c

    const/4 v3, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    if-lez p1, :cond_5d

    .line 479
    iget-object p1, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView$FlatGestureListener;->this$0:Lcom/keephealth/android/views/gallery/view/ImagePreviewView;

    # getter for: Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->translateLeft:F
    invoke-static {p1}, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->access$300(Lcom/keephealth/android/views/gallery/view/ImagePreviewView;)F

    move-result p1

    mul-float/2addr p3, v4

    mul-float/2addr p3, v4

    mul-float/2addr p3, v4

    add-float/2addr p1, p3

    .line 480
    iget-object p3, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView$FlatGestureListener;->this$0:Lcom/keephealth/android/views/gallery/view/ImagePreviewView;

    # invokes: Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->getExplicitTranslateLeft(F)F
    invoke-static {p3, p1}, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->access$1000(Lcom/keephealth/android/views/gallery/view/ImagePreviewView;F)F

    move-result p1

    .line 481
    iget-object p3, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView$FlatGestureListener;->this$0:Lcom/keephealth/android/views/gallery/view/ImagePreviewView;

    # invokes: Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->getResetXAnimator()Landroid/animation/ValueAnimator;
    invoke-static {p3}, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->access$1200(Lcom/keephealth/android/views/gallery/view/ImagePreviewView;)Landroid/animation/ValueAnimator;

    move-result-object p3

    .line 482
    invoke-virtual {p3, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 483
    iget-object v5, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView$FlatGestureListener;->this$0:Lcom/keephealth/android/views/gallery/view/ImagePreviewView;

    # getter for: Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->mDecInterpolator:Landroid/view/animation/DecelerateInterpolator;
    invoke-static {v5}, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->access$1300(Lcom/keephealth/android/views/gallery/view/ImagePreviewView;)Landroid/view/animation/DecelerateInterpolator;

    move-result-object v5

    invoke-virtual {p3, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 484
    iget-object v5, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView$FlatGestureListener;->this$0:Lcom/keephealth/android/views/gallery/view/ImagePreviewView;

    # getter for: Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->translateLeft:F
    invoke-static {v5}, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->access$300(Lcom/keephealth/android/views/gallery/view/ImagePreviewView;)F

    move-result v5

    new-array v6, v0, [F

    aput v5, v6, p2

    aput p1, v6, v3

    invoke-virtual {p3, v6}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 485
    iget-object p1, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView$FlatGestureListener;->this$0:Lcom/keephealth/android/views/gallery/view/ImagePreviewView;

    invoke-virtual {p1}, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->getOnTranslateXAnimationUpdate()Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 486
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->start()V

    .line 489
    :cond_5d
    iget-object p1, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView$FlatGestureListener;->this$0:Lcom/keephealth/android/views/gallery/view/ImagePreviewView;

    # getter for: Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->mBoundHeight:I
    invoke-static {p1}, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->access$600(Lcom/keephealth/android/views/gallery/view/ImagePreviewView;)I

    move-result p1

    int-to-float p1, p1

    iget-object p3, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView$FlatGestureListener;->this$0:Lcom/keephealth/android/views/gallery/view/ImagePreviewView;

    # getter for: Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->scale:F
    invoke-static {p3}, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->access$200(Lcom/keephealth/android/views/gallery/view/ImagePreviewView;)F

    move-result p3

    mul-float/2addr p1, p3

    iget-object p3, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView$FlatGestureListener;->this$0:Lcom/keephealth/android/views/gallery/view/ImagePreviewView;

    invoke-virtual {p3}, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->getHeight()I

    move-result p3

    int-to-float p3, p3

    cmpl-float p1, p1, p3

    if-lez p1, :cond_b3

    .line 490
    iget-object p1, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView$FlatGestureListener;->this$0:Lcom/keephealth/android/views/gallery/view/ImagePreviewView;

    # getter for: Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->translateTop:F
    invoke-static {p1}, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->access$400(Lcom/keephealth/android/views/gallery/view/ImagePreviewView;)F

    move-result p1

    mul-float/2addr p4, v4

    mul-float/2addr p4, v4

    mul-float/2addr p4, v4

    add-float/2addr p1, p4

    .line 491
    iget-object p3, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView$FlatGestureListener;->this$0:Lcom/keephealth/android/views/gallery/view/ImagePreviewView;

    # invokes: Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->getExplicitTranslateTop(F)F
    invoke-static {p3, p1}, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->access$900(Lcom/keephealth/android/views/gallery/view/ImagePreviewView;F)F

    move-result p1

    .line 492
    iget-object p3, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView$FlatGestureListener;->this$0:Lcom/keephealth/android/views/gallery/view/ImagePreviewView;

    # invokes: Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->getResetYAnimator()Landroid/animation/ValueAnimator;
    invoke-static {p3}, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->access$1400(Lcom/keephealth/android/views/gallery/view/ImagePreviewView;)Landroid/animation/ValueAnimator;

    move-result-object p3

    .line 493
    invoke-virtual {p3, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 494
    iget-object p4, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView$FlatGestureListener;->this$0:Lcom/keephealth/android/views/gallery/view/ImagePreviewView;

    # getter for: Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->mDecInterpolator:Landroid/view/animation/DecelerateInterpolator;
    invoke-static {p4}, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->access$1300(Lcom/keephealth/android/views/gallery/view/ImagePreviewView;)Landroid/view/animation/DecelerateInterpolator;

    move-result-object p4

    invoke-virtual {p3, p4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 495
    iget-object p4, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView$FlatGestureListener;->this$0:Lcom/keephealth/android/views/gallery/view/ImagePreviewView;

    # getter for: Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->translateTop:F
    invoke-static {p4}, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->access$400(Lcom/keephealth/android/views/gallery/view/ImagePreviewView;)F

    move-result p4

    new-array v0, v0, [F

    aput p4, v0, p2

    aput p1, v0, v3

    invoke-virtual {p3, v0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 496
    iget-object p1, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView$FlatGestureListener;->this$0:Lcom/keephealth/android/views/gallery/view/ImagePreviewView;

    invoke-virtual {p1}, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->getOnTranslateYAnimationUpdate()Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 497
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->start()V

    :cond_b3
    return v3
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 9

    .line 434
    iget-object p1, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView$FlatGestureListener;->this$0:Lcom/keephealth/android/views/gallery/view/ImagePreviewView;

    # getter for: Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->mBoundWidth:I
    invoke-static {p1}, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->access$500(Lcom/keephealth/android/views/gallery/view/ImagePreviewView;)I

    move-result p1

    int-to-float p1, p1

    iget-object p2, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView$FlatGestureListener;->this$0:Lcom/keephealth/android/views/gallery/view/ImagePreviewView;

    # getter for: Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->scale:F
    invoke-static {p2}, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->access$200(Lcom/keephealth/android/views/gallery/view/ImagePreviewView;)F

    move-result p2

    mul-float/2addr p1, p2

    .line 435
    iget-object p2, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView$FlatGestureListener;->this$0:Lcom/keephealth/android/views/gallery/view/ImagePreviewView;

    # getter for: Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->mBoundHeight:I
    invoke-static {p2}, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->access$600(Lcom/keephealth/android/views/gallery/view/ImagePreviewView;)I

    move-result p2

    int-to-float p2, p2

    iget-object v0, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView$FlatGestureListener;->this$0:Lcom/keephealth/android/views/gallery/view/ImagePreviewView;

    # getter for: Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->scale:F
    invoke-static {v0}, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->access$200(Lcom/keephealth/android/views/gallery/view/ImagePreviewView;)F

    move-result v0

    mul-float/2addr p2, v0

    .line 437
    iget-object v0, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView$FlatGestureListener;->this$0:Lcom/keephealth/android/views/gallery/view/ImagePreviewView;

    invoke-virtual {v0}, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    cmpl-float p2, p2, v0

    const-wide/high16 v0, 0x3ff8000000000000L    # 1.5

    if-lez p2, :cond_3d

    .line 438
    iget-object p2, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView$FlatGestureListener;->this$0:Lcom/keephealth/android/views/gallery/view/ImagePreviewView;

    float-to-double v2, p4

    mul-double/2addr v2, v0

    # -= operator for: Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->translateTop:F
    invoke-static {p2, v2, v3}, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->access$426(Lcom/keephealth/android/views/gallery/view/ImagePreviewView;D)F

    .line 439
    iget-object p2, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView$FlatGestureListener;->this$0:Lcom/keephealth/android/views/gallery/view/ImagePreviewView;

    # getter for: Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->translateTop:F
    invoke-static {p2}, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->access$400(Lcom/keephealth/android/views/gallery/view/ImagePreviewView;)F

    move-result p4

    # invokes: Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->getExplicitTranslateTop(F)F
    invoke-static {p2, p4}, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->access$900(Lcom/keephealth/android/views/gallery/view/ImagePreviewView;F)F

    move-result p4

    # setter for: Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->translateTop:F
    invoke-static {p2, p4}, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->access$402(Lcom/keephealth/android/views/gallery/view/ImagePreviewView;F)F

    .line 449
    :cond_3d
    iget-object p2, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView$FlatGestureListener;->this$0:Lcom/keephealth/android/views/gallery/view/ImagePreviewView;

    invoke-virtual {p2}, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->getWidth()I

    move-result p2

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    const/4 p2, 0x1

    if-lez p1, :cond_6d

    .line 450
    iget-object p1, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView$FlatGestureListener;->this$0:Lcom/keephealth/android/views/gallery/view/ImagePreviewView;

    float-to-double p3, p3

    mul-double/2addr p3, v0

    # -= operator for: Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->translateLeft:F
    invoke-static {p1, p3, p4}, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->access$326(Lcom/keephealth/android/views/gallery/view/ImagePreviewView;D)F

    .line 451
    iget-object p1, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView$FlatGestureListener;->this$0:Lcom/keephealth/android/views/gallery/view/ImagePreviewView;

    # getter for: Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->translateLeft:F
    invoke-static {p1}, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->access$300(Lcom/keephealth/android/views/gallery/view/ImagePreviewView;)F

    move-result p3

    # invokes: Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->getExplicitTranslateLeft(F)F
    invoke-static {p1, p3}, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->access$1000(Lcom/keephealth/android/views/gallery/view/ImagePreviewView;F)F

    move-result p1

    .line 452
    iget-object p3, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView$FlatGestureListener;->this$0:Lcom/keephealth/android/views/gallery/view/ImagePreviewView;

    # getter for: Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->translateLeft:F
    invoke-static {p3}, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->access$300(Lcom/keephealth/android/views/gallery/view/ImagePreviewView;)F

    move-result p3

    cmpl-float p3, p1, p3

    if-eqz p3, :cond_66

    move p3, p2

    goto :goto_67

    :cond_66
    const/4 p3, 0x0

    .line 453
    :goto_67
    iget-object p4, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView$FlatGestureListener;->this$0:Lcom/keephealth/android/views/gallery/view/ImagePreviewView;

    # setter for: Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->translateLeft:F
    invoke-static {p4, p1}, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->access$302(Lcom/keephealth/android/views/gallery/view/ImagePreviewView;F)F

    goto :goto_6e

    :cond_6d
    move p3, p2

    .line 464
    :goto_6e
    iget-object p1, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView$FlatGestureListener;->this$0:Lcom/keephealth/android/views/gallery/view/ImagePreviewView;

    # getter for: Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->onReachBorderListener:Lcom/keephealth/android/views/gallery/view/ImagePreviewView$OnReachBorderListener;
    invoke-static {p1}, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->access$1100(Lcom/keephealth/android/views/gallery/view/ImagePreviewView;)Lcom/keephealth/android/views/gallery/view/ImagePreviewView$OnReachBorderListener;

    move-result-object p1

    if-eqz p1, :cond_7f

    .line 465
    iget-object p1, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView$FlatGestureListener;->this$0:Lcom/keephealth/android/views/gallery/view/ImagePreviewView;

    # getter for: Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->onReachBorderListener:Lcom/keephealth/android/views/gallery/view/ImagePreviewView$OnReachBorderListener;
    invoke-static {p1}, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->access$1100(Lcom/keephealth/android/views/gallery/view/ImagePreviewView;)Lcom/keephealth/android/views/gallery/view/ImagePreviewView$OnReachBorderListener;

    move-result-object p1

    invoke-interface {p1, p3}, Lcom/keephealth/android/views/gallery/view/ImagePreviewView$OnReachBorderListener;->onReachBorder(Z)V

    .line 467
    :cond_7f
    iget-object p1, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView$FlatGestureListener;->this$0:Lcom/keephealth/android/views/gallery/view/ImagePreviewView;

    invoke-virtual {p1}, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->invalidate()V

    return p2
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .registers 2

    .line 473
    iget-object p1, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView$FlatGestureListener;->this$0:Lcom/keephealth/android/views/gallery/view/ImagePreviewView;

    invoke-virtual {p1}, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->performClick()Z

    move-result p1

    return p1
.end method
