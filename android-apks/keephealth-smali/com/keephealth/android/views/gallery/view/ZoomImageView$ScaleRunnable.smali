.class Lcom/keephealth/android/views/gallery/view/ZoomImageView$ScaleRunnable;
.super Ljava/lang/Object;
.source "ZoomImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/views/gallery/view/ZoomImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScaleRunnable"
.end annotation


# static fields
.field static final BIGGER:F = 1.07f

.field static final SMALLER:F = 0.93f


# instance fields
.field private mScale:F

.field private mTargetScale:F

.field final synthetic this$0:Lcom/keephealth/android/views/gallery/view/ZoomImageView;

.field private x:F

.field private y:F


# direct methods
.method constructor <init>(Lcom/keephealth/android/views/gallery/view/ZoomImageView;FFF)V
    .registers 5

    .line 94
    iput-object p1, p0, Lcom/keephealth/android/views/gallery/view/ZoomImageView$ScaleRunnable;->this$0:Lcom/keephealth/android/views/gallery/view/ZoomImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput p2, p0, Lcom/keephealth/android/views/gallery/view/ZoomImageView$ScaleRunnable;->mTargetScale:F

    .line 96
    iput p3, p0, Lcom/keephealth/android/views/gallery/view/ZoomImageView$ScaleRunnable;->x:F

    .line 97
    iput p4, p0, Lcom/keephealth/android/views/gallery/view/ZoomImageView$ScaleRunnable;->y:F

    .line 98
    invoke-virtual {p1}, Lcom/keephealth/android/views/gallery/view/ZoomImageView;->getScale()F

    move-result p1

    iget p2, p0, Lcom/keephealth/android/views/gallery/view/ZoomImageView$ScaleRunnable;->mTargetScale:F

    cmpg-float p1, p1, p2

    if-gez p1, :cond_1b

    const p1, 0x3f88f5c3    # 1.07f

    .line 99
    iput p1, p0, Lcom/keephealth/android/views/gallery/view/ZoomImageView$ScaleRunnable;->mScale:F

    goto :goto_20

    :cond_1b
    const p1, 0x3f6e147b    # 0.93f

    .line 101
    iput p1, p0, Lcom/keephealth/android/views/gallery/view/ZoomImageView$ScaleRunnable;->mScale:F

    :goto_20
    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 108
    iget-object v0, p0, Lcom/keephealth/android/views/gallery/view/ZoomImageView$ScaleRunnable;->this$0:Lcom/keephealth/android/views/gallery/view/ZoomImageView;

    # getter for: Lcom/keephealth/android/views/gallery/view/ZoomImageView;->mScaleMatrix:Landroid/graphics/Matrix;
    invoke-static {v0}, Lcom/keephealth/android/views/gallery/view/ZoomImageView;->access$300(Lcom/keephealth/android/views/gallery/view/ZoomImageView;)Landroid/graphics/Matrix;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/views/gallery/view/ZoomImageView$ScaleRunnable;->mScale:F

    iget v2, p0, Lcom/keephealth/android/views/gallery/view/ZoomImageView$ScaleRunnable;->x:F

    iget v3, p0, Lcom/keephealth/android/views/gallery/view/ZoomImageView$ScaleRunnable;->y:F

    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 109
    iget-object v0, p0, Lcom/keephealth/android/views/gallery/view/ZoomImageView$ScaleRunnable;->this$0:Lcom/keephealth/android/views/gallery/view/ZoomImageView;

    # invokes: Lcom/keephealth/android/views/gallery/view/ZoomImageView;->checkBorder()V
    invoke-static {v0}, Lcom/keephealth/android/views/gallery/view/ZoomImageView;->access$400(Lcom/keephealth/android/views/gallery/view/ZoomImageView;)V

    .line 110
    iget-object v0, p0, Lcom/keephealth/android/views/gallery/view/ZoomImageView$ScaleRunnable;->this$0:Lcom/keephealth/android/views/gallery/view/ZoomImageView;

    # getter for: Lcom/keephealth/android/views/gallery/view/ZoomImageView;->mScaleMatrix:Landroid/graphics/Matrix;
    invoke-static {v0}, Lcom/keephealth/android/views/gallery/view/ZoomImageView;->access$300(Lcom/keephealth/android/views/gallery/view/ZoomImageView;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/gallery/view/ZoomImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 112
    iget-object v0, p0, Lcom/keephealth/android/views/gallery/view/ZoomImageView$ScaleRunnable;->this$0:Lcom/keephealth/android/views/gallery/view/ZoomImageView;

    invoke-virtual {v0}, Lcom/keephealth/android/views/gallery/view/ZoomImageView;->getScale()F

    move-result v0

    .line 113
    iget v1, p0, Lcom/keephealth/android/views/gallery/view/ZoomImageView$ScaleRunnable;->mScale:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v3, v1, v2

    if-lez v3, :cond_31

    iget v3, p0, Lcom/keephealth/android/views/gallery/view/ZoomImageView$ScaleRunnable;->mTargetScale:F

    cmpg-float v3, v0, v3

    if-ltz v3, :cond_3b

    :cond_31
    cmpg-float v1, v1, v2

    if-gez v1, :cond_43

    iget v1, p0, Lcom/keephealth/android/views/gallery/view/ZoomImageView$ScaleRunnable;->mTargetScale:F

    cmpg-float v1, v1, v0

    if-gez v1, :cond_43

    .line 114
    :cond_3b
    iget-object v0, p0, Lcom/keephealth/android/views/gallery/view/ZoomImageView$ScaleRunnable;->this$0:Lcom/keephealth/android/views/gallery/view/ZoomImageView;

    const-wide/16 v1, 0x10

    invoke-virtual {v0, p0, v1, v2}, Lcom/keephealth/android/views/gallery/view/ZoomImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_67

    .line 116
    :cond_43
    iget v1, p0, Lcom/keephealth/android/views/gallery/view/ZoomImageView$ScaleRunnable;->mTargetScale:F

    div-float/2addr v1, v0

    .line 117
    iget-object v0, p0, Lcom/keephealth/android/views/gallery/view/ZoomImageView$ScaleRunnable;->this$0:Lcom/keephealth/android/views/gallery/view/ZoomImageView;

    # getter for: Lcom/keephealth/android/views/gallery/view/ZoomImageView;->mScaleMatrix:Landroid/graphics/Matrix;
    invoke-static {v0}, Lcom/keephealth/android/views/gallery/view/ZoomImageView;->access$300(Lcom/keephealth/android/views/gallery/view/ZoomImageView;)Landroid/graphics/Matrix;

    move-result-object v0

    iget v2, p0, Lcom/keephealth/android/views/gallery/view/ZoomImageView$ScaleRunnable;->x:F

    iget v3, p0, Lcom/keephealth/android/views/gallery/view/ZoomImageView$ScaleRunnable;->y:F

    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 118
    iget-object v0, p0, Lcom/keephealth/android/views/gallery/view/ZoomImageView$ScaleRunnable;->this$0:Lcom/keephealth/android/views/gallery/view/ZoomImageView;

    # invokes: Lcom/keephealth/android/views/gallery/view/ZoomImageView;->checkBorder()V
    invoke-static {v0}, Lcom/keephealth/android/views/gallery/view/ZoomImageView;->access$400(Lcom/keephealth/android/views/gallery/view/ZoomImageView;)V

    .line 119
    iget-object v0, p0, Lcom/keephealth/android/views/gallery/view/ZoomImageView$ScaleRunnable;->this$0:Lcom/keephealth/android/views/gallery/view/ZoomImageView;

    # getter for: Lcom/keephealth/android/views/gallery/view/ZoomImageView;->mScaleMatrix:Landroid/graphics/Matrix;
    invoke-static {v0}, Lcom/keephealth/android/views/gallery/view/ZoomImageView;->access$300(Lcom/keephealth/android/views/gallery/view/ZoomImageView;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/gallery/view/ZoomImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 120
    iget-object v0, p0, Lcom/keephealth/android/views/gallery/view/ZoomImageView$ScaleRunnable;->this$0:Lcom/keephealth/android/views/gallery/view/ZoomImageView;

    const/4 v1, 0x0

    # setter for: Lcom/keephealth/android/views/gallery/view/ZoomImageView;->isAutoScale:Z
    invoke-static {v0, v1}, Lcom/keephealth/android/views/gallery/view/ZoomImageView;->access$002(Lcom/keephealth/android/views/gallery/view/ZoomImageView;Z)Z

    :goto_67
    return-void
.end method
