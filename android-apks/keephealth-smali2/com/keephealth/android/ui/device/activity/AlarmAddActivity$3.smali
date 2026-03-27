.class Lcom/keephealth/android/ui/device/activity/AlarmAddActivity$3;
.super Lcom/keephealth/android/childmodule/ClickManagerListener;
.source "AlarmAddActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;)V
    .registers 2

    .line 135
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;

    invoke-direct {p0}, Lcom/keephealth/android/childmodule/ClickManagerListener;-><init>()V

    return-void
.end method


# virtual methods
.method protected onClickL(Landroid/view/View;)V
    .registers 5

    .line 138
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 139
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;->alarm:Lcom/keephealth/android/model/bean/Alarm;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;->access$100(Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;)Lcom/keephealth/android/model/bean/Alarm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/Alarm;->getWeekRepeat()[Z

    move-result-object v0

    const-string v1, "isSelect"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    .line 140
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;

    const-class v1, Lcom/keephealth/android/ui/device/activity/SelectWeekDayActivity;

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Lcom/keephealth/android/util/IntentUtil;->goToActivityForResult(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;I)V

    return-void
.end method
