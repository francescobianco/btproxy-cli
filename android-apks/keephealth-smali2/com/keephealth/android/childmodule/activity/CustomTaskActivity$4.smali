.class Lcom/keephealth/android/childmodule/activity/CustomTaskActivity$4;
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

    .line 174
    iput-object p1, p0, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity$4;->this$0:Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;

    invoke-direct {p0}, Lcom/keephealth/android/childmodule/ClickManagerListener;-><init>()V

    return-void
.end method


# virtual methods
.method protected onClickL(Landroid/view/View;)V
    .registers 6

    .line 177
    iget-object p1, p0, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity$4;->this$0:Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;

    new-instance v0, Lcom/keephealth/android/childmodule/DialogView;

    iget-object v1, p0, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity$4;->this$0:Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;

    iget-object v2, v1, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;->taskBean:Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    invoke-virtual {v2}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->getCoin()I

    move-result v2

    new-instance v3, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity$4$1;

    invoke-direct {v3, p0}, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity$4$1;-><init>(Lcom/keephealth/android/childmodule/activity/CustomTaskActivity$4;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/keephealth/android/childmodule/DialogView;-><init>(Landroid/app/Activity;ILcom/keephealth/android/childmodule/DialogView$OnOkClick;)V

    iput-object v0, p1, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;->dialogViewGold:Lcom/keephealth/android/childmodule/DialogView;

    return-void
.end method
