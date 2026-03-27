.class public Lcom/keephealth/android/util/image/BitmapEditActivity;
.super Lcom/keephealth/android/base/BaseActivity;
.source "BitmapEditActivity.java"


# instance fields
.field private editBitmap:Landroid/graphics/Bitmap;

.field private imgHeight:I

.field private imgWidth:I

.field scalableImageView:Lcom/keephealth/android/util/image/CorpToView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090541
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Lcom/keephealth/android/base/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getContentView()I
    .registers 2

    const v0, 0x7f0c0024

    return v0
.end method

.method protected initView()V
    .registers 8

    .line 45
    invoke-super {p0}, Lcom/keephealth/android/base/BaseActivity;->initView()V

    .line 46
    invoke-virtual {p0}, Lcom/keephealth/android/util/image/BitmapEditActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_3b

    .line 48
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    const-string v2, "imgWidth"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/keephealth/android/util/image/BitmapEditActivity;->imgWidth:I

    .line 49
    const-string v1, "imgHeight"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/keephealth/android/util/image/BitmapEditActivity;->imgHeight:I

    .line 50
    iget-object v2, p0, Lcom/keephealth/android/util/image/BitmapEditActivity;->scalableImageView:Lcom/keephealth/android/util/image/CorpToView;

    int-to-double v3, v1

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v3, v5

    iget v1, p0, Lcom/keephealth/android/util/image/BitmapEditActivity;->imgWidth:I

    int-to-double v5, v1

    div-double/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Lcom/keephealth/android/util/image/CorpToView;->cropProportion(D)V

    .line 51
    iget-object v1, p0, Lcom/keephealth/android/util/image/BitmapEditActivity;->scalableImageView:Lcom/keephealth/android/util/image/CorpToView;

    const-string v2, "bitmap"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/keephealth/android/util/image/CorpToView;->showImage(Ljava/lang/String;)V

    .line 54
    :cond_3b
    iget-object v0, p0, Lcom/keephealth/android/util/image/BitmapEditActivity;->titleBack:Landroid/widget/ImageView;

    const v1, 0x7f0d00a3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 55
    iget-object v0, p0, Lcom/keephealth/android/util/image/BitmapEditActivity;->rightImg:Landroid/widget/ImageView;

    const v1, 0x7f0d00a4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 56
    iget-object v0, p0, Lcom/keephealth/android/util/image/BitmapEditActivity;->rightImg:Landroid/widget/ImageView;

    new-instance v1, Lcom/keephealth/android/util/image/BitmapEditActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/keephealth/android/util/image/BitmapEditActivity$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/util/image/BitmapEditActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method synthetic lambda$initView$0$com-keephealth-android-util-image-BitmapEditActivity(Landroid/view/View;)V
    .registers 5

    .line 57
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/keephealth/android/app/Constants;->PIC_PATH:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "/cropImage_"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ".jpg"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 58
    iget-object v0, p0, Lcom/keephealth/android/util/image/BitmapEditActivity;->scalableImageView:Lcom/keephealth/android/util/image/CorpToView;

    invoke-virtual {v0}, Lcom/keephealth/android/util/image/CorpToView;->getClipRectImage()Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/keephealth/android/util/image/BitmapUtil;->save(Landroid/graphics/Bitmap;Ljava/io/File;)V

    .line 59
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 60
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 61
    const-string v2, "path"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/4 p1, -0x1

    .line 63
    invoke-virtual {p0, p1, v0}, Lcom/keephealth/android/util/image/BitmapEditActivity;->setResult(ILandroid/content/Intent;)V

    .line 64
    invoke-virtual {p0}, Lcom/keephealth/android/util/image/BitmapEditActivity;->finish()V

    return-void
.end method
