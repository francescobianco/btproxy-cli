.class Lcom/keephealth/android/views/gallery/ImageGalleryActivity$ViewPagerAdapter$3;
.super Ljava/lang/Thread;
.source "ImageGalleryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/views/gallery/ImageGalleryActivity$ViewPagerAdapter;->loadImageDoDownAndGetOverrideSize(Ljava/lang/Object;Lcom/keephealth/android/views/gallery/ImageGalleryActivity$DoOverrideSizeCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/keephealth/android/views/gallery/ImageGalleryActivity$ViewPagerAdapter;

.field final synthetic val$callback:Lcom/keephealth/android/views/gallery/ImageGalleryActivity$DoOverrideSizeCallback;

.field final synthetic val$future:Ljava/util/concurrent/Future;


# direct methods
.method constructor <init>(Lcom/keephealth/android/views/gallery/ImageGalleryActivity$ViewPagerAdapter;Ljava/util/concurrent/Future;Lcom/keephealth/android/views/gallery/ImageGalleryActivity$DoOverrideSizeCallback;)V
    .registers 4

    .line 403
    iput-object p1, p0, Lcom/keephealth/android/views/gallery/ImageGalleryActivity$ViewPagerAdapter$3;->this$1:Lcom/keephealth/android/views/gallery/ImageGalleryActivity$ViewPagerAdapter;

    iput-object p2, p0, Lcom/keephealth/android/views/gallery/ImageGalleryActivity$ViewPagerAdapter$3;->val$future:Ljava/util/concurrent/Future;

    iput-object p3, p0, Lcom/keephealth/android/views/gallery/ImageGalleryActivity$ViewPagerAdapter$3;->val$callback:Lcom/keephealth/android/views/gallery/ImageGalleryActivity$DoOverrideSizeCallback;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 407
    :try_start_0
    iget-object v0, p0, Lcom/keephealth/android/views/gallery/ImageGalleryActivity$ViewPagerAdapter$3;->val$future:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 409
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x1

    .line 411
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 413
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 415
    iget v0, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 416
    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 417
    invoke-static {v1}, Lcom/keephealth/android/views/gallery/util/BitmapUtil;->resetOptions(Landroid/graphics/BitmapFactory$Options;)V

    if-lez v0, :cond_6a

    if-lez v2, :cond_6a

    .line 421
    iget-object v1, p0, Lcom/keephealth/android/views/gallery/ImageGalleryActivity$ViewPagerAdapter$3;->this$1:Lcom/keephealth/android/views/gallery/ImageGalleryActivity$ViewPagerAdapter;

    iget-object v1, v1, Lcom/keephealth/android/views/gallery/ImageGalleryActivity$ViewPagerAdapter;->this$0:Lcom/keephealth/android/views/gallery/ImageGalleryActivity;

    # invokes: Lcom/keephealth/android/views/gallery/ImageGalleryActivity;->getDisplayDimens()Landroid/graphics/Point;
    invoke-static {v1}, Lcom/keephealth/android/views/gallery/ImageGalleryActivity;->access$600(Lcom/keephealth/android/views/gallery/ImageGalleryActivity;)Landroid/graphics/Point;

    move-result-object v1

    .line 424
    iget v3, v1, Landroid/graphics/Point;->y:I

    iget v4, v1, Landroid/graphics/Point;->x:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    mul-int/lit8 v3, v3, 0x5

    const/16 v4, 0x1002

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    int-to-float v4, v0

    int-to-float v5, v2

    div-float/2addr v4, v5

    .line 429
    iget v5, v1, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    iget v6, v1, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    cmpl-float v4, v4, v5

    if-lez v4, :cond_53

    .line 430
    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 431
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_5d

    .line 433
    :cond_53
    iget v1, v1, Landroid/graphics/Point;->x:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 434
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 438
    :goto_5d
    iget-object v2, p0, Lcom/keephealth/android/views/gallery/ImageGalleryActivity$ViewPagerAdapter$3;->this$1:Lcom/keephealth/android/views/gallery/ImageGalleryActivity$ViewPagerAdapter;

    iget-object v2, v2, Lcom/keephealth/android/views/gallery/ImageGalleryActivity$ViewPagerAdapter;->this$0:Lcom/keephealth/android/views/gallery/ImageGalleryActivity;

    new-instance v3, Lcom/keephealth/android/views/gallery/ImageGalleryActivity$ViewPagerAdapter$3$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/keephealth/android/views/gallery/ImageGalleryActivity$ViewPagerAdapter$3$1;-><init>(Lcom/keephealth/android/views/gallery/ImageGalleryActivity$ViewPagerAdapter$3;II)V

    invoke-virtual {v2, v3}, Lcom/keephealth/android/views/gallery/ImageGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_87

    .line 446
    :cond_6a
    iget-object v0, p0, Lcom/keephealth/android/views/gallery/ImageGalleryActivity$ViewPagerAdapter$3;->this$1:Lcom/keephealth/android/views/gallery/ImageGalleryActivity$ViewPagerAdapter;

    iget-object v0, v0, Lcom/keephealth/android/views/gallery/ImageGalleryActivity$ViewPagerAdapter;->this$0:Lcom/keephealth/android/views/gallery/ImageGalleryActivity;

    new-instance v1, Lcom/keephealth/android/views/gallery/ImageGalleryActivity$ViewPagerAdapter$3$2;

    invoke-direct {v1, p0}, Lcom/keephealth/android/views/gallery/ImageGalleryActivity$ViewPagerAdapter$3$2;-><init>(Lcom/keephealth/android/views/gallery/ImageGalleryActivity$ViewPagerAdapter$3;)V

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/gallery/ImageGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_76} :catch_77

    goto :goto_87

    :catch_77
    move-exception v0

    .line 454
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 457
    iget-object v0, p0, Lcom/keephealth/android/views/gallery/ImageGalleryActivity$ViewPagerAdapter$3;->this$1:Lcom/keephealth/android/views/gallery/ImageGalleryActivity$ViewPagerAdapter;

    iget-object v0, v0, Lcom/keephealth/android/views/gallery/ImageGalleryActivity$ViewPagerAdapter;->this$0:Lcom/keephealth/android/views/gallery/ImageGalleryActivity;

    new-instance v1, Lcom/keephealth/android/views/gallery/ImageGalleryActivity$ViewPagerAdapter$3$3;

    invoke-direct {v1, p0}, Lcom/keephealth/android/views/gallery/ImageGalleryActivity$ViewPagerAdapter$3$3;-><init>(Lcom/keephealth/android/views/gallery/ImageGalleryActivity$ViewPagerAdapter$3;)V

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/gallery/ImageGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_87
    return-void
.end method
