.class Lcom/keephealth/android/views/gallery/view/ImagePreviewView$ScaleListener;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "ImagePreviewView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/views/gallery/view/ImagePreviewView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScaleListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/views/gallery/view/ImagePreviewView;


# direct methods
.method private constructor <init>(Lcom/keephealth/android/views/gallery/view/ImagePreviewView;)V
    .registers 2

    .line 347
    iput-object p1, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView$ScaleListener;->this$0:Lcom/keephealth/android/views/gallery/view/ImagePreviewView;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/keephealth/android/views/gallery/view/ImagePreviewView;Lcom/keephealth/android/views/gallery/view/ImagePreviewView$1;)V
    .registers 3

    .line 347
    invoke-direct {p0, p1}, Lcom/keephealth/android/views/gallery/view/ImagePreviewView$ScaleListener;-><init>(Lcom/keephealth/android/views/gallery/view/ImagePreviewView;)V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .registers 12

    .line 355
    iget-object v0, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView$ScaleListener;->this$0:Lcom/keephealth/android/views/gallery/view/ImagePreviewView;

    # getter for: Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->mBoundWidth:I
    invoke-static {v0}, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->access$500(Lcom/keephealth/android/views/gallery/view/ImagePreviewView;)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView$ScaleListener;->this$0:Lcom/keephealth/android/views/gallery/view/ImagePreviewView;

    # getter for: Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->scale:F
    invoke-static {v1}, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->access$200(Lcom/keephealth/android/views/gallery/view/ImagePreviewView;)F

    move-result v1

    mul-float/2addr v0, v1

    .line 356
    iget-object v1, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView$ScaleListener;->this$0:Lcom/keephealth/android/views/gallery/view/ImagePreviewView;

    # getter for: Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->mBoundHeight:I
    invoke-static {v1}, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->access$600(Lcom/keephealth/android/views/gallery/view/ImagePreviewView;)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView$ScaleListener;->this$0:Lcom/keephealth/android/views/gallery/view/ImagePreviewView;

    # getter for: Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->scale:F
    invoke-static {v2}, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->access$200(Lcom/keephealth/android/views/gallery/view/ImagePreviewView;)F

    move-result v2

    mul-float/2addr v1, v2

    .line 358
    iget-object v2, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView$ScaleListener;->this$0:Lcom/keephealth/android/views/gallery/view/ImagePreviewView;

    invoke-virtual {v2}, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, v0, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-lez v2, :cond_33

    iget-object v2, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView$ScaleListener;->this$0:Lcom/keephealth/android/views/gallery/view/ImagePreviewView;

    # invokes: Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->getDiffX()F
    invoke-static {v2}, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->access$700(Lcom/keephealth/android/views/gallery/view/ImagePreviewView;)F

    move-result v2

    cmpl-float v2, v2, v4

    if-nez v2, :cond_48

    :cond_33
    iget-object v2, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView$ScaleListener;->this$0:Lcom/keephealth/android/views/gallery/view/ImagePreviewView;

    .line 359
    invoke-virtual {v2}, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, v1, v2

    if-lez v2, :cond_49

    iget-object v2, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView$ScaleListener;->this$0:Lcom/keephealth/android/views/gallery/view/ImagePreviewView;

    # invokes: Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->getDiffY()F
    invoke-static {v2}, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->access$800(Lcom/keephealth/android/views/gallery/view/ImagePreviewView;)F

    move-result v2

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_49

    :cond_48
    return v3

    .line 361
    :cond_49
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result p1

    .line 362
    iget-object v2, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView$ScaleListener;->this$0:Lcom/keephealth/android/views/gallery/view/ImagePreviewView;

    # getter for: Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->scale:F
    invoke-static {v2}, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->access$200(Lcom/keephealth/android/views/gallery/view/ImagePreviewView;)F

    move-result v2

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr p1, v5

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr p1, v5

    add-float/2addr v2, p1

    .line 364
    iget-object p1, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView$ScaleListener;->this$0:Lcom/keephealth/android/views/gallery/view/ImagePreviewView;

    # getter for: Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->scale:F
    invoke-static {p1}, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->access$200(Lcom/keephealth/android/views/gallery/view/ImagePreviewView;)F

    move-result p1

    cmpl-float p1, v2, p1

    const/4 v6, 0x1

    if-nez p1, :cond_66

    return v6

    :cond_66
    const p1, 0x3ecccccd    # 0.4f

    cmpg-float p1, v2, p1

    if-gtz p1, :cond_6e

    return v3

    :cond_6e
    const/high16 p1, 0x40800000    # 4.0f

    cmpl-float p1, v2, p1

    if-lez p1, :cond_75

    return v3

    .line 367
    :cond_75
    iget-object p1, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView$ScaleListener;->this$0:Lcom/keephealth/android/views/gallery/view/ImagePreviewView;

    # setter for: Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->scale:F
    invoke-static {p1, v2}, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->access$202(Lcom/keephealth/android/views/gallery/view/ImagePreviewView;F)F

    .line 368
    iget-object p1, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView$ScaleListener;->this$0:Lcom/keephealth/android/views/gallery/view/ImagePreviewView;

    # getter for: Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->mBoundWidth:I
    invoke-static {p1}, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->access$500(Lcom/keephealth/android/views/gallery/view/ImagePreviewView;)I

    move-result p1

    int-to-float p1, p1

    iget-object v2, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView$ScaleListener;->this$0:Lcom/keephealth/android/views/gallery/view/ImagePreviewView;

    # getter for: Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->scale:F
    invoke-static {v2}, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->access$200(Lcom/keephealth/android/views/gallery/view/ImagePreviewView;)F

    move-result v2

    mul-float/2addr p1, v2

    .line 369
    iget-object v2, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView$ScaleListener;->this$0:Lcom/keephealth/android/views/gallery/view/ImagePreviewView;

    # getter for: Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->mBoundHeight:I
    invoke-static {v2}, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->access$600(Lcom/keephealth/android/views/gallery/view/ImagePreviewView;)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView$ScaleListener;->this$0:Lcom/keephealth/android/views/gallery/view/ImagePreviewView;

    # getter for: Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->scale:F
    invoke-static {v3}, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->access$200(Lcom/keephealth/android/views/gallery/view/ImagePreviewView;)F

    move-result v3

    mul-float/2addr v2, v3

    .line 372
    iget-object v3, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView$ScaleListener;->this$0:Lcom/keephealth/android/views/gallery/view/ImagePreviewView;

    invoke-virtual {v3}, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v5

    iget-object v8, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView$ScaleListener;->this$0:Lcom/keephealth/android/views/gallery/view/ImagePreviewView;

    invoke-virtual {v8}, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->getWidth()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v5

    iget-object v9, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView$ScaleListener;->this$0:Lcom/keephealth/android/views/gallery/view/ImagePreviewView;

    # getter for: Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->translateLeft:F
    invoke-static {v9}, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->access$300(Lcom/keephealth/android/views/gallery/view/ImagePreviewView;)F

    move-result v9

    sub-float/2addr v8, v9

    mul-float/2addr v8, p1

    div-float/2addr v8, v0

    sub-float/2addr v7, v8

    # setter for: Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->translateLeft:F
    invoke-static {v3, v7}, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->access$302(Lcom/keephealth/android/views/gallery/view/ImagePreviewView;F)F

    .line 373
    iget-object v0, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView$ScaleListener;->this$0:Lcom/keephealth/android/views/gallery/view/ImagePreviewView;

    invoke-virtual {v0}, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v5

    iget-object v7, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView$ScaleListener;->this$0:Lcom/keephealth/android/views/gallery/view/ImagePreviewView;

    invoke-virtual {v7}, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v5

    iget-object v5, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView$ScaleListener;->this$0:Lcom/keephealth/android/views/gallery/view/ImagePreviewView;

    # getter for: Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->translateTop:F
    invoke-static {v5}, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->access$400(Lcom/keephealth/android/views/gallery/view/ImagePreviewView;)F

    move-result v5

    sub-float/2addr v7, v5

    mul-float/2addr v7, v2

    div-float/2addr v7, v1

    sub-float/2addr v3, v7

    # setter for: Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->translateTop:F
    invoke-static {v0, v3}, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->access$402(Lcom/keephealth/android/views/gallery/view/ImagePreviewView;F)F

    .line 375
    iget-object v0, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView$ScaleListener;->this$0:Lcom/keephealth/android/views/gallery/view/ImagePreviewView;

    # invokes: Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->getDiffX()F
    invoke-static {v0}, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->access$700(Lcom/keephealth/android/views/gallery/view/ImagePreviewView;)F

    move-result v0

    .line 376
    iget-object v1, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView$ScaleListener;->this$0:Lcom/keephealth/android/views/gallery/view/ImagePreviewView;

    # invokes: Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->getDiffY()F
    invoke-static {v1}, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->access$800(Lcom/keephealth/android/views/gallery/view/ImagePreviewView;)F

    move-result v1

    cmpl-float v3, v0, v4

    if-lez v3, :cond_f0

    .line 379
    iget-object v3, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView$ScaleListener;->this$0:Lcom/keephealth/android/views/gallery/view/ImagePreviewView;

    invoke-virtual {v3}, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v3, p1, v3

    if-lez v3, :cond_f0

    .line 380
    iget-object v3, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView$ScaleListener;->this$0:Lcom/keephealth/android/views/gallery/view/ImagePreviewView;

    # setter for: Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->translateLeft:F
    invoke-static {v3, v4}, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->access$302(Lcom/keephealth/android/views/gallery/view/ImagePreviewView;F)F

    :cond_f0
    cmpg-float v0, v0, v4

    if-gez v0, :cond_10a

    .line 383
    iget-object v0, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView$ScaleListener;->this$0:Lcom/keephealth/android/views/gallery/view/ImagePreviewView;

    invoke-virtual {v0}, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_10a

    .line 384
    iget-object v0, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView$ScaleListener;->this$0:Lcom/keephealth/android/views/gallery/view/ImagePreviewView;

    invoke-virtual {v0}, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, p1

    # setter for: Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->translateLeft:F
    invoke-static {v0, v3}, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->access$302(Lcom/keephealth/android/views/gallery/view/ImagePreviewView;F)F

    :cond_10a
    cmpl-float p1, v1, v4

    if-lez p1, :cond_11e

    .line 388
    iget-object p1, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView$ScaleListener;->this$0:Lcom/keephealth/android/views/gallery/view/ImagePreviewView;

    invoke-virtual {p1}, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->getHeight()I

    move-result p1

    int-to-float p1, p1

    cmpl-float p1, v2, p1

    if-lez p1, :cond_11e

    .line 389
    iget-object p1, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView$ScaleListener;->this$0:Lcom/keephealth/android/views/gallery/view/ImagePreviewView;

    # setter for: Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->translateTop:F
    invoke-static {p1, v4}, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->access$402(Lcom/keephealth/android/views/gallery/view/ImagePreviewView;F)F

    :cond_11e
    cmpg-float p1, v1, v4

    if-gez p1, :cond_138

    .line 393
    iget-object p1, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView$ScaleListener;->this$0:Lcom/keephealth/android/views/gallery/view/ImagePreviewView;

    invoke-virtual {p1}, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->getHeight()I

    move-result p1

    int-to-float p1, p1

    cmpl-float p1, v2, p1

    if-lez p1, :cond_138

    .line 394
    iget-object p1, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView$ScaleListener;->this$0:Lcom/keephealth/android/views/gallery/view/ImagePreviewView;

    invoke-virtual {p1}, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, v2

    # setter for: Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->translateTop:F
    invoke-static {p1, v0}, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->access$402(Lcom/keephealth/android/views/gallery/view/ImagePreviewView;F)F

    .line 397
    :cond_138
    iget-object p1, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView$ScaleListener;->this$0:Lcom/keephealth/android/views/gallery/view/ImagePreviewView;

    invoke-virtual {p1}, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->invalidate()V

    return v6
.end method
