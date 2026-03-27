.class Lcom/keephealth/android/childmodule/activity/CustomTaskActivity$5;
.super Lcom/keephealth/android/childmodule/ClickManagerListener;
.source "CustomTaskActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;->createObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;)V
    .registers 2

    .line 186
    iput-object p1, p0, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity$5;->this$0:Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;

    invoke-direct {p0}, Lcom/keephealth/android/childmodule/ClickManagerListener;-><init>()V

    return-void
.end method


# virtual methods
.method protected onClickL(Landroid/view/View;)V
    .registers 7

    const/4 p1, 0x7

    .line 189
    new-array p1, p1, [Z

    .line 190
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity$5;->this$0:Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;->taskBean:Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    invoke-virtual {v0}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->getCycle()[I

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_44

    move v0, v1

    .line 192
    :goto_f
    iget-object v2, p0, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity$5;->this$0:Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;

    iget-object v2, v2, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;->taskBean:Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    invoke-virtual {v2}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->getCycle()[I

    move-result-object v2

    array-length v2, v2

    if-ge v0, v2, :cond_44

    const/4 v2, 0x6

    const/4 v3, 0x1

    if-ne v0, v2, :cond_2f

    .line 194
    iget-object v2, p0, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity$5;->this$0:Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;

    iget-object v2, v2, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;->taskBean:Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    invoke-virtual {v2}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->getCycle()[I

    move-result-object v2

    aget v2, v2, v1

    if-ne v2, v3, :cond_2b

    goto :goto_2c

    :cond_2b
    move v3, v1

    :goto_2c
    aput-boolean v3, p1, v0

    goto :goto_41

    .line 196
    :cond_2f
    iget-object v2, p0, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity$5;->this$0:Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;

    iget-object v2, v2, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;->taskBean:Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    invoke-virtual {v2}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->getCycle()[I

    move-result-object v2

    add-int/lit8 v4, v0, 0x1

    aget v2, v2, v4

    if-ne v2, v3, :cond_3e

    goto :goto_3f

    :cond_3e
    move v3, v1

    :goto_3f
    aput-boolean v3, p1, v0

    :goto_41
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 200
    :cond_44
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 201
    const-string v2, "isSelect"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    .line 202
    const-string p1, "view"

    const-string v2, "customTask"

    invoke-virtual {v0, p1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    iget-object p1, p0, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity$5;->this$0:Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;

    const-class v2, Lcom/keephealth/android/ui/device/activity/SelectWeekDayActivity;

    invoke-static {p1, v2, v0, v1}, Lcom/keephealth/android/util/IntentUtil;->goToActivityForResult(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;I)V

    return-void
.end method
