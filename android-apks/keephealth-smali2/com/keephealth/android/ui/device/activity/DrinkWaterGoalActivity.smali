.class public Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;
.super Lcom/keephealth/android/base/BaseActivity;
.source "DrinkWaterGoalActivity.java"

# interfaces
.implements Lcom/keephealth/android/base/BaseAdapter$OnItemClickListener;


# instance fields
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

.field etDrinkWaterGoal:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09016a
    .end annotation
.end field

.field private from:I

.field ilDrinkWaterOpen:Lcom/keephealth/android/views/ItemToggleLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0901d6
    .end annotation
.end field

.field private isFrist:Z

.field private mAdapter:Lcom/keephealth/android/ui/device/adapter/DrinkWaterGoalAdapter;

.field mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0903dc
    .end annotation
.end field

.field private pvCustomLunar:Lcom/bigkoo/pickerview/view/OptionsPickerView;

.field private selectGoal:Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;

.field private selectGoalPosition:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 48
    invoke-direct {p0}, Lcom/keephealth/android/base/BaseActivity;-><init>()V

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;->drinkWaterGoals:Ljava/util/List;

    const/16 v0, 0x28

    .line 64
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;->dataByte:[B

    const/4 v0, 0x0

    .line 66
    iput v0, p0, Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;->from:I

    return-void
.end method

.method static synthetic access$000(Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;)Z
    .registers 1

    .line 48
    iget-boolean p0, p0, Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;->isFrist:Z

    return p0
.end method

.method static synthetic access$002(Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;Z)Z
    .registers 2

    .line 48
    iput-boolean p1, p0, Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;->isFrist:Z

    return p1
.end method

.method static synthetic access$100(Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;)[B
    .registers 1

    .line 48
    iget-object p0, p0, Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;->dataByte:[B

    return-object p0
.end method

.method static synthetic access$200(Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;)V
    .registers 1

    .line 48
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;->handleData()V

    return-void
.end method

.method static synthetic access$300(Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;)I
    .registers 1

    .line 48
    iget p0, p0, Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;->from:I

    return p0
.end method

.method static synthetic access$400(Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;Ljava/lang/String;)V
    .registers 2

    .line 48
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method private handleData()V
    .registers 2

    .line 138
    new-instance v0, Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity$$ExternalSyntheticLambda1;-><init>(Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;)V

    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private initLunarPicker()V
    .registers 7

    .line 275
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_7
    const/16 v3, 0x18

    .line 276
    const-string v4, "%02d"

    if-ge v2, v3, :cond_1f

    .line 277
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/keephealth/android/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 279
    :cond_1f
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v3, v1

    :goto_25
    const/16 v5, 0x3c

    if-ge v3, v5, :cond_3b

    .line 281
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/keephealth/android/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_25

    .line 283
    :cond_3b
    new-instance v3, Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;

    new-instance v4, Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity$$ExternalSyntheticLambda4;

    invoke-direct {v4, p0}, Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity$$ExternalSyntheticLambda4;-><init>(Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;)V

    invoke-direct {v3, p0, v4}, Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;-><init>(Landroid/content/Context;Lcom/bigkoo/pickerview/listener/OnOptionsSelectListener;)V

    new-instance v4, Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity$$ExternalSyntheticLambda5;

    invoke-direct {v4, p0}, Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity$$ExternalSyntheticLambda5;-><init>(Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;)V

    const v5, 0x7f0c0188

    .line 287
    invoke-virtual {v3, v5, v4}, Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;->setLayoutRes(ILcom/bigkoo/pickerview/listener/CustomListener;)Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;

    move-result-object v3

    const/4 v4, 0x7

    .line 296
    invoke-virtual {v3, v4}, Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;->setItemVisibleCount(I)Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;

    move-result-object v3

    const/high16 v4, 0x40000000    # 2.0f

    .line 297
    invoke-virtual {v3, v4}, Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;->setLineSpacingMultiplier(F)Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;

    move-result-object v3

    const/4 v4, 0x1

    .line 298
    invoke-virtual {v3, v4}, Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;->isDialog(Z)Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;

    move-result-object v3

    .line 299
    invoke-virtual {v3, v4}, Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;->setOutSideCancelable(Z)Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;

    move-result-object v3

    const v4, -0x333334

    .line 300
    invoke-virtual {v3, v4}, Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;->setDividerColor(I)Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;

    move-result-object v3

    .line 301
    invoke-virtual {v3}, Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;->build()Lcom/bigkoo/pickerview/view/OptionsPickerView;

    move-result-object v3

    iput-object v3, p0, Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;->pvCustomLunar:Lcom/bigkoo/pickerview/view/OptionsPickerView;

    const/4 v4, 0x0

    .line 302
    invoke-virtual {v3, v0, v2, v4}, Lcom/bigkoo/pickerview/view/OptionsPickerView;->setNPicker(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 303
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;->pvCustomLunar:Lcom/bigkoo/pickerview/view/OptionsPickerView;

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;->selectGoal:Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;

    invoke-virtual {v2}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->getHour()I

    move-result v2

    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;->selectGoal:Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;

    invoke-virtual {v3}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->getMinuter()I

    move-result v3

    invoke-virtual {v0, v2, v3, v1}, Lcom/bigkoo/pickerview/view/OptionsPickerView;->setSelectOptions(III)V

    .line 304
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;->pvCustomLunar:Lcom/bigkoo/pickerview/view/OptionsPickerView;

    invoke-virtual {v0}, Lcom/bigkoo/pickerview/view/OptionsPickerView;->show()V

    return-void
.end method


# virtual methods
.method protected getContentView()I
    .registers 2

    const v0, 0x7f0c0047

    return v0
.end method

.method protected initView()V
    .registers 4

    .line 70
    invoke-super {p0}, Lcom/keephealth/android/base/BaseActivity;->initView()V

    .line 71
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;->titleName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100273

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;->rightText:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 73
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;->rightText:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100508

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 74
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/DaoSession;->getDrinkWaterGoalDao()Lcom/keephealth/android/greendao/gen/DrinkWaterGoalDao;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;->drinkWaterGoalDao:Lcom/keephealth/android/greendao/gen/DrinkWaterGoalDao;

    .line 75
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_49

    .line 77
    const-string v1, "from"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;->from:I

    .line 80
    :cond_49
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;->rightText:Landroid/widget/Button;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x1

    .line 108
    iput-boolean v0, p0, Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;->isFrist:Z

    const/16 v1, 0x12

    .line 109
    invoke-static {p0, v0, v1}, Lcom/keephealth/android/util/DialogHelperNew;->buildWaitDialog(Landroid/app/Activity;ZI)Landroid/app/Dialog;

    .line 110
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    invoke-static {}, Lcom/keephealth/android/util/ble/CmdHelper;->getDrinkWater()[B

    move-result-object v1

    new-instance v2, Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity$2;

    invoke-direct {v2, p0}, Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity$2;-><init>(Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([BLcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;)V

    .line 134
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method synthetic lambda$handleData$1$com-keephealth-android-ui-device-activity-DrinkWaterGoalActivity()V
    .registers 19

    .line 0
    move-object/from16 v0, p0

    .line 139
    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;->dataByte:[B

    const/4 v2, 0x6

    aget-byte v1, v1, v2

    invoke-static {v1}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->Byte2Int(B)I

    move-result v1

    const v6, 0x7f10026d

    const/16 v7, 0xe

    const v8, 0x7f10026c

    const v9, 0x7f10026b

    const v10, 0x7f10026a

    const v11, 0x7f100269

    const v12, 0x7f100268

    const/4 v13, 0x4

    const/16 v14, 0xb

    const/16 v15, 0xa

    const/4 v2, 0x0

    const/16 v3, 0xff

    if-ne v1, v3, :cond_14d

    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;->dataByte:[B

    const/4 v4, 0x7

    aget-byte v1, v1, v4

    invoke-static {v1}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->Byte2Int(B)I

    move-result v1

    if-ne v1, v3, :cond_14d

    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;->dataByte:[B

    const/16 v5, 0x8

    aget-byte v1, v1, v5

    .line 140
    invoke-static {v1}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->Byte2Int(B)I

    move-result v1

    if-ne v1, v3, :cond_14d

    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;->dataByte:[B

    const/16 v16, 0x9

    aget-byte v1, v1, v16

    invoke-static {v1}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->Byte2Int(B)I

    move-result v1

    if-ne v1, v3, :cond_14d

    .line 141
    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;->ilDrinkWaterOpen:Lcom/keephealth/android/views/ItemToggleLayout;

    invoke-virtual {v1, v2}, Lcom/keephealth/android/views/ItemToggleLayout;->setOpen(Z)V

    .line 142
    sput-boolean v2, Lcom/keephealth/android/app/AppApplication;->isDrinkWaterOpen:Z

    .line 143
    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;->etDrinkWaterGoal:Landroid/widget/EditText;

    const/16 v3, 0x708

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 144
    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;->etDrinkWaterGoal:Landroid/widget/EditText;

    invoke-virtual {v1, v13}, Landroid/widget/EditText;->setSelection(I)V

    .line 145
    new-instance v1, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;

    invoke-direct {v1}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;-><init>()V

    .line 146
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->setName(Ljava/lang/String;)V

    .line 147
    invoke-virtual {v1, v4}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->setHour(I)V

    .line 148
    invoke-virtual {v1, v2}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->setMinuter(I)V

    .line 149
    iget-object v3, v0, Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;->drinkWaterGoals:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    new-instance v1, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;

    invoke-direct {v1}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;-><init>()V

    .line 152
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->setName(Ljava/lang/String;)V

    .line 153
    invoke-virtual {v1, v5}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->setHour(I)V

    const/16 v3, 0x28

    .line 154
    invoke-virtual {v1, v3}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->setMinuter(I)V

    .line 155
    iget-object v3, v0, Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;->drinkWaterGoals:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    new-instance v1, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;

    invoke-direct {v1}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;-><init>()V

    .line 158
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->setName(Ljava/lang/String;)V

    .line 159
    invoke-virtual {v1, v15}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->setHour(I)V

    .line 160
    invoke-virtual {v1, v2}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->setMinuter(I)V

    .line 161
    iget-object v3, v0, Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;->drinkWaterGoals:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    new-instance v1, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;

    invoke-direct {v1}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;-><init>()V

    .line 164
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->setName(Ljava/lang/String;)V

    .line 165
    invoke-virtual {v1, v14}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->setHour(I)V

    const/16 v3, 0x1e

    .line 166
    invoke-virtual {v1, v3}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->setMinuter(I)V

    .line 167
    iget-object v4, v0, Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;->drinkWaterGoals:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    new-instance v1, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;

    invoke-direct {v1}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;-><init>()V

    .line 170
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->setName(Ljava/lang/String;)V

    .line 171
    invoke-virtual {v1, v7}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->setHour(I)V

    .line 172
    invoke-virtual {v1, v3}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->setMinuter(I)V

    .line 173
    iget-object v3, v0, Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;->drinkWaterGoals:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    new-instance v1, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;

    invoke-direct {v1}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;-><init>()V

    .line 176
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->setName(Ljava/lang/String;)V

    const/16 v3, 0x10

    .line 177
    invoke-virtual {v1, v3}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->setHour(I)V

    .line 178
    invoke-virtual {v1, v2}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->setMinuter(I)V

    .line 179
    iget-object v3, v0, Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;->drinkWaterGoals:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    new-instance v1, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;

    invoke-direct {v1}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;-><init>()V

    .line 182
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f10026e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->setName(Ljava/lang/String;)V

    const/16 v3, 0x12

    .line 183
    invoke-virtual {v1, v3}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->setHour(I)V

    .line 184
    invoke-virtual {v1, v2}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->setMinuter(I)V

    .line 185
    iget-object v3, v0, Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;->drinkWaterGoals:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    new-instance v1, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;

    invoke-direct {v1}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;-><init>()V

    .line 188
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f10026f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->setName(Ljava/lang/String;)V

    const/16 v3, 0x16

    .line 189
    invoke-virtual {v1, v3}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->setHour(I)V

    .line 190
    invoke-virtual {v1, v2}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->setMinuter(I)V

    .line 191
    iget-object v2, v0, Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;->drinkWaterGoals:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2e8

    .line 193
    :cond_14d
    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;->dataByte:[B

    aget-byte v4, v1, v15

    and-int/2addr v4, v3

    const/16 v5, 0xd

    const/16 v16, 0xc

    const/16 v17, 0x1

    if-ne v4, v3, :cond_16c

    aget-byte v4, v1, v14

    and-int/2addr v4, v3

    if-ne v4, v3, :cond_16c

    aget-byte v4, v1, v16

    and-int/2addr v4, v3

    if-ne v4, v3, :cond_16c

    aget-byte v1, v1, v5

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_16c

    .line 194
    sput-boolean v2, Lcom/keephealth/android/app/AppApplication;->isDrinkWaterOpen:Z

    goto :goto_16e

    .line 196
    :cond_16c
    sput-boolean v17, Lcom/keephealth/android/app/AppApplication;->isDrinkWaterOpen:Z

    .line 198
    :goto_16e
    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;->ilDrinkWaterOpen:Lcom/keephealth/android/views/ItemToggleLayout;

    iget-object v3, v0, Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;->dataByte:[B

    aget-byte v3, v3, v13

    if-eqz v3, :cond_178

    move/from16 v2, v17

    :cond_178
    invoke-virtual {v1, v2}, Lcom/keephealth/android/views/ItemToggleLayout;->setOpen(Z)V

    .line 199
    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;->dataByte:[B

    const/4 v2, 0x6

    invoke-static {v1, v2, v15}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    invoke-static {v1}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToInt([B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 200
    iget-object v2, v0, Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;->etDrinkWaterGoal:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 201
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x5

    if-le v2, v3, :cond_19d

    .line 202
    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;->etDrinkWaterGoal:Landroid/widget/EditText;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_1a6

    .line 204
    :cond_19d
    iget-object v2, v0, Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;->etDrinkWaterGoal:Landroid/widget/EditText;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 206
    :goto_1a6
    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;->dataByte:[B

    const/4 v2, 0x6

    invoke-static {v1, v2, v15}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    invoke-static {v1}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToInt([B)I

    move-result v1

    invoke-static {v1}, Lcom/keephealth/android/util/SPHelper;->saveWaterGoal(I)V

    .line 207
    new-instance v1, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;

    invoke-direct {v1}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;-><init>()V

    .line 208
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->setName(Ljava/lang/String;)V

    .line 209
    iget-object v2, v0, Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;->dataByte:[B

    aget-byte v2, v2, v15

    invoke-virtual {v1, v2}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->setHour(I)V

    .line 210
    iget-object v2, v0, Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;->dataByte:[B

    aget-byte v2, v2, v14

    invoke-virtual {v1, v2}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->setMinuter(I)V

    .line 211
    iget-object v2, v0, Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;->drinkWaterGoals:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    new-instance v1, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;

    invoke-direct {v1}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;-><init>()V

    .line 214
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->setName(Ljava/lang/String;)V

    .line 215
    iget-object v2, v0, Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;->dataByte:[B

    aget-byte v2, v2, v16

    invoke-virtual {v1, v2}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->setHour(I)V

    .line 216
    iget-object v2, v0, Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;->dataByte:[B

    aget-byte v2, v2, v5

    invoke-virtual {v1, v2}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->setMinuter(I)V

    .line 217
    iget-object v2, v0, Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;->drinkWaterGoals:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    new-instance v1, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;

    invoke-direct {v1}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;-><init>()V

    .line 220
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->setName(Ljava/lang/String;)V

    .line 221
    iget-object v2, v0, Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;->dataByte:[B

    aget-byte v2, v2, v7

    invoke-virtual {v1, v2}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->setHour(I)V

    .line 222
    iget-object v2, v0, Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;->dataByte:[B

    const/16 v3, 0xf

    aget-byte v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->setMinuter(I)V

    .line 223
    iget-object v2, v0, Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;->drinkWaterGoals:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    new-instance v1, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;

    invoke-direct {v1}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;-><init>()V

    .line 226
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->setName(Ljava/lang/String;)V

    .line 227
    iget-object v2, v0, Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;->dataByte:[B

    const/16 v3, 0x10

    aget-byte v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->setHour(I)V

    .line 228
    iget-object v2, v0, Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;->dataByte:[B

    const/16 v3, 0x11

    aget-byte v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->setMinuter(I)V

    .line 229
    iget-object v2, v0, Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;->drinkWaterGoals:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    new-instance v1, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;

    invoke-direct {v1}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;-><init>()V

    .line 232
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->setName(Ljava/lang/String;)V

    .line 233
    iget-object v2, v0, Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;->dataByte:[B

    const/16 v3, 0x12

    aget-byte v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->setHour(I)V

    .line 234
    iget-object v2, v0, Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;->dataByte:[B

    const/16 v3, 0x13

    aget-byte v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->setMinuter(I)V

    .line 235
    iget-object v2, v0, Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;->drinkWaterGoals:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    new-instance v1, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;

    invoke-direct {v1}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;-><init>()V

    .line 238
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->setName(Ljava/lang/String;)V

    .line 239
    iget-object v2, v0, Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;->dataByte:[B

    const/16 v3, 0x14

    aget-byte v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->setHour(I)V

    .line 240
    iget-object v2, v0, Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;->dataByte:[B

    const/16 v3, 0x15

    aget-byte v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->setMinuter(I)V

    .line 241
    iget-object v2, v0, Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;->drinkWaterGoals:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    new-instance v1, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;

    invoke-direct {v1}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;-><init>()V

    .line 244
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f10026e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->setName(Ljava/lang/String;)V

    .line 245
    iget-object v2, v0, Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;->dataByte:[B

    const/16 v3, 0x16

    aget-byte v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->setHour(I)V

    .line 246
    iget-object v2, v0, Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;->dataByte:[B

    const/16 v3, 0x17

    aget-byte v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->setMinuter(I)V

    .line 247
    iget-object v2, v0, Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;->drinkWaterGoals:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    new-instance v1, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;

    invoke-direct {v1}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;-><init>()V

    .line 250
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f10026f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->setName(Ljava/lang/String;)V

    .line 251
    iget-object v2, v0, Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;->dataByte:[B

    const/16 v3, 0x18

    aget-byte v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->setHour(I)V

    .line 252
    iget-object v2, v0, Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;->dataByte:[B

    const/16 v3, 0x19

    aget-byte v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->setMinuter(I)V

    .line 253
    iget-object v2, v0, Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;->drinkWaterGoals:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    :goto_2e8
    new-instance v1, Lcom/keephealth/android/ui/device/adapter/DrinkWaterGoalAdapter;

    iget-object v2, v0, Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;->drinkWaterGoals:Ljava/util/List;

    invoke-direct {v1, v0, v2}, Lcom/keephealth/android/ui/device/adapter/DrinkWaterGoalAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, v0, Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;->mAdapter:Lcom/keephealth/android/ui/device/adapter/DrinkWaterGoalAdapter;

    .line 256
    invoke-virtual {v1, v0}, Lcom/keephealth/android/ui/device/adapter/DrinkWaterGoalAdapter;->setOnItemClickListener(Lcom/keephealth/android/base/BaseAdapter$OnItemClickListener;)V

    .line 257
    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v0, Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;->mAdapter:Lcom/keephealth/android/ui/device/adapter/DrinkWaterGoalAdapter;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method synthetic lambda$initLunarPicker$2$com-keephealth-android-ui-device-activity-DrinkWaterGoalActivity(IIILandroid/view/View;)V
    .registers 5

    .line 284
    iget-object p3, p0, Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;->selectGoal:Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;

    invoke-virtual {p3, p1}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->setHour(I)V

    .line 285
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;->selectGoal:Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;

    invoke-virtual {p1, p2}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->setMinuter(I)V

    .line 286
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;->mAdapter:Lcom/keephealth/android/ui/device/adapter/DrinkWaterGoalAdapter;

    iget p2, p0, Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;->selectGoalPosition:I

    invoke-virtual {p1, p2}, Lcom/keephealth/android/ui/device/adapter/DrinkWaterGoalAdapter;->notifyItemChanged(I)V

    return-void
.end method

.method synthetic lambda$initLunarPicker$3$com-keephealth-android-ui-device-activity-DrinkWaterGoalActivity(Landroid/view/View;)V
    .registers 2

    .line 291
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;->pvCustomLunar:Lcom/bigkoo/pickerview/view/OptionsPickerView;

    invoke-virtual {p1}, Lcom/bigkoo/pickerview/view/OptionsPickerView;->returnData()V

    .line 292
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;->pvCustomLunar:Lcom/bigkoo/pickerview/view/OptionsPickerView;

    invoke-virtual {p1}, Lcom/bigkoo/pickerview/view/OptionsPickerView;->dismiss()V

    return-void
.end method

.method synthetic lambda$initLunarPicker$4$com-keephealth-android-ui-device-activity-DrinkWaterGoalActivity(Landroid/view/View;)V
    .registers 2

    .line 294
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;->pvCustomLunar:Lcom/bigkoo/pickerview/view/OptionsPickerView;

    invoke-virtual {p1}, Lcom/bigkoo/pickerview/view/OptionsPickerView;->dismiss()V

    return-void
.end method

.method synthetic lambda$initLunarPicker$5$com-keephealth-android-ui-device-activity-DrinkWaterGoalActivity(Landroid/view/View;)V
    .registers 4

    .line 0
    const v0, 0x7f09073a

    .line 288
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f090726

    .line 289
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 290
    new-instance v1, Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity$$ExternalSyntheticLambda2;-><init>(Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 294
    new-instance v0, Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity$$ExternalSyntheticLambda3;-><init>(Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method synthetic lambda$initView$0$com-keephealth-android-ui-device-activity-DrinkWaterGoalActivity(Landroid/view/View;)V
    .registers 5

    .line 81
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;->etDrinkWaterGoal:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_70

    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;->etDrinkWaterGoal:Landroid/widget/EditText;

    .line 82
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_21

    goto :goto_70

    .line 85
    :cond_21
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;->ilDrinkWaterOpen:Lcom/keephealth/android/views/ItemToggleLayout;

    if-eqz p1, :cond_7e

    .line 86
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;->drinkWaterGoals:Ljava/util/List;

    if-eqz p1, :cond_7e

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/16 v0, 0x8

    if-lt p1, v0, :cond_7e

    .line 87
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;->drinkWaterGoals:Ljava/util/List;

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;->ilDrinkWaterOpen:Lcom/keephealth/android/views/ItemToggleLayout;

    invoke-virtual {v0}, Lcom/keephealth/android/views/ItemToggleLayout;->isOpen()Z

    move-result v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;->etDrinkWaterGoal:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/keephealth/android/util/ble/CmdHelper;->setDrinkWater(Ljava/util/List;ZI)Ljava/util/List;

    move-result-object p1

    .line 88
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([BLcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;)V

    .line 89
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;->TAG:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    new-instance v2, Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity$1;

    invoke-direct {v2, p0}, Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity$1;-><init>(Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic(Ljava/lang/Object;[BLcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;)V

    goto :goto_7e

    .line 83
    :cond_70
    :goto_70
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f100270

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;->showToast(Ljava/lang/String;)V

    :cond_7e
    :goto_7e
    return-void
.end method

.method protected onDestroy()V
    .registers 3

    .line 314
    invoke-super {p0}, Lcom/keephealth/android/base/BaseActivity;->onDestroy()V

    .line 315
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->destroy(Ljava/lang/Object;)V

    .line 316
    invoke-static {}, Lcom/keephealth/android/util/DialogHelperNew;->dismissWait()V

    return-void
.end method

.method public onItemClick(Landroid/view/View;I)V
    .registers 5

    .line 263
    iput p2, p0, Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;->selectGoalPosition:I

    .line 264
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;->drinkWaterGoals:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;

    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;->selectGoal:Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;

    .line 265
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;->pvCustomLunar:Lcom/bigkoo/pickerview/view/OptionsPickerView;

    if-nez p2, :cond_14

    .line 266
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;->initLunarPicker()V

    goto :goto_27

    .line 268
    :cond_14
    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->getHour()I

    move-result p1

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;->selectGoal:Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;

    invoke-virtual {v0}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->getMinuter()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p2, p1, v0, v1}, Lcom/bigkoo/pickerview/view/OptionsPickerView;->setSelectOptions(III)V

    .line 269
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;->pvCustomLunar:Lcom/bigkoo/pickerview/view/OptionsPickerView;

    invoke-virtual {p1}, Lcom/bigkoo/pickerview/view/OptionsPickerView;->show()V

    :goto_27
    return-void
.end method
