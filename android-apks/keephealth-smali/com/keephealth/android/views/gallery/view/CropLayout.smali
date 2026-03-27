.class public Lcom/keephealth/android/views/gallery/view/CropLayout;
.super Landroid/widget/FrameLayout;
.source "CropLayout.java"


# instance fields
.field private mCropHeight:I

.field private mCropView:Lcom/keephealth/android/views/gallery/view/CropFloatView;

.field private mCropWidth:I

.field private mZoomImageView:Lcom/keephealth/android/views/gallery/view/ZoomImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p2, 0x1f4

    .line 16
    iput p2, p0, Lcom/keephealth/android/views/gallery/view/CropLayout;->mCropWidth:I

    .line 17
    iput p2, p0, Lcom/keephealth/android/views/gallery/view/CropLayout;->mCropHeight:I

    .line 24
    new-instance p2, Lcom/keephealth/android/views/gallery/view/ZoomImageView;

    invoke-direct {p2, p1}, Lcom/keephealth/android/views/gallery/view/ZoomImageView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/keephealth/android/views/gallery/view/CropLayout;->mZoomImageView:Lcom/keephealth/android/views/gallery/view/ZoomImageView;

    .line 25
    new-instance p2, Lcom/keephealth/android/views/gallery/view/CropFloatView;

    invoke-direct {p2, p1}, Lcom/keephealth/android/views/gallery/view/CropFloatView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/keephealth/android/views/gallery/view/CropLayout;->mCropView:Lcom/keephealth/android/views/gallery/view/CropFloatView;

    .line 26
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p2, -0x1

    invoke-direct {p1, p2, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 29
    iget-object p2, p0, Lcom/keephealth/android/views/gallery/view/CropLayout;->mZoomImageView:Lcom/keephealth/android/views/gallery/view/ZoomImageView;

    invoke-virtual {p0, p2, p1}, Lcom/keephealth/android/views/gallery/view/CropLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 30
    iget-object p2, p0, Lcom/keephealth/android/views/gallery/view/CropLayout;->mCropView:Lcom/keephealth/android/views/gallery/view/CropFloatView;

    invoke-virtual {p0, p2, p1}, Lcom/keephealth/android/views/gallery/view/CropLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public cropBitmap()Landroid/graphics/Bitmap;
    .registers 2

    .line 39
    iget-object v0, p0, Lcom/keephealth/android/views/gallery/view/CropLayout;->mZoomImageView:Lcom/keephealth/android/views/gallery/view/ZoomImageView;

    invoke-virtual {v0}, Lcom/keephealth/android/views/gallery/view/ZoomImageView;->cropBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getImageView()Lcom/keephealth/android/views/gallery/view/ZoomImageView;
    .registers 2

    .line 34
    iget-object v0, p0, Lcom/keephealth/android/views/gallery/view/CropLayout;->mZoomImageView:Lcom/keephealth/android/views/gallery/view/ZoomImageView;

    return-object v0
.end method

.method public setCropHeight(I)V
    .registers 3

    .line 49
    iput p1, p0, Lcom/keephealth/android/views/gallery/view/CropLayout;->mCropHeight:I

    .line 50
    iget-object v0, p0, Lcom/keephealth/android/views/gallery/view/CropLayout;->mCropView:Lcom/keephealth/android/views/gallery/view/CropFloatView;

    invoke-virtual {v0, p1}, Lcom/keephealth/android/views/gallery/view/CropFloatView;->setCropHeight(I)V

    .line 51
    iget-object v0, p0, Lcom/keephealth/android/views/gallery/view/CropLayout;->mZoomImageView:Lcom/keephealth/android/views/gallery/view/ZoomImageView;

    invoke-virtual {v0, p1}, Lcom/keephealth/android/views/gallery/view/ZoomImageView;->setCropHeight(I)V

    return-void
.end method

.method public setCropWidth(I)V
    .registers 3

    .line 43
    iput p1, p0, Lcom/keephealth/android/views/gallery/view/CropLayout;->mCropWidth:I

    .line 44
    iget-object v0, p0, Lcom/keephealth/android/views/gallery/view/CropLayout;->mCropView:Lcom/keephealth/android/views/gallery/view/CropFloatView;

    invoke-virtual {v0, p1}, Lcom/keephealth/android/views/gallery/view/CropFloatView;->setCropWidth(I)V

    .line 45
    iget-object v0, p0, Lcom/keephealth/android/views/gallery/view/CropLayout;->mZoomImageView:Lcom/keephealth/android/views/gallery/view/ZoomImageView;

    invoke-virtual {v0, p1}, Lcom/keephealth/android/views/gallery/view/ZoomImageView;->setCropWidth(I)V

    return-void
.end method

.method public start()V
    .registers 4

    .line 55
    invoke-virtual {p0}, Lcom/keephealth/android/views/gallery/view/CropLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/views/gallery/util/Util;->getScreenHeight(Landroid/content/Context;)I

    move-result v0

    .line 56
    invoke-virtual {p0}, Lcom/keephealth/android/views/gallery/view/CropLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/keephealth/android/views/gallery/util/Util;->getScreenWidth(Landroid/content/Context;)I

    move-result v1

    .line 57
    iget v2, p0, Lcom/keephealth/android/views/gallery/view/CropLayout;->mCropWidth:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    .line 58
    iget v2, p0, Lcom/keephealth/android/views/gallery/view/CropLayout;->mCropHeight:I

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    .line 59
    iget-object v2, p0, Lcom/keephealth/android/views/gallery/view/CropLayout;->mZoomImageView:Lcom/keephealth/android/views/gallery/view/ZoomImageView;

    invoke-virtual {v2, v1}, Lcom/keephealth/android/views/gallery/view/ZoomImageView;->setHOffset(I)V

    .line 60
    iget-object v1, p0, Lcom/keephealth/android/views/gallery/view/CropLayout;->mZoomImageView:Lcom/keephealth/android/views/gallery/view/ZoomImageView;

    invoke-virtual {v1, v0}, Lcom/keephealth/android/views/gallery/view/ZoomImageView;->setVOffset(I)V

    return-void
.end method
