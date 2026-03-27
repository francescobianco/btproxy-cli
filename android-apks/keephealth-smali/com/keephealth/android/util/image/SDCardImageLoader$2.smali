.class Lcom/keephealth/android/util/image/SDCardImageLoader$2;
.super Ljava/lang/Object;
.source "SDCardImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/util/image/SDCardImageLoader;->loadDrawable(ILjava/lang/String;Lcom/keephealth/android/util/image/SDCardImageLoader$ImageCallback;)Landroid/graphics/Bitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/util/image/SDCardImageLoader;

.field final synthetic val$callback:Lcom/keephealth/android/util/image/SDCardImageLoader$ImageCallback;

.field final synthetic val$filePath:Ljava/lang/String;

.field final synthetic val$smallRate:I


# direct methods
.method constructor <init>(Lcom/keephealth/android/util/image/SDCardImageLoader;Ljava/lang/String;ILcom/keephealth/android/util/image/SDCardImageLoader$ImageCallback;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 64
    iput-object p1, p0, Lcom/keephealth/android/util/image/SDCardImageLoader$2;->this$0:Lcom/keephealth/android/util/image/SDCardImageLoader;

    iput-object p2, p0, Lcom/keephealth/android/util/image/SDCardImageLoader$2;->val$filePath:Ljava/lang/String;

    iput p3, p0, Lcom/keephealth/android/util/image/SDCardImageLoader$2;->val$smallRate:I

    iput-object p4, p0, Lcom/keephealth/android/util/image/SDCardImageLoader$2;->val$callback:Lcom/keephealth/android/util/image/SDCardImageLoader$ImageCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 67
    :try_start_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 68
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 69
    iget-object v1, p0, Lcom/keephealth/android/util/image/SDCardImageLoader$2;->val$filePath:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 72
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 73
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-eqz v1, :cond_6c

    if-nez v2, :cond_16

    goto :goto_6c

    .line 81
    :cond_16
    iget v3, p0, Lcom/keephealth/android/util/image/SDCardImageLoader$2;->val$smallRate:I

    iput v3, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    if-le v1, v2, :cond_31

    .line 84
    iget-object v2, p0, Lcom/keephealth/android/util/image/SDCardImageLoader$2;->this$0:Lcom/keephealth/android/util/image/SDCardImageLoader;

    # getter for: Lcom/keephealth/android/util/image/SDCardImageLoader;->screenW:I
    invoke-static {v2}, Lcom/keephealth/android/util/image/SDCardImageLoader;->access$000(Lcom/keephealth/android/util/image/SDCardImageLoader;)I

    move-result v2

    if-le v1, v2, :cond_45

    .line 85
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    iget-object v3, p0, Lcom/keephealth/android/util/image/SDCardImageLoader$2;->this$0:Lcom/keephealth/android/util/image/SDCardImageLoader;

    # getter for: Lcom/keephealth/android/util/image/SDCardImageLoader;->screenW:I
    invoke-static {v3}, Lcom/keephealth/android/util/image/SDCardImageLoader;->access$000(Lcom/keephealth/android/util/image/SDCardImageLoader;)I

    move-result v3

    div-int/2addr v1, v3

    mul-int/2addr v2, v1

    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_45

    .line 87
    :cond_31
    iget-object v1, p0, Lcom/keephealth/android/util/image/SDCardImageLoader$2;->this$0:Lcom/keephealth/android/util/image/SDCardImageLoader;

    # getter for: Lcom/keephealth/android/util/image/SDCardImageLoader;->screenH:I
    invoke-static {v1}, Lcom/keephealth/android/util/image/SDCardImageLoader;->access$100(Lcom/keephealth/android/util/image/SDCardImageLoader;)I

    move-result v1

    if-le v2, v1, :cond_45

    .line 88
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    iget-object v3, p0, Lcom/keephealth/android/util/image/SDCardImageLoader$2;->this$0:Lcom/keephealth/android/util/image/SDCardImageLoader;

    # getter for: Lcom/keephealth/android/util/image/SDCardImageLoader;->screenH:I
    invoke-static {v3}, Lcom/keephealth/android/util/image/SDCardImageLoader;->access$100(Lcom/keephealth/android/util/image/SDCardImageLoader;)I

    move-result v3

    div-int/2addr v2, v3

    mul-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    :cond_45
    :goto_45
    const/4 v1, 0x0

    .line 92
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 93
    iget-object v1, p0, Lcom/keephealth/android/util/image/SDCardImageLoader$2;->val$filePath:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 95
    iget-object v1, p0, Lcom/keephealth/android/util/image/SDCardImageLoader$2;->this$0:Lcom/keephealth/android/util/image/SDCardImageLoader;

    # getter for: Lcom/keephealth/android/util/image/SDCardImageLoader;->imageCache:Landroidx/collection/LruCache;
    invoke-static {v1}, Lcom/keephealth/android/util/image/SDCardImageLoader;->access$200(Lcom/keephealth/android/util/image/SDCardImageLoader;)Landroidx/collection/LruCache;

    move-result-object v1

    iget-object v2, p0, Lcom/keephealth/android/util/image/SDCardImageLoader$2;->val$filePath:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroidx/collection/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    iget-object v1, p0, Lcom/keephealth/android/util/image/SDCardImageLoader$2;->val$callback:Lcom/keephealth/android/util/image/SDCardImageLoader$ImageCallback;

    if-eqz v1, :cond_71

    .line 98
    iget-object v1, p0, Lcom/keephealth/android/util/image/SDCardImageLoader$2;->this$0:Lcom/keephealth/android/util/image/SDCardImageLoader;

    # getter for: Lcom/keephealth/android/util/image/SDCardImageLoader;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/keephealth/android/util/image/SDCardImageLoader;->access$300(Lcom/keephealth/android/util/image/SDCardImageLoader;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/keephealth/android/util/image/SDCardImageLoader$2$1;

    invoke-direct {v2, p0, v0}, Lcom/keephealth/android/util/image/SDCardImageLoader$2$1;-><init>(Lcom/keephealth/android/util/image/SDCardImageLoader$2;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6b} :catch_6d

    goto :goto_71

    :cond_6c
    :goto_6c
    return-void

    :catch_6d
    move-exception v0

    .line 105
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_71
    :goto_71
    return-void
.end method
