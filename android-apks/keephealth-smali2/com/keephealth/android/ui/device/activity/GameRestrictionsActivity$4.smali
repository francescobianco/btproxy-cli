.class Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity$4;
.super Lcom/keephealth/android/childmodule/ClickManagerListener;
.source "GameRestrictionsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;)V
    .registers 2

    .line 127
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;

    invoke-direct {p0}, Lcom/keephealth/android/childmodule/ClickManagerListener;-><init>()V

    return-void
.end method


# virtual methods
.method protected onClickL(Landroid/view/View;)V
    .registers 6

    const/4 p1, 0x7

    .line 130
    new-array p1, p1, [Z

    .line 131
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->gameBean:Lcom/keephealth/android/ui/device/bean/NotGameBean;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->access$000(Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;)Lcom/keephealth/android/ui/device/bean/NotGameBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/ui/device/bean/NotGameBean;->getCycle()[I

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_34

    move v0, v1

    .line 133
    :goto_11
    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->gameBean:Lcom/keephealth/android/ui/device/bean/NotGameBean;
    invoke-static {v2}, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->access$000(Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;)Lcom/keephealth/android/ui/device/bean/NotGameBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/ui/device/bean/NotGameBean;->getCycle()[I

    move-result-object v2

    array-length v2, v2

    if-ge v0, v2, :cond_34

    .line 137
    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->gameBean:Lcom/keephealth/android/ui/device/bean/NotGameBean;
    invoke-static {v2}, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->access$000(Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;)Lcom/keephealth/android/ui/device/bean/NotGameBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/ui/device/bean/NotGameBean;->getCycle()[I

    move-result-object v2

    aget v2, v2, v0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2e

    goto :goto_2f

    :cond_2e
    move v3, v1

    :goto_2f
    aput-boolean v3, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 141
    :cond_34
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 142
    const-string v2, "isSelect"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    .line 143
    const-string p1, "view"

    const-string v2, "customTask"

    invoke-virtual {v0, p1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;

    const-class v2, Lcom/keephealth/android/ui/device/activity/SelectWeekDayActivity;

    invoke-static {p1, v2, v0, v1}, Lcom/keephealth/android/util/IntentUtil;->goToActivityForResult(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;I)V

    return-void
.end method
