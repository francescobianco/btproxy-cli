.class Lcom/keephealth/android/views/zoomview/ZoomImageView$ScrollerProxy;
.super Ljava/lang/Object;
.source "ZoomImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/views/zoomview/ZoomImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScrollerProxy"
.end annotation


# instance fields
.field private isOld:Z

.field private scroller:Ljava/lang/Object;

.field final synthetic this$0:Lcom/keephealth/android/views/zoomview/ZoomImageView;


# direct methods
.method public constructor <init>(Lcom/keephealth/android/views/zoomview/ZoomImageView;Landroid/content/Context;)V
    .registers 3

    .line 357
    iput-object p1, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView$ScrollerProxy;->this$0:Lcom/keephealth/android/views/zoomview/ZoomImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 362
    iput-boolean p1, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView$ScrollerProxy;->isOld:Z

    .line 363
    new-instance p1, Landroid/widget/OverScroller;

    invoke-direct {p1, p2}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView$ScrollerProxy;->scroller:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public computeScrollOffset()Z
    .registers 2

    .line 368
    iget-boolean v0, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView$ScrollerProxy;->isOld:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView$ScrollerProxy;->scroller:Ljava/lang/Object;

    check-cast v0, Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    goto :goto_15

    .line 369
    :cond_d
    iget-object v0, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView$ScrollerProxy;->scroller:Ljava/lang/Object;

    check-cast v0, Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    :goto_15
    return v0
.end method

.method public fling(IIIIIIIIII)V
    .registers 24

    move-object v0, p0

    .line 375
    iget-boolean v1, v0, Lcom/keephealth/android/views/zoomview/ZoomImageView$ScrollerProxy;->isOld:Z

    if-eqz v1, :cond_1c

    .line 376
    iget-object v1, v0, Lcom/keephealth/android/views/zoomview/ZoomImageView$ScrollerProxy;->scroller:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Landroid/widget/Scroller;

    move v3, p1

    move v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-virtual/range {v2 .. v10}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    goto :goto_36

    .line 379
    :cond_1c
    iget-object v1, v0, Lcom/keephealth/android/views/zoomview/ZoomImageView$ScrollerProxy;->scroller:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Landroid/widget/OverScroller;

    move v3, p1

    move v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    invoke-virtual/range {v2 .. v12}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    :goto_36
    return-void
.end method

.method public forceFinished(Z)V
    .registers 3

    .line 385
    iget-boolean v0, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView$ScrollerProxy;->isOld:Z

    if-eqz v0, :cond_c

    .line 386
    iget-object v0, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView$ScrollerProxy;->scroller:Ljava/lang/Object;

    check-cast v0, Landroid/widget/Scroller;

    invoke-virtual {v0, p1}, Landroid/widget/Scroller;->forceFinished(Z)V

    goto :goto_13

    .line 388
    :cond_c
    iget-object v0, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView$ScrollerProxy;->scroller:Ljava/lang/Object;

    check-cast v0, Landroid/widget/OverScroller;

    invoke-virtual {v0, p1}, Landroid/widget/OverScroller;->forceFinished(Z)V

    :goto_13
    return-void
.end method

.method public getCurrX()I
    .registers 2

    .line 393
    iget-boolean v0, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView$ScrollerProxy;->isOld:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView$ScrollerProxy;->scroller:Ljava/lang/Object;

    check-cast v0, Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    goto :goto_15

    :cond_d
    iget-object v0, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView$ScrollerProxy;->scroller:Ljava/lang/Object;

    check-cast v0, Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v0

    :goto_15
    return v0
.end method

.method public getCurrY()I
    .registers 2

    .line 397
    iget-boolean v0, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView$ScrollerProxy;->isOld:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView$ScrollerProxy;->scroller:Ljava/lang/Object;

    check-cast v0, Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    goto :goto_15

    :cond_d
    iget-object v0, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView$ScrollerProxy;->scroller:Ljava/lang/Object;

    check-cast v0, Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v0

    :goto_15
    return v0
.end method
