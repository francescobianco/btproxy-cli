.class Lcom/keephealth/android/childmodule/activity/CustomTaskActivity$6;
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

    .line 206
    iput-object p1, p0, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity$6;->this$0:Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;

    invoke-direct {p0}, Lcom/keephealth/android/childmodule/ClickManagerListener;-><init>()V

    return-void
.end method


# virtual methods
.method protected onClickL(Landroid/view/View;)V
    .registers 9

    .line 211
    iget-object p1, p0, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity$6;->this$0:Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;

    iget-object p1, p1, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;->taskBean:Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    invoke-virtual {p1}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->getTimeInterval()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_41

    iget-object p1, p0, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity$6;->this$0:Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;

    iget-object p1, p1, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;->taskBean:Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    invoke-virtual {p1}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->getTimeInterval()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_41

    .line 212
    iget-object p1, p0, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity$6;->this$0:Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;

    iget-object p1, p1, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;->taskBean:Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    invoke-virtual {p1}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->getTimeInterval()Ljava/lang/String;

    move-result-object p1

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aget-object p1, p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 213
    iget-object v1, p0, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity$6;->this$0:Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;

    iget-object v1, v1, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;->taskBean:Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    invoke-virtual {v1}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->getTimeInterval()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_59

    .line 215
    :cond_41
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/keephealth/android/util/DateUtil;->longToHour(J)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 216
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/keephealth/android/util/DateUtil;->longToMin(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :goto_59
    move v4, p1

    move v5, v0

    .line 218
    iget-object p1, p0, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity$6;->this$0:Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;

    new-instance v0, Lcom/keephealth/android/childmodule/DialogView;

    iget-object v3, p0, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity$6;->this$0:Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;

    new-instance v6, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity$6$1;

    invoke-direct {v6, p0}, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity$6$1;-><init>(Lcom/keephealth/android/childmodule/activity/CustomTaskActivity$6;)V

    const/4 v2, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/keephealth/android/childmodule/DialogView;-><init>(ZLandroid/content/Context;IILcom/keephealth/android/childmodule/DialogView$OnSelectTime;)V

    iput-object v0, p1, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;->dialogViewTime:Lcom/keephealth/android/childmodule/DialogView;

    return-void
.end method
