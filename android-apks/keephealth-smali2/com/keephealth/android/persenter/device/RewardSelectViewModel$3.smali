.class Lcom/keephealth/android/persenter/device/RewardSelectViewModel$3;
.super Landroid/os/Handler;
.source "RewardSelectViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/persenter/device/RewardSelectViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/persenter/device/RewardSelectViewModel;


# direct methods
.method constructor <init>(Lcom/keephealth/android/persenter/device/RewardSelectViewModel;Landroid/os/Looper;)V
    .registers 3

    .line 128
    iput-object p1, p0, Lcom/keephealth/android/persenter/device/RewardSelectViewModel$3;->this$0:Lcom/keephealth/android/persenter/device/RewardSelectViewModel;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 131
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 132
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_1b

    .line 133
    iget-object p1, p0, Lcom/keephealth/android/persenter/device/RewardSelectViewModel$3;->this$0:Lcom/keephealth/android/persenter/device/RewardSelectViewModel;

    iget-object p1, p1, Lcom/keephealth/android/persenter/device/RewardSelectViewModel;->mDuihuan:Landroidx/lifecycle/MutableLiveData;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 134
    const-string p1, "tty5rt"

    const-string v0, "msg.what == 0"

    invoke-static {p1, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5e

    .line 135
    :cond_1b
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2c

    .line 136
    iget-object p1, p0, Lcom/keephealth/android/persenter/device/RewardSelectViewModel$3;->this$0:Lcom/keephealth/android/persenter/device/RewardSelectViewModel;

    iget-object p1, p1, Lcom/keephealth/android/persenter/device/RewardSelectViewModel;->mDuihuan:Landroidx/lifecycle/MutableLiveData;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    goto :goto_5e

    .line 137
    :cond_2c
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3d

    .line 138
    iget-object p1, p0, Lcom/keephealth/android/persenter/device/RewardSelectViewModel$3;->this$0:Lcom/keephealth/android/persenter/device/RewardSelectViewModel;

    iget-object p1, p1, Lcom/keephealth/android/persenter/device/RewardSelectViewModel;->mDuihuan:Landroidx/lifecycle/MutableLiveData;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    goto :goto_5e

    .line 139
    :cond_3d
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4e

    .line 140
    iget-object p1, p0, Lcom/keephealth/android/persenter/device/RewardSelectViewModel$3;->this$0:Lcom/keephealth/android/persenter/device/RewardSelectViewModel;

    iget-object p1, p1, Lcom/keephealth/android/persenter/device/RewardSelectViewModel;->cancelDuihuan:Landroidx/lifecycle/MutableLiveData;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    goto :goto_5e

    .line 141
    :cond_4e
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x4

    if-ne p1, v0, :cond_5e

    .line 142
    iget-object p1, p0, Lcom/keephealth/android/persenter/device/RewardSelectViewModel$3;->this$0:Lcom/keephealth/android/persenter/device/RewardSelectViewModel;

    iget-object p1, p1, Lcom/keephealth/android/persenter/device/RewardSelectViewModel;->cancelDuihuan:Landroidx/lifecycle/MutableLiveData;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :cond_5e
    :goto_5e
    return-void
.end method
