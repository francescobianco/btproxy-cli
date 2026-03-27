.class Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity$1;
.super Lcom/keephealth/android/childmodule/ClickManagerListener;
.source "DrinkWaterTargetAndNoticeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;

.field final synthetic val$deviceModel:Lcom/keephealth/android/model/bean/DeviceModel;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;Lcom/keephealth/android/model/bean/DeviceModel;)V
    .registers 3

    .line 102
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity$1;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;

    iput-object p2, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity$1;->val$deviceModel:Lcom/keephealth/android/model/bean/DeviceModel;

    invoke-direct {p0}, Lcom/keephealth/android/childmodule/ClickManagerListener;-><init>()V

    return-void
.end method


# virtual methods
.method protected onClickL(Landroid/view/View;)V
    .registers 7

    .line 105
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity$1;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->addWater:Ljava/lang/String;

    const-string v0, ".*\\d.*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_f3

    .line 106
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity$1;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->addWater:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    .line 107
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity$1;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/UserBean;->getWaterUnit()I

    move-result v0

    if-nez v0, :cond_64

    const/high16 v0, 0x44160000    # 600.0f

    cmpg-float v1, p1, v0

    const v2, 0x7f1006c9

    if-gez v1, :cond_42

    .line 110
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity$1;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->binding:Lcom/keephealth/android/databinding/ActivityDrinkWaterTargetAndNoticeBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityDrinkWaterTargetAndNoticeBinding;->etDrinkWaterGoal:Landroid/widget/EditText;

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 111
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity$1;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;

    invoke-virtual {p1, v2}, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    return-void

    :cond_42
    const v0, 0x460ca000    # 9000.0f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_fe

    .line 115
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity$1;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->binding:Lcom/keephealth/android/databinding/ActivityDrinkWaterTargetAndNoticeBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityDrinkWaterTargetAndNoticeBinding;->etDrinkWaterGoal:Landroid/widget/EditText;

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 116
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity$1;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;

    invoke-virtual {p1, v2}, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    return-void

    .line 119
    :cond_64
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity$1;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/UserBean;->getWaterUnit()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_b4

    const v0, 0x41a8cccd    # 21.1f

    cmpg-float v1, p1, v0

    const v2, 0x7f1006ca

    if-gez v1, :cond_90

    .line 122
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity$1;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->binding:Lcom/keephealth/android/databinding/ActivityDrinkWaterTargetAndNoticeBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityDrinkWaterTargetAndNoticeBinding;->etDrinkWaterGoal:Landroid/widget/EditText;

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 123
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity$1;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;

    invoke-virtual {p1, v2}, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    return-void

    :cond_90
    float-to-double v0, p1

    const-wide v3, 0x4073cccccccccccdL    # 316.8

    cmpl-double p1, v0, v3

    if-lez p1, :cond_fe

    .line 127
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity$1;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->binding:Lcom/keephealth/android/databinding/ActivityDrinkWaterTargetAndNoticeBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityDrinkWaterTargetAndNoticeBinding;->etDrinkWaterGoal:Landroid/widget/EditText;

    const v0, 0x439e6666    # 316.8f

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 128
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity$1;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;

    invoke-virtual {p1, v2}, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    return-void

    :cond_b4
    const v0, 0x41a26666    # 20.3f

    cmpg-float v1, p1, v0

    const v2, 0x7f1006cb

    if-gez v1, :cond_d5

    .line 134
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity$1;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->binding:Lcom/keephealth/android/databinding/ActivityDrinkWaterTargetAndNoticeBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityDrinkWaterTargetAndNoticeBinding;->etDrinkWaterGoal:Landroid/widget/EditText;

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 135
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity$1;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;

    invoke-virtual {p1, v2}, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    return-void

    :cond_d5
    const v0, 0x43983333    # 304.4f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_fe

    .line 139
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity$1;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->binding:Lcom/keephealth/android/databinding/ActivityDrinkWaterTargetAndNoticeBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityDrinkWaterTargetAndNoticeBinding;->etDrinkWaterGoal:Landroid/widget/EditText;

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 140
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity$1;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;

    invoke-virtual {p1, v2}, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    return-void

    .line 145
    :cond_f3
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity$1;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->binding:Lcom/keephealth/android/databinding/ActivityDrinkWaterTargetAndNoticeBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityDrinkWaterTargetAndNoticeBinding;->etDrinkWaterGoal:Landroid/widget/EditText;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 147
    :cond_fe
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity$1;->val$deviceModel:Lcom/keephealth/android/model/bean/DeviceModel;

    if-eqz p1, :cond_121

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/DeviceModel;->isDrinkWaterRecordSync()Z

    move-result p1

    if-eqz p1, :cond_121

    .line 148
    invoke-static {}, Lcom/keephealth/android/util/DiscoverServiceUtils;->discoverService()Z

    move-result p1

    if-nez p1, :cond_11b

    .line 149
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity$1;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;

    const v0, 0x7f100258

    invoke-virtual {p1, v0}, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->showToast(Ljava/lang/String;)V
    invoke-static {p1, v0}, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->access$000(Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;Ljava/lang/String;)V

    goto :goto_163

    .line 151
    :cond_11b
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity$1;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;

    # invokes: Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->saveData()V
    invoke-static {p1}, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->access$100(Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;)V

    goto :goto_163

    .line 154
    :cond_121
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity$1;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->binding:Lcom/keephealth/android/databinding/ActivityDrinkWaterTargetAndNoticeBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityDrinkWaterTargetAndNoticeBinding;->etDrinkWaterGoal:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_153

    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity$1;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->binding:Lcom/keephealth/android/databinding/ActivityDrinkWaterTargetAndNoticeBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityDrinkWaterTargetAndNoticeBinding;->etDrinkWaterGoal:Landroid/widget/EditText;

    .line 155
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_14d

    goto :goto_153

    .line 158
    :cond_14d
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity$1;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;

    # invokes: Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->saveData()V
    invoke-static {p1}, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->access$100(Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;)V

    goto :goto_163

    .line 156
    :cond_153
    :goto_153
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity$1;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100270

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->showToast(Ljava/lang/String;)V
    invoke-static {p1, v0}, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->access$200(Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;Ljava/lang/String;)V

    :goto_163
    return-void
.end method
