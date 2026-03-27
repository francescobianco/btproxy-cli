.class Lcom/keephealth/android/views/photo/ClipZoomImageView$AutoScaleRunnable;
.super Ljava/lang/Object;
.source "ClipZoomImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/views/photo/ClipZoomImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AutoScaleRunnable"
.end annotation


# static fields
.field static final BIGGER:F = 1.07f

.field static final SMALLER:F = 0.93f


# instance fields
.field private mTargetScale:F

.field final synthetic this$0:Lcom/keephealth/android/views/photo/ClipZoomImageView;

.field private tmpScale:F

.field private x:F

.field private y:F


# direct methods
.method public constructor <init>(Lcom/keephealth/android/views/photo/ClipZoomImageView;FFF)V
    .registers 5

    .line 133
    iput-object p1, p0, Lcom/keephealth/android/views/photo/ClipZoomImageView$AutoScaleRunnable;->this$0:Lcom/keephealth/android/views/photo/ClipZoomImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    iput p2, p0, Lcom/keephealth/android/views/photo/ClipZoomImageView$AutoScaleRunnable;->mTargetScale:F

    .line 135
    iput p3, p0, Lcom/keephealth/android/views/photo/ClipZoomImageView$AutoScaleRunnable;->x:F

    .line 136
    iput p4, p0, Lcom/keephealth/android/views/photo/ClipZoomImageView$AutoScaleRunnable;->y:F

    .line 137
    invoke-virtual {p1}, Lcom/keephealth/android/views/photo/ClipZoomImageView;->getScale()F

    move-result p1

    iget p2, p0, Lcom/keephealth/android/views/photo/ClipZoomImageView$AutoScaleRunnable;->mTargetScale:F

    cmpg-float p1, p1, p2

    if-gez p1, :cond_1b

    const p1, 0x3f88f5c3    # 1.07f

    .line 139
    iput p1, p0, Lcom/keephealth/android/views/photo/ClipZoomImageView$AutoScaleRunnable;->tmpScale:F

    goto :goto_20

    :cond_1b
    const p1, 0x3f6e147b    # 0.93f

    .line 142
    iput p1, p0, Lcom/keephealth/android/views/photo/ClipZoomImageView$AutoScaleRunnable;->tmpScale:F

    :goto_20
    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 151
    iget-object v0, p0, Lcom/keephealth/android/views/photo/ClipZoomImageView$AutoScaleRunnable;->this$0:Lcom/keephealth/android/views/photo/ClipZoomImageView;

    # getter for: Lcom/keephealth/android/views/photo/ClipZoomImageView;->mScaleMatrix:Landroid/graphics/Matrix;
    invoke-static {v0}, Lcom/keephealth/android/views/photo/ClipZoomImageView;->access$300(Lcom/keephealth/android/views/photo/ClipZoomImageView;)Landroid/graphics/Matrix;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/views/photo/ClipZoomImageView$AutoScaleRunnable;->tmpScale:F

    iget v2, p0, Lcom/keephealth/android/views/photo/ClipZoomImageView$AutoScaleRunnable;->x:F

    iget v3, p0, Lcom/keephealth/android/views/photo/ClipZoomImageView$AutoScaleRunnable;->y:F

    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 152
    iget-object v0, p0, Lcom/keephealth/android/views/photo/ClipZoomImageView$AutoScaleRunnable;->this$0:Lcom/keephealth/android/views/photo/ClipZoomImageView;

    # invokes: Lcom/keephealth/android/views/photo/ClipZoomImageView;->checkBorder()V
    invoke-static {v0}, Lcom/keephealth/android/views/photo/ClipZoomImageView;->access$400(Lcom/keephealth/android/views/photo/ClipZoomImageView;)V

    .line 153
    iget-object v0, p0, Lcom/keephealth/android/views/photo/ClipZoomImageView$AutoScaleRunnable;->this$0:Lcom/keephealth/android/views/photo/ClipZoomImageView;

    # getter for: Lcom/keephealth/android/views/photo/ClipZoomImageView;->mScaleMatrix:Landroid/graphics/Matrix;
    invoke-static {v0}, Lcom/keephealth/android/views/photo/ClipZoomImageView;->access$300(Lcom/keephealth/android/views/photo/ClipZoomImageView;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/photo/ClipZoomImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 155
    iget-object v0, p0, Lcom/keephealth/android/views/photo/ClipZoomImageView$AutoScaleRunnable;->this$0:Lcom/keephealth/android/views/photo/ClipZoomImageView;

    invoke-virtual {v0}, Lcom/keephealth/android/views/photo/ClipZoomImageView;->getScale()F

    move-result v0

    .line 157
    iget v1, p0, Lcom/keephealth/android/views/photo/ClipZoomImageView$AutoScaleRunnable;->tmpScale:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v3, v1, v2

    if-lez v3, :cond_31

    iget v3, p0, Lcom/keephealth/android/views/photo/ClipZoomImageView$AutoScaleRunnable;->mTargetScale:F

    cmpg-float v3, v0, v3

    if-ltz v3, :cond_3b

    :cond_31
    cmpg-float v1, v1, v2

    if-gez v1, :cond_43

    iget v1, p0, Lcom/keephealth/android/views/photo/ClipZoomImageView$AutoScaleRunnable;->mTargetScale:F

    cmpg-float v1, v1, v0

    if-gez v1, :cond_43

    .line 160
    :cond_3b
    iget-object v0, p0, Lcom/keephealth/android/views/photo/ClipZoomImageView$AutoScaleRunnable;->this$0:Lcom/keephealth/android/views/photo/ClipZoomImageView;

    const-wide/16 v1, 0x10

    invoke-virtual {v0, p0, v1, v2}, Lcom/keephealth/android/views/photo/ClipZoomImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_67

    .line 164
    :cond_43
    iget v1, p0, Lcom/keephealth/android/views/photo/ClipZoomImageView$AutoScaleRunnable;->mTargetScale:F

    div-float/2addr v1, v0

    .line 165
    iget-object v0, p0, Lcom/keephealth/android/views/photo/ClipZoomImageView$AutoScaleRunnable;->this$0:Lcom/keephealth/android/views/photo/ClipZoomImageView;

    # getter for: Lcom/keephealth/android/views/photo/ClipZoomImageView;->mScaleMatrix:Landroid/graphics/Matrix;
    invoke-static {v0}, Lcom/keephealth/android/views/photo/ClipZoomImageView;->access$300(Lcom/keephealth/android/views/photo/ClipZoomImageView;)Landroid/graphics/Matrix;

    move-result-object v0

    iget v2, p0, Lcom/keephealth/android/views/photo/ClipZoomImageView$AutoScaleRunnable;->x:F

    iget v3, p0, Lcom/keephealth/android/views/photo/ClipZoomImageView$AutoScaleRunnable;->y:F

    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 166
    iget-object v0, p0, Lcom/keephealth/android/views/photo/ClipZoomImageView$AutoScaleRunnable;->this$0:Lcom/keephealth/android/views/photo/ClipZoomImageView;

    # invokes: Lcom/keephealth/android/views/photo/ClipZoomImageView;->checkBorder()V
    invoke-static {v0}, Lcom/keephealth/android/views/photo/ClipZoomImageView;->access$400(Lcom/keephealth/android/views/photo/ClipZoomImageView;)V

    .line 167
    iget-object v0, p0, Lcom/keephealth/android/views/photo/ClipZoomImageView$AutoScaleRunnable;->this$0:Lcom/keephealth/android/views/photo/ClipZoomImageView;

    # getter for: Lcom/keephealth/android/views/photo/ClipZoomImageView;->mScaleMatrix:Landroid/graphics/Matrix;
    invoke-static {v0}, Lcom/keephealth/android/views/photo/ClipZoomImageView;->access$300(Lcom/keephealth/android/views/photo/ClipZoomImageView;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/photo/ClipZoomImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 168
    iget-object v0, p0, Lcom/keephealth/android/views/photo/ClipZoomImageView$AutoScaleRunnable;->this$0:Lcom/keephealth/android/views/photo/ClipZoomImageView;

    const/4 v1, 0x0

    # setter for: Lcom/keephealth/android/views/photo/ClipZoomImageView;->isAutoScale:Z
    invoke-static {v0, v1}, Lcom/keephealth/android/views/photo/ClipZoomImageView;->access$002(Lcom/keephealth/android/views/photo/ClipZoomImageView;Z)Z

    :goto_67
    return-void
.end method
