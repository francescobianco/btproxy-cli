.class Lcom/keephealth/android/childmodule/activity/SportTaskActivity$5$1;
.super Ljava/lang/Object;
.source "SportTaskActivity.java"

# interfaces
.implements Lcom/keephealth/android/childmodule/DialogView$OnOkClick;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/childmodule/activity/SportTaskActivity$5;->onClickL(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/keephealth/android/childmodule/activity/SportTaskActivity$5;


# direct methods
.method constructor <init>(Lcom/keephealth/android/childmodule/activity/SportTaskActivity$5;)V
    .registers 2

    .line 319
    iput-object p1, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity$5$1;->this$1:Lcom/keephealth/android/childmodule/activity/SportTaskActivity$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickOk(I)V
    .registers 3

    .line 322
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity$5$1;->this$1:Lcom/keephealth/android/childmodule/activity/SportTaskActivity$5;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity$5;->this$0:Lcom/keephealth/android/childmodule/activity/SportTaskActivity;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->taskBean:Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    invoke-virtual {v0, p1}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->setCoin(I)V

    .line 323
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity$5$1;->this$1:Lcom/keephealth/android/childmodule/activity/SportTaskActivity$5;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity$5;->this$0:Lcom/keephealth/android/childmodule/activity/SportTaskActivity;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->binding:Lcom/keephealth/android/databinding/ActivitySportTaskBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivitySportTaskBinding;->tvObtainableGold:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
