.class Lcom/keephealth/android/childmodule/activity/AddRewardActivity$7;
.super Lcom/keephealth/android/childmodule/ClickManagerListener;
.source "AddRewardActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/childmodule/activity/AddRewardActivity;->createObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/childmodule/activity/AddRewardActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/childmodule/activity/AddRewardActivity;)V
    .registers 2

    .line 230
    iput-object p1, p0, Lcom/keephealth/android/childmodule/activity/AddRewardActivity$7;->this$0:Lcom/keephealth/android/childmodule/activity/AddRewardActivity;

    invoke-direct {p0}, Lcom/keephealth/android/childmodule/ClickManagerListener;-><init>()V

    return-void
.end method


# virtual methods
.method protected onClickL(Landroid/view/View;)V
    .registers 4

    .line 233
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/AddRewardActivity$7;->this$0:Lcom/keephealth/android/childmodule/activity/AddRewardActivity;

    const-class v1, Lcom/keephealth/android/childmodule/activity/CourseChooseIconActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 234
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/AddRewardActivity$7;->this$0:Lcom/keephealth/android/childmodule/activity/AddRewardActivity;

    # getter for: Lcom/keephealth/android/childmodule/activity/AddRewardActivity;->register:Landroidx/activity/result/ActivityResultLauncher;
    invoke-static {v0}, Lcom/keephealth/android/childmodule/activity/AddRewardActivity;->access$500(Lcom/keephealth/android/childmodule/activity/AddRewardActivity;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    return-void
.end method
