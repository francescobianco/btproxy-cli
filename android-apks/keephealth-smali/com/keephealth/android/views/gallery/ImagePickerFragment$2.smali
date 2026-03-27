.class Lcom/keephealth/android/views/gallery/ImagePickerFragment$2;
.super Landroid/os/Handler;
.source "ImagePickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/views/gallery/ImagePickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/views/gallery/ImagePickerFragment;


# direct methods
.method constructor <init>(Lcom/keephealth/android/views/gallery/ImagePickerFragment;Landroid/os/Looper;)V
    .registers 3

    .line 482
    iput-object p1, p0, Lcom/keephealth/android/views/gallery/ImagePickerFragment$2;->this$0:Lcom/keephealth/android/views/gallery/ImagePickerFragment;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 485
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    if-eqz p1, :cond_23

    .line 486
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_23

    .line 487
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_23

    .line 488
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    .line 489
    iget-object v0, p0, Lcom/keephealth/android/views/gallery/ImagePickerFragment$2;->this$0:Lcom/keephealth/android/views/gallery/ImagePickerFragment;

    # getter for: Lcom/keephealth/android/views/gallery/ImagePickerFragment;->mImageAdapter:Lcom/keephealth/android/views/gallery/adapter/ImageAdapter;
    invoke-static {v0}, Lcom/keephealth/android/views/gallery/ImagePickerFragment;->access$800(Lcom/keephealth/android/views/gallery/ImagePickerFragment;)Lcom/keephealth/android/views/gallery/adapter/ImageAdapter;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 490
    iget-object v0, p0, Lcom/keephealth/android/views/gallery/ImagePickerFragment$2;->this$0:Lcom/keephealth/android/views/gallery/ImagePickerFragment;

    # getter for: Lcom/keephealth/android/views/gallery/ImagePickerFragment;->mImageAdapter:Lcom/keephealth/android/views/gallery/adapter/ImageAdapter;
    invoke-static {v0}, Lcom/keephealth/android/views/gallery/ImagePickerFragment;->access$800(Lcom/keephealth/android/views/gallery/ImagePickerFragment;)Lcom/keephealth/android/views/gallery/adapter/ImageAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/keephealth/android/views/gallery/adapter/ImageAdapter;->addAll(Ljava/util/List;)V

    :cond_23
    return-void
.end method
