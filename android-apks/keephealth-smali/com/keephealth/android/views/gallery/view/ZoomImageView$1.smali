.class Lcom/keephealth/android/views/gallery/view/ZoomImageView$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ZoomImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/views/gallery/view/ZoomImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/views/gallery/view/ZoomImageView;


# direct methods
.method constructor <init>(Lcom/keephealth/android/views/gallery/view/ZoomImageView;)V
    .registers 2

    .line 65
    iput-object p1, p0, Lcom/keephealth/android/views/gallery/view/ZoomImageView$1;->this$0:Lcom/keephealth/android/views/gallery/view/ZoomImageView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .registers 10

    .line 68
    iget-object v0, p0, Lcom/keephealth/android/views/gallery/view/ZoomImageView$1;->this$0:Lcom/keephealth/android/views/gallery/view/ZoomImageView;

    # getter for: Lcom/keephealth/android/views/gallery/view/ZoomImageView;->isAutoScale:Z
    invoke-static {v0}, Lcom/keephealth/android/views/gallery/view/ZoomImageView;->access$000(Lcom/keephealth/android/views/gallery/view/ZoomImageView;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    return v1

    .line 70
    :cond_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 71
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 72
    iget-object v2, p0, Lcom/keephealth/android/views/gallery/view/ZoomImageView$1;->this$0:Lcom/keephealth/android/views/gallery/view/ZoomImageView;

    invoke-virtual {v2}, Lcom/keephealth/android/views/gallery/view/ZoomImageView;->getScale()F

    move-result v2

    iget-object v3, p0, Lcom/keephealth/android/views/gallery/view/ZoomImageView$1;->this$0:Lcom/keephealth/android/views/gallery/view/ZoomImageView;

    # getter for: Lcom/keephealth/android/views/gallery/view/ZoomImageView;->SCALE_MID:F
    invoke-static {v3}, Lcom/keephealth/android/views/gallery/view/ZoomImageView;->access$100(Lcom/keephealth/android/views/gallery/view/ZoomImageView;)F

    move-result v3

    cmpg-float v2, v2, v3

    const-wide/16 v3, 0x10

    if-gez v2, :cond_3a

    .line 73
    iget-object v2, p0, Lcom/keephealth/android/views/gallery/view/ZoomImageView$1;->this$0:Lcom/keephealth/android/views/gallery/view/ZoomImageView;

    new-instance v5, Lcom/keephealth/android/views/gallery/view/ZoomImageView$ScaleRunnable;

    iget-object v6, p0, Lcom/keephealth/android/views/gallery/view/ZoomImageView$1;->this$0:Lcom/keephealth/android/views/gallery/view/ZoomImageView;

    # getter for: Lcom/keephealth/android/views/gallery/view/ZoomImageView;->SCALE_MID:F
    invoke-static {v6}, Lcom/keephealth/android/views/gallery/view/ZoomImageView;->access$100(Lcom/keephealth/android/views/gallery/view/ZoomImageView;)F

    move-result v7

    invoke-direct {v5, v6, v7, v0, p1}, Lcom/keephealth/android/views/gallery/view/ZoomImageView$ScaleRunnable;-><init>(Lcom/keephealth/android/views/gallery/view/ZoomImageView;FFF)V

    invoke-virtual {v2, v5, v3, v4}, Lcom/keephealth/android/views/gallery/view/ZoomImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 74
    iget-object p1, p0, Lcom/keephealth/android/views/gallery/view/ZoomImageView$1;->this$0:Lcom/keephealth/android/views/gallery/view/ZoomImageView;

    # setter for: Lcom/keephealth/android/views/gallery/view/ZoomImageView;->isAutoScale:Z
    invoke-static {p1, v1}, Lcom/keephealth/android/views/gallery/view/ZoomImageView;->access$002(Lcom/keephealth/android/views/gallery/view/ZoomImageView;Z)Z

    goto :goto_4f

    .line 76
    :cond_3a
    iget-object v2, p0, Lcom/keephealth/android/views/gallery/view/ZoomImageView$1;->this$0:Lcom/keephealth/android/views/gallery/view/ZoomImageView;

    new-instance v5, Lcom/keephealth/android/views/gallery/view/ZoomImageView$ScaleRunnable;

    iget-object v6, p0, Lcom/keephealth/android/views/gallery/view/ZoomImageView$1;->this$0:Lcom/keephealth/android/views/gallery/view/ZoomImageView;

    # getter for: Lcom/keephealth/android/views/gallery/view/ZoomImageView;->mScale:F
    invoke-static {v6}, Lcom/keephealth/android/views/gallery/view/ZoomImageView;->access$200(Lcom/keephealth/android/views/gallery/view/ZoomImageView;)F

    move-result v7

    invoke-direct {v5, v6, v7, v0, p1}, Lcom/keephealth/android/views/gallery/view/ZoomImageView$ScaleRunnable;-><init>(Lcom/keephealth/android/views/gallery/view/ZoomImageView;FFF)V

    invoke-virtual {v2, v5, v3, v4}, Lcom/keephealth/android/views/gallery/view/ZoomImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 77
    iget-object p1, p0, Lcom/keephealth/android/views/gallery/view/ZoomImageView$1;->this$0:Lcom/keephealth/android/views/gallery/view/ZoomImageView;

    # setter for: Lcom/keephealth/android/views/gallery/view/ZoomImageView;->isAutoScale:Z
    invoke-static {p1, v1}, Lcom/keephealth/android/views/gallery/view/ZoomImageView;->access$002(Lcom/keephealth/android/views/gallery/view/ZoomImageView;Z)Z

    :goto_4f
    return v1
.end method
