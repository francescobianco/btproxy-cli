.class Lcom/keephealth/android/util/image/SDCardImageLoader$2$1;
.super Ljava/lang/Object;
.source "SDCardImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/util/image/SDCardImageLoader$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/keephealth/android/util/image/SDCardImageLoader$2;

.field final synthetic val$bmp:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/keephealth/android/util/image/SDCardImageLoader$2;Landroid/graphics/Bitmap;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 98
    iput-object p1, p0, Lcom/keephealth/android/util/image/SDCardImageLoader$2$1;->this$1:Lcom/keephealth/android/util/image/SDCardImageLoader$2;

    iput-object p2, p0, Lcom/keephealth/android/util/image/SDCardImageLoader$2$1;->val$bmp:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 100
    iget-object v0, p0, Lcom/keephealth/android/util/image/SDCardImageLoader$2$1;->this$1:Lcom/keephealth/android/util/image/SDCardImageLoader$2;

    iget-object v0, v0, Lcom/keephealth/android/util/image/SDCardImageLoader$2;->val$callback:Lcom/keephealth/android/util/image/SDCardImageLoader$ImageCallback;

    iget-object v1, p0, Lcom/keephealth/android/util/image/SDCardImageLoader$2$1;->val$bmp:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lcom/keephealth/android/util/image/SDCardImageLoader$ImageCallback;->imageLoaded(Landroid/graphics/Bitmap;)V

    return-void
.end method
