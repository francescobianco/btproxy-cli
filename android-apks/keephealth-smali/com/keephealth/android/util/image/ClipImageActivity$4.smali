.class Lcom/keephealth/android/util/image/ClipImageActivity$4;
.super Ljava/lang/Object;
.source "ClipImageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/util/image/ClipImageActivity;->recycleImageViewBitmap()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/util/image/ClipImageActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/util/image/ClipImageActivity;)V
    .registers 2

    .line 424
    iput-object p1, p0, Lcom/keephealth/android/util/image/ClipImageActivity$4;->this$0:Lcom/keephealth/android/util/image/ClipImageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 427
    iget-object v0, p0, Lcom/keephealth/android/util/image/ClipImageActivity$4;->this$0:Lcom/keephealth/android/util/image/ClipImageActivity;

    # getter for: Lcom/keephealth/android/util/image/ClipImageActivity;->mClipImageView:Lcom/keephealth/android/util/image/ClipImageView;
    invoke-static {v0}, Lcom/keephealth/android/util/image/ClipImageActivity;->access$200(Lcom/keephealth/android/util/image/ClipImageActivity;)Lcom/keephealth/android/util/image/ClipImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/keephealth/android/util/image/ClipImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method
