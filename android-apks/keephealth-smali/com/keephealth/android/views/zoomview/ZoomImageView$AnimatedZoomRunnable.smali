.class Lcom/keephealth/android/views/zoomview/ZoomImageView$AnimatedZoomRunnable;
.super Ljava/lang/Object;
.source "ZoomImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/views/zoomview/ZoomImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimatedZoomRunnable"
.end annotation


# static fields
.field static final ANIMATION_SCALE_PER_ITERATION_IN:F = 1.07f

.field static final ANIMATION_SCALE_PER_ITERATION_OUT:F = 0.93f


# instance fields
.field private final deltaScale:F

.field private final focalX:F

.field private final focalY:F

.field private final targetZoom:F

.field final synthetic this$0:Lcom/keephealth/android/views/zoomview/ZoomImageView;


# direct methods
.method public constructor <init>(Lcom/keephealth/android/views/zoomview/ZoomImageView;FFFF)V
    .registers 6

    .line 934
    iput-object p1, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView$AnimatedZoomRunnable;->this$0:Lcom/keephealth/android/views/zoomview/ZoomImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 935
    iput p3, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView$AnimatedZoomRunnable;->targetZoom:F

    .line 936
    iput p4, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView$AnimatedZoomRunnable;->focalX:F

    .line 937
    iput p5, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView$AnimatedZoomRunnable;->focalY:F

    cmpg-float p1, p2, p3

    if-gez p1, :cond_15

    const p1, 0x3f88f5c3    # 1.07f

    .line 940
    iput p1, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView$AnimatedZoomRunnable;->deltaScale:F

    goto :goto_1a

    :cond_15
    const p1, 0x3f6e147b    # 0.93f

    .line 942
    iput p1, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView$AnimatedZoomRunnable;->deltaScale:F

    :goto_1a
    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 947
    iget-object v0, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView$AnimatedZoomRunnable;->this$0:Lcom/keephealth/android/views/zoomview/ZoomImageView;

    # getter for: Lcom/keephealth/android/views/zoomview/ZoomImageView;->suppMatrix:Landroid/graphics/Matrix;
    invoke-static {v0}, Lcom/keephealth/android/views/zoomview/ZoomImageView;->access$000(Lcom/keephealth/android/views/zoomview/ZoomImageView;)Landroid/graphics/Matrix;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView$AnimatedZoomRunnable;->deltaScale:F

    iget v2, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView$AnimatedZoomRunnable;->focalX:F

    iget v3, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView$AnimatedZoomRunnable;->focalY:F

    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 948
    iget-object v0, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView$AnimatedZoomRunnable;->this$0:Lcom/keephealth/android/views/zoomview/ZoomImageView;

    # invokes: Lcom/keephealth/android/views/zoomview/ZoomImageView;->checkAndDisplayMatrix()V
    invoke-static {v0}, Lcom/keephealth/android/views/zoomview/ZoomImageView;->access$100(Lcom/keephealth/android/views/zoomview/ZoomImageView;)V

    .line 950
    iget-object v0, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView$AnimatedZoomRunnable;->this$0:Lcom/keephealth/android/views/zoomview/ZoomImageView;

    invoke-virtual {v0}, Lcom/keephealth/android/views/zoomview/ZoomImageView;->getScale()F

    move-result v0

    .line 952
    iget v1, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView$AnimatedZoomRunnable;->deltaScale:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v3, v1, v2

    if-lez v3, :cond_28

    iget v3, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView$AnimatedZoomRunnable;->targetZoom:F

    cmpg-float v3, v0, v3

    if-ltz v3, :cond_32

    :cond_28
    cmpg-float v1, v1, v2

    if-gez v1, :cond_38

    iget v1, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView$AnimatedZoomRunnable;->targetZoom:F

    cmpg-float v1, v1, v0

    if-gez v1, :cond_38

    .line 956
    :cond_32
    iget-object v0, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView$AnimatedZoomRunnable;->this$0:Lcom/keephealth/android/views/zoomview/ZoomImageView;

    # invokes: Lcom/keephealth/android/views/zoomview/ZoomImageView;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V
    invoke-static {v0, v0, p0}, Lcom/keephealth/android/views/zoomview/ZoomImageView;->access$1200(Lcom/keephealth/android/views/zoomview/ZoomImageView;Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_4d

    .line 961
    :cond_38
    iget v1, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView$AnimatedZoomRunnable;->targetZoom:F

    div-float/2addr v1, v0

    .line 962
    iget-object v0, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView$AnimatedZoomRunnable;->this$0:Lcom/keephealth/android/views/zoomview/ZoomImageView;

    # getter for: Lcom/keephealth/android/views/zoomview/ZoomImageView;->suppMatrix:Landroid/graphics/Matrix;
    invoke-static {v0}, Lcom/keephealth/android/views/zoomview/ZoomImageView;->access$000(Lcom/keephealth/android/views/zoomview/ZoomImageView;)Landroid/graphics/Matrix;

    move-result-object v0

    iget v2, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView$AnimatedZoomRunnable;->focalX:F

    iget v3, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView$AnimatedZoomRunnable;->focalY:F

    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 963
    iget-object v0, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView$AnimatedZoomRunnable;->this$0:Lcom/keephealth/android/views/zoomview/ZoomImageView;

    # invokes: Lcom/keephealth/android/views/zoomview/ZoomImageView;->checkAndDisplayMatrix()V
    invoke-static {v0}, Lcom/keephealth/android/views/zoomview/ZoomImageView;->access$100(Lcom/keephealth/android/views/zoomview/ZoomImageView;)V

    :goto_4d
    return-void
.end method
