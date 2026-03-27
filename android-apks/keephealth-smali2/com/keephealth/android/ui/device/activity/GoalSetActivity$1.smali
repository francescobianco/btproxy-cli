.class Lcom/keephealth/android/ui/device/activity/GoalSetActivity$1;
.super Ljava/lang/Object;
.source "GoalSetActivity.java"

# interfaces
.implements Lcom/keephealth/android/views/CustomToggleButton$OnSwitchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/activity/GoalSetActivity;->initView()V
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

    .line 142
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/GoalSetActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/GoalSetActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSwitched(Z)V
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_5d

    .line 146
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/GoalSetActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/GoalSetActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/GoalSetActivity;->config:Lcom/keephealth/android/model/bean/DeviceConfig;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/GoalSetActivity;->access$000(Lcom/keephealth/android/ui/device/activity/GoalSetActivity;)Lcom/keephealth/android/model/bean/DeviceConfig;

    move-result-object v1

    iget-object v1, v1, Lcom/keephealth/android/model/bean/DeviceConfig;->goal:Lcom/keephealth/android/model/bean/Goal;

    iput v0, v1, Lcom/keephealth/android/model/bean/Goal;->sleepstate:I

    .line 147
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/GoalSetActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/GoalSetActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/GoalSetActivity;->config:Lcom/keephealth/android/model/bean/DeviceConfig;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/GoalSetActivity;->access$000(Lcom/keephealth/android/ui/device/activity/GoalSetActivity;)Lcom/keephealth/android/model/bean/DeviceConfig;

    move-result-object v1

    iget-object v1, v1, Lcom/keephealth/android/model/bean/DeviceConfig;->goal:Lcom/keephealth/android/model/bean/Goal;

    const/4 v2, 0x1

    iput v2, v1, Lcom/keephealth/android/model/bean/Goal;->stepstate:I

    .line 148
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/GoalSetActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/GoalSetActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/GoalSetActivity;->config:Lcom/keephealth/android/model/bean/DeviceConfig;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/GoalSetActivity;->access$000(Lcom/keephealth/android/ui/device/activity/GoalSetActivity;)Lcom/keephealth/android/model/bean/DeviceConfig;

    move-result-object v1

    iget-object v1, v1, Lcom/keephealth/android/model/bean/DeviceConfig;->goal:Lcom/keephealth/android/model/bean/Goal;

    iput v2, v1, Lcom/keephealth/android/model/bean/Goal;->calstate:I

    .line 149
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/GoalSetActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/GoalSetActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/GoalSetActivity;->config:Lcom/keephealth/android/model/bean/DeviceConfig;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/GoalSetActivity;->access$000(Lcom/keephealth/android/ui/device/activity/GoalSetActivity;)Lcom/keephealth/android/model/bean/DeviceConfig;

    move-result-object v1

    iget-object v1, v1, Lcom/keephealth/android/model/bean/DeviceConfig;->goal:Lcom/keephealth/android/model/bean/Goal;

    iput v0, v1, Lcom/keephealth/android/model/bean/Goal;->distancestate:I

    .line 150
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/GoalSetActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/GoalSetActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/GoalSetActivity;->config:Lcom/keephealth/android/model/bean/DeviceConfig;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/GoalSetActivity;->access$000(Lcom/keephealth/android/ui/device/activity/GoalSetActivity;)Lcom/keephealth/android/model/bean/DeviceConfig;

    move-result-object v1

    iget-object v1, v1, Lcom/keephealth/android/model/bean/DeviceConfig;->goal:Lcom/keephealth/android/model/bean/Goal;

    iput v2, v1, Lcom/keephealth/android/model/bean/Goal;->exercisestate:I

    .line 151
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/GoalSetActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/GoalSetActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/GoalSetActivity;->config:Lcom/keephealth/android/model/bean/DeviceConfig;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/GoalSetActivity;->access$000(Lcom/keephealth/android/ui/device/activity/GoalSetActivity;)Lcom/keephealth/android/model/bean/DeviceConfig;

    move-result-object v1

    iget-object v1, v1, Lcom/keephealth/android/model/bean/DeviceConfig;->goal:Lcom/keephealth/android/model/bean/Goal;

    iput v2, v1, Lcom/keephealth/android/model/bean/Goal;->standstate:I

    .line 152
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/GoalSetActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/GoalSetActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/GoalSetActivity;->config:Lcom/keephealth/android/model/bean/DeviceConfig;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/GoalSetActivity;->access$000(Lcom/keephealth/android/ui/device/activity/GoalSetActivity;)Lcom/keephealth/android/model/bean/DeviceConfig;

    move-result-object v1

    invoke-static {v1}, Lcom/keephealth/android/util/SPHelper;->saveDeviceConfig(Lcom/keephealth/android/model/bean/DeviceConfig;)V

    .line 153
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/GoalSetActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/GoalSetActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/GoalSetActivity;->mPresenter:Lcom/keephealth/android/base/BasePersenter;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/GoalSetActivity;->access$100(Lcom/keephealth/android/ui/device/activity/GoalSetActivity;)Lcom/keephealth/android/base/BasePersenter;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/persenter/device/GoalSetPersenter;

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/GoalSetActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/GoalSetActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/GoalSetActivity;->config:Lcom/keephealth/android/model/bean/DeviceConfig;
    invoke-static {v2}, Lcom/keephealth/android/ui/device/activity/GoalSetActivity;->access$000(Lcom/keephealth/android/ui/device/activity/GoalSetActivity;)Lcom/keephealth/android/model/bean/DeviceConfig;

    move-result-object v2

    iget-object v2, v2, Lcom/keephealth/android/model/bean/DeviceConfig;->goal:Lcom/keephealth/android/model/bean/Goal;

    invoke-virtual {v1, v0, v2}, Lcom/keephealth/android/persenter/device/GoalSetPersenter;->saveGold(ILcom/keephealth/android/model/bean/Goal;)V

    goto :goto_b5

    .line 155
    :cond_5d
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/GoalSetActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/GoalSetActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/GoalSetActivity;->config:Lcom/keephealth/android/model/bean/DeviceConfig;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/GoalSetActivity;->access$000(Lcom/keephealth/android/ui/device/activity/GoalSetActivity;)Lcom/keephealth/android/model/bean/DeviceConfig;

    move-result-object v1

    iget-object v1, v1, Lcom/keephealth/android/model/bean/DeviceConfig;->goal:Lcom/keephealth/android/model/bean/Goal;

    iput v0, v1, Lcom/keephealth/android/model/bean/Goal;->sleepstate:I

    .line 156
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/GoalSetActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/GoalSetActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/GoalSetActivity;->config:Lcom/keephealth/android/model/bean/DeviceConfig;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/GoalSetActivity;->access$000(Lcom/keephealth/android/ui/device/activity/GoalSetActivity;)Lcom/keephealth/android/model/bean/DeviceConfig;

    move-result-object v1

    iget-object v1, v1, Lcom/keephealth/android/model/bean/DeviceConfig;->goal:Lcom/keephealth/android/model/bean/Goal;

    iput v0, v1, Lcom/keephealth/android/model/bean/Goal;->stepstate:I

    .line 157
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/GoalSetActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/GoalSetActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/GoalSetActivity;->config:Lcom/keephealth/android/model/bean/DeviceConfig;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/GoalSetActivity;->access$000(Lcom/keephealth/android/ui/device/activity/GoalSetActivity;)Lcom/keephealth/android/model/bean/DeviceConfig;

    move-result-object v1

    iget-object v1, v1, Lcom/keephealth/android/model/bean/DeviceConfig;->goal:Lcom/keephealth/android/model/bean/Goal;

    iput v0, v1, Lcom/keephealth/android/model/bean/Goal;->calstate:I

    .line 158
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/GoalSetActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/GoalSetActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/GoalSetActivity;->config:Lcom/keephealth/android/model/bean/DeviceConfig;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/GoalSetActivity;->access$000(Lcom/keephealth/android/ui/device/activity/GoalSetActivity;)Lcom/keephealth/android/model/bean/DeviceConfig;

    move-result-object v1

    iget-object v1, v1, Lcom/keephealth/android/model/bean/DeviceConfig;->goal:Lcom/keephealth/android/model/bean/Goal;

    iput v0, v1, Lcom/keephealth/android/model/bean/Goal;->distancestate:I

    .line 159
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/GoalSetActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/GoalSetActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/GoalSetActivity;->config:Lcom/keephealth/android/model/bean/DeviceConfig;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/GoalSetActivity;->access$000(Lcom/keephealth/android/ui/device/activity/GoalSetActivity;)Lcom/keephealth/android/model/bean/DeviceConfig;

    move-result-object v1

    iget-object v1, v1, Lcom/keephealth/android/model/bean/DeviceConfig;->goal:Lcom/keephealth/android/model/bean/Goal;

    iput v0, v1, Lcom/keephealth/android/model/bean/Goal;->exercisestate:I

    .line 160
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/GoalSetActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/GoalSetActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/GoalSetActivity;->config:Lcom/keephealth/android/model/bean/DeviceConfig;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/GoalSetActivity;->access$000(Lcom/keephealth/android/ui/device/activity/GoalSetActivity;)Lcom/keephealth/android/model/bean/DeviceConfig;

    move-result-object v1

    iget-object v1, v1, Lcom/keephealth/android/model/bean/DeviceConfig;->goal:Lcom/keephealth/android/model/bean/Goal;

    iput v0, v1, Lcom/keephealth/android/model/bean/Goal;->standstate:I

    .line 161
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/GoalSetActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/GoalSetActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/GoalSetActivity;->config:Lcom/keephealth/android/model/bean/DeviceConfig;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/GoalSetActivity;->access$000(Lcom/keephealth/android/ui/device/activity/GoalSetActivity;)Lcom/keephealth/android/model/bean/DeviceConfig;

    move-result-object v1

    invoke-static {v1}, Lcom/keephealth/android/util/SPHelper;->saveDeviceConfig(Lcom/keephealth/android/model/bean/DeviceConfig;)V

    .line 162
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/GoalSetActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/GoalSetActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/GoalSetActivity;->mPresenter:Lcom/keephealth/android/base/BasePersenter;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/GoalSetActivity;->access$200(Lcom/keephealth/android/ui/device/activity/GoalSetActivity;)Lcom/keephealth/android/base/BasePersenter;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/persenter/device/GoalSetPersenter;

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/GoalSetActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/GoalSetActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/GoalSetActivity;->config:Lcom/keephealth/android/model/bean/DeviceConfig;
    invoke-static {v2}, Lcom/keephealth/android/ui/device/activity/GoalSetActivity;->access$000(Lcom/keephealth/android/ui/device/activity/GoalSetActivity;)Lcom/keephealth/android/model/bean/DeviceConfig;

    move-result-object v2

    iget-object v2, v2, Lcom/keephealth/android/model/bean/DeviceConfig;->goal:Lcom/keephealth/android/model/bean/Goal;

    invoke-virtual {v1, v0, v2}, Lcom/keephealth/android/persenter/device/GoalSetPersenter;->saveGold(ILcom/keephealth/android/model/bean/Goal;)V

    .line 164
    :goto_b5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "isSwitchOn:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "gtr5"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
