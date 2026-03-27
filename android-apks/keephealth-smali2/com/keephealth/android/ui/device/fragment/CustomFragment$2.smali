.class Lcom/keephealth/android/ui/device/fragment/CustomFragment$2;
.super Ljava/lang/Object;
.source "CustomFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/fragment/CustomFragment;->selectBackground()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/fragment/CustomFragment;)V
    .registers 2

    .line 437
    iput-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$2;->this$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7

    .line 440
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$2;->this$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/CustomFragment;->mDialog:Landroid/app/Dialog;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->access$000(Lcom/keephealth/android/ui/device/fragment/CustomFragment;)Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 441
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$2;->this$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/CustomFragment;->mDialog:Landroid/app/Dialog;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->access$000(Lcom/keephealth/android/ui/device/fragment/CustomFragment;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 444
    :cond_11
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$2;->this$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$2;->this$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    invoke-virtual {v1}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/keephealth/android/util/file/FileUtil;->getPICPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/cropImage_.jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # setter for: Lcom/keephealth/android/ui/device/fragment/CustomFragment;->cropPath:Ljava/lang/String;
    invoke-static {p1, v0}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->access$102(Lcom/keephealth/android/ui/device/fragment/CustomFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 445
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "cropPath:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$2;->this$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/CustomFragment;->cropPath:Ljava/lang/String;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->access$100(Lcom/keephealth/android/ui/device/fragment/CustomFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ggee23"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    new-instance p1, Ljava/io/File;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$2;->this$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/CustomFragment;->cropPath:Ljava/lang/String;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->access$100(Lcom/keephealth/android/ui/device/fragment/CustomFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 448
    :try_start_58
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_61

    .line 449
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 451
    :cond_61
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_64} :catch_65

    goto :goto_7b

    :catch_65
    move-exception v1

    .line 453
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "e:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 456
    :goto_7b
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    const-string v3, "  Build.VERSION.SDK_INT:"

    if-le v1, v2, :cond_b9

    .line 457
    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$2;->this$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    invoke-virtual {v1}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v4, "com.keephealthpro.android.provider"

    invoke-static {v2, v4, p1}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    # setter for: Lcom/keephealth/android/ui/device/fragment/CustomFragment;->imageUri:Landroid/net/Uri;
    invoke-static {v1, p1}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->access$202(Lcom/keephealth/android/ui/device/fragment/CustomFragment;Landroid/net/Uri;)Landroid/net/Uri;

    .line 459
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "\u521b\u5efa\u4e4b\u524d\u6587\u4ef6\u8def\u5f84>25:"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$2;->this$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/CustomFragment;->imageUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->access$200(Lcom/keephealth/android/ui/device/fragment/CustomFragment;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e8

    .line 461
    :cond_b9
    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$2;->this$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    # setter for: Lcom/keephealth/android/ui/device/fragment/CustomFragment;->imageUri:Landroid/net/Uri;
    invoke-static {v1, p1}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->access$202(Lcom/keephealth/android/ui/device/fragment/CustomFragment;Landroid/net/Uri;)Landroid/net/Uri;

    .line 462
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "\u521b\u5efa\u4e4b\u524d\u6587\u4ef6\u8def\u5f84<25:"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$2;->this$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/CustomFragment;->imageUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->access$200(Lcom/keephealth/android/ui/device/fragment/CustomFragment;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    :goto_e8
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 469
    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    .line 470
    const-string v1, "title"

    const-string v2, "New Picture"

    invoke-virtual {p1, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    const-string v1, "description"

    const-string v2, "From Camera"

    invoke-virtual {p1, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 474
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$2;->this$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/CustomFragment;->imageUri:Landroid/net/Uri;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->access$200(Lcom/keephealth/android/ui/device/fragment/CustomFragment;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "output"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 475
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$2;->this$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    # setter for: Lcom/keephealth/android/ui/device/fragment/CustomFragment;->choose:Ljava/lang/Integer;
    invoke-static {v0, v1}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->access$302(Lcom/keephealth/android/ui/device/fragment/CustomFragment;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 476
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$2;->this$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->intentActivityResultLauncher:Landroidx/activity/result/ActivityResultLauncher;

    invoke-virtual {v0, p1}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    return-void
.end method
