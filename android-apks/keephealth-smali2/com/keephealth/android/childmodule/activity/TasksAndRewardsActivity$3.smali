.class Lcom/keephealth/android/childmodule/activity/TasksAndRewardsActivity$3;
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

    .line 151
    iput-object p1, p0, Lcom/keephealth/android/childmodule/activity/TasksAndRewardsActivity$3;->this$0:Lcom/keephealth/android/childmodule/activity/TasksAndRewardsActivity;

    invoke-direct {p0}, Lcom/keephealth/android/childmodule/ClickManagerListener;-><init>()V

    return-void
.end method


# virtual methods
.method protected onClickL(Landroid/view/View;)V
    .registers 2

    .line 154
    iget-object p1, p0, Lcom/keephealth/android/childmodule/activity/TasksAndRewardsActivity$3;->this$0:Lcom/keephealth/android/childmodule/activity/TasksAndRewardsActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/childmodule/activity/TasksAndRewardsActivity;->finish()V

    return-void
.end method
