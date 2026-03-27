.class Lcom/keephealth/android/views/gallery/ImagePickerFragment$3;
.super Ljava/lang/Object;
.source "ImagePickerFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/views/gallery/ImagePickerFragment;->addImagesToAdapter(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/views/gallery/ImagePickerFragment;

.field final synthetic val$images:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/keephealth/android/views/gallery/ImagePickerFragment;Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 506
    iput-object p1, p0, Lcom/keephealth/android/views/gallery/ImagePickerFragment$3;->this$0:Lcom/keephealth/android/views/gallery/ImagePickerFragment;

    iput-object p2, p0, Lcom/keephealth/android/views/gallery/ImagePickerFragment$3;->val$images:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 509
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 510
    iget-object v1, p0, Lcom/keephealth/android/views/gallery/ImagePickerFragment$3;->val$images:Ljava/util/ArrayList;

    if-eqz v1, :cond_52

    const/4 v1, 0x0

    .line 511
    :goto_a
    iget-object v2, p0, Lcom/keephealth/android/views/gallery/ImagePickerFragment$3;->val$images:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_41

    .line 512
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/keephealth/android/views/gallery/ImagePickerFragment$3;->val$images:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/keephealth/android/views/gallery/bean/Image;

    invoke-virtual {v3}, Lcom/keephealth/android/views/gallery/bean/Image;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 514
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3e

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_3e

    .line 515
    iget-object v2, p0, Lcom/keephealth/android/views/gallery/ImagePickerFragment$3;->val$images:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/keephealth/android/views/gallery/bean/Image;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3e
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 519
    :cond_41
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 520
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 v0, 0x1

    .line 521
    iput v0, v1, Landroid/os/Message;->what:I

    .line 522
    iget-object v0, p0, Lcom/keephealth/android/views/gallery/ImagePickerFragment$3;->this$0:Lcom/keephealth/android/views/gallery/ImagePickerFragment;

    iget-object v0, v0, Lcom/keephealth/android/views/gallery/ImagePickerFragment;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_52
    return-void
.end method
