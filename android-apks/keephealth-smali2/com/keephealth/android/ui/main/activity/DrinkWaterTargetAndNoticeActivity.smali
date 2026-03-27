.class public Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;
.super Lcom/keephealth/android/base/BaseMvvmNewActivity;
.source "DrinkWaterTargetAndNoticeActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/keephealth/android/base/BaseMvvmNewActivity<",
        "Lcom/keephealth/android/databinding/ActivityDrinkWaterTargetAndNoticeBinding;",
        ">;"
    }
.end annotation


# instance fields
.field addWater:Ljava/lang/String;

.field binding:Lcom/keephealth/android/databinding/ActivityDrinkWaterTargetAndNoticeBinding;

.field private dataByte:[B

.field drinkWaterGoalDao:Lcom/keephealth/android/greendao/gen/DrinkWaterGoalDao;

.field drinkWaterGoals:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;",
            ">;"
        }
    .end annotation
.end field

.field private from:I

.field private isFrist:Z

.field private mAdapter:Lcom/keephealth/android/ui/device/adapter/DrinkWaterGoalAdapter;

.field private pvCustomLunar:Lcom/bigkoo/pickerview/view/OptionsPickerView;

.field private selectGoal:Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;

.field private selectGoalPosition:I

.field private title:Ljava/lang/String;

.field userBean:Lcom/keephealth/android/model/bean/UserBean;

.field waterTarget:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 56
    invoke-direct {p0}, Lcom/keephealth/android/base/BaseMvvmNewActivity;-><init>()V

    const/4 v0, 0x0

    .line 58
    iput v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->from:I

    .line 61
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->drinkWaterGoals:Ljava/util/List;

    const/16 v1, 0x28

    .line 65
    new-array v1, v1, [B

    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->dataByte:[B

    const/4 v1, 0x0

    .line 67
    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    .line 68
    iput v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->waterTarget:I

    .line 517
    const-string v0, ""

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->addWater:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;Ljava/lang/String;)V
    .registers 2

    .line 56
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;)V
    .registers 1

    .line 56
    invoke-direct {p0}, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->saveData()V

    return-void
.end method

.method static synthetic access$1000(Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;)Lcom/bigkoo/pickerview/view/OptionsPickerView;
    .registers 1

    .line 56
    iget-object p0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->pvCustomLunar:Lcom/bigkoo/pickerview/view/OptionsPickerView;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;)V
    .registers 1

    .line 56
    invoke-direct {p0}, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->initLunarPicker()V

    return-void
.end method

.method static synthetic access$200(Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;Ljava/lang/String;)V
    .registers 2

    .line 56
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;)Z
    .registers 1

    .line 56
    iget-boolean p0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->isFrist:Z

    return p0
.end method

.method static synthetic access$302(Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;Z)Z
    .registers 2

    .line 56
    iput-boolean p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->isFrist:Z

    return p1
.end method

