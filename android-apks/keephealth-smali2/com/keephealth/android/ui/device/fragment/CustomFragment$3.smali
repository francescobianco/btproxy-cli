.class Lcom/keephealth/android/ui/device/fragment/CustomFragment$3;
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

    .line 479
    iput-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$3;->this$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onClick$0$com-keephealth-android-ui-device-fragment-CustomFragment$3([Ljava/lang/String;)V
    .registers 6

    .line 484
    sget-object v0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->shape:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_15

    .line 485
    sget-object v0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->shape:Ljava/lang/String;

    const-string v2, "2"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x1

    goto :goto_16

    :cond_15
    move v0, v1

    .line 494
    :goto_16
    :try_start_16
    invoke-static {}, Lcom/keephealth/android/util/image/ClipImageActivity;->prepare()Lcom/keephealth/android/util/image/ClipImageActivity$ClipOptions;

    move-result-object v2

    sget v3, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->dialWight:I

    .line 495
    invoke-virtual {v2, v3}, Lcom/keephealth/android/util/image/ClipImageActivity$ClipOptions;->aspectX(I)Lcom/keephealth/android/util/image/ClipImageActivity$ClipOptions;

    move-result-object v2

    sget v3, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->dialHeight:I

    invoke-virtual {v2, v3}, Lcom/keephealth/android/util/image/ClipImageActivity$ClipOptions;->aspectY(I)Lcom/keephealth/android/util/image/ClipImageActivity$ClipOptions;

    move-result-object v2

    aget-object p1, p1, v1

    .line 496
    invoke-virtual {v2, p1}, Lcom/keephealth/android/util/image/ClipImageActivity$ClipOptions;->inputPath(Ljava/lang/String;)Lcom/keephealth/android/util/image/ClipImageActivity$ClipOptions;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$3;->this$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    invoke-virtual {v2}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/keephealth/android/util/file/FileUtil;->getPICPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/cropImage_.jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/keephealth/android/util/image/ClipImageActivity$ClipOptions;->outputPath(Ljava/lang/String;)Lcom/keephealth/android/util/image/ClipImageActivity$ClipOptions;

    move-result-object p1

    .line 497
    invoke-virtual {p1, v0}, Lcom/keephealth/android/util/image/ClipImageActivity$ClipOptions;->isCircle(Z)Lcom/keephealth/android/util/image/ClipImageActivity$ClipOptions;

    move-result-object p1

    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$3;->this$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    .line 498
    invoke-virtual {v0}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/16 v1, 0x3e9

    invoke-virtual {p1, v0, v1}, Lcom/keephealth/android/util/image/ClipImageActivity$ClipOptions;->startForResult(Landroid/app/Activity;I)V
    :try_end_5c
    .catch Ljava/lang/IllegalStateException; {:try_start_16 .. :try_end_5c} :catch_5c

    :catch_5c
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 482
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$3;->this$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    new-instance v0, Lcom/keephealth/android/views/gallery/SelectOptions$Builder;

    invoke-direct {v0}, Lcom/keephealth/android/views/gallery/SelectOptions$Builder;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/gallery/SelectOptions$Builder;->setHasCam(Z)Lcom/keephealth/android/views/gallery/SelectOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/gallery/SelectOptions$Builder;->setSelectCount(I)Lcom/keephealth/android/views/gallery/SelectOptions$Builder;

    move-result-object v0

    new-instance v1, Lcom/keephealth/android/ui/device/fragment/CustomFragment$3$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/fragment/CustomFragment$3$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/ui/device/fragment/CustomFragment$3;)V

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/gallery/SelectOptions$Builder;->setCallback(Lcom/keephealth/android/views/gallery/SelectOptions$Callback;)Lcom/keephealth/android/views/gallery/SelectOptions$Builder;

    move-result-object v0

    .line 501
    invoke-virtual {v0}, Lcom/keephealth/android/views/gallery/SelectOptions$Builder;->build()Lcom/keephealth/android/views/gallery/SelectOptions;

    move-result-object v0

    .line 482
    invoke-static {p1, v0}, Lcom/keephealth/android/views/gallery/ImagePickerActivity;->show(Landroid/content/Context;Lcom/keephealth/android/views/gallery/SelectOptions;)V

    .line 502
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$3;->this$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/CustomFragment;->mDialog:Landroid/app/Dialog;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->access$000(Lcom/keephealth/android/ui/device/fragment/CustomFragment;)Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_35

    .line 503
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$3;->this$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/CustomFragment;->mDialog:Landroid/app/Dialog;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->access$000(Lcom/keephealth/android/ui/device/fragment/CustomFragment;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_35
    return-void
.end method
