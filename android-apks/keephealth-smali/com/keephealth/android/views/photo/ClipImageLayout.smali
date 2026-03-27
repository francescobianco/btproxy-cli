.class public Lcom/keephealth/android/views/photo/ClipImageLayout;
.super Landroid/widget/RelativeLayout;
.source "ClipImageLayout.java"


# instance fields
.field private mClipImageView:Lcom/keephealth/android/views/photo/ClipImageBorderView;

.field private mHorizontalPadding:I

.field public mZoomImageView:Lcom/keephealth/android/views/photo/ClipZoomImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p2, 0x1e

    .line 23
    iput p2, p0, Lcom/keephealth/android/views/photo/ClipImageLayout;->mHorizontalPadding:I

    .line 29
    new-instance p2, Lcom/keephealth/android/views/photo/ClipZoomImageView;

    invoke-direct {p2, p1}, Lcom/keephealth/android/views/photo/ClipZoomImageView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/keephealth/android/views/photo/ClipImageLayout;->mZoomImageView:Lcom/keephealth/android/views/photo/ClipZoomImageView;

    .line 30
    new-instance p2, Lcom/keephealth/android/views/photo/ClipImageBorderView;

    invoke-direct {p2, p1}, Lcom/keephealth/android/views/photo/ClipImageBorderView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/keephealth/android/views/photo/ClipImageLayout;->mClipImageView:Lcom/keephealth/android/views/photo/ClipImageBorderView;

    .line 32
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 p2, -0x1

    invoke-direct {p1, p2, p2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 42
    iget-object p2, p0, Lcom/keephealth/android/views/photo/ClipImageLayout;->mZoomImageView:Lcom/keephealth/android/views/photo/ClipZoomImageView;

    invoke-virtual {p0, p2, p1}, Lcom/keephealth/android/views/photo/ClipImageLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 43
    iget-object p2, p0, Lcom/keephealth/android/views/photo/ClipImageLayout;->mClipImageView:Lcom/keephealth/android/views/photo/ClipImageBorderView;

    invoke-virtual {p0, p2, p1}, Lcom/keephealth/android/views/photo/ClipImageLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 47
    iget p1, p0, Lcom/keephealth/android/views/photo/ClipImageLayout;->mHorizontalPadding:I

    int-to-float p1, p1

    .line 48
    invoke-virtual {p0}, Lcom/keephealth/android/views/photo/ClipImageLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 49
    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    const/4 v0, 0x1

    .line 47
    invoke-static {v0, p1, p2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/keephealth/android/views/photo/ClipImageLayout;->mHorizontalPadding:I

    .line 50
    iget-object p2, p0, Lcom/keephealth/android/views/photo/ClipImageLayout;->mZoomImageView:Lcom/keephealth/android/views/photo/ClipZoomImageView;

    invoke-virtual {p2, p1}, Lcom/keephealth/android/views/photo/ClipZoomImageView;->setHorizontalPadding(I)V

    .line 51
    iget-object p1, p0, Lcom/keephealth/android/views/photo/ClipImageLayout;->mClipImageView:Lcom/keephealth/android/views/photo/ClipImageBorderView;

    iget p2, p0, Lcom/keephealth/android/views/photo/ClipImageLayout;->mHorizontalPadding:I

    invoke-virtual {p1, p2}, Lcom/keephealth/android/views/photo/ClipImageBorderView;->setHorizontalPadding(I)V

    return-void
.end method


# virtual methods
.method public clip()Landroid/graphics/Bitmap;
    .registers 2

    .line 71
    iget-object v0, p0, Lcom/keephealth/android/views/photo/ClipImageLayout;->mZoomImageView:Lcom/keephealth/android/views/photo/ClipZoomImageView;

    invoke-virtual {v0}, Lcom/keephealth/android/views/photo/ClipZoomImageView;->clip()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public setHorizontalPadding(I)V
    .registers 2

    .line 61
    iput p1, p0, Lcom/keephealth/android/views/photo/ClipImageLayout;->mHorizontalPadding:I

    return-void
.end method
