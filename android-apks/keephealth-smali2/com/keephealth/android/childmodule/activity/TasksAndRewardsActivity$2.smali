.class Lcom/keephealth/android/childmodule/activity/TasksAndRewardsActivity$2;
.super Landroidx/fragment/app/FragmentPagerAdapter;
.source "TasksAndRewardsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/childmodule/activity/TasksAndRewardsActivity;->initTabLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/childmodule/activity/TasksAndRewardsActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/childmodule/activity/TasksAndRewardsActivity;Landroidx/fragment/app/FragmentManager;I)V
    .registers 4

    .line 115
    iput-object p1, p0, Lcom/keephealth/android/childmodule/activity/TasksAndRewardsActivity$2;->this$0:Lcom/keephealth/android/childmodule/activity/TasksAndRewardsActivity;

    invoke-direct {p0, p2, p3}, Landroidx/fragment/app/FragmentPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;I)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .line 118
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/TasksAndRewardsActivity$2;->this$0:Lcom/keephealth/android/childmodule/activity/TasksAndRewardsActivity;

    # getter for: Lcom/keephealth/android/childmodule/activity/TasksAndRewardsActivity;->fragments:Ljava/util/List;
    invoke-static {v0}, Lcom/keephealth/android/childmodule/activity/TasksAndRewardsActivity;->access$000(Lcom/keephealth/android/childmodule/activity/TasksAndRewardsActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroidx/fragment/app/Fragment;
    .registers 3

    .line 124
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/TasksAndRewardsActivity$2;->this$0:Lcom/keephealth/android/childmodule/activity/TasksAndRewardsActivity;

    # getter for: Lcom/keephealth/android/childmodule/activity/TasksAndRewardsActivity;->fragments:Ljava/util/List;
    invoke-static {v0}, Lcom/keephealth/android/childmodule/activity/TasksAndRewardsActivity;->access$000(Lcom/keephealth/android/childmodule/activity/TasksAndRewardsActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/Fragment;

    return-object p1
.end method
