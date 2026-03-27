.class Lcom/keephealth/android/childmodule/activity/TasksAndRewardsActivity$5;
.super Lcom/keephealth/android/childmodule/ClickManagerListener;
.source "TasksAndRewardsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/childmodule/activity/TasksAndRewardsActivity;->createObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/childmodule/activity/TasksAndRewardsActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/childmodule/activity/TasksAndRewardsActivity;)V
    .registers 2

    .line 196
    iput-object p1, p0, Lcom/keephealth/android/childmodule/activity/TasksAndRewardsActivity$5;->this$0:Lcom/keephealth/android/childmodule/activity/TasksAndRewardsActivity;

    invoke-direct {p0}, Lcom/keephealth/android/childmodule/ClickManagerListener;-><init>()V

    return-void
.end method


# virtual methods
.method protected onClickL(Landroid/view/View;)V
    .registers 2

    .line 199
    iget-object p1, p0, Lcom/keephealth/android/childmodule/activity/TasksAndRewardsActivity$5;->this$0:Lcom/keephealth/android/childmodule/activity/TasksAndRewardsActivity;

    # getter for: Lcom/keephealth/android/childmodule/activity/TasksAndRewardsActivity;->taskFragment:Lcom/keephealth/android/childmodule/fragment/TaskFragment;
    invoke-static {p1}, Lcom/keephealth/android/childmodule/activity/TasksAndRewardsActivity;->access$100(Lcom/keephealth/android/childmodule/activity/TasksAndRewardsActivity;)Lcom/keephealth/android/childmodule/fragment/TaskFragment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->sendDeviceTask()V

    const/16 p1, 0x3fd

    .line 200
    invoke-static {p1}, Lcom/keephealth/android/util/EventBusHelper;->post(I)V

    return-void
.end method
