.class Lcom/keephealth/android/childmodule/activity/CustomTaskActivity$8;
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

    .line 297
    iput-object p1, p0, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity$8;->this$0:Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;

    invoke-direct {p0}, Lcom/keephealth/android/childmodule/ClickManagerListener;-><init>()V

    return-void
.end method


# virtual methods
.method protected onClickL(Landroid/view/View;)V
    .registers 3

    .line 301
    iget-object p1, p0, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity$8;->this$0:Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;

    iget-object p1, p1, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;->taskBean:Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    invoke-virtual {p1}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->getTimeInterval()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2d

    iget-object p1, p0, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity$8;->this$0:Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;

    iget-object p1, p1, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;->taskBean:Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    invoke-virtual {p1}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->getTimeInterval()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2d

    .line 302
    iget-object p1, p0, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity$8;->this$0:Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;

    iget-object p1, p1, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;->binding:Lcom/keephealth/android/databinding/ActivityCustomTaskBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityCustomTaskBinding;->ctTaskRemind:Lcom/keephealth/android/views/CustomToggleButton;

    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity$8;->this$0:Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;->binding:Lcom/keephealth/android/databinding/ActivityCustomTaskBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityCustomTaskBinding;->ctTaskRemind:Lcom/keephealth/android/views/CustomToggleButton;

    invoke-virtual {v0}, Lcom/keephealth/android/views/CustomToggleButton;->getSwitchState()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/keephealth/android/views/CustomToggleButton;->setSwitchState(Z)V

    :cond_2d
    return-void
.end method
