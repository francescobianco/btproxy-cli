.class Lcom/keephealth/android/views/gallery/view/CropFloatView;
.super Landroid/view/View;
.source "CropFloatView.java"


# instance fields
.field private isCrop:Z

.field private mCropDrawable:Lcom/keephealth/android/views/gallery/CropDrawable;

.field private mFloatRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 22
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 18
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/views/gallery/view/CropFloatView;->mFloatRect:Landroid/graphics/Rect;

    .line 23
    new-instance v0, Lcom/keephealth/android/views/gallery/CropDrawable;

    invoke-direct {v0, p1}, Lcom/keephealth/android/views/gallery/CropDrawable;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/keephealth/android/views/gallery/view/CropFloatView;->mCropDrawable:Lcom/keephealth/android/views/gallery/CropDrawable;

    return-void
.end method

.method private cropDrawable()V
    .registers 3

    .line 38
    iget-boolean v0, p0, Lcom/keephealth/android/views/gallery/view/CropFloatView;->isCrop:Z

    if-eqz v0, :cond_5

    return-void

    .line 39
    :cond_5
    iget-object v0, p0, Lcom/keephealth/android/views/gallery/view/CropFloatView;->mCropDrawable:Lcom/keephealth/android/views/gallery/CropDrawable;

    iget-object v1, p0, Lcom/keephealth/android/views/gallery/view/CropFloatView;->mFloatRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/gallery/CropDrawable;->setRegion(Landroid/graphics/Rect;)V

    const/4 v0, 0x1

    .line 40
    iput-boolean v0, p0, Lcom/keephealth/android/views/gallery/view/CropFloatView;->isCrop:Z

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 4

    .line 28
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 29
    invoke-direct {p0}, Lcom/keephealth/android/views/gallery/view/CropFloatView;->cropDrawable()V

    .line 30
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 31
    iget-object v0, p0, Lcom/keephealth/android/views/gallery/view/CropFloatView;->mFloatRect:Landroid/graphics/Rect;

    sget-object v1, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 32
    const-string v0, "#a0000000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 33
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 34
    iget-object v0, p0, Lcom/keephealth/android/views/gallery/view/CropFloatView;->mCropDrawable:Lcom/keephealth/android/views/gallery/CropDrawable;

    invoke-virtual {v0, p1}, Lcom/keephealth/android/views/gallery/CropDrawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public setCropHeight(I)V
    .registers 3

    .line 50
    iget-object v0, p0, Lcom/keephealth/android/views/gallery/view/CropFloatView;->mCropDrawable:Lcom/keephealth/android/views/gallery/CropDrawable;

    invoke-virtual {v0, p1}, Lcom/keephealth/android/views/gallery/CropDrawable;->setCropHeight(I)V

    return-void
.end method

.method public setCropWidth(I)V
    .registers 3

    .line 45
    iget-object v0, p0, Lcom/keephealth/android/views/gallery/view/CropFloatView;->mCropDrawable:Lcom/keephealth/android/views/gallery/CropDrawable;

    invoke-virtual {v0, p1}, Lcom/keephealth/android/views/gallery/CropDrawable;->setCropWidth(I)V

    return-void
.end method
