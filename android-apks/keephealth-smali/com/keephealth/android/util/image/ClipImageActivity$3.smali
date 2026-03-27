.class Lcom/keephealth/android/util/image/ClipImageActivity$3;
.super Landroid/os/AsyncTask;
.source "ClipImageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/util/image/ClipImageActivity;->clipImage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/util/image/ClipImageActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/util/image/ClipImageActivity;)V
    .registers 2

    .line 326
    iput-object p1, p0, Lcom/keephealth/android/util/image/ClipImageActivity$3;->this$0:Lcom/keephealth/android/util/image/ClipImageActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 326
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/keephealth/android/util/image/ClipImageActivity$3;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 7

    const/4 p1, 0x0

    .line 331
    :try_start_1
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/keephealth/android/util/image/ClipImageActivity$3;->this$0:Lcom/keephealth/android/util/image/ClipImageActivity;

    # getter for: Lcom/keephealth/android/util/image/ClipImageActivity;->mOutput:Ljava/lang/String;
    invoke-static {v1}, Lcom/keephealth/android/util/image/ClipImageActivity;->access$900(Lcom/keephealth/android/util/image/ClipImageActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c} :catch_34
    .catchall {:try_start_1 .. :try_end_c} :catchall_2f

    .line 332
    :try_start_c
    iget-object v1, p0, Lcom/keephealth/android/util/image/ClipImageActivity$3;->this$0:Lcom/keephealth/android/util/image/ClipImageActivity;

    # invokes: Lcom/keephealth/android/util/image/ClipImageActivity;->createClippedBitmap()Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/keephealth/android/util/image/ClipImageActivity;->access$1000(Lcom/keephealth/android/util/image/ClipImageActivity;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 333
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 334
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_22

    .line 335
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 337
    :cond_22
    iget-object v1, p0, Lcom/keephealth/android/util/image/ClipImageActivity$3;->this$0:Lcom/keephealth/android/util/image/ClipImageActivity;

    invoke-virtual {v1}, Lcom/keephealth/android/util/image/ClipImageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v1, v3, v2}, Lcom/keephealth/android/util/image/ClipImageActivity;->setResult(ILandroid/content/Intent;)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_2c} :catch_2d
    .catchall {:try_start_c .. :try_end_2c} :catchall_41

    goto :goto_3d

    :catch_2d
    move-exception v1

    goto :goto_36

    :catchall_2f
    move-exception v0

    move-object v4, v0

    move-object v0, p1

    move-object p1, v4

    goto :goto_42

    :catch_34
    move-exception v1

    move-object v0, p1

    .line 339
    :goto_36
    :try_start_36
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V
    :try_end_3d
    .catchall {:try_start_36 .. :try_end_3d} :catchall_41

    .line 341
    :goto_3d
    invoke-static {v0}, Lcom/keephealth/android/util/image/IOUtils;->close(Ljava/io/Closeable;)V

    return-object p1

    :catchall_41
    move-exception p1

    :goto_42
    invoke-static {v0}, Lcom/keephealth/android/util/image/IOUtils;->close(Ljava/io/Closeable;)V

    .line 342
    throw p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 326
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/keephealth/android/util/image/ClipImageActivity$3;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .registers 2

    .line 348
    iget-object p1, p0, Lcom/keephealth/android/util/image/ClipImageActivity$3;->this$0:Lcom/keephealth/android/util/image/ClipImageActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/util/image/ClipImageActivity;->finish()V

    return-void
.end method
