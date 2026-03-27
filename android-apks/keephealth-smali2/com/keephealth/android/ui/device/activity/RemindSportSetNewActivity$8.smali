.class Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$8;
.super Lcom/keephealth/android/childmodule/ClickManagerListener;
.source "RemindSportSetNewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;)V
    .registers 2

    .line 374
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$8;->this$0:Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;

    invoke-direct {p0}, Lcom/keephealth/android/childmodule/ClickManagerListener;-><init>()V

    return-void
.end method


# virtual methods
.method protected onClickL(Landroid/view/View;)V
    .registers 5

    .line 377
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 378
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$8;->this$0:Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->longSit:Lcom/keephealth/android/model/bean/LongSit;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->access$1100(Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;)Lcom/keephealth/android/model/bean/LongSit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/LongSit;->getEffectiveWeeksEff()[Z

    move-result-object v0

    const-string v1, "isSelect"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    .line 379
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$8;->this$0:Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;

    const-class v1, Lcom/keephealth/android/ui/device/activity/SelectWeekDayActivity;

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Lcom/keephealth/android/util/IntentUtil;->goToActivityForResult(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;I)V

    return-void
.end method
