.class Lcom/keephealth/android/views/zoomview/ZoomImageView$MultiGestureDetector;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ZoomImageView.java"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/views/zoomview/ZoomImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MultiGestureDetector"
.end annotation


# instance fields
.field private final gestureDetector:Landroid/view/GestureDetector;

.field private isDragging:Z

.field private lastPointerCount:F

.field private lastTouchX:F

.field private lastTouchY:F

.field private final scaleGestureDetector:Landroid/view/ScaleGestureDetector;

.field private final scaledMinimumFlingVelocity:F

.field private final scaledTouchSlop:F

.field final synthetic this$0:Lcom/keephealth/android/views/zoomview/ZoomImageView;

.field private velocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Lcom/keephealth/android/views/zoomview/ZoomImageView;Landroid/content/Context;)V
    .registers 3

    .line 113
    iput-object p1, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView$MultiGestureDetector;->this$0:Lcom/keephealth/android/views/zoomview/ZoomImageView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 114
    new-instance p1, Landroid/view/ScaleGestureDetector;

    invoke-direct {p1, p2, p0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object p1, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView$MultiGestureDetector;->scaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 116
    new-instance p1, Landroid/view/GestureDetector;

    invoke-direct {p1, p2, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView$MultiGestureDetector;->gestureDetector:Landroid/view/GestureDetector;

    .line 117
    invoke-virtual {p1, p0}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 119
    invoke-static {p2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 120
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView$MultiGestureDetector;->scaledMinimumFlingVelocity:F

    .line 121
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView$MultiGestureDetector;->scaledTouchSlop:F

    return-void
.end method


# virtual methods
.method public isScaling()Z
    .registers 2

    .line 125
    iget-object v0, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView$MultiGestureDetector;->scaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v0

    return v0
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .registers 9

    .line 285
    :try_start_0
    iget-object v0, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView$MultiGestureDetector;->this$0:Lcom/keephealth/android/views/zoomview/ZoomImageView;

    invoke-virtual {v0}, Lcom/keephealth/android/views/zoomview/ZoomImageView;->getScale()F

    move-result v3

    .line 286
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 287
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 289
    iget-object p1, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView$MultiGestureDetector;->this$0:Lcom/keephealth/android/views/zoomview/ZoomImageView;

    # getter for: Lcom/keephealth/android/views/zoomview/ZoomImageView;->midScale:F
    invoke-static {p1}, Lcom/keephealth/android/views/zoomview/ZoomImageView;->access$700(Lcom/keephealth/android/views/zoomview/ZoomImageView;)F

    move-result p1

    cmpg-float p1, v3, p1

    if-gez p1, :cond_2a

    .line 290
    iget-object p1, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView$MultiGestureDetector;->this$0:Lcom/keephealth/android/views/zoomview/ZoomImageView;

    new-instance v0, Lcom/keephealth/android/views/zoomview/ZoomImageView$AnimatedZoomRunnable;

    iget-object v2, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView$MultiGestureDetector;->this$0:Lcom/keephealth/android/views/zoomview/ZoomImageView;

    # getter for: Lcom/keephealth/android/views/zoomview/ZoomImageView;->midScale:F
    invoke-static {v2}, Lcom/keephealth/android/views/zoomview/ZoomImageView;->access$700(Lcom/keephealth/android/views/zoomview/ZoomImageView;)F

    move-result v4

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/keephealth/android/views/zoomview/ZoomImageView$AnimatedZoomRunnable;-><init>(Lcom/keephealth/android/views/zoomview/ZoomImageView;FFFF)V

    invoke-virtual {p1, v0}, Lcom/keephealth/android/views/zoomview/ZoomImageView;->post(Ljava/lang/Runnable;)Z

    goto :goto_61

    .line 291
    :cond_2a
    iget-object p1, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView$MultiGestureDetector;->this$0:Lcom/keephealth/android/views/zoomview/ZoomImageView;

    # getter for: Lcom/keephealth/android/views/zoomview/ZoomImageView;->midScale:F
    invoke-static {p1}, Lcom/keephealth/android/views/zoomview/ZoomImageView;->access$700(Lcom/keephealth/android/views/zoomview/ZoomImageView;)F

    move-result p1

    cmpl-float p1, v3, p1

    if-ltz p1, :cond_50

    iget-object p1, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView$MultiGestureDetector;->this$0:Lcom/keephealth/android/views/zoomview/ZoomImageView;

    # getter for: Lcom/keephealth/android/views/zoomview/ZoomImageView;->maxScale:F
    invoke-static {p1}, Lcom/keephealth/android/views/zoomview/ZoomImageView;->access$600(Lcom/keephealth/android/views/zoomview/ZoomImageView;)F

    move-result p1

    cmpg-float p1, v3, p1

    if-gez p1, :cond_50

    .line 292
    iget-object p1, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView$MultiGestureDetector;->this$0:Lcom/keephealth/android/views/zoomview/ZoomImageView;

    new-instance v0, Lcom/keephealth/android/views/zoomview/ZoomImageView$AnimatedZoomRunnable;

    iget-object v2, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView$MultiGestureDetector;->this$0:Lcom/keephealth/android/views/zoomview/ZoomImageView;

    # getter for: Lcom/keephealth/android/views/zoomview/ZoomImageView;->maxScale:F
    invoke-static {v2}, Lcom/keephealth/android/views/zoomview/ZoomImageView;->access$600(Lcom/keephealth/android/views/zoomview/ZoomImageView;)F

    move-result v4

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/keephealth/android/views/zoomview/ZoomImageView$AnimatedZoomRunnable;-><init>(Lcom/keephealth/android/views/zoomview/ZoomImageView;FFFF)V

    invoke-virtual {p1, v0}, Lcom/keephealth/android/views/zoomview/ZoomImageView;->post(Ljava/lang/Runnable;)Z

    goto :goto_61

    .line 294
    :cond_50
    iget-object p1, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView$MultiGestureDetector;->this$0:Lcom/keephealth/android/views/zoomview/ZoomImageView;

    new-instance v0, Lcom/keephealth/android/views/zoomview/ZoomImageView$AnimatedZoomRunnable;

    iget-object v2, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView$MultiGestureDetector;->this$0:Lcom/keephealth/android/views/zoomview/ZoomImageView;

    # getter for: Lcom/keephealth/android/views/zoomview/ZoomImageView;->minScale:F
    invoke-static {v2}, Lcom/keephealth/android/views/zoomview/ZoomImageView;->access$800(Lcom/keephealth/android/views/zoomview/ZoomImageView;)F

    move-result v4

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/keephealth/android/views/zoomview/ZoomImageView$AnimatedZoomRunnable;-><init>(Lcom/keephealth/android/views/zoomview/ZoomImageView;FFFF)V

    invoke-virtual {p1, v0}, Lcom/keephealth/android/views/zoomview/ZoomImageView;->post(Ljava/lang/Runnable;)Z
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_61} :catch_61

    :catch_61
    :goto_61
    const/4 p1, 0x1

    return p1
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .registers 3

    .line 337
    iget-object p1, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView$MultiGestureDetector;->this$0:Lcom/keephealth/android/views/zoomview/ZoomImageView;

    # getter for: Lcom/keephealth/android/views/zoomview/ZoomImageView;->longClickListener:Landroid/view/View$OnLongClickListener;
    invoke-static {p1}, Lcom/keephealth/android/views/zoomview/ZoomImageView;->access$1100(Lcom/keephealth/android/views/zoomview/ZoomImageView;)Landroid/view/View$OnLongClickListener;

    move-result-object p1

    if-eqz p1, :cond_13

    .line 338
    iget-object p1, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView$MultiGestureDetector;->this$0:Lcom/keephealth/android/views/zoomview/ZoomImageView;

    # getter for: Lcom/keephealth/android/views/zoomview/ZoomImageView;->longClickListener:Landroid/view/View$OnLongClickListener;
    invoke-static {p1}, Lcom/keephealth/android/views/zoomview/ZoomImageView;->access$1100(Lcom/keephealth/android/views/zoomview/ZoomImageView;)Landroid/view/View$OnLongClickListener;

    move-result-object p1

    iget-object v0, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView$MultiGestureDetector;->this$0:Lcom/keephealth/android/views/zoomview/ZoomImageView;

    invoke-interface {p1, v0}, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z

    :cond_13
    return-void
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .registers 10

    .line 260
    iget-object v0, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView$MultiGestureDetector;->this$0:Lcom/keephealth/android/views/zoomview/ZoomImageView;

    invoke-virtual {v0}, Lcom/keephealth/android/views/zoomview/ZoomImageView;->getScale()F

    move-result v0

    .line 261
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v1

    .line 263
    iget-object v2, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView$MultiGestureDetector;->this$0:Lcom/keephealth/android/views/zoomview/ZoomImageView;

    invoke-virtual {v2}, Lcom/keephealth/android/views/zoomview/ZoomImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_43

    iget-object v2, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView$MultiGestureDetector;->this$0:Lcom/keephealth/android/views/zoomview/ZoomImageView;

    .line 264
    # getter for: Lcom/keephealth/android/views/zoomview/ZoomImageView;->maxScale:F
    invoke-static {v2}, Lcom/keephealth/android/views/zoomview/ZoomImageView;->access$600(Lcom/keephealth/android/views/zoomview/ZoomImageView;)F

    move-result v2

    cmpl-float v2, v0, v2

    const/high16 v3, 0x3f800000    # 1.0f

    if-ltz v2, :cond_22

    cmpl-float v2, v1, v3

    if-gtz v2, :cond_43

    :cond_22
    float-to-double v4, v0

    const-wide/high16 v6, 0x3fe8000000000000L    # 0.75

    cmpg-double v0, v4, v6

    if-gtz v0, :cond_2d

    cmpg-float v0, v1, v3

    if-ltz v0, :cond_43

    .line 265
    :cond_2d
    iget-object v0, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView$MultiGestureDetector;->this$0:Lcom/keephealth/android/views/zoomview/ZoomImageView;

    # getter for: Lcom/keephealth/android/views/zoomview/ZoomImageView;->suppMatrix:Landroid/graphics/Matrix;
    invoke-static {v0}, Lcom/keephealth/android/views/zoomview/ZoomImageView;->access$000(Lcom/keephealth/android/views/zoomview/ZoomImageView;)Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v2

    .line 266
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result p1

    .line 265
    invoke-virtual {v0, v1, v1, v2, p1}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 267
    iget-object p1, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView$MultiGestureDetector;->this$0:Lcom/keephealth/android/views/zoomview/ZoomImageView;

    # invokes: Lcom/keephealth/android/views/zoomview/ZoomImageView;->checkAndDisplayMatrix()V
    invoke-static {p1}, Lcom/keephealth/android/views/zoomview/ZoomImageView;->access$100(Lcom/keephealth/android/views/zoomview/ZoomImageView;)V

    :cond_43
    const/4 p1, 0x1

    return p1
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .registers 2

    const/4 p1, 0x1

    return p1
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .registers 2

    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .registers 6

    .line 311
    iget-object v0, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView$MultiGestureDetector;->this$0:Lcom/keephealth/android/views/zoomview/ZoomImageView;

    # getter for: Lcom/keephealth/android/views/zoomview/ZoomImageView;->photoTapListener:Lcom/keephealth/android/views/zoomview/ZoomImageView$OnPhotoTapListener;
    invoke-static {v0}, Lcom/keephealth/android/views/zoomview/ZoomImageView;->access$900(Lcom/keephealth/android/views/zoomview/ZoomImageView;)Lcom/keephealth/android/views/zoomview/ZoomImageView$OnPhotoTapListener;

    move-result-object v0

    if-eqz v0, :cond_3b

    .line 312
    iget-object v0, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView$MultiGestureDetector;->this$0:Lcom/keephealth/android/views/zoomview/ZoomImageView;

    invoke-virtual {v0}, Lcom/keephealth/android/views/zoomview/ZoomImageView;->getDisplayRect()Landroid/graphics/RectF;

    move-result-object v0

    if-eqz v0, :cond_3b

    .line 315
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 318
    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 320
    iget p1, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, p1

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result p1

    div-float/2addr v1, p1

    .line 321
    iget p1, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v2, p1

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result p1

    div-float/2addr v2, p1

    .line 323
    iget-object p1, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView$MultiGestureDetector;->this$0:Lcom/keephealth/android/views/zoomview/ZoomImageView;

    # getter for: Lcom/keephealth/android/views/zoomview/ZoomImageView;->photoTapListener:Lcom/keephealth/android/views/zoomview/ZoomImageView$OnPhotoTapListener;
    invoke-static {p1}, Lcom/keephealth/android/views/zoomview/ZoomImageView;->access$900(Lcom/keephealth/android/views/zoomview/ZoomImageView;)Lcom/keephealth/android/views/zoomview/ZoomImageView$OnPhotoTapListener;

    move-result-object p1

    iget-object v0, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView$MultiGestureDetector;->this$0:Lcom/keephealth/android/views/zoomview/ZoomImageView;

    invoke-interface {p1, v0, v1, v2}, Lcom/keephealth/android/views/zoomview/ZoomImageView$OnPhotoTapListener;->onPhotoTap(Landroid/view/View;FF)V

    const/4 p1, 0x1

    return p1

    .line 328
    :cond_3b
    iget-object v0, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView$MultiGestureDetector;->this$0:Lcom/keephealth/android/views/zoomview/ZoomImageView;

    # getter for: Lcom/keephealth/android/views/zoomview/ZoomImageView;->viewTapListener:Lcom/keephealth/android/views/zoomview/ZoomImageView$OnViewTapListener;
    invoke-static {v0}, Lcom/keephealth/android/views/zoomview/ZoomImageView;->access$1000(Lcom/keephealth/android/views/zoomview/ZoomImageView;)Lcom/keephealth/android/views/zoomview/ZoomImageView$OnViewTapListener;

    move-result-object v0

    if-eqz v0, :cond_56

    .line 329
    iget-object v0, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView$MultiGestureDetector;->this$0:Lcom/keephealth/android/views/zoomview/ZoomImageView;

    # getter for: Lcom/keephealth/android/views/zoomview/ZoomImageView;->viewTapListener:Lcom/keephealth/android/views/zoomview/ZoomImageView$OnViewTapListener;
    invoke-static {v0}, Lcom/keephealth/android/views/zoomview/ZoomImageView;->access$1000(Lcom/keephealth/android/views/zoomview/ZoomImageView;)Lcom/keephealth/android/views/zoomview/ZoomImageView$OnViewTapListener;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView$MultiGestureDetector;->this$0:Lcom/keephealth/android/views/zoomview/ZoomImageView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-interface {v0, v1, v2, p1}, Lcom/keephealth/android/views/zoomview/ZoomImageView$OnViewTapListener;->onViewTap(Landroid/view/View;FF)V

    :cond_56
    const/4 p1, 0x0

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 13

    .line 129
    iget-object v0, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView$MultiGestureDetector;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    return v1

    .line 133
    :cond_a
    iget-object v0, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView$MultiGestureDetector;->scaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 139
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v5, v2

    move v6, v5

    move v4, v3

    :goto_18
    if-ge v4, v0, :cond_27

    .line 141
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    add-float/2addr v5, v7

    .line 142
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    add-float/2addr v6, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    :cond_27
    int-to-float v0, v0

    div-float/2addr v5, v0

    div-float/2addr v6, v0

    .line 150
    iget v4, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView$MultiGestureDetector;->lastPointerCount:F

    cmpl-float v4, v0, v4

    if-eqz v4, :cond_3d

    .line 151
    iput-boolean v3, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView$MultiGestureDetector;->isDragging:Z

    .line 152
    iget-object v4, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView$MultiGestureDetector;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v4, :cond_39

    .line 153
    invoke-virtual {v4}, Landroid/view/VelocityTracker;->clear()V

    .line 155
    :cond_39
    iput v5, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView$MultiGestureDetector;->lastTouchX:F

    .line 156
    iput v6, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView$MultiGestureDetector;->lastTouchY:F

    .line 158
    :cond_3d
    iput v0, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView$MultiGestureDetector;->lastPointerCount:F

    .line 160
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_15e

    if-eq v0, v1, :cond_ef

    const/4 v4, 0x2

    if-eq v0, v4, :cond_5d

    const/4 p1, 0x3

    if-eq v0, p1, :cond_4f

    goto/16 :goto_177

    .line 247
    :cond_4f
    iput v2, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView$MultiGestureDetector;->lastPointerCount:F

    .line 248
    iget-object p1, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView$MultiGestureDetector;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_177

    .line 249
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 p1, 0x0

    .line 250
    iput-object p1, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView$MultiGestureDetector;->velocityTracker:Landroid/view/VelocityTracker;

    goto/16 :goto_177

    .line 175
    :cond_5d
    iget v0, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView$MultiGestureDetector;->lastTouchX:F

    sub-float v0, v5, v0

    iget v2, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView$MultiGestureDetector;->lastTouchY:F

    sub-float v2, v6, v2

    .line 177
    iget-boolean v7, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView$MultiGestureDetector;->isDragging:Z

    if-nez v7, :cond_7f

    mul-float v7, v0, v0

    mul-float v8, v2, v2

    add-float/2addr v7, v8

    float-to-double v7, v7

    .line 180
    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    iget v9, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView$MultiGestureDetector;->scaledTouchSlop:F

    float-to-double v9, v9

    cmpl-double v7, v7, v9

    if-ltz v7, :cond_7c

    move v7, v1

    goto :goto_7d

    :cond_7c
    move v7, v3

    :goto_7d
    iput-boolean v7, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView$MultiGestureDetector;->isDragging:Z

    .line 183
    :cond_7f
    iget-boolean v7, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView$MultiGestureDetector;->isDragging:Z

    if-eqz v7, :cond_177

    .line 184
    iget-object v7, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView$MultiGestureDetector;->this$0:Lcom/keephealth/android/views/zoomview/ZoomImageView;

    invoke-virtual {v7}, Lcom/keephealth/android/views/zoomview/ZoomImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    if-eqz v7, :cond_e2

    .line 185
    iget-object v7, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView$MultiGestureDetector;->this$0:Lcom/keephealth/android/views/zoomview/ZoomImageView;

    # getter for: Lcom/keephealth/android/views/zoomview/ZoomImageView;->suppMatrix:Landroid/graphics/Matrix;
    invoke-static {v7}, Lcom/keephealth/android/views/zoomview/ZoomImageView;->access$000(Lcom/keephealth/android/views/zoomview/ZoomImageView;)Landroid/graphics/Matrix;

    move-result-object v7

    invoke-virtual {v7, v0, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 186
    iget-object v2, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView$MultiGestureDetector;->this$0:Lcom/keephealth/android/views/zoomview/ZoomImageView;

    # invokes: Lcom/keephealth/android/views/zoomview/ZoomImageView;->checkAndDisplayMatrix()V
    invoke-static {v2}, Lcom/keephealth/android/views/zoomview/ZoomImageView;->access$100(Lcom/keephealth/android/views/zoomview/ZoomImageView;)V

    .line 199
    iget-object v2, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView$MultiGestureDetector;->this$0:Lcom/keephealth/android/views/zoomview/ZoomImageView;

    # getter for: Lcom/keephealth/android/views/zoomview/ZoomImageView;->allowParentInterceptOnEdge:Z
    invoke-static {v2}, Lcom/keephealth/android/views/zoomview/ZoomImageView;->access$200(Lcom/keephealth/android/views/zoomview/ZoomImageView;)Z

    move-result v2

    if-eqz v2, :cond_e2

    iget-object v2, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView$MultiGestureDetector;->this$0:Lcom/keephealth/android/views/zoomview/ZoomImageView;

    # getter for: Lcom/keephealth/android/views/zoomview/ZoomImageView;->multiGestureDetector:Lcom/keephealth/android/views/zoomview/ZoomImageView$MultiGestureDetector;
    invoke-static {v2}, Lcom/keephealth/android/views/zoomview/ZoomImageView;->access$300(Lcom/keephealth/android/views/zoomview/ZoomImageView;)Lcom/keephealth/android/views/zoomview/ZoomImageView$MultiGestureDetector;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/views/zoomview/ZoomImageView$MultiGestureDetector;->isScaling()Z

    move-result v2

    if-nez v2, :cond_e2

    .line 200
    iget-object v2, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView$MultiGestureDetector;->this$0:Lcom/keephealth/android/views/zoomview/ZoomImageView;

    # getter for: Lcom/keephealth/android/views/zoomview/ZoomImageView;->scrollEdge:I
    invoke-static {v2}, Lcom/keephealth/android/views/zoomview/ZoomImageView;->access$400(Lcom/keephealth/android/views/zoomview/ZoomImageView;)I

    move-result v2

    if-eq v2, v4, :cond_d1

    iget-object v2, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView$MultiGestureDetector;->this$0:Lcom/keephealth/android/views/zoomview/ZoomImageView;

    .line 201
    # getter for: Lcom/keephealth/android/views/zoomview/ZoomImageView;->scrollEdge:I
    invoke-static {v2}, Lcom/keephealth/android/views/zoomview/ZoomImageView;->access$400(Lcom/keephealth/android/views/zoomview/ZoomImageView;)I

    move-result v2

    if-nez v2, :cond_c3

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v2

    if-gez v2, :cond_d1

    :cond_c3
    iget-object v2, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView$MultiGestureDetector;->this$0:Lcom/keephealth/android/views/zoomview/ZoomImageView;

    .line 202
    # getter for: Lcom/keephealth/android/views/zoomview/ZoomImageView;->scrollEdge:I
    invoke-static {v2}, Lcom/keephealth/android/views/zoomview/ZoomImageView;->access$400(Lcom/keephealth/android/views/zoomview/ZoomImageView;)I

    move-result v2

    if-ne v2, v1, :cond_e2

    const/high16 v2, -0x40800000    # -1.0f

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_e2

    .line 204
    :cond_d1
    iget-object v0, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView$MultiGestureDetector;->this$0:Lcom/keephealth/android/views/zoomview/ZoomImageView;

    invoke-virtual {v0}, Lcom/keephealth/android/views/zoomview/ZoomImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_e2

    .line 205
    iget-object v0, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView$MultiGestureDetector;->this$0:Lcom/keephealth/android/views/zoomview/ZoomImageView;

    invoke-virtual {v0}, Lcom/keephealth/android/views/zoomview/ZoomImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 211
    :cond_e2
    iput v5, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView$MultiGestureDetector;->lastTouchX:F

    .line 212
    iput v6, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView$MultiGestureDetector;->lastTouchY:F

    .line 214
    iget-object v0, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView$MultiGestureDetector;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_177

    .line 215
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto/16 :goto_177

    .line 221
    :cond_ef
    iget-boolean v0, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView$MultiGestureDetector;->isDragging:Z

    if-eqz v0, :cond_177

    .line 222
    iput v5, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView$MultiGestureDetector;->lastTouchX:F

    .line 223
    iput v6, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView$MultiGestureDetector;->lastTouchY:F

    .line 226
    iget-object v0, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView$MultiGestureDetector;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_177

    .line 227
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 228
    iget-object p1, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView$MultiGestureDetector;->velocityTracker:Landroid/view/VelocityTracker;

    const/16 v0, 0x3e8

    invoke-virtual {p1, v0}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 230
    iget-object p1, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView$MultiGestureDetector;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result p1

    iget-object v0, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView$MultiGestureDetector;->velocityTracker:Landroid/view/VelocityTracker;

    .line 231
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    .line 235
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget v3, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView$MultiGestureDetector;->scaledMinimumFlingVelocity:F

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_177

    iget-object v2, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView$MultiGestureDetector;->this$0:Lcom/keephealth/android/views/zoomview/ZoomImageView;

    .line 236
    invoke-virtual {v2}, Lcom/keephealth/android/views/zoomview/ZoomImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_177

    .line 237
    iget-object v2, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView$MultiGestureDetector;->this$0:Lcom/keephealth/android/views/zoomview/ZoomImageView;

    new-instance v3, Lcom/keephealth/android/views/zoomview/ZoomImageView$FlingRunnable;

    iget-object v4, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView$MultiGestureDetector;->this$0:Lcom/keephealth/android/views/zoomview/ZoomImageView;

    invoke-virtual {v4}, Lcom/keephealth/android/views/zoomview/ZoomImageView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/keephealth/android/views/zoomview/ZoomImageView$FlingRunnable;-><init>(Lcom/keephealth/android/views/zoomview/ZoomImageView;Landroid/content/Context;)V

    # setter for: Lcom/keephealth/android/views/zoomview/ZoomImageView;->currentFlingRunnable:Lcom/keephealth/android/views/zoomview/ZoomImageView$FlingRunnable;
    invoke-static {v2, v3}, Lcom/keephealth/android/views/zoomview/ZoomImageView;->access$502(Lcom/keephealth/android/views/zoomview/ZoomImageView;Lcom/keephealth/android/views/zoomview/ZoomImageView$FlingRunnable;)Lcom/keephealth/android/views/zoomview/ZoomImageView$FlingRunnable;

    .line 238
    iget-object v2, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView$MultiGestureDetector;->this$0:Lcom/keephealth/android/views/zoomview/ZoomImageView;

    # getter for: Lcom/keephealth/android/views/zoomview/ZoomImageView;->currentFlingRunnable:Lcom/keephealth/android/views/zoomview/ZoomImageView$FlingRunnable;
    invoke-static {v2}, Lcom/keephealth/android/views/zoomview/ZoomImageView;->access$500(Lcom/keephealth/android/views/zoomview/ZoomImageView;)Lcom/keephealth/android/views/zoomview/ZoomImageView$FlingRunnable;

    move-result-object v2

    iget-object v3, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView$MultiGestureDetector;->this$0:Lcom/keephealth/android/views/zoomview/ZoomImageView;

    invoke-virtual {v3}, Lcom/keephealth/android/views/zoomview/ZoomImageView;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView$MultiGestureDetector;->this$0:Lcom/keephealth/android/views/zoomview/ZoomImageView;

    invoke-virtual {v4}, Lcom/keephealth/android/views/zoomview/ZoomImageView;->getHeight()I

    move-result v4

    neg-float p1, p1

    float-to-int p1, p1

    neg-float v0, v0

    float-to-int v0, v0

    invoke-virtual {v2, v3, v4, p1, v0}, Lcom/keephealth/android/views/zoomview/ZoomImageView$FlingRunnable;->fling(IIII)V

    .line 240
    iget-object p1, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView$MultiGestureDetector;->this$0:Lcom/keephealth/android/views/zoomview/ZoomImageView;

    # getter for: Lcom/keephealth/android/views/zoomview/ZoomImageView;->currentFlingRunnable:Lcom/keephealth/android/views/zoomview/ZoomImageView$FlingRunnable;
    invoke-static {p1}, Lcom/keephealth/android/views/zoomview/ZoomImageView;->access$500(Lcom/keephealth/android/views/zoomview/ZoomImageView;)Lcom/keephealth/android/views/zoomview/ZoomImageView$FlingRunnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/keephealth/android/views/zoomview/ZoomImageView;->post(Ljava/lang/Runnable;)Z

    goto :goto_177

    .line 162
    :cond_15e
    iget-object v0, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView$MultiGestureDetector;->velocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_169

    .line 163
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView$MultiGestureDetector;->velocityTracker:Landroid/view/VelocityTracker;

    goto :goto_16c

    .line 165
    :cond_169
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 167
    :goto_16c
    iget-object v0, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView$MultiGestureDetector;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 169
    iput v5, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView$MultiGestureDetector;->lastTouchX:F

    .line 170
    iput v6, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView$MultiGestureDetector;->lastTouchY:F

    .line 171
    iput-boolean v3, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView$MultiGestureDetector;->isDragging:Z

    :cond_177
    :goto_177
    return v1
.end method
