.class Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity$2;
.super Ljava/lang/Object;
.source "DeviceVibrateActivity.java"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity;)V
    .registers 2

    .line 104
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .registers 2

    .line 104
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity$2;->onChanged(Ljava/lang/String;)V

    return-void
.end method

.method public onChanged(Ljava/lang/String;)V
    .registers 4

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "s:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CalenderDataStruct"

    invoke-static {v0, p1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
