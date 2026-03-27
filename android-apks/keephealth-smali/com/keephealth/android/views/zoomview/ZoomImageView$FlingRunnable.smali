.class Lcom/keephealth/android/views/zoomview/ZoomImageView$FlingRunnable;
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
    name = "FlingRunnable"
.end annotation


# instance fields
.field private currentX:I

.field private currentY:I

.field private final scroller:Lcom/keephealth/android/views/zoomview/ZoomImageView$ScrollerProxy;

.field final synthetic this$0:Lcom/keephealth/android/views/zoomview/ZoomImageView;


# direct methods
.method public constructor <init>(Lcom/keephealth/android/views/zoomview/ZoomImageView;Landroid/content/Context;)V
    .registers 4

    .line 972
    iput-object p1, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView$FlingRunnable;->this$0:Lcom/keephealth/android/views/zoomview/ZoomImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 973
    new-instance v0, Lcom/keephealth/android/views/zoomview/ZoomImageView$ScrollerProxy;

    invoke-direct {v0, p1, p2}, Lcom/keephealth/android/views/zoomview/ZoomImageView$ScrollerProxy;-><init>(Lcom/keephealth/android/views/zoomview/ZoomImageView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView$FlingRunnable;->scroller:Lcom/keephealth/android/views/zoomview/ZoomImageView$ScrollerProxy;

    return-void
.end method


# virtual methods
.method public cancelFling()V
    .registers 3

    .line 977
    iget-object v0, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView$FlingRunnable;->scroller:Lcom/keephealth/android/views/zoomview/ZoomImageView$ScrollerProxy;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/zoomview/ZoomImageView$ScrollerProxy;->forceFinished(Z)V

    return-void
.end method

.method public fling(IIII)V
    .registers 19

    move-object v0, p0

    .line 981
    iget-object v1, v0, Lcom/keephealth/android/views/zoomview/ZoomImageView$FlingRunnable;->this$0:Lcom/keephealth/android/views/zoomview/ZoomImageView;

    invoke-virtual {v1}, Lcom/keephealth/android/views/zoomview/ZoomImageView;->getDisplayRect()Landroid/graphics/RectF;

    move-result-object v1

    if-nez v1, :cond_a

    return-void

    .line 986
    :cond_a
    iget v2, v1, Landroid/graphics/RectF;->left:F

    neg-float v2, v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v4

    move v2, p1

    int-to-float v2, v2

    .line 989
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v3

    cmpg-float v3, v2, v3

    const/4 v5, 0x0

    if-gez v3, :cond_28

    .line 991
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v3

    sub-float/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v2

    move v9, v2

    move v8, v5

    goto :goto_2a

    :cond_28
    move v8, v4

    move v9, v8

    .line 996
    :goto_2a
    iget v2, v1, Landroid/graphics/RectF;->top:F

    neg-float v2, v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    move/from16 v3, p2

    int-to-float v3, v3

    .line 997
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v6

    cmpg-float v6, v3, v6

    if-gez v6, :cond_48

    .line 999
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    sub-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    move v11, v1

    move v10, v5

    goto :goto_4a

    :cond_48
    move v10, v2

    move v11, v10

    .line 1004
    :goto_4a
    iput v4, v0, Lcom/keephealth/android/views/zoomview/ZoomImageView$FlingRunnable;->currentX:I

    .line 1005
    iput v2, v0, Lcom/keephealth/android/views/zoomview/ZoomImageView$FlingRunnable;->currentY:I

    if-ne v4, v9, :cond_52

    if-eq v2, v11, :cond_5e

    .line 1009
    :cond_52
    iget-object v3, v0, Lcom/keephealth/android/views/zoomview/ZoomImageView$FlingRunnable;->scroller:Lcom/keephealth/android/views/zoomview/ZoomImageView$ScrollerProxy;

    const/4 v12, 0x0

    const/4 v13, 0x0

    move v5, v2

    move/from16 v6, p3

    move/from16 v7, p4

    invoke-virtual/range {v3 .. v13}, Lcom/keephealth/android/views/zoomview/ZoomImageView$ScrollerProxy;->fling(IIIIIIIIII)V

    :cond_5e
    return-void
.end method

.method public run()V
    .registers 6

    .line 1015
    iget-object v0, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView$FlingRunnable;->scroller:Lcom/keephealth/android/views/zoomview/ZoomImageView$ScrollerProxy;

    invoke-virtual {v0}, Lcom/keephealth/android/views/zoomview/ZoomImageView$ScrollerProxy;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 1016
    iget-object v0, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView$FlingRunnable;->scroller:Lcom/keephealth/android/views/zoomview/ZoomImageView$ScrollerProxy;

    invoke-virtual {v0}, Lcom/keephealth/android/views/zoomview/ZoomImageView$ScrollerProxy;->getCurrX()I

    move-result v0

    .line 1017
    iget-object v1, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView$FlingRunnable;->scroller:Lcom/keephealth/android/views/zoomview/ZoomImageView$ScrollerProxy;

    invoke-virtual {v1}, Lcom/keephealth/android/views/zoomview/ZoomImageView$ScrollerProxy;->getCurrY()I

    move-result v1

    .line 1019
    iget-object v2, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView$FlingRunnable;->this$0:Lcom/keephealth/android/views/zoomview/ZoomImageView;

    # getter for: Lcom/keephealth/android/views/zoomview/ZoomImageView;->suppMatrix:Landroid/graphics/Matrix;
    invoke-static {v2}, Lcom/keephealth/android/views/zoomview/ZoomImageView;->access$000(Lcom/keephealth/android/views/zoomview/ZoomImageView;)Landroid/graphics/Matrix;

    move-result-object v2

    iget v3, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView$FlingRunnable;->currentX:I

    sub-int/2addr v3, v0

    int-to-float v3, v3

    iget v4, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView$FlingRunnable;->currentY:I

    sub-int/2addr v4, v1

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1020
    iget-object v2, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView$FlingRunnable;->this$0:Lcom/keephealth/android/views/zoomview/ZoomImageView;

    invoke-virtual {v2}, Lcom/keephealth/android/views/zoomview/ZoomImageView;->getDisplayMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/keephealth/android/views/zoomview/ZoomImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 1022
    iput v0, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView$FlingRunnable;->currentX:I

    .line 1023
    iput v1, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView$FlingRunnable;->currentY:I

    .line 1026
    iget-object v0, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView$FlingRunnable;->this$0:Lcom/keephealth/android/views/zoomview/ZoomImageView;

    # invokes: Lcom/keephealth/android/views/zoomview/ZoomImageView;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V
    invoke-static {v0, v0, p0}, Lcom/keephealth/android/views/zoomview/ZoomImageView;->access$1200(Lcom/keephealth/android/views/zoomview/ZoomImageView;Landroid/view/View;Ljava/lang/Runnable;)V

    :cond_37
    return-void
.end method
