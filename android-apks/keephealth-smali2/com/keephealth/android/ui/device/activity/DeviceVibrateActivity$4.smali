.class Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity$4;
.super Ljava/lang/Object;
.source "DeviceVibrateActivity.java"

# interfaces
.implements Landroidx/activity/result/ActivityResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/activity/result/ActivityResultCallback<",
        "Landroidx/activity/result/ActivityResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity;)V
    .registers 2

    .line 196
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(Landroidx/activity/result/ActivityResult;)V
    .registers 7

    .line 199
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getResultCode()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_b3

    .line 201
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getData()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 202
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getData()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "style"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 203
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getData()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v2, "mode"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 204
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 205
    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity;->languageBeanList:Ljava/util/List;
    invoke-static {v3}, Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity;->access$200(Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_b3

    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity;->languageBeanList:Ljava/util/List;
    invoke-static {v3}, Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity;->access$200(Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_b3

    const/4 v3, 0x0

    .line 206
    :goto_4b
    iget-object v4, p0, Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity;->languageBeanList:Ljava/util/List;
    invoke-static {v4}, Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity;->access$200(Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_95

    .line 207
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_92

    .line 208
    iget-object v4, p0, Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity;->clickPosition:I
    invoke-static {v4}, Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity;->access$400(Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity;)I

    move-result v4

    if-ne v4, v3, :cond_92

    .line 209
    iget-object v4, p0, Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity;->languageBeanList:Ljava/util/List;
    invoke-static {v4}, Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity;->access$200(Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keephealth/android/model/bean/VibrateBean;

    invoke-virtual {v4, v1}, Lcom/keephealth/android/model/bean/VibrateBean;->setStyle(I)V

    .line 210
    iget-object v4, p0, Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity;->languageBeanList:Ljava/util/List;
    invoke-static {v4}, Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity;->access$200(Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keephealth/android/model/bean/VibrateBean;

    invoke-virtual {v4, p1}, Lcom/keephealth/android/model/bean/VibrateBean;->setMode(Ljava/lang/String;)V

    .line 211
    iget-object v4, p0, Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity;->languageBeanList:Ljava/util/List;
    invoke-static {v4}, Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity;->access$200(Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keephealth/android/model/bean/VibrateBean;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_92
    add-int/lit8 v3, v3, 0x1

    goto :goto_4b

    .line 215
    :cond_95
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity;->mAdapter:Lcom/keephealth/android/ui/device/adapter/DeviceVibrateModeAdapter;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity;->access$300(Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity;)Lcom/keephealth/android/ui/device/adapter/DeviceVibrateModeAdapter;

    move-result-object p1

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity;->languageBeanList:Ljava/util/List;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity;->access$200(Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/keephealth/android/ui/device/adapter/DeviceVibrateModeAdapter;->setList(Ljava/util/List;)V

    .line 216
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity;->viewModel:Lcom/keephealth/android/childmodule/viewmodel/VibrateViewModel;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity;->access$100(Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity;)Lcom/keephealth/android/childmodule/viewmodel/VibrateViewModel;

    move-result-object p1

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity;->vibrateStrong:I
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity;->access$000(Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity;)I

    move-result v1

    invoke-virtual {p1, v0, v2, v1}, Lcom/keephealth/android/childmodule/viewmodel/VibrateViewModel;->setVibrateList(Landroid/content/Context;Ljava/util/List;I)V

    :cond_b3
    return-void
.end method

.method public bridge synthetic onActivityResult(Ljava/lang/Object;)V
    .registers 2

    .line 196
    check-cast p1, Landroidx/activity/result/ActivityResult;

    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity$4;->onActivityResult(Landroidx/activity/result/ActivityResult;)V

    return-void
.end method
