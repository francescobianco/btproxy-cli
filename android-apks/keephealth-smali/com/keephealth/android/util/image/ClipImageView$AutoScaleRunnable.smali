.class Lcom/keephealth/android/util/image/ClipImageView$AutoScaleRunnable;
.super Ljava/lang/Object;
.source "ClipImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/util/image/ClipImageView;
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

.field final synthetic this$0:Lcom/keephealth/android/util/image/ClipImageView;

.field private tmpScale:F

.field private x:F

.field private y:F


# direct methods
.method public constructor <init>(Lcom/keephealth/android/util/image/ClipImageView;FFF)V
    .registers 5

    .line 156
    iput-object p1, p0, Lcom/keephealth/android/util/image/ClipImageView$AutoScaleRunnable;->this$0:Lcom/keephealth/android/util/image/ClipImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    iput p2, p0, Lcom/keephealth/android/util/image/ClipImageView$AutoScaleRunnable;->mTargetScale:F

    .line 158
    iput p3, p0, Lcom/keephealth/android/util/image/ClipImageView$AutoScaleRunnable;->x:F

    .line 159
    iput p4, p0, Lcom/keephealth/android/util/image/ClipImageView$AutoScaleRunnable;->y:F

    .line 160
    invoke-virtual {p1}, Lcom/keephealth/android/util/image/ClipImageView;->getScale()F

    move-result p1

    iget p2, p0, Lcom/keephealth/android/util/image/ClipImageView$AutoScaleRunnable;->mTargetScale:F

    cmpg-float p1, p1, p2

    if-gez p1, :cond_1b

    const p1, 0x3f88f5c3    # 1.07f

    .line 161
    iput p1, p0, Lcom/keephealth/android/util/image/ClipImageView$AutoScaleRunnable;->tmpScale:F

    goto :goto_20

    :cond_1b
    const p1, 0x3f6e147b    # 0.93f

    .line 163
    iput p1, p0, Lcom/keephealth/android/util/image/ClipImageView$AutoScaleRunnable;->tmpScale:F

    :goto_20
    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 171
    iget-object v0, p0, Lcom/keephealth/android/util/image/ClipImageView$AutoScaleRunnable;->this$0:Lcom/keephealth/android/util/image/ClipImageView;

    # getter for: Lcom/keephealth/android/util/image/ClipImageView;->mScaleMatrix:Landroid/graphics/Matrix;
    invoke-static {v0}, Lcom/keephealth/android/util/image/ClipImageView;->access$300(Lcom/keephealth/android/util/image/ClipImageView;)Landroid/graphics/Matrix;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/util/image/ClipImageView$AutoScaleRunnable;->tmpScale:F

    iget v2, p0, Lcom/keephealth/android/util/image/ClipImageView$AutoScaleRunnable;->x:F

    iget v3, p0, Lcom/keephealth/android/util/image/ClipImageView$AutoScaleRunnable;->y:F

    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 172
    iget-object v0, p0, Lcom/keephealth/android/util/image/ClipImageView$AutoScaleRunnable;->this$0:Lcom/keephealth/android/util/image/ClipImageView;

    # invokes: Lcom/keephealth/android/util/image/ClipImageView;->checkBorder()V
    invoke-static {v0}, Lcom/keephealth/android/util/image/ClipImageView;->access$400(Lcom/keephealth/android/util/image/ClipImageView;)V

    .line 173
    iget-object v0, p0, Lcom/keephealth/android/util/image/ClipImageView$AutoScaleRunnable;->this$0:Lcom/keephealth/android/util/image/ClipImageView;

    # getter for: Lcom/keephealth/android/util/image/ClipImageView;->mScaleMatrix:Landroid/graphics/Matrix;
    invoke-static {v0}, Lcom/keephealth/android/util/image/ClipImageView;->access$300(Lcom/keephealth/android/util/image/ClipImageView;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/util/image/ClipImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 175
    iget-object v0, p0, Lcom/keephealth/android/util/image/ClipImageView$AutoScaleRunnable;->this$0:Lcom/keephealth/android/util/image/ClipImageView;

    invoke-virtual {v0}, Lcom/keephealth/android/util/image/ClipImageView;->getScale()F

    move-result v0

    .line 177
    iget v1, p0, Lcom/keephealth/android/util/image/ClipImageView$AutoScaleRunnable;->tmpScale:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v3, v1, v2

    if-lez v3, :cond_31

    iget v3, p0, Lcom/keephealth/android/util/image/ClipImageView$AutoScaleRunnable;->mTargetScale:F

    cmpg-float v3, v0, v3

    if-ltz v3, :cond_3b

    :cond_31
    cmpg-float v1, v1, v2

    if-gez v1, :cond_43

    iget v1, p0, Lcom/keephealth/android/util/image/ClipImageView$AutoScaleRunnable;->mTargetScale:F

    cmpg-float v1, v1, v0

    if-gez v1, :cond_43

    .line 179
    :cond_3b
    iget-object v0, p0, Lcom/keephealth/android/util/image/ClipImageView$AutoScaleRunnable;->this$0:Lcom/keephealth/android/util/image/ClipImageView;

    const-wide/16 v1, 0x10

    invoke-virtual {v0, p0, v1, v2}, Lcom/keephealth/android/util/image/ClipImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_67

    .line 182
    :cond_43
    iget v1, p0, Lcom/keephealth/android/util/image/ClipImageView$AutoScaleRunnable;->mTargetScale:F

    div-float/2addr v1, v0

    .line 183
    iget-object v0, p0, Lcom/keephealth/android/util/image/ClipImageView$AutoScaleRunnable;->this$0:Lcom/keephealth/android/util/image/ClipImageView;

    # getter for: Lcom/keephealth/android/util/image/ClipImageView;->mScaleMatrix:Landroid/graphics/Matrix;
    invoke-static {v0}, Lcom/keephealth/android/util/image/ClipImageView;->access$300(Lcom/keephealth/android/util/image/ClipImageView;)Landroid/graphics/Matrix;

    move-result-object v0

    iget v2, p0, Lcom/keephealth/android/util/image/ClipImageView$AutoScaleRunnable;->x:F

    iget v3, p0, Lcom/keephealth/android/util/image/ClipImageView$AutoScaleRunnable;->y:F

    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 184
    iget-object v0, p0, Lcom/keephealth/android/util/image/ClipImageView$AutoScaleRunnable;->this$0:Lcom/keephealth/android/util/image/ClipImageView;

    # invokes: Lcom/keephealth/android/util/image/ClipImageView;->checkBorder()V
    invoke-static {v0}, Lcom/keephealth/android/util/image/ClipImageView;->access$400(Lcom/keephealth/android/util/image/ClipImageView;)V

    .line 185
    iget-object v0, p0, Lcom/keephealth/android/util/image/ClipImageView$AutoScaleRunnable;->this$0:Lcom/keephealth/android/util/image/ClipImageView;

    # getter for: Lcom/keephealth/android/util/image/ClipImageView;->mScaleMatrix:Landroid/graphics/Matrix;
    invoke-static {v0}, Lcom/keephealth/android/util/image/ClipImageView;->access$300(Lcom/keephealth/android/util/image/ClipImageView;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/util/image/ClipImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 186
    iget-object v0, p0, Lcom/keephealth/android/util/image/ClipImageView$AutoScaleRunnable;->this$0:Lcom/keephealth/android/util/image/ClipImageView;

    const/4 v1, 0x0

    # setter for: Lcom/keephealth/android/util/image/ClipImageView;->isAutoScale:Z
    invoke-static {v0, v1}, Lcom/keephealth/android/util/image/ClipImageView;->access$002(Lcom/keephealth/android/util/image/ClipImageView;Z)Z

    :goto_67
    return-void
.end method