.method static synthetic access$400(Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;)[B
    .registers 1

    .line 56
    iget-object p0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->dataByte:[B

    return-object p0
.end method

.method static synthetic access$500(Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;)V
    .registers 1

    .line 56
    invoke-direct {p0}, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->handleData()V

    return-void
.end method

.method static synthetic access$600(Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;)I
    .registers 1

    .line 56
    iget p0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->from:I

    return p0
.end method

.method static synthetic access$700(Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;Ljava/lang/String;)V
    .registers 2

    .line 56
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;)I
    .registers 1

    .line 56
    iget p0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->selectGoalPosition:I

    return p0
.end method

.method static synthetic access$802(Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;I)I
    .registers 2

    .line 56
    iput p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->selectGoalPosition:I

    return p1
.end method

.method static synthetic access$900(Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;)Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;
    .registers 1

    .line 56
    iget-object p0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->selectGoal:Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;

    return-object p0
.end method

.method static synthetic access$902(Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;)Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;
    .registers 2

    .line 56
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->selectGoal:Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;

    return-object p1
.end method

.method private handleData()V
    .registers 2

    .line 233
    new-instance v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity$$ExternalSyntheticLambda2;-><init>(Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;)V

    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private hideKeyboard()V
    .registers 4

    .line 574
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_1c

    .line 575
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1c

    .line 576
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 579
    :cond_1c
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->binding:Lcom/keephealth/android/databinding/ActivityDrinkWaterTargetAndNoticeBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityDrinkWaterTargetAndNoticeBinding;->etDrinkWaterGoal:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    return-void
.end method

.method private initLunarPicker()V
    .registers 7

    .line 423
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_7
    const/16 v3, 0x18

    .line 424
    const-string v4, "%02d"

    if-ge v2, v3, :cond_1f

    .line 425
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/keephealth/android/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 427
    :cond_1f
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v3, v1

    :goto_25
    const/16 v5, 0x3c

    if-ge v3, v5, :cond_3b

    .line 429
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/keephealth/android/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_25

    .line 431
    :cond_3b
    new-instance v3, Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;

    new-instance v4, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;)V

    invoke-direct {v3, p0, v4}, Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;-><init>(Landroid/content/Context;Lcom/bigkoo/pickerview/listener/OnOptionsSelectListener;)V

    new-instance v4, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0}, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity$$ExternalSyntheticLambda1;-><init>(Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;)V

    const v5, 0x7f0c0188

    .line 435
    invoke-virtual {v3, v5, v4}, Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;->setLayoutRes(ILcom/bigkoo/pickerview/listener/CustomListener;)Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;

    move-result-object v3

    const/4 v4, 0x7

    .line 445
    invoke-virtual {v3, v4}, Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;->setItemVisibleCount(I)Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;

    move-result-object v3

    const/high16 v4, 0x40000000    # 2.0f

    .line 446
    invoke-virtual {v3, v4}, Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;->setLineSpacingMultiplier(F)Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;

    move-result-object v3

    const/4 v4, 0x1

    .line 447
    invoke-virtual {v3, v4}, Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;->isDialog(Z)Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;

    move-result-object v3

    .line 448
    invoke-virtual {v3, v4}, Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;->setOutSideCancelable(Z)Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;

    move-result-object v3

    const v4, -0x333334

    .line 449
    invoke-virtual {v3, v4}, Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;->setDividerColor(I)Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;

    move-result-object v3

    .line 450
    invoke-virtual {v3}, Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;->build()Lcom/bigkoo/pickerview/view/OptionsPickerView;

    move-result-object v3

    iput-object v3, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->pvCustomLunar:Lcom/bigkoo/pickerview/view/OptionsPickerView;

    const/4 v4, 0x0

    .line 451
    invoke-virtual {v3, v0, v2, v4}, Lcom/bigkoo/pickerview/view/OptionsPickerView;->setNPicker(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 452
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->pvCustomLunar:Lcom/bigkoo/pickerview/view/OptionsPickerView;

    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->selectGoal:Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;

    invoke-virtual {v2}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->getHour()I

    move-result v2

    iget-object v3, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->selectGoal:Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;

    invoke-virtual {v3}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->getMinuter()I

    move-result v3

    invoke-virtual {v0, v2, v3, v1}, Lcom/bigkoo/pickerview/view/OptionsPickerView;->setSelectOptions(III)V

    .line 453
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->pvCustomLunar:Lcom/bigkoo/pickerview/view/OptionsPickerView;

    invoke-virtual {v0}, Lcom/bigkoo/pickerview/view/OptionsPickerView;->show()V

    return-void
.end method

.method private isTouchInsideView(Landroid/widget/EditText;Landroid/view/MotionEvent;)Z
    .registers 8

    const/4 v0, 0x2

    .line 634
    new-array v0, v0, [I

    .line 635
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->getLocationOnScreen([I)V

    .line 636
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    .line 637
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    float-to-int p2, p2

    const/4 v2, 0x0

    .line 638
    aget v3, v0, v2

    if-lt v1, v3, :cond_29

    invoke-virtual {p1}, Landroid/widget/EditText;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    if-gt v1, v3, :cond_29

    const/4 v1, 0x1

    aget v0, v0, v1

    if-lt p2, v0, :cond_29

    invoke-virtual {p1}, Landroid/widget/EditText;->getHeight()I

    move-result p1

    add-int/2addr v0, p1

    if-gt p2, v0, :cond_29

    move v2, v1

    :cond_29
    return v2
.end method

.method private saveData()V
    .registers 6

    .line 194
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->drinkWaterGoals:Ljava/util/List;

    if-eqz v0, :cond_9f

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_9f

    .line 195
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->binding:Lcom/keephealth/android/databinding/ActivityDrinkWaterTargetAndNoticeBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityDrinkWaterTargetAndNoticeBinding;->etDrinkWaterGoal:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 196
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    invoke-virtual {v1}, Lcom/keephealth/android/model/bean/UserBean;->getWaterUnit()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_2c

    .line 197
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->waterTarget:I

    goto :goto_49

    .line 198
    :cond_2c
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    invoke-virtual {v1}, Lcom/keephealth/android/model/bean/UserBean;->getWaterUnit()I

    move-result v1

    if-ne v1, v2, :cond_3f

    const v1, 0x3d102de0    # 0.0352f

    div-float/2addr v0, v1

    .line 199
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->waterTarget:I

    goto :goto_49

    :cond_3f
    const v1, 0x3d0a71de    # 0.0338f

    div-float/2addr v0, v1

    .line 201
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->waterTarget:I

    .line 203
    :goto_49
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->drinkWaterGoals:Ljava/util/List;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->binding:Lcom/keephealth/android/databinding/ActivityDrinkWaterTargetAndNoticeBinding;

    iget-object v1, v1, Lcom/keephealth/android/databinding/ActivityDrinkWaterTargetAndNoticeBinding;->ilDrinkWaterOpen:Lcom/keephealth/android/views/ItemToggleLayout;

    invoke-virtual {v1}, Lcom/keephealth/android/views/ItemToggleLayout;->isOpen()Z

    move-result v1

    iget v3, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->waterTarget:I

    invoke-static {v0, v1, v3}, Lcom/keephealth/android/util/ble/CmdHelper;->setDrinkWater(Ljava/util/List;ZI)Ljava/util/List;

    move-result-object v0

    .line 204
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "\u8bbe\u7f6e\u559d\u6c34\u76ee\u6807: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    invoke-static {v4}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "\u559d\u6c34\u63a5\u53e3\u6570\u636e"

    invoke-static {v4, v1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([BLcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;)V

    const/16 v1, 0x12

    .line 206
    invoke-static {p0, v2, v1}, Lcom/keephealth/android/util/DialogHelperNew;->buildWaitDialog(Landroid/app/Activity;ZI)Landroid/app/Dialog;

    .line 207
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v1

    iget-object v3, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->TAG:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    new-instance v2, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity$3;

    invoke-direct {v2, p0}, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity$3;-><init>(Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;)V

    invoke-virtual {v1, v3, v0, v2}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic(Ljava/lang/Object;[BLcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;)V

    :cond_9f
    return-void
.end method

.method private setEtDrinkWaterGoal()V
    .registers 5

    .line 593
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->addWater:Ljava/lang/String;

    const-string v1, ".*\\d.*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_cf

    .line 594
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->addWater:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 595
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    invoke-virtual {v1}, Lcom/keephealth/android/model/bean/UserBean;->getWaterUnit()I

    move-result v1

    if-nez v1, :cond_58

    const/high16 v1, 0x44160000    # 600.0f

    cmpg-float v2, v0, v1

    const v3, 0x7f1006c9

    if-gez v2, :cond_39

    .line 598
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->binding:Lcom/keephealth/android/databinding/ActivityDrinkWaterTargetAndNoticeBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityDrinkWaterTargetAndNoticeBinding;->etDrinkWaterGoal:Landroid/widget/EditText;

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 599
    invoke-virtual {p0, v3}, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    goto/16 :goto_d8

    :cond_39
    const v1, 0x460ca000    # 9000.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_d8

    .line 602
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->binding:Lcom/keephealth/android/databinding/ActivityDrinkWaterTargetAndNoticeBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityDrinkWaterTargetAndNoticeBinding;->etDrinkWaterGoal:Landroid/widget/EditText;

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 603
    invoke-virtual {p0, v3}, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    goto/16 :goto_d8

    .line 605
    :cond_58
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    invoke-virtual {v1}, Lcom/keephealth/android/model/bean/UserBean;->getWaterUnit()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_98

    const v1, 0x41a8cccd    # 21.1f

    cmpg-float v2, v0, v1

    const v3, 0x7f1006ca

    if-gez v2, :cond_7e

    .line 608
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->binding:Lcom/keephealth/android/databinding/ActivityDrinkWaterTargetAndNoticeBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityDrinkWaterTargetAndNoticeBinding;->etDrinkWaterGoal:Landroid/widget/EditText;

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 609
    invoke-virtual {p0, v3}, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    goto :goto_d8

    :cond_7e
    const v1, 0x439e6666    # 316.8f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_d8

    .line 612
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->binding:Lcom/keephealth/android/databinding/ActivityDrinkWaterTargetAndNoticeBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityDrinkWaterTargetAndNoticeBinding;->etDrinkWaterGoal:Landroid/widget/EditText;

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 613
    invoke-virtual {p0, v3}, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    goto :goto_d8

    :cond_98
    const v1, 0x41a26666    # 20.3f

    cmpg-float v2, v0, v1

    const v3, 0x7f1006cb

    if-gez v2, :cond_b5

    .line 618
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->binding:Lcom/keephealth/android/databinding/ActivityDrinkWaterTargetAndNoticeBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityDrinkWaterTargetAndNoticeBinding;->etDrinkWaterGoal:Landroid/widget/EditText;

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 619
    invoke-virtual {p0, v3}, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    goto :goto_d8

    :cond_b5
    const v1, 0x43983333    # 304.4f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_d8

    .line 622
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->binding:Lcom/keephealth/android/databinding/ActivityDrinkWaterTargetAndNoticeBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityDrinkWaterTargetAndNoticeBinding;->etDrinkWaterGoal:Landroid/widget/EditText;

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 623
    invoke-virtual {p0, v3}, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    goto :goto_d8

    .line 627
    :cond_cf
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->binding:Lcom/keephealth/android/databinding/ActivityDrinkWaterTargetAndNoticeBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityDrinkWaterTargetAndNoticeBinding;->etDrinkWaterGoal:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 629
    :cond_d8
    :goto_d8
    invoke-direct {p0}, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->hideKeyboard()V

    return-void
.end method

.method private setWaterTarget()V
    .registers 21

    move-object/from16 v0, p0

    .line 458
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    if-eqz v1, :cond_196

    .line 459
    invoke-virtual {v1}, Lcom/keephealth/android/model/bean/UserBean;->getAge()I

    move-result v1

    .line 460
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    invoke-virtual {v2}, Lcom/keephealth/android/model/bean/UserBean;->getGender()I

    move-result v2

    .line 461
    iget-object v3, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    invoke-virtual {v3}, Lcom/keephealth/android/model/bean/UserBean;->getWeight()F

    move-result v3

    .line 464
    iget-object v4, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    invoke-virtual {v4}, Lcom/keephealth/android/model/bean/UserBean;->getWaterUnit()I

    move-result v4

    if-nez v4, :cond_28

    .line 465
    iget-object v4, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->binding:Lcom/keephealth/android/databinding/ActivityDrinkWaterTargetAndNoticeBinding;

    iget-object v4, v4, Lcom/keephealth/android/databinding/ActivityDrinkWaterTargetAndNoticeBinding;->tvUnit:Landroid/widget/TextView;

    const-string v5, "ml"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_31

    .line 467
    :cond_28
    iget-object v4, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->binding:Lcom/keephealth/android/databinding/ActivityDrinkWaterTargetAndNoticeBinding;

    iget-object v4, v4, Lcom/keephealth/android/databinding/ActivityDrinkWaterTargetAndNoticeBinding;->tvUnit:Landroid/widget/TextView;

    const-string v5, "oz"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_31
    const/16 v4, 0x12

    if-ge v1, v4, :cond_38

    const/16 v1, 0x2d

    goto :goto_41

    :cond_38
    const/16 v4, 0x37

    if-ge v1, v4, :cond_3f

    const/16 v1, 0x20

    goto :goto_41

    :cond_3f
    const/16 v1, 0x1b

    .line 482
    :goto_41
    iget-object v4, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "setWaterTarget: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-float v1, v1

    mul-float/2addr v3, v1

    float-to-double v6, v3

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    mul-double v10, v6, v8

    mul-double v12, v10, v8

    invoke-virtual {v5, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " --"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-wide v14, 0x3ff3333333333333L    # 1.2

    mul-double v8, v10, v14

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " -- "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-wide/high16 v16, 0x3ff8000000000000L    # 1.5

    mul-double v14, v10, v16

    invoke-virtual {v1, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    mul-double v10, v10, v18

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v2, :cond_9f

    .line 484
    invoke-static {v12, v13}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    long-to-int v1, v1

    .line 485
    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v2, v2

    .line 486
    invoke-static {v14, v15}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    long-to-int v3, v3

    .line 487
    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    goto :goto_c7

    :cond_9f
    const-wide v1, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr v6, v1

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    mul-double v8, v6, v1

    .line 493
    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    long-to-int v1, v1

    const-wide v2, 0x3ff3333333333333L    # 1.2

    mul-double v14, v6, v2

    .line 494
    invoke-static {v14, v15}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v2, v2

    mul-double v16, v16, v6

    .line 495
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    long-to-int v3, v3

    mul-double v6, v6, v18

    .line 496
    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    :goto_c7
    long-to-int v4, v4

    .line 498
    iget-object v5, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    invoke-virtual {v5}, Lcom/keephealth/android/model/bean/UserBean;->getWaterUnit()I

    move-result v5

    if-nez v5, :cond_fe

    .line 499
    iget-object v5, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->binding:Lcom/keephealth/android/databinding/ActivityDrinkWaterTargetAndNoticeBinding;

    iget-object v5, v5, Lcom/keephealth/android/databinding/ActivityDrinkWaterTargetAndNoticeBinding;->tvSedentariness:Landroid/widget/TextView;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 500
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->binding:Lcom/keephealth/android/databinding/ActivityDrinkWaterTargetAndNoticeBinding;

    iget-object v1, v1, Lcom/keephealth/android/databinding/ActivityDrinkWaterTargetAndNoticeBinding;->tvLightActivity:Landroid/widget/TextView;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 501
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->binding:Lcom/keephealth/android/databinding/ActivityDrinkWaterTargetAndNoticeBinding;

    iget-object v1, v1, Lcom/keephealth/android/databinding/ActivityDrinkWaterTargetAndNoticeBinding;->tvRegularActivities:Landroid/widget/TextView;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 502
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->binding:Lcom/keephealth/android/databinding/ActivityDrinkWaterTargetAndNoticeBinding;

    iget-object v1, v1, Lcom/keephealth/android/databinding/ActivityDrinkWaterTargetAndNoticeBinding;->tvModerateActivity:Landroid/widget/TextView;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_196

    .line 503
    :cond_fe
    iget-object v5, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    invoke-virtual {v5}, Lcom/keephealth/android/model/bean/UserBean;->getWaterUnit()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_14f

    .line 504
    iget-object v5, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->binding:Lcom/keephealth/android/databinding/ActivityDrinkWaterTargetAndNoticeBinding;

    iget-object v5, v5, Lcom/keephealth/android/databinding/ActivityDrinkWaterTargetAndNoticeBinding;->tvSedentariness:Landroid/widget/TextView;

    int-to-float v1, v1

    const v6, 0x3d102de0    # 0.0352f

    mul-float/2addr v1, v6

    invoke-static {v1}, Lcom/keephealth/android/util/NumUtil;->float2float(F)F

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 505
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->binding:Lcom/keephealth/android/databinding/ActivityDrinkWaterTargetAndNoticeBinding;

    iget-object v1, v1, Lcom/keephealth/android/databinding/ActivityDrinkWaterTargetAndNoticeBinding;->tvLightActivity:Landroid/widget/TextView;

    int-to-float v2, v2

    mul-float/2addr v2, v6

    invoke-static {v2}, Lcom/keephealth/android/util/NumUtil;->float2float(F)F

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 506
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->binding:Lcom/keephealth/android/databinding/ActivityDrinkWaterTargetAndNoticeBinding;

    iget-object v1, v1, Lcom/keephealth/android/databinding/ActivityDrinkWaterTargetAndNoticeBinding;->tvRegularActivities:Landroid/widget/TextView;

    int-to-float v2, v3

    mul-float/2addr v2, v6

    invoke-static {v2}, Lcom/keephealth/android/util/NumUtil;->float2float(F)F

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 507
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->binding:Lcom/keephealth/android/databinding/ActivityDrinkWaterTargetAndNoticeBinding;

    iget-object v1, v1, Lcom/keephealth/android/databinding/ActivityDrinkWaterTargetAndNoticeBinding;->tvModerateActivity:Landroid/widget/TextView;

    int-to-float v2, v4

    mul-float/2addr v2, v6

    invoke-static {v2}, Lcom/keephealth/android/util/NumUtil;->float2float(F)F

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_196

    .line 509
    :cond_14f
    iget-object v5, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->binding:Lcom/keephealth/android/databinding/ActivityDrinkWaterTargetAndNoticeBinding;

    iget-object v5, v5, Lcom/keephealth/android/databinding/ActivityDrinkWaterTargetAndNoticeBinding;->tvSedentariness:Landroid/widget/TextView;

    int-to-float v1, v1

    const v6, 0x3d0a71de    # 0.0338f

    mul-float/2addr v1, v6

    invoke-static {v1}, Lcom/keephealth/android/util/NumUtil;->float2float(F)F

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 510
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->binding:Lcom/keephealth/android/databinding/ActivityDrinkWaterTargetAndNoticeBinding;

    iget-object v1, v1, Lcom/keephealth/android/databinding/ActivityDrinkWaterTargetAndNoticeBinding;->tvLightActivity:Landroid/widget/TextView;

    int-to-float v2, v2

    mul-float/2addr v2, v6

    invoke-static {v2}, Lcom/keephealth/android/util/NumUtil;->float2float(F)F

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 511
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->binding:Lcom/keephealth/android/databinding/ActivityDrinkWaterTargetAndNoticeBinding;

    iget-object v1, v1, Lcom/keephealth/android/databinding/ActivityDrinkWaterTargetAndNoticeBinding;->tvRegularActivities:Landroid/widget/TextView;

    int-to-float v2, v3

    mul-float/2addr v2, v6

    invoke-static {v2}, Lcom/keephealth/android/util/NumUtil;->float2float(F)F

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 512
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->binding:Lcom/keephealth/android/databinding/ActivityDrinkWaterTargetAndNoticeBinding;

    iget-object v1, v1, Lcom/keephealth/android/databinding/ActivityDrinkWaterTargetAndNoticeBinding;->tvModerateActivity:Landroid/widget/TextView;

    int-to-float v2, v4

    mul-float/2addr v2, v6

    invoke-static {v2}, Lcom/keephealth/android/util/NumUtil;->float2float(F)F

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_196
    :goto_196
    return-void
.end method


# virtual methods
.method protected createObserver()V
    .registers 5

    .line 521
    new-instance v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity$5;

    invoke-direct {v0, p0}, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity$5;-><init>(Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;)V

    .line 539
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->binding:Lcom/keephealth/android/databinding/ActivityDrinkWaterTargetAndNoticeBinding;

    iget-object v1, v1, Lcom/keephealth/android/databinding/ActivityDrinkWaterTargetAndNoticeBinding;->etDrinkWaterGoal:Landroid/widget/EditText;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/text/InputFilter;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 540
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->binding:Lcom/keephealth/android/databinding/ActivityDrinkWaterTargetAndNoticeBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityDrinkWaterTargetAndNoticeBinding;->etDrinkWaterGoal:Landroid/widget/EditText;

    new-instance v1, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity$6;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity$6;-><init>(Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public bridge synthetic getViewBinding()Landroidx/viewbinding/ViewBinding;
    .registers 2

    .line 56
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->getViewBinding()Lcom/keephealth/android/databinding/ActivityDrinkWaterTargetAndNoticeBinding;

    move-result-object v0

    return-object v0
.end method

.method public getViewBinding()Lcom/keephealth/android/databinding/ActivityDrinkWaterTargetAndNoticeBinding;
    .registers 2

    .line 72
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/databinding/ActivityDrinkWaterTargetAndNoticeBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/keephealth/android/databinding/ActivityDrinkWaterTargetAndNoticeBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->binding:Lcom/keephealth/android/databinding/ActivityDrinkWaterTargetAndNoticeBinding;

    return-object v0
.end method

.method protected initView()V
    .registers 6

    .line 78
    invoke-super {p0}, Lcom/keephealth/android/base/BaseMvvmNewActivity;->initView()V

    .line 79
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->toBack()V

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u662f\u5426\u5f00\u542f: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v1, Lcom/keephealth/android/app/AppApplication;->isDrinkWaterOpen:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u559d\u6c34\u63d0\u9192\u5f00\u5173 Notice"

    invoke-static {v1, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-static {p0}, Lcom/keephealth/android/util/SPHelper;->getDeviceModel(Landroid/content/Context;)Lcom/keephealth/android/model/bean/DeviceModel;

    move-result-object v0

    .line 82
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/gen/DaoSession;->getDrinkWaterGoalDao()Lcom/keephealth/android/greendao/gen/DrinkWaterGoalDao;

    move-result-object v1

    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->drinkWaterGoalDao:Lcom/keephealth/android/greendao/gen/DrinkWaterGoalDao;

    .line 83
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/app/AppApplication;->getUserBean()Lcom/keephealth/android/model/bean/UserBean;

    move-result-object v1

    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    .line 84
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->binding:Lcom/keephealth/android/databinding/ActivityDrinkWaterTargetAndNoticeBinding;

    iget-object v1, v1, Lcom/keephealth/android/databinding/ActivityDrinkWaterTargetAndNoticeBinding;->titleView:Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

    iget-object v1, v1, Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;->baseRightText:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 85
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->binding:Lcom/keephealth/android/databinding/ActivityDrinkWaterTargetAndNoticeBinding;

    iget-object v1, v1, Lcom/keephealth/android/databinding/ActivityDrinkWaterTargetAndNoticeBinding;->titleView:Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

    iget-object v1, v1, Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;->baseRightText:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f100508

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 86
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->binding:Lcom/keephealth/android/databinding/ActivityDrinkWaterTargetAndNoticeBinding;

    iget-object v1, v1, Lcom/keephealth/android/databinding/ActivityDrinkWaterTargetAndNoticeBinding;->titleView:Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

    iget-object v1, v1, Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;->baseRightText:Landroid/widget/Button;

    const v3, 0x7f080068

    invoke-static {p0, v3}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 87
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_b5

    .line 89
    const-string v3, "from"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->from:I

    .line 90
    const-string v3, "title"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->title:Ljava/lang/String;

    .line 91
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->binding:Lcom/keephealth/android/databinding/ActivityDrinkWaterTargetAndNoticeBinding;

    iget-object v1, v1, Lcom/keephealth/android/databinding/ActivityDrinkWaterTargetAndNoticeBinding;->titleView:Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

    iget-object v1, v1, Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;->baseTitleName:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->title:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget v1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->from:I

    const/4 v3, 0x2

    const/16 v4, 0x8

    if-ne v1, v3, :cond_a1

    .line 93
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->binding:Lcom/keephealth/android/databinding/ActivityDrinkWaterTargetAndNoticeBinding;

    iget-object v1, v1, Lcom/keephealth/android/databinding/ActivityDrinkWaterTargetAndNoticeBinding;->llTargetView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 94
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->binding:Lcom/keephealth/android/databinding/ActivityDrinkWaterTargetAndNoticeBinding;

    iget-object v1, v1, Lcom/keephealth/android/databinding/ActivityDrinkWaterTargetAndNoticeBinding;->llNoticeView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_b2

    :cond_a1
    const/4 v3, 0x3

    if-ne v1, v3, :cond_b2

    .line 96
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->binding:Lcom/keephealth/android/databinding/ActivityDrinkWaterTargetAndNoticeBinding;

    iget-object v1, v1, Lcom/keephealth/android/databinding/ActivityDrinkWaterTargetAndNoticeBinding;->llNoticeView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 97
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->binding:Lcom/keephealth/android/databinding/ActivityDrinkWaterTargetAndNoticeBinding;

    iget-object v1, v1, Lcom/keephealth/android/databinding/ActivityDrinkWaterTargetAndNoticeBinding;->llTargetView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 99
    :cond_b2
    :goto_b2
    invoke-direct {p0}, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->setWaterTarget()V

    .line 102
    :cond_b5
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->binding:Lcom/keephealth/android/databinding/ActivityDrinkWaterTargetAndNoticeBinding;

    iget-object v1, v1, Lcom/keephealth/android/databinding/ActivityDrinkWaterTargetAndNoticeBinding;->titleView:Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

    iget-object v1, v1, Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;->baseRightText:Landroid/widget/Button;

    new-instance v2, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity$1;

    invoke-direct {v2, p0, v0}, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity$1;-><init>(Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;Lcom/keephealth/android/model/bean/DeviceModel;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x1

    .line 163
    iput-boolean v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->isFrist:Z

    const/16 v1, 0x12

    .line 164
    invoke-static {p0, v0, v1}, Lcom/keephealth/android/util/DialogHelperNew;->buildWaitDialog(Landroid/app/Activity;ZI)Landroid/app/Dialog;

    .line 165
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    invoke-static {}, Lcom/keephealth/android/util/ble/CmdHelper;->getDrinkWater()[B

    move-result-object v1

    new-instance v2, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity$2;

    invoke-direct {v2, p0}, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity$2;-><init>(Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([BLcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;)V

    .line 189
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->binding:Lcom/keephealth/android/databinding/ActivityDrinkWaterTargetAndNoticeBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityDrinkWaterTargetAndNoticeBinding;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method synthetic lambda$handleData$0$com-keephealth-android-ui-main-activity-DrinkWaterTargetAndNoticeActivity()V
    .registers 17

    .line 0
    move-object/from16 v0, p0

    .line 234
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u6570\u636ehandleData: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->dataByte:[B

    const/16 v4, 0xa

    aget-byte v3, v3, v4

    invoke-static {v3}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->Byte2Int(B)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->dataByte:[B

    const/16 v6, 0xb

    aget-byte v5, v5, v6

    invoke-static {v5}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->Byte2Int(B)I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->dataByte:[B

    const/16 v5, 0xc

    aget-byte v3, v3, v5

    invoke-static {v3}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->Byte2Int(B)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->dataByte:[B

    aget-byte v1, v1, v4

    invoke-static {v1}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->Byte2Int(B)I

    move-result v1

    const/16 v7, 0xf

    const/16 v8, 0xd

    const/4 v9, 0x4

    const v14, 0x7f10026b

    const v15, 0x7f10026a

    const v10, 0x7f100269

    const v11, 0x7f100268

    const/16 v2, 0xe

    const/4 v12, 0x1

    const/4 v3, 0x0

    const/16 v13, 0xff

    if-ne v1, v13, :cond_1fd

    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->dataByte:[B

    aget-byte v1, v1, v6

    invoke-static {v1}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->Byte2Int(B)I

    move-result v1

    if-ne v1, v13, :cond_1fd

    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->dataByte:[B

    aget-byte v1, v1, v5

    invoke-static {v1}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->Byte2Int(B)I

    move-result v1

    if-ne v1, v13, :cond_1fd

    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->dataByte:[B

    aget-byte v1, v1, v8

    .line 236
    invoke-static {v1}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->Byte2Int(B)I

    move-result v1

    if-ne v1, v13, :cond_1fd

    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->dataByte:[B

    aget-byte v1, v1, v2

    invoke-static {v1}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->Byte2Int(B)I

    move-result v1

    if-ne v1, v13, :cond_1fd

    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->dataByte:[B

    aget-byte v1, v1, v7

    invoke-static {v1}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->Byte2Int(B)I

    move-result v1

    if-ne v1, v13, :cond_1fd

    .line 237
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->drinkWaterGoalDao:Lcom/keephealth/android/greendao/gen/DrinkWaterGoalDao;

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/gen/DrinkWaterGoalDao;->deleteAll()V

    .line 238
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->binding:Lcom/keephealth/android/databinding/ActivityDrinkWaterTargetAndNoticeBinding;

    iget-object v1, v1, Lcom/keephealth/android/databinding/ActivityDrinkWaterTargetAndNoticeBinding;->ilDrinkWaterOpen:Lcom/keephealth/android/views/ItemToggleLayout;

    invoke-virtual {v1, v3}, Lcom/keephealth/android/views/ItemToggleLayout;->setOpen(Z)V

    .line 239
    sput-boolean v3, Lcom/keephealth/android/app/AppApplication;->isDrinkWaterOpen:Z

    .line 241
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    invoke-virtual {v1}, Lcom/keephealth/android/model/bean/UserBean;->getWaterUnit()I

    move-result v1

    if-nez v1, :cond_b6

    const/16 v1, 0x708

    .line 242
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_d5

    .line 243
    :cond_b6
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    invoke-virtual {v1}, Lcom/keephealth/android/model/bean/UserBean;->getWaterUnit()I

    move-result v1

    if-ne v1, v12, :cond_ca

    const v1, 0x427d70a4    # 63.36f

    .line 244
    invoke-static {v1}, Lcom/keephealth/android/util/NumUtil;->float2float(F)F

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    goto :goto_d5

    :cond_ca
    const v1, 0x42735c28    # 60.839996f

    .line 246
    invoke-static {v1}, Lcom/keephealth/android/util/NumUtil;->float2float(F)F

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    .line 248
    :goto_d5
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->addWater:Ljava/lang/String;

    .line 249
    iget-object v6, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->binding:Lcom/keephealth/android/databinding/ActivityDrinkWaterTargetAndNoticeBinding;

    iget-object v6, v6, Lcom/keephealth/android/databinding/ActivityDrinkWaterTargetAndNoticeBinding;->etDrinkWaterGoal:Landroid/widget/EditText;

    invoke-virtual {v6, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 250
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->binding:Lcom/keephealth/android/databinding/ActivityDrinkWaterTargetAndNoticeBinding;

    iget-object v1, v1, Lcom/keephealth/android/databinding/ActivityDrinkWaterTargetAndNoticeBinding;->etDrinkWaterGoal:Landroid/widget/EditText;

    invoke-virtual {v1, v9}, Landroid/widget/EditText;->setSelection(I)V

    .line 251
    new-instance v1, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;

    invoke-direct {v1}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;-><init>()V

    .line 252
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->setName(Ljava/lang/String;)V

    const/16 v6, 0x8

    .line 253
    invoke-virtual {v1, v6}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->setHour(I)V

    .line 254
    invoke-virtual {v1, v3}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->setMinuter(I)V

    .line 255
    iget-object v6, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->drinkWaterGoalDao:Lcom/keephealth/android/greendao/gen/DrinkWaterGoalDao;

    invoke-virtual {v6, v1}, Lcom/keephealth/android/greendao/gen/DrinkWaterGoalDao;->save(Ljava/lang/Object;)V

    .line 256
    iget-object v6, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->drinkWaterGoals:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 258
    new-instance v1, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;

    invoke-direct {v1}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;-><init>()V

    .line 259
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->setName(Ljava/lang/String;)V

    .line 260
    invoke-virtual {v1, v4}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->setHour(I)V

    .line 261
    invoke-virtual {v1, v3}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->setMinuter(I)V

    .line 262
    iget-object v4, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->drinkWaterGoalDao:Lcom/keephealth/android/greendao/gen/DrinkWaterGoalDao;

    invoke-virtual {v4, v1}, Lcom/keephealth/android/greendao/gen/DrinkWaterGoalDao;->save(Ljava/lang/Object;)V

    .line 263
    iget-object v4, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->drinkWaterGoals:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 265
    new-instance v1, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;

    invoke-direct {v1}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;-><init>()V

    .line 266
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->setName(Ljava/lang/String;)V

    .line 267
    invoke-virtual {v1, v5}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->setHour(I)V

    .line 268
    invoke-virtual {v1, v3}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->setMinuter(I)V

    .line 269
    iget-object v4, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->drinkWaterGoalDao:Lcom/keephealth/android/greendao/gen/DrinkWaterGoalDao;

    invoke-virtual {v4, v1}, Lcom/keephealth/android/greendao/gen/DrinkWaterGoalDao;->save(Ljava/lang/Object;)V

    .line 270
    iget-object v4, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->drinkWaterGoals:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 272
    new-instance v1, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;

    invoke-direct {v1}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;-><init>()V

    .line 273
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->setName(Ljava/lang/String;)V

    .line 274
    invoke-virtual {v1, v2}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->setHour(I)V

    .line 275
    invoke-virtual {v1, v3}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->setMinuter(I)V

    .line 276
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->drinkWaterGoalDao:Lcom/keephealth/android/greendao/gen/DrinkWaterGoalDao;

    invoke-virtual {v2, v1}, Lcom/keephealth/android/greendao/gen/DrinkWaterGoalDao;->save(Ljava/lang/Object;)V

    .line 277
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->drinkWaterGoals:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    new-instance v1, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;

    invoke-direct {v1}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;-><init>()V

    .line 280
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f10026c

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->setName(Ljava/lang/String;)V

    const/16 v2, 0x10

    .line 281
    invoke-virtual {v1, v2}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->setHour(I)V

    .line 282
    invoke-virtual {v1, v3}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->setMinuter(I)V

    .line 283
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->drinkWaterGoalDao:Lcom/keephealth/android/greendao/gen/DrinkWaterGoalDao;

    invoke-virtual {v2, v1}, Lcom/keephealth/android/greendao/gen/DrinkWaterGoalDao;->save(Ljava/lang/Object;)V

    .line 284
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->drinkWaterGoals:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 286
    new-instance v1, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;

    invoke-direct {v1}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;-><init>()V

    .line 287
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f10026d

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->setName(Ljava/lang/String;)V

    const/16 v2, 0x12

    .line 288
    invoke-virtual {v1, v2}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->setHour(I)V

    .line 289
    invoke-virtual {v1, v3}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->setMinuter(I)V

    .line 290
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->drinkWaterGoalDao:Lcom/keephealth/android/greendao/gen/DrinkWaterGoalDao;

    invoke-virtual {v2, v1}, Lcom/keephealth/android/greendao/gen/DrinkWaterGoalDao;->save(Ljava/lang/Object;)V

    .line 291
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->drinkWaterGoals:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 293
    new-instance v1, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;

    invoke-direct {v1}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;-><init>()V

    .line 294
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f10026e

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->setName(Ljava/lang/String;)V

    const/16 v2, 0x14

    .line 295
    invoke-virtual {v1, v2}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->setHour(I)V

    .line 296
    invoke-virtual {v1, v3}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->setMinuter(I)V

    .line 297
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->drinkWaterGoalDao:Lcom/keephealth/android/greendao/gen/DrinkWaterGoalDao;

    invoke-virtual {v2, v1}, Lcom/keephealth/android/greendao/gen/DrinkWaterGoalDao;->save(Ljava/lang/Object;)V

    .line 298
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->drinkWaterGoals:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 300
    new-instance v1, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;

    invoke-direct {v1}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;-><init>()V

    .line 301
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f10026f

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->setName(Ljava/lang/String;)V

    const/16 v2, 0x16

    .line 302
    invoke-virtual {v1, v2}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->setHour(I)V

    .line 303
    invoke-virtual {v1, v3}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->setMinuter(I)V

    .line 304
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->drinkWaterGoalDao:Lcom/keephealth/android/greendao/gen/DrinkWaterGoalDao;

    invoke-virtual {v2, v1}, Lcom/keephealth/android/greendao/gen/DrinkWaterGoalDao;->save(Ljava/lang/Object;)V

    .line 305
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->drinkWaterGoals:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4fd

    .line 307
    :cond_1fd
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->dataByte:[B

    aget-byte v1, v1, v9

    and-int/2addr v1, v13

    if-ne v1, v13, :cond_206

    move v1, v12

    goto :goto_207

    :cond_206
    move v1, v3

    :goto_207
    sput-boolean v1, Lcom/keephealth/android/app/AppApplication;->isDrinkWaterOpen:Z

    .line 308
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->binding:Lcom/keephealth/android/databinding/ActivityDrinkWaterTargetAndNoticeBinding;

    iget-object v1, v1, Lcom/keephealth/android/databinding/ActivityDrinkWaterTargetAndNoticeBinding;->ilDrinkWaterOpen:Lcom/keephealth/android/views/ItemToggleLayout;

    sget-boolean v9, Lcom/keephealth/android/app/AppApplication;->isDrinkWaterOpen:Z

    invoke-virtual {v1, v9}, Lcom/keephealth/android/views/ItemToggleLayout;->setOpen(Z)V

    .line 309
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v9, "\u662f\u5426\u5f00\u542f: "

    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v9, Lcom/keephealth/android/app/AppApplication;->isDrinkWaterOpen:Z

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v9, "\u559d\u6c34\u63d0\u9192\u5f00\u5173"

    invoke-static {v9, v1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->dataByte:[B

    const/4 v9, 0x6

    invoke-static {v1, v9, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    invoke-static {v1}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToInt([B)I

    move-result v1

    .line 312
    iget-object v13, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    invoke-virtual {v13}, Lcom/keephealth/android/model/bean/UserBean;->getWaterUnit()I

    move-result v13

    if-nez v13, :cond_240

    .line 313
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_263

    .line 314
    :cond_240
    iget-object v13, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    invoke-virtual {v13}, Lcom/keephealth/android/model/bean/UserBean;->getWaterUnit()I

    move-result v13

    if-ne v13, v12, :cond_256

    const v13, 0x3d102de0    # 0.0352f

    int-to-float v1, v1

    mul-float/2addr v1, v13

    .line 315
    invoke-static {v1}, Lcom/keephealth/android/util/NumUtil;->float2float(F)F

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    goto :goto_263

    :cond_256
    const v13, 0x3d0a71de    # 0.0338f

    int-to-float v1, v1

    mul-float/2addr v1, v13

    .line 317
    invoke-static {v1}, Lcom/keephealth/android/util/NumUtil;->float2float(F)F

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    .line 319
    :goto_263
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->addWater:Ljava/lang/String;

    .line 320
    invoke-direct/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->setWaterTarget()V

    .line 321
    iget-object v13, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->binding:Lcom/keephealth/android/databinding/ActivityDrinkWaterTargetAndNoticeBinding;

    iget-object v13, v13, Lcom/keephealth/android/databinding/ActivityDrinkWaterTargetAndNoticeBinding;->etDrinkWaterGoal:Landroid/widget/EditText;

    invoke-virtual {v13, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 322
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->dataByte:[B

    invoke-static {v1, v9, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    invoke-static {v1}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToInt([B)I

    move-result v1

    invoke-static {v1}, Lcom/keephealth/android/util/SPHelper;->saveWaterGoal(I)V

    .line 323
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->drinkWaterGoalDao:Lcom/keephealth/android/greendao/gen/DrinkWaterGoalDao;

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/gen/DrinkWaterGoalDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    sget-object v9, Lcom/keephealth/android/greendao/gen/DrinkWaterGoalDao$Properties;->Name:Lorg/greenrobot/greendao/Property;

    invoke-virtual {v0, v11}, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v9

    new-array v13, v3, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v1, v9, v13}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;

    if-nez v1, :cond_2a8

    .line 325
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->drinkWaterGoalDao:Lcom/keephealth/android/greendao/gen/DrinkWaterGoalDao;

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/gen/DrinkWaterGoalDao;->deleteAll()V

    .line 326
    new-instance v1, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;

    invoke-direct {v1}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;-><init>()V

    .line 328
    :cond_2a8
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->setName(Ljava/lang/String;)V

    .line 329
    iget-object v9, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->dataByte:[B

    aget-byte v4, v9, v4

    invoke-virtual {v1, v4}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->setHour(I)V

    .line 330
    iget-object v4, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->dataByte:[B

    aget-byte v4, v4, v6

    invoke-virtual {v1, v4}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->setMinuter(I)V

    .line 331
    iget-object v4, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->drinkWaterGoalDao:Lcom/keephealth/android/greendao/gen/DrinkWaterGoalDao;

    invoke-virtual {v4, v1}, Lcom/keephealth/android/greendao/gen/DrinkWaterGoalDao;->save(Ljava/lang/Object;)V

    .line 332
    iget-object v4, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->drinkWaterGoals:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 334
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->drinkWaterGoalDao:Lcom/keephealth/android/greendao/gen/DrinkWaterGoalDao;

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/gen/DrinkWaterGoalDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    sget-object v4, Lcom/keephealth/android/greendao/gen/DrinkWaterGoalDao$Properties;->Name:Lorg/greenrobot/greendao/Property;

    invoke-virtual {v0, v10}, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v4

    new-array v6, v3, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v1, v4, v6}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;

    if-nez v1, :cond_2f2

    .line 336
    new-instance v1, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;

    invoke-direct {v1}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;-><init>()V

    .line 338
    :cond_2f2
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->setName(Ljava/lang/String;)V

    .line 339
    iget-object v4, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->dataByte:[B

    aget-byte v4, v4, v5

    invoke-virtual {v1, v4}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->setHour(I)V

    .line 340
    iget-object v4, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->dataByte:[B

    aget-byte v4, v4, v8

    invoke-virtual {v1, v4}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->setMinuter(I)V

    .line 341
    iget-object v4, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->drinkWaterGoalDao:Lcom/keephealth/android/greendao/gen/DrinkWaterGoalDao;

    invoke-virtual {v4, v1}, Lcom/keephealth/android/greendao/gen/DrinkWaterGoalDao;->save(Ljava/lang/Object;)V

    .line 342
    iget-object v4, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->drinkWaterGoals:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 344
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->drinkWaterGoalDao:Lcom/keephealth/android/greendao/gen/DrinkWaterGoalDao;

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/gen/DrinkWaterGoalDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    sget-object v4, Lcom/keephealth/android/greendao/gen/DrinkWaterGoalDao$Properties;->Name:Lorg/greenrobot/greendao/Property;

    invoke-virtual {v0, v15}, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v4

    new-array v5, v3, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v1, v4, v5}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;

    if-nez v1, :cond_33c

    .line 346
    new-instance v1, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;

    invoke-direct {v1}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;-><init>()V

    .line 348
    :cond_33c
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->setName(Ljava/lang/String;)V

    .line 349
    iget-object v4, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->dataByte:[B

    aget-byte v2, v4, v2

    invoke-virtual {v1, v2}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->setHour(I)V

    .line 350
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->dataByte:[B

    aget-byte v2, v2, v7

    invoke-virtual {v1, v2}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->setMinuter(I)V

    .line 351
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->drinkWaterGoalDao:Lcom/keephealth/android/greendao/gen/DrinkWaterGoalDao;

    invoke-virtual {v2, v1}, Lcom/keephealth/android/greendao/gen/DrinkWaterGoalDao;->save(Ljava/lang/Object;)V

    .line 352
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->drinkWaterGoals:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 354
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->drinkWaterGoalDao:Lcom/keephealth/android/greendao/gen/DrinkWaterGoalDao;

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/gen/DrinkWaterGoalDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    sget-object v2, Lcom/keephealth/android/greendao/gen/DrinkWaterGoalDao$Properties;->Name:Lorg/greenrobot/greendao/Property;

    invoke-virtual {v0, v14}, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v2

    new-array v4, v3, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v1, v2, v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;

    if-nez v1, :cond_386

    .line 356
    new-instance v1, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;

    invoke-direct {v1}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;-><init>()V

    .line 358
    :cond_386
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->setName(Ljava/lang/String;)V

    .line 359
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->dataByte:[B

    const/16 v4, 0x10

    aget-byte v2, v2, v4

    invoke-virtual {v1, v2}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->setHour(I)V

    .line 360
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->dataByte:[B

    const/16 v4, 0x11

    aget-byte v2, v2, v4

    invoke-virtual {v1, v2}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->setMinuter(I)V

    .line 361
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->drinkWaterGoalDao:Lcom/keephealth/android/greendao/gen/DrinkWaterGoalDao;

    invoke-virtual {v2, v1}, Lcom/keephealth/android/greendao/gen/DrinkWaterGoalDao;->save(Ljava/lang/Object;)V

    .line 362
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->drinkWaterGoals:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 364
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->drinkWaterGoalDao:Lcom/keephealth/android/greendao/gen/DrinkWaterGoalDao;

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/gen/DrinkWaterGoalDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    sget-object v2, Lcom/keephealth/android/greendao/gen/DrinkWaterGoalDao$Properties;->Name:Lorg/greenrobot/greendao/Property;

    const v4, 0x7f10026c

    invoke-virtual {v0, v4}, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v2

    new-array v4, v3, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v1, v2, v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;

    if-nez v1, :cond_3d7

    .line 366
    new-instance v1, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;

    invoke-direct {v1}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;-><init>()V

    .line 368
    :cond_3d7
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f10026c

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->setName(Ljava/lang/String;)V

    .line 369
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->dataByte:[B

    const/16 v4, 0x12

    aget-byte v2, v2, v4

    invoke-virtual {v1, v2}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->setHour(I)V

    .line 370
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->dataByte:[B

    const/16 v4, 0x13

    aget-byte v2, v2, v4

    invoke-virtual {v1, v2}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->setMinuter(I)V

    .line 371
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->drinkWaterGoalDao:Lcom/keephealth/android/greendao/gen/DrinkWaterGoalDao;

    invoke-virtual {v2, v1}, Lcom/keephealth/android/greendao/gen/DrinkWaterGoalDao;->save(Ljava/lang/Object;)V

    .line 372
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->drinkWaterGoals:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 374
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->drinkWaterGoalDao:Lcom/keephealth/android/greendao/gen/DrinkWaterGoalDao;

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/gen/DrinkWaterGoalDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    sget-object v2, Lcom/keephealth/android/greendao/gen/DrinkWaterGoalDao$Properties;->Name:Lorg/greenrobot/greendao/Property;

    const v4, 0x7f10026d

    invoke-virtual {v0, v4}, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v2

    new-array v4, v3, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v1, v2, v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;

    if-nez v1, :cond_42b

    .line 376
    new-instance v1, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;

    invoke-direct {v1}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;-><init>()V

    .line 378
    :cond_42b
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f10026d

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->setName(Ljava/lang/String;)V

    .line 379
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->dataByte:[B

    const/16 v4, 0x14

    aget-byte v2, v2, v4

    invoke-virtual {v1, v2}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->setHour(I)V

    .line 380
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->dataByte:[B

    const/16 v4, 0x15

    aget-byte v2, v2, v4

    invoke-virtual {v1, v2}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->setMinuter(I)V

    .line 381
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->drinkWaterGoalDao:Lcom/keephealth/android/greendao/gen/DrinkWaterGoalDao;

    invoke-virtual {v2, v1}, Lcom/keephealth/android/greendao/gen/DrinkWaterGoalDao;->save(Ljava/lang/Object;)V

    .line 382
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->drinkWaterGoals:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 384
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->drinkWaterGoalDao:Lcom/keephealth/android/greendao/gen/DrinkWaterGoalDao;

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/gen/DrinkWaterGoalDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    sget-object v2, Lcom/keephealth/android/greendao/gen/DrinkWaterGoalDao$Properties;->Name:Lorg/greenrobot/greendao/Property;

    const v4, 0x7f10026e

    invoke-virtual {v0, v4}, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v2

    new-array v4, v3, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v1, v2, v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;

    if-nez v1, :cond_47f

    .line 386
    new-instance v1, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;

    invoke-direct {v1}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;-><init>()V

    .line 388
    :cond_47f
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f10026e

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->setName(Ljava/lang/String;)V

    .line 389
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->dataByte:[B

    const/16 v4, 0x16

    aget-byte v2, v2, v4

    invoke-virtual {v1, v2}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->setHour(I)V

    .line 390
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->dataByte:[B

    const/16 v4, 0x17

    aget-byte v2, v2, v4

    invoke-virtual {v1, v2}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->setMinuter(I)V

    .line 391
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->drinkWaterGoalDao:Lcom/keephealth/android/greendao/gen/DrinkWaterGoalDao;

    invoke-virtual {v2, v1}, Lcom/keephealth/android/greendao/gen/DrinkWaterGoalDao;->save(Ljava/lang/Object;)V

    .line 392
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->drinkWaterGoals:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 394
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->drinkWaterGoalDao:Lcom/keephealth/android/greendao/gen/DrinkWaterGoalDao;

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/gen/DrinkWaterGoalDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    sget-object v2, Lcom/keephealth/android/greendao/gen/DrinkWaterGoalDao$Properties;->Name:Lorg/greenrobot/greendao/Property;

    const v4, 0x7f10026f

    invoke-virtual {v0, v4}, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v2

    new-array v3, v3, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v1, v2, v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;

    if-nez v1, :cond_4d3

    .line 396
    new-instance v1, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;

    invoke-direct {v1}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;-><init>()V

    .line 398
    :cond_4d3
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f10026f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->setName(Ljava/lang/String;)V

    .line 399
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->dataByte:[B

    const/16 v3, 0x18

    aget-byte v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->setHour(I)V

    .line 400
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->dataByte:[B

    const/16 v3, 0x19

    aget-byte v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->setMinuter(I)V

    .line 401
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->drinkWaterGoalDao:Lcom/keephealth/android/greendao/gen/DrinkWaterGoalDao;

    invoke-virtual {v2, v1}, Lcom/keephealth/android/greendao/gen/DrinkWaterGoalDao;->save(Ljava/lang/Object;)V

    .line 402
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->drinkWaterGoals:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 404
    :goto_4fd
    new-instance v1, Lcom/keephealth/android/ui/device/adapter/DrinkWaterGoalAdapter;

    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->drinkWaterGoals:Ljava/util/List;

    invoke-direct {v1, v0, v2}, Lcom/keephealth/android/ui/device/adapter/DrinkWaterGoalAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->mAdapter:Lcom/keephealth/android/ui/device/adapter/DrinkWaterGoalAdapter;

    .line 405
    new-instance v2, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity$4;

    invoke-direct {v2, v0}, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity$4;-><init>(Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;)V

    invoke-virtual {v1, v2}, Lcom/keephealth/android/ui/device/adapter/DrinkWaterGoalAdapter;->setOnItemClickListener(Lcom/keephealth/android/base/BaseAdapter$OnItemClickListener;)V

    .line 418
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->binding:Lcom/keephealth/android/databinding/ActivityDrinkWaterTargetAndNoticeBinding;

    iget-object v1, v1, Lcom/keephealth/android/databinding/ActivityDrinkWaterTargetAndNoticeBinding;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->mAdapter:Lcom/keephealth/android/ui/device/adapter/DrinkWaterGoalAdapter;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method synthetic lambda$initLunarPicker$1$com-keephealth-android-ui-main-activity-DrinkWaterTargetAndNoticeActivity(IIILandroid/view/View;)V
    .registers 5

    .line 432
    iget-object p3, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->selectGoal:Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;

    invoke-virtual {p3, p1}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->setHour(I)V

    .line 433
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->selectGoal:Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;

    invoke-virtual {p1, p2}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->setMinuter(I)V

    .line 434
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->mAdapter:Lcom/keephealth/android/ui/device/adapter/DrinkWaterGoalAdapter;

    iget p2, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->selectGoalPosition:I

    invoke-virtual {p1, p2}, Lcom/keephealth/android/ui/device/adapter/DrinkWaterGoalAdapter;->notifyItemChanged(I)V

    return-void
.end method

.method synthetic lambda$initLunarPicker$2$com-keephealth-android-ui-main-activity-DrinkWaterTargetAndNoticeActivity(Landroid/view/View;)V
    .registers 3

    .line 439
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->pvCustomLunar:Lcom/bigkoo/pickerview/view/OptionsPickerView;

    invoke-virtual {p1}, Lcom/bigkoo/pickerview/view/OptionsPickerView;->returnData()V

    .line 440
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->pvCustomLunar:Lcom/bigkoo/pickerview/view/OptionsPickerView;

    invoke-virtual {p1}, Lcom/bigkoo/pickerview/view/OptionsPickerView;->dismiss()V

    .line 441
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->drinkWaterGoalDao:Lcom/keephealth/android/greendao/gen/DrinkWaterGoalDao;

    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->selectGoal:Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;

    invoke-virtual {p1, v0}, Lcom/keephealth/android/greendao/gen/DrinkWaterGoalDao;->save(Ljava/lang/Object;)V

    return-void
.end method

.method synthetic lambda$initLunarPicker$3$com-keephealth-android-ui-main-activity-DrinkWaterTargetAndNoticeActivity(Landroid/view/View;)V
    .registers 2

    .line 443
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->pvCustomLunar:Lcom/bigkoo/pickerview/view/OptionsPickerView;

    invoke-virtual {p1}, Lcom/bigkoo/pickerview/view/OptionsPickerView;->dismiss()V

    return-void
.end method

.method synthetic lambda$initLunarPicker$4$com-keephealth-android-ui-main-activity-DrinkWaterTargetAndNoticeActivity(Landroid/view/View;)V
    .registers 4

    .line 0
    const v0, 0x7f09073a

    .line 436
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f090726

    .line 437
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 438
    new-instance v1, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity$$ExternalSyntheticLambda3;-><init>(Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 443
    new-instance v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity$$ExternalSyntheticLambda4;-><init>(Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onDestroy()V
    .registers 3

    .line 643
    invoke-super {p0}, Lcom/keephealth/android/base/BaseMvvmNewActivity;->onDestroy()V

    .line 644
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->destroy(Ljava/lang/Object;)V

    .line 645
    invoke-static {}, Lcom/keephealth/android/util/DialogHelperNew;->dismissWait()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 584
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1d

    .line 585
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->binding:Lcom/keephealth/android/databinding/ActivityDrinkWaterTargetAndNoticeBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityDrinkWaterTargetAndNoticeBinding;->etDrinkWaterGoal:Landroid/widget/EditText;

    invoke-direct {p0, v0, p1}, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->isTouchInsideView(Landroid/widget/EditText;Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1d

    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->binding:Lcom/keephealth/android/databinding/ActivityDrinkWaterTargetAndNoticeBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityDrinkWaterTargetAndNoticeBinding;->etDrinkWaterGoal:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 586
    invoke-direct {p0}, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->setEtDrinkWaterGoal()V

    .line 589
    :cond_1d
    invoke-super {p0, p1}, Lcom/keephealth/android/base/BaseMvvmNewActivity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
