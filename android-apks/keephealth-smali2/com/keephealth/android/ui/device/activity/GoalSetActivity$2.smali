.class Lcom/keephealth/android/ui/device/activity/GoalSetActivity$2;
.super Ljava/lang/Object;
.source "GoalSetActivity.java"

# interfaces
.implements Lcom/keephealth/android/views/dialog/WheelViewDialog$OnSelectClick;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/activity/GoalSetActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/device/activity/GoalSetActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/activity/GoalSetActivity;)V
    .registers 2

    .line 180
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/GoalSetActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/GoalSetActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelect(III)V
    .registers 6

    .line 183
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/GoalSetActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/GoalSetActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/GoalSetActivity;->config:Lcom/keephealth/android/model/bean/DeviceConfig;
    invoke-static {p2}, Lcom/keephealth/android/ui/device/activity/GoalSetActivity;->access$000(Lcom/keephealth/android/ui/device/activity/GoalSetActivity;)Lcom/keephealth/android/model/bean/DeviceConfig;

    move-result-object p3

    iget-object p3, p3, Lcom/keephealth/android/model/bean/DeviceConfig;->goal:Lcom/keephealth/android/model/bean/Goal;

    iget p3, p3, Lcom/keephealth/android/model/bean/Goal;->goalExervice:I

    # setter for: Lcom/keephealth/android/ui/device/activity/GoalSetActivity;->hisValueExervice:I
    invoke-static {p2, p3}, Lcom/keephealth/android/ui/device/activity/GoalSetActivity;->access$302(Lcom/keephealth/android/ui/device/activity/GoalSetActivity;I)I

    .line 184
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/GoalSetActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/GoalSetActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/GoalSetActivity;->hisValueExervice:I
    invoke-static {p2}, Lcom/keephealth/android/ui/device/activity/GoalSetActivity;->access$300(Lcom/keephealth/android/ui/device/activity/GoalSetActivity;)I

    move-result p2

    if-ne p2, p1, :cond_16

    return-void

    .line 187
    :cond_16
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/GoalSetActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/GoalSetActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/GoalSetActivity;->config:Lcom/keephealth/android/model/bean/DeviceConfig;
    invoke-static {p2}, Lcom/keephealth/android/ui/device/activity/GoalSetActivity;->access$000(Lcom/keephealth/android/ui/device/activity/GoalSetActivity;)Lcom/keephealth/android/model/bean/DeviceConfig;

    move-result-object p2

    iget-object p2, p2, Lcom/keephealth/android/model/bean/DeviceConfig;->goal:Lcom/keephealth/android/model/bean/Goal;

    iput p1, p2, Lcom/keephealth/android/model/bean/Goal;->goalExervice:I

    .line 188
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/GoalSetActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/GoalSetActivity;

    iget-object p2, p2, Lcom/keephealth/android/ui/device/activity/GoalSetActivity;->tv_goal_exercise:Landroid/widget/TextView;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/GoalSetActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/GoalSetActivity;

    invoke-virtual {v0}, Lcom/keephealth/android/ui/device/activity/GoalSetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10056d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p3, p0, Lcom/keephealth/android/ui/device/activity/GoalSetActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/GoalSetActivity;

    invoke-virtual {p3}, Lcom/keephealth/android/ui/device/activity/GoalSetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f100387

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/GoalSetActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/GoalSetActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/GoalSetActivity;->config:Lcom/keephealth/android/model/bean/DeviceConfig;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/GoalSetActivity;->access$000(Lcom/keephealth/android/ui/device/activity/GoalSetActivity;)Lcom/keephealth/android/model/bean/DeviceConfig;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/SPHelper;->saveDeviceConfig(Lcom/keephealth/android/model/bean/DeviceConfig;)V

    .line 190
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/GoalSetActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/GoalSetActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/GoalSetActivity;->mPresenter:Lcom/keephealth/android/base/BasePersenter;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/GoalSetActivity;->access$400(Lcom/keephealth/android/ui/device/activity/GoalSetActivity;)Lcom/keephealth/android/base/BasePersenter;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/persenter/device/GoalSetPersenter;

    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/GoalSetActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/GoalSetActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/GoalSetActivity;->config:Lcom/keephealth/android/model/bean/DeviceConfig;
    invoke-static {p2}, Lcom/keephealth/android/ui/device/activity/GoalSetActivity;->access$000(Lcom/keephealth/android/ui/device/activity/GoalSetActivity;)Lcom/keephealth/android/model/bean/DeviceConfig;

    move-result-object p2

    iget-object p2, p2, Lcom/keephealth/android/model/bean/DeviceConfig;->goal:Lcom/keephealth/android/model/bean/Goal;

    const/4 p3, 0x0

    invoke-virtual {p1, p3, p2}, Lcom/keephealth/android/persenter/device/GoalSetPersenter;->saveGold(ILcom/keephealth/android/model/bean/Goal;)V

    return-void
.end method
