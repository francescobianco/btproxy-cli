.class Lcom/keephealth/android/util/image/ClipImageView$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ClipImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/util/image/ClipImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/util/image/ClipImageView;


# direct methods
.method constructor <init>(Lcom/keephealth/android/util/image/ClipImageView;)V
    .registers 2

    .line 89
    iput-object p1, p0, Lcom/keephealth/android/util/image/ClipImageView$1;->this$0:Lcom/keephealth/android/util/image/ClipImageView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .registers 10

    .line 92
    iget-object v0, p0, Lcom/keephealth/android/util/image/ClipImageView$1;->this$0:Lcom/keephealth/android/util/image/ClipImageView;

    # getter for: Lcom/keephealth/android/util/image/ClipImageView;->isAutoScale:Z
    invoke-static {v0}, Lcom/keephealth/android/util/image/ClipImageView;->access$000(Lcom/keephealth/android/util/image/ClipImageView;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    return v1

    .line 95
    :cond_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 96
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 97
    iget-object v2, p0, Lcom/keephealth/android/util/image/ClipImageView$1;->this$0:Lcom/keephealth/android/util/image/ClipImageView;

    invoke-virtual {v2}, Lcom/keephealth/android/util/image/ClipImageView;->getScale()F

    move-result v2

    iget-object v3, p0, Lcom/keephealth/android/util/image/ClipImageView$1;->this$0:Lcom/keephealth/android/util/image/ClipImageView;

    # getter for: Lcom/keephealth/android/util/image/ClipImageView;->mScaleMin:F
    invoke-static {v3}, Lcom/keephealth/android/util/image/ClipImageView;->access$100(Lcom/keephealth/android/util/image/ClipImageView;)F

    move-result v3

    cmpg-float v2, v2, v3

    const-wide/16 v3, 0x10

    if-gez v2, :cond_35

    .line 98
    iget-object v2, p0, Lcom/keephealth/android/util/image/ClipImageView$1;->this$0:Lcom/keephealth/android/util/image/ClipImageView;

    new-instance v5, Lcom/keephealth/android/util/image/ClipImageView$AutoScaleRunnable;

    iget-object v6, p0, Lcom/keephealth/android/util/image/ClipImageView$1;->this$0:Lcom/keephealth/android/util/image/ClipImageView;

    # getter for: Lcom/keephealth/android/util/image/ClipImageView;->mScaleMin:F
    invoke-static {v6}, Lcom/keephealth/android/util/image/ClipImageView;->access$100(Lcom/keephealth/android/util/image/ClipImageView;)F

    move-result v7

    invoke-direct {v5, v6, v7, v0, p1}, Lcom/keephealth/android/util/image/ClipImageView$AutoScaleRunnable;-><init>(Lcom/keephealth/android/util/image/ClipImageView;FFF)V

    invoke-virtual {v2, v5, v3, v4}, Lcom/keephealth/android/util/image/ClipImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_45

    .line 100
    :cond_35
    iget-object v2, p0, Lcom/keephealth/android/util/image/ClipImageView$1;->this$0:Lcom/keephealth/android/util/image/ClipImageView;

    new-instance v5, Lcom/keephealth/android/util/image/ClipImageView$AutoScaleRunnable;

    iget-object v6, p0, Lcom/keephealth/android/util/image/ClipImageView$1;->this$0:Lcom/keephealth/android/util/image/ClipImageView;

    # getter for: Lcom/keephealth/android/util/image/ClipImageView;->mInitScale:F
    invoke-static {v6}, Lcom/keephealth/android/util/image/ClipImageView;->access$200(Lcom/keephealth/android/util/image/ClipImageView;)F

    move-result v7

    invoke-direct {v5, v6, v7, v0, p1}, Lcom/keephealth/android/util/image/ClipImageView$AutoScaleRunnable;-><init>(Lcom/keephealth/android/util/image/ClipImageView;FFF)V

    invoke-virtual {v2, v5, v3, v4}, Lcom/keephealth/android/util/image/ClipImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 102
    :goto_45
    iget-object p1, p0, Lcom/keephealth/android/util/image/ClipImageView$1;->this$0:Lcom/keephealth/android/util/image/ClipImageView;

    # setter for: Lcom/keephealth/android/util/image/ClipImageView;->isAutoScale:Z
    invoke-static {p1, v1}, Lcom/keephealth/android/util/image/ClipImageView;->access$002(Lcom/keephealth/android/util/image/ClipImageView;Z)Z

    return v1
.end method
