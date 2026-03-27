.class Lcom/keephealth/android/util/image/SDCardImageLoader$3;
.super Ljava/lang/Object;
.source "SDCardImageLoader.java"

# interfaces
.implements Lcom/keephealth/android/util/image/SDCardImageLoader$ImageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/util/image/SDCardImageLoader;->loadImage(ILjava/lang/String;Landroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/util/image/SDCardImageLoader;

.field final synthetic val$filePath:Ljava/lang/String;

.field final synthetic val$imageView:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/keephealth/android/util/image/SDCardImageLoader;Landroid/widget/ImageView;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 125
    iput-object p1, p0, Lcom/keephealth/android/util/image/SDCardImageLoader$3;->this$0:Lcom/keephealth/android/util/image/SDCardImageLoader;

    iput-object p2, p0, Lcom/keephealth/android/util/image/SDCardImageLoader$3;->val$imageView:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/keephealth/android/util/image/SDCardImageLoader$3;->val$filePath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public imageLoaded(Landroid/graphics/Bitmap;)V
    .registers 4

    .line 127
    iget-object v0, p0, Lcom/keephealth/android/util/image/SDCardImageLoader$3;->val$imageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/util/image/SDCardImageLoader$3;->val$filePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    if-eqz p1, :cond_16

    .line 129
    iget-object v0, p0, Lcom/keephealth/android/util/image/SDCardImageLoader$3;->val$imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1e

    .line 131
    :cond_16
    iget-object p1, p0, Lcom/keephealth/android/util/image/SDCardImageLoader$3;->val$imageView:Landroid/widget/ImageView;

    const v0, 0x7f0d0051

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1e
    :goto_1e
    return-void
.end method
