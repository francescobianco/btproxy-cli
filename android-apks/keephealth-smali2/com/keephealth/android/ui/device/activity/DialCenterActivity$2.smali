.class Lcom/keephealth/android/ui/device/activity/DialCenterActivity$2;
.super Landroid/os/Handler;
.source "DialCenterActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/ui/device/activity/DialCenterActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/device/activity/DialCenterActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/activity/DialCenterActivity;)V
    .registers 2

    .line 177
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/DialCenterActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/DialCenterActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    .line 180
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 182
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_12

    .line 183
    const-string p1, "\u5f00\u59cb\u53d1\u9001"

    invoke-static {p1}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 184
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DialCenterActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/DialCenterActivity;

    # invokes: Lcom/keephealth/android/ui/device/activity/DialCenterActivity;->beginSend()V
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/DialCenterActivity;->access$100(Lcom/keephealth/android/ui/device/activity/DialCenterActivity;)V

    :cond_12
    return-void
.end method
