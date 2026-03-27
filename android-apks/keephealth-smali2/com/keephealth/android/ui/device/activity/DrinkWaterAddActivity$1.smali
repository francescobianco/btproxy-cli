.class Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity$1;
.super Lcom/keephealth/android/childmodule/ClickManagerListener;
.source "DrinkWaterAddActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;

.field final synthetic val$deviceModel:Lcom/keephealth/android/model/bean/DeviceModel;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;Lcom/keephealth/android/model/bean/DeviceModel;)V
    .registers 3

    .line 87
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;

    iput-object p2, p0, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity$1;->val$deviceModel:Lcom/keephealth/android/model/bean/DeviceModel;

    invoke-direct {p0}, Lcom/keephealth/android/childmodule/ClickManagerListener;-><init>()V

    return-void
.end method


# virtual methods
.method protected onClickL(Landroid/view/View;)V
    .registers 12

    .line 90
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;->etDrinkWaterGoal:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_23

    .line 91
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100263

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;->showToast(Ljava/lang/String;)V
    invoke-static {p1, v0}, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;->access$000(Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;Ljava/lang/String;)V

    return-void

    .line 94
    :cond_23
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;->addWater:Ljava/lang/String;

    const-string v0, ".*\\d.*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_bb

    .line 95
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;->addWater:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    .line 96
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/UserBean;->getWaterUnit()I

    move-result v0

    if-nez v0, :cond_82

    const/high16 v0, 0x41a00000    # 20.0f

    cmpg-float v1, p1, v0

    const v2, 0x7f1006c7

    if-gez v1, :cond_63

    .line 99
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;->etDrinkWaterGoal:Landroid/widget/EditText;

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;

    invoke-virtual {p1, v2}, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    return-void

    :cond_63
    const/high16 v0, 0x44fa0000    # 2000.0f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_c4

    .line 104
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;->etDrinkWaterGoal:Landroid/widget/EditText;

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;

    invoke-virtual {p1, v2}, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    return-void

    :cond_82
    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v1, p1, v0

    const v2, 0x7f1006c8

    if-gez v1, :cond_a0

    .line 111
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;->etDrinkWaterGoal:Landroid/widget/EditText;

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 112
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;

    invoke-virtual {p1, v2}, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    return-void

    :cond_a0
    const/high16 v0, 0x42c80000    # 100.0f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_c4

    .line 116
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;->etDrinkWaterGoal:Landroid/widget/EditText;

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 117
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;

    invoke-virtual {p1, v2}, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    return-void

    .line 122
    :cond_bb
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;->etDrinkWaterGoal:Landroid/widget/EditText;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 124
    :cond_c4
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/UserBean;->getWaterUnit()I

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_e2

    .line 125
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;

    iget-object v1, p1, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;->etDrinkWaterGoal:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p1, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;->addDrinkWater:I

    goto :goto_129

    .line 126
    :cond_e2
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/UserBean;->getWaterUnit()I

    move-result p1

    if-ne p1, v0, :cond_10b

    .line 127
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;

    iget-object v1, p1, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;->etDrinkWaterGoal:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    const v2, 0x3d102de0    # 0.0352f

    div-float/2addr v1, v2

    invoke-static {v1}, Lcom/keephealth/android/util/NumUtil;->float2float(F)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p1, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;->addDrinkWater:I

    goto :goto_129

    .line 129
    :cond_10b
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;

    iget-object v1, p1, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;->etDrinkWaterGoal:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    const v2, 0x3d0a71de    # 0.0338f

    div-float/2addr v1, v2

    invoke-static {v1}, Lcom/keephealth/android/util/NumUtil;->float2float(F)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p1, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;->addDrinkWater:I

    .line 131
    :goto_129
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity$1;->val$deviceModel:Lcom/keephealth/android/model/bean/DeviceModel;

    if-eqz p1, :cond_182

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/DeviceModel;->isDrinkWaterRecordSync()Z

    move-result p1

    if-eqz p1, :cond_182

    .line 132
    invoke-static {}, Lcom/keephealth/android/util/DiscoverServiceUtils;->discoverService()Z

    move-result p1

    if-nez p1, :cond_146

    .line 133
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;

    const v0, 0x7f100258

    invoke-virtual {p1, v0}, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;->showToast(Ljava/lang/String;)V
    invoke-static {p1, v0}, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;->access$100(Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;Ljava/lang/String;)V

    goto :goto_187

    .line 135
    :cond_146
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 136
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v1

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/lit8 v4, v2, 0x1

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/16 v0, 0xb

    .line 137
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v7

    const/16 v0, 0xd

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v8

    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;

    iget v9, p1, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;->addDrinkWater:I

    const/4 v2, 0x1

    .line 136
    invoke-static/range {v2 .. v9}, Lcom/keephealth/android/util/ble/CmdHelper;->setWater(IIIIIIII)[B

    move-result-object p1

    new-instance v0, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity$1$1;

    invoke-direct {v0, p0}, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity$1$1;-><init>(Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity$1;)V

    invoke-virtual {v1, p1, v0}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([BLcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;)V

    goto :goto_187

    .line 154
    :cond_182
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;

    # invokes: Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;->saveWaterData()V
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;->access$400(Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;)V

    :goto_187
    return-void
.end method
