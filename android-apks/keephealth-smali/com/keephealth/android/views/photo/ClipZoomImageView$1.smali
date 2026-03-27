.class Lcom/keephealth/android/views/photo/ClipZoomImageView$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ClipZoomImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/views/photo/ClipZoomImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/views/photo/ClipZoomImageView;


# direct methods
.method constructor <init>(Lcom/keephealth/android/views/photo/ClipZoomImageView;)V
    .registers 2

    .line 80
    iput-object p1, p0, Lcom/keephealth/android/views/photo/ClipZoomImageView$1;->this$0:Lcom/keephealth/android/views/photo/ClipZoomImageView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .registers 10

    .line 84
    iget-object v0, p0, Lcom/keephealth/android/views/photo/ClipZoomImageView$1;->this$0:Lcom/keephealth/android/views/photo/ClipZoomImageView;

    # getter for: Lcom/keephealth/android/views/photo/ClipZoomImageView;->isAutoScale:Z
    invoke-static {v0}, Lcom/keephealth/android/views/photo/ClipZoomImageView;->access$000(Lcom/keephealth/android/views/photo/ClipZoomImageView;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    return v1

    .line 87
    :cond_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 88
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 89
    iget-object v2, p0, Lcom/keephealth/android/views/photo/ClipZoomImageView$1;->this$0:Lcom/keephealth/android/views/photo/ClipZoomImageView;

    invoke-virtual {v2}, Lcom/keephealth/android/views/photo/ClipZoomImageView;->getScale()F

    move-result v2

    # getter for: Lcom/keephealth/android/views/photo/ClipZoomImageView;->SCALE_MID:F
    invoke-static {}, Lcom/keephealth/android/views/photo/ClipZoomImageView;->access$100()F

    move-result v3

    cmpg-float v2, v2, v3

    const-wide/16 v3, 0x10

    if-gez v2, :cond_38

    .line 91
    iget-object v2, p0, Lcom/keephealth/android/views/photo/ClipZoomImageView$1;->this$0:Lcom/keephealth/android/views/photo/ClipZoomImageView;

    new-instance v5, Lcom/keephealth/android/views/photo/ClipZoomImageView$AutoScaleRunnable;

    iget-object v6, p0, Lcom/keephealth/android/views/photo/ClipZoomImageView$1;->this$0:Lcom/keephealth/android/views/photo/ClipZoomImageView;

    .line 92
    # getter for: Lcom/keephealth/android/views/photo/ClipZoomImageView;->SCALE_MID:F
    invoke-static {}, Lcom/keephealth/android/views/photo/ClipZoomImageView;->access$100()F

    move-result v7

    invoke-direct {v5, v6, v7, v0, p1}, Lcom/keephealth/android/views/photo/ClipZoomImageView$AutoScaleRunnable;-><init>(Lcom/keephealth/android/views/photo/ClipZoomImageView;FFF)V

    .line 91
    invoke-virtual {v2, v5, v3, v4}, Lcom/keephealth/android/views/photo/ClipZoomImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 93
    iget-object p1, p0, Lcom/keephealth/android/views/photo/ClipZoomImageView$1;->this$0:Lcom/keephealth/android/views/photo/ClipZoomImageView;

    # setter for: Lcom/keephealth/android/views/photo/ClipZoomImageView;->isAutoScale:Z
    invoke-static {p1, v1}, Lcom/keephealth/android/views/photo/ClipZoomImageView;->access$002(Lcom/keephealth/android/views/photo/ClipZoomImageView;Z)Z

    goto :goto_4d

    .line 96
    :cond_38
    iget-object v2, p0, Lcom/keephealth/android/views/photo/ClipZoomImageView$1;->this$0:Lcom/keephealth/android/views/photo/ClipZoomImageView;

    new-instance v5, Lcom/keephealth/android/views/photo/ClipZoomImageView$AutoScaleRunnable;

    iget-object v6, p0, Lcom/keephealth/android/views/photo/ClipZoomImageView$1;->this$0:Lcom/keephealth/android/views/photo/ClipZoomImageView;

    .line 97
    # getter for: Lcom/keephealth/android/views/photo/ClipZoomImageView;->initScale:F
    invoke-static {v6}, Lcom/keephealth/android/views/photo/ClipZoomImageView;->access$200(Lcom/keephealth/android/views/photo/ClipZoomImageView;)F

    move-result v7

    invoke-direct {v5, v6, v7, v0, p1}, Lcom/keephealth/android/views/photo/ClipZoomImageView$AutoScaleRunnable;-><init>(Lcom/keephealth/android/views/photo/ClipZoomImageView;FFF)V

    .line 96
    invoke-virtual {v2, v5, v3, v4}, Lcom/keephealth/android/views/photo/ClipZoomImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 98
    iget-object p1, p0, Lcom/keephealth/android/views/photo/ClipZoomImageView$1;->this$0:Lcom/keephealth/android/views/photo/ClipZoomImageView;

    # setter for: Lcom/keephealth/android/views/photo/ClipZoomImageView;->isAutoScale:Z
    invoke-static {p1, v1}, Lcom/keephealth/android/views/photo/ClipZoomImageView;->access$002(Lcom/keephealth/android/views/photo/ClipZoomImageView;Z)Z

    :goto_4d
    return v1
.end method
