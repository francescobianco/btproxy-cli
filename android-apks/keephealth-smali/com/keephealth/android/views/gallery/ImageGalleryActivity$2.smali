.class Lcom/keephealth/android/views/gallery/ImageGalleryActivity$2;
.super Ljava/lang/Object;
.source "ImageGalleryActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/views/gallery/ImageGalleryActivity;->callSaveStatus(ZLjava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/views/gallery/ImageGalleryActivity;

.field final synthetic val$savePath:Ljava/io/File;

.field final synthetic val$success:Z


# direct methods
.method constructor <init>(Lcom/keephealth/android/views/gallery/ImageGalleryActivity;ZLjava/io/File;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 225
    iput-object p1, p0, Lcom/keephealth/android/views/gallery/ImageGalleryActivity$2;->this$0:Lcom/keephealth/android/views/gallery/ImageGalleryActivity;

    iput-boolean p2, p0, Lcom/keephealth/android/views/gallery/ImageGalleryActivity$2;->val$success:Z

    iput-object p3, p0, Lcom/keephealth/android/views/gallery/ImageGalleryActivity$2;->val$savePath:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 228
    iget-boolean v0, p0, Lcom/keephealth/android/views/gallery/ImageGalleryActivity$2;->val$success:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_23

    .line 230
    iget-object v0, p0, Lcom/keephealth/android/views/gallery/ImageGalleryActivity$2;->val$savePath:Ljava/io/File;

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 231
    iget-object v2, p0, Lcom/keephealth/android/views/gallery/ImageGalleryActivity$2;->this$0:Lcom/keephealth/android/views/gallery/ImageGalleryActivity;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v3, v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v2, v3}, Lcom/keephealth/android/views/gallery/ImageGalleryActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 232
    iget-object v0, p0, Lcom/keephealth/android/views/gallery/ImageGalleryActivity$2;->this$0:Lcom/keephealth/android/views/gallery/ImageGalleryActivity;

    const-string v2, "\u4fdd\u5b58\u6210\u529f"

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_2e

    .line 234
    :cond_23
    iget-object v0, p0, Lcom/keephealth/android/views/gallery/ImageGalleryActivity$2;->this$0:Lcom/keephealth/android/views/gallery/ImageGalleryActivity;

    const-string v2, "\u4fdd\u5b58\u5931\u8d25"

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_2e
    return-void
.end method
