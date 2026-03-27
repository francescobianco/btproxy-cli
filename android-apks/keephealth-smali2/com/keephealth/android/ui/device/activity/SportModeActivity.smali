.class public Lcom/keephealth/android/ui/device/activity/SportModeActivity;
.super Lcom/keephealth/android/base/BaseMvpActivity;
.source "SportModeActivity.java"

# interfaces
.implements Lcom/keephealth/android/ui/device/adapter/SportModeAdapter$OnStatusClickListener;
.implements Lcom/keephealth/android/persenter/device/SportModelContract$View;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/keephealth/android/base/BaseMvpActivity<",
        "Lcom/keephealth/android/persenter/device/SportModelPresenter;",
        ">;",
        "Lcom/keephealth/android/ui/device/adapter/SportModeAdapter$OnStatusClickListener;",
        "Lcom/keephealth/android/persenter/device/SportModelContract$View;"
    }
.end annotation


# instance fields
.field private closeSport:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/keephealth/android/ui/device/bean/SportModeBean;",
            ">;"
        }
    .end annotation
.end field

.field private fristCmd:Z

.field private hideAdapter:Lcom/keephealth/android/ui/device/adapter/SportModeAdapter;

.field private mProduct:Ljava/lang/String;

.field mRecyclerViewHide:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0903de
    .end annotation
.end field

.field mRecyclerViewShow:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0903df
    .end annotation
.end field

.field private maxShow:I

.field private minShow:I

.field private openSport:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/keephealth/android/ui/device/bean/SportModeBean;",
            ">;"
        }
    .end annotation
.end field

.field private showAdapter:Lcom/keephealth/android/ui/device/adapter/SportModeAdapter;

.field private statusMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 65
    invoke-direct {p0}, Lcom/keephealth/android/base/BaseMvpActivity;-><init>()V

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->openSport:Ljava/util/List;

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->closeSport:Ljava/util/List;

    const/4 v0, 0x4

    .line 81
    iput v0, p0, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->maxShow:I

    const/4 v0, 0x0

    .line 82
    iput v0, p0, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->minShow:I

    .line 336
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->statusMap:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Lcom/keephealth/android/ui/device/activity/SportModeActivity;)Z
    .registers 1

    .line 65
    iget-boolean p0, p0, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->fristCmd:Z

    return p0
.end method

.method static synthetic access$002(Lcom/keephealth/android/ui/device/activity/SportModeActivity;Z)Z
    .registers 2

    .line 65
    iput-boolean p1, p0, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->fristCmd:Z

    return p1
.end method

.method static synthetic access$100(Lcom/keephealth/android/ui/device/activity/SportModeActivity;Ljava/lang/String;)V
    .registers 2

    .line 65
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/keephealth/android/ui/device/activity/SportModeActivity;)Ljava/util/List;
    .registers 1

    .line 65
    iget-object p0, p0, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->openSport:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lcom/keephealth/android/ui/device/activity/SportModeActivity;)Ljava/util/List;
    .registers 1

    .line 65
    iget-object p0, p0, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->closeSport:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$400(Lcom/keephealth/android/ui/device/activity/SportModeActivity;)Ljava/util/Map;
    .registers 1

    .line 65
    iget-object p0, p0, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->statusMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$500(Lcom/keephealth/android/ui/device/activity/SportModeActivity;)Lcom/keephealth/android/ui/device/adapter/SportModeAdapter;
    .registers 1

    .line 65
    iget-object p0, p0, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->showAdapter:Lcom/keephealth/android/ui/device/adapter/SportModeAdapter;

    return-object p0
.end method

.method static synthetic access$502(Lcom/keephealth/android/ui/device/activity/SportModeActivity;Lcom/keephealth/android/ui/device/adapter/SportModeAdapter;)Lcom/keephealth/android/ui/device/adapter/SportModeAdapter;
    .registers 2

    .line 65
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->showAdapter:Lcom/keephealth/android/ui/device/adapter/SportModeAdapter;

    return-object p1
.end method

.method static synthetic access$600(Lcom/keephealth/android/ui/device/activity/SportModeActivity;)Lcom/keephealth/android/ui/device/adapter/SportModeAdapter;
    .registers 1

    .line 65
    iget-object p0, p0, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->hideAdapter:Lcom/keephealth/android/ui/device/adapter/SportModeAdapter;

    return-object p0
.end method

.method static synthetic access$602(Lcom/keephealth/android/ui/device/activity/SportModeActivity;Lcom/keephealth/android/ui/device/adapter/SportModeAdapter;)Lcom/keephealth/android/ui/device/adapter/SportModeAdapter;
    .registers 2

    .line 65
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->hideAdapter:Lcom/keephealth/android/ui/device/adapter/SportModeAdapter;

    return-object p1
.end method

.method private invalidateListener()V
    .registers 4

    .line 351
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->TAG:Ljava/lang/String;

    new-instance v2, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;

    invoke-direct {v2, p0}, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;-><init>(Lcom/keephealth/android/ui/device/activity/SportModeActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->setOnWriteCharacteristicListener(Ljava/lang/Object;Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;)V

    return-void
.end method


# virtual methods
.method protected getContentView()I
    .registers 2

    const v0, 0x7f0c0087

    return v0
.end method

.method public getFail()V
    .registers 1

    .line 804
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->finish()V

    return-void
.end method

.method public getSuccess(Lcom/keephealth/android/model/bean/SportModel;)V
    .registers 5

    if-nez p1, :cond_5

    .line 339
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->finish()V

    .line 340
    :cond_5
    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/SportModel;->getMax()I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->maxShow:I

    .line 341
    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/SportModel;->getMin()I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->minShow:I

    .line 342
    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/SportModel;->getSportmodels()Ljava/util/List;

    move-result-object p1

    .line 343
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_19
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/ui/device/bean/SportModeBean;

    .line 344
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->statusMap:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/keephealth/android/ui/device/bean/SportModeBean;->getSportNo()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_19

    .line 346
    :cond_38
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->showLoading()V

    .line 347
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    invoke-static {}, Lcom/keephealth/android/util/ble/CmdHelper;->getSportMode()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([B)V

    return-void
.end method

.method protected initView()V
    .registers 4

    .line 90
    invoke-super {p0}, Lcom/keephealth/android/base/BaseMvpActivity;->initView()V

    .line 91
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->titleName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100576

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->mRecyclerViewShow:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 93
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->mRecyclerViewHide:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 94
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->rightText:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 95
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->rightText:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100508

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 96
    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getBindBLEDevice()Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object v0

    if-eqz v0, :cond_47

    .line 98
    iget-object v0, v0, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceProduct:Ljava/lang/String;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->mProduct:Ljava/lang/String;

    :cond_47
    const/4 v0, 0x1

    .line 100
    iput-boolean v0, p0, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->fristCmd:Z

    .line 101
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->invalidateListener()V

    .line 102
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->mProduct:Ljava/lang/String;

    if-eqz v0, :cond_5a

    .line 103
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast v0, Lcom/keephealth/android/persenter/device/SportModelPresenter;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->mProduct:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/keephealth/android/persenter/device/SportModelPresenter;->getSportMode(Ljava/lang/String;)V

    .line 105
    :cond_5a
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->rightText:Landroid/widget/Button;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/SportModeActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/SportModeActivity$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/ui/device/activity/SportModeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method synthetic lambda$initView$0$com-keephealth-android-ui-device-activity-SportModeActivity(Landroid/view/View;)V
    .registers 20

    .line 0
    move-object/from16 v0, p0

    .line 106
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-static {v1}, Lcom/keephealth/android/util/ButtonUtils;->isFastDoubleClick(I)Z

    move-result v1

    if-nez v1, :cond_4b9

    .line 107
    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->statusMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 108
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->finish()V

    goto/16 :goto_4b9

    .line 110
    :cond_19
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->showLoading()V

    const/16 v1, 0x14

    .line 111
    new-array v2, v1, [B

    const/16 v3, 0x2f

    const/4 v4, 0x0

    .line 112
    aput-byte v3, v2, v4

    const/4 v3, 0x1

    const/16 v5, 0x10

    .line 113
    aput-byte v5, v2, v3

    const/4 v6, 0x2

    .line 114
    aput-byte v4, v2, v6

    const/4 v7, 0x3

    .line 115
    aput-byte v6, v2, v7

    const/16 v8, 0x8

    .line 116
    new-array v9, v8, [B

    .line 117
    iget-object v10, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->statusMap:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    const/4 v11, 0x7

    if-eqz v10, :cond_55

    .line 118
    iget-object v10, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->statusMap:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v10, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    int-to-byte v10, v10

    aput-byte v10, v9, v11

    goto :goto_57

    .line 120
    :cond_55
    aput-byte v4, v9, v11

    .line 122
    :goto_57
    iget-object v10, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->statusMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v10, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    const/4 v12, 0x6

    if-eqz v10, :cond_78

    .line 123
    iget-object v10, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->statusMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v10, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    int-to-byte v10, v10

    aput-byte v10, v9, v12

    goto :goto_7a

    .line 125
    :cond_78
    aput-byte v4, v9, v12

    .line 127
    :goto_7a
    iget-object v10, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->statusMap:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v10, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    const/4 v13, 0x5

    if-eqz v10, :cond_9b

    .line 128
    iget-object v10, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->statusMap:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v10, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    int-to-byte v10, v10

    aput-byte v10, v9, v13

    goto :goto_9d

    .line 130
    :cond_9b
    aput-byte v4, v9, v13

    .line 132
    :goto_9d
    iget-object v10, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->statusMap:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v10, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    const/4 v14, 0x4

    if-eqz v10, :cond_be

    .line 133
    iget-object v10, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->statusMap:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v10, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    int-to-byte v10, v10

    aput-byte v10, v9, v14

    goto :goto_c0

    .line 135
    :cond_be
    aput-byte v4, v9, v14

    .line 137
    :goto_c0
    iget-object v10, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->statusMap:Ljava/util/Map;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v10, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e0

    .line 138
    iget-object v10, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->statusMap:Ljava/util/Map;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v10, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    int-to-byte v10, v10

    aput-byte v10, v9, v7

    goto :goto_e2

    .line 140
    :cond_e0
    aput-byte v4, v9, v7

    .line 142
    :goto_e2
    iget-object v10, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->statusMap:Ljava/util/Map;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v10, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_102

    .line 143
    iget-object v10, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->statusMap:Ljava/util/Map;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v10, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    int-to-byte v10, v10

    aput-byte v10, v9, v6

    goto :goto_104

    .line 145
    :cond_102
    aput-byte v4, v9, v6

    .line 147
    :goto_104
    iget-object v10, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->statusMap:Ljava/util/Map;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v10, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_124

    .line 148
    iget-object v10, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->statusMap:Ljava/util/Map;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v10, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    int-to-byte v10, v10

    aput-byte v10, v9, v3

    goto :goto_126

    .line 150
    :cond_124
    aput-byte v4, v9, v3

    .line 152
    :goto_126
    iget-object v10, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->statusMap:Ljava/util/Map;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v10, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_146

    .line 153
    iget-object v10, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->statusMap:Ljava/util/Map;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v10, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    int-to-byte v10, v10

    aput-byte v10, v9, v4

    goto :goto_148

    .line 155
    :cond_146
    aput-byte v4, v9, v4

    .line 158
    :goto_148
    new-array v10, v8, [B

    .line 159
    iget-object v15, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->statusMap:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v15, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16a

    .line 160
    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->statusMap:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v1, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    int-to-byte v1, v1

    aput-byte v1, v10, v11

    goto :goto_16c

    .line 162
    :cond_16a
    aput-byte v4, v10, v11

    .line 164
    :goto_16c
    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->statusMap:Ljava/util/Map;

    const/16 v15, 0x9

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v1, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18e

    .line 165
    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->statusMap:Ljava/util/Map;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v1, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    int-to-byte v1, v1

    aput-byte v1, v10, v12

    goto :goto_190

    .line 167
    :cond_18e
    aput-byte v4, v10, v12

    .line 169
    :goto_190
    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->statusMap:Ljava/util/Map;

    const/16 v11, 0xa

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v1, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b2

    .line 170
    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->statusMap:Ljava/util/Map;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v1, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    int-to-byte v1, v1

    aput-byte v1, v10, v13

    goto :goto_1b4

    .line 172
    :cond_1b2
    aput-byte v4, v10, v13

    .line 174
    :goto_1b4
    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->statusMap:Ljava/util/Map;

    const/16 v15, 0xb

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v1, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d6

    .line 175
    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->statusMap:Ljava/util/Map;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v1, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    int-to-byte v1, v1

    aput-byte v1, v10, v14

    goto :goto_1d8

    .line 177
    :cond_1d6
    aput-byte v4, v10, v14

    .line 179
    :goto_1d8
    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->statusMap:Ljava/util/Map;

    const/16 v11, 0xc

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v1, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1fa

    .line 180
    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->statusMap:Ljava/util/Map;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v1, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    int-to-byte v1, v1

    aput-byte v1, v10, v7

    goto :goto_1fc

    .line 182
    :cond_1fa
    aput-byte v4, v10, v7

    .line 184
    :goto_1fc
    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->statusMap:Ljava/util/Map;

    const/16 v15, 0xd

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v1, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21e

    .line 185
    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->statusMap:Ljava/util/Map;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v1, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    int-to-byte v1, v1

    aput-byte v1, v10, v6

    goto :goto_220

    .line 187
    :cond_21e
    aput-byte v4, v10, v6

    .line 189
    :goto_220
    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->statusMap:Ljava/util/Map;

    const/16 v11, 0xe

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v1, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_242

    .line 190
    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->statusMap:Ljava/util/Map;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v1, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    int-to-byte v1, v1

    aput-byte v1, v10, v3

    goto :goto_244

    .line 192
    :cond_242
    aput-byte v4, v10, v3

    .line 194
    :goto_244
    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->statusMap:Ljava/util/Map;

    const/16 v15, 0xf

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v1, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_266

    .line 195
    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->statusMap:Ljava/util/Map;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v1, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    int-to-byte v1, v1

    aput-byte v1, v10, v4

    goto :goto_268

    .line 197
    :cond_266
    aput-byte v4, v10, v4

    .line 200
    :goto_268
    new-array v1, v8, [B

    .line 201
    iget-object v11, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->statusMap:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v11, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_28b

    .line 202
    iget-object v11, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->statusMap:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v11, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    int-to-byte v11, v11

    const/4 v15, 0x7

    aput-byte v11, v1, v15

    goto :goto_28e

    :cond_28b
    const/4 v15, 0x7

    .line 204
    aput-byte v4, v1, v15

    .line 206
    :goto_28e
    iget-object v11, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->statusMap:Ljava/util/Map;

    const/16 v15, 0x11

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v11, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2b0

    .line 207
    iget-object v5, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->statusMap:Ljava/util/Map;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v5, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v1, v12

    goto :goto_2b2

    .line 209
    :cond_2b0
    aput-byte v4, v1, v12

    .line 211
    :goto_2b2
    iget-object v5, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->statusMap:Ljava/util/Map;

    const/16 v11, 0x12

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v5, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2d4

    .line 212
    iget-object v5, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->statusMap:Ljava/util/Map;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v5, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v1, v13

    goto :goto_2d6

    .line 214
    :cond_2d4
    aput-byte v4, v1, v13

    .line 216
    :goto_2d6
    iget-object v5, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->statusMap:Ljava/util/Map;

    const/16 v15, 0x13

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v5, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2f8

    .line 217
    iget-object v5, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->statusMap:Ljava/util/Map;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v5, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v1, v14

    goto :goto_2fa

    .line 219
    :cond_2f8
    aput-byte v4, v1, v14

    .line 221
    :goto_2fa
    iget-object v5, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->statusMap:Ljava/util/Map;

    const/16 v11, 0x14

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v5, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_31c

    .line 222
    iget-object v5, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->statusMap:Ljava/util/Map;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v5, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v1, v7

    goto :goto_31e

    .line 224
    :cond_31c
    aput-byte v4, v1, v7

    .line 226
    :goto_31e
    iget-object v5, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->statusMap:Ljava/util/Map;

    const/16 v11, 0x15

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v5, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_340

    .line 227
    iget-object v5, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->statusMap:Ljava/util/Map;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v5, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v1, v6

    goto :goto_342

    .line 229
    :cond_340
    aput-byte v4, v1, v6

    .line 231
    :goto_342
    iget-object v5, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->statusMap:Ljava/util/Map;

    const/16 v11, 0x16

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v5, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_366

    .line 232
    iget-object v5, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->statusMap:Ljava/util/Map;

    const/16 v11, 0x16

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v5, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v1, v3

    goto :goto_368

    .line 234
    :cond_366
    aput-byte v4, v1, v3

    .line 236
    :goto_368
    iget-object v5, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->statusMap:Ljava/util/Map;

    const/16 v11, 0x17

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v5, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_38c

    .line 237
    iget-object v5, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->statusMap:Ljava/util/Map;

    const/16 v11, 0x17

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v5, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v1, v4

    goto :goto_38e

    .line 239
    :cond_38c
    aput-byte v4, v1, v4

    .line 242
    :goto_38e
    new-array v5, v8, [B

    .line 243
    iget-object v11, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->statusMap:Ljava/util/Map;

    const/16 v15, 0x18

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v11, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3b5

    .line 244
    iget-object v11, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->statusMap:Ljava/util/Map;

    const/16 v15, 0x18

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v11, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    int-to-byte v11, v11

    const/4 v15, 0x7

    aput-byte v11, v5, v15

    goto :goto_3b8

    :cond_3b5
    const/4 v15, 0x7

    .line 246
    aput-byte v4, v5, v15

    .line 248
    :goto_3b8
    iget-object v11, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->statusMap:Ljava/util/Map;

    const/16 v15, 0x19

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v11, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3dc

    .line 249
    iget-object v11, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->statusMap:Ljava/util/Map;

    const/16 v15, 0x19

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v11, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    int-to-byte v11, v11

    aput-byte v11, v5, v12

    goto :goto_3de

    .line 251
    :cond_3dc
    aput-byte v4, v5, v12

    .line 253
    :goto_3de
    aput-byte v4, v5, v13

    .line 254
    aput-byte v4, v5, v14

    .line 255
    aput-byte v4, v5, v7

    .line 256
    aput-byte v4, v5, v6

    .line 257
    aput-byte v4, v5, v3

    .line 258
    aput-byte v4, v5, v4

    .line 260
    new-array v3, v8, [B

    fill-array-data v3, :array_4ba

    .line 261
    new-array v6, v8, [B

    fill-array-data v6, :array_4c2

    .line 262
    new-array v7, v8, [B

    fill-array-data v7, :array_4ca

    .line 263
    new-array v11, v8, [B

    fill-array-data v11, :array_4d2

    .line 264
    new-array v15, v8, [B

    fill-array-data v15, :array_4da

    .line 265
    new-array v4, v8, [B

    fill-array-data v4, :array_4e2

    .line 266
    new-array v12, v8, [B

    fill-array-data v12, :array_4ea

    .line 267
    new-array v13, v8, [B

    fill-array-data v13, :array_4f2

    .line 268
    new-array v14, v8, [B

    fill-array-data v14, :array_4fa

    .line 269
    new-array v0, v8, [B

    fill-array-data v0, :array_502

    move-object/from16 v17, v0

    .line 270
    new-array v0, v8, [B

    fill-array-data v0, :array_50a

    .line 272
    invoke-static {v9}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->Bit8Array2Int([B)I

    move-result v9

    int-to-byte v9, v9

    const/16 v16, 0x4

    aput-byte v9, v2, v16

    .line 273
    invoke-static {v10}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->Bit8Array2Int([B)I

    move-result v9

    int-to-byte v9, v9

    const/4 v10, 0x5

    aput-byte v9, v2, v10

    .line 274
    invoke-static {v1}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->Bit8Array2Int([B)I

    move-result v1

    int-to-byte v1, v1

    const/4 v9, 0x6

    aput-byte v1, v2, v9

    .line 275
    invoke-static {v5}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->Bit8Array2Int([B)I

    move-result v1

    int-to-byte v1, v1

    const/4 v5, 0x7

    aput-byte v1, v2, v5

    .line 276
    invoke-static {v3}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->Bit8Array2Int([B)I

    move-result v1

    int-to-byte v1, v1

    aput-byte v1, v2, v8

    .line 277
    invoke-static {v6}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->Bit8Array2Int([B)I

    move-result v1

    int-to-byte v1, v1

    const/16 v3, 0x9

    aput-byte v1, v2, v3

    .line 278
    invoke-static {v7}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->Bit8Array2Int([B)I

    move-result v1

    int-to-byte v1, v1

    const/16 v3, 0xa

    aput-byte v1, v2, v3

    .line 279
    invoke-static {v11}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->Bit8Array2Int([B)I

    move-result v1

    int-to-byte v1, v1

    const/16 v3, 0xb

    aput-byte v1, v2, v3

    .line 280
    invoke-static {v15}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->Bit8Array2Int([B)I

    move-result v1

    int-to-byte v1, v1

    const/16 v3, 0xc

    aput-byte v1, v2, v3

    .line 281
    invoke-static {v4}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->Bit8Array2Int([B)I

    move-result v1

    int-to-byte v1, v1

    const/16 v3, 0xd

    aput-byte v1, v2, v3

    .line 282
    invoke-static {v12}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->Bit8Array2Int([B)I

    move-result v1

    int-to-byte v1, v1

    const/16 v3, 0xe

    aput-byte v1, v2, v3

    .line 283
    invoke-static {v13}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->Bit8Array2Int([B)I

    move-result v1

    int-to-byte v1, v1

    const/16 v3, 0xf

    aput-byte v1, v2, v3

    .line 284
    invoke-static {v14}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->Bit8Array2Int([B)I

    move-result v1

    int-to-byte v1, v1

    const/16 v3, 0x10

    aput-byte v1, v2, v3

    .line 286
    invoke-static/range {v17 .. v17}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->Bit8Array2Int([B)I

    move-result v1

    int-to-byte v1, v1

    const/16 v3, 0x11

    aput-byte v1, v2, v3

    .line 287
    invoke-static {v0}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->Bit8Array2Int([B)I

    move-result v0

    int-to-byte v0, v0

    const/16 v1, 0x12

    aput-byte v0, v2, v1

    .line 288
    invoke-static {v2}, Lcom/keephealth/android/util/ble/CmdHelper;->completeCheckCode([B)B

    move-result v0

    const/16 v1, 0x13

    aput-byte v0, v2, v1

    const/4 v1, 0x0

    move-object/from16 v0, p0

    .line 289
    iput-boolean v1, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->fristCmd:Z

    .line 290
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([B)V

    :cond_4b9
    :goto_4b9
    return-void

    :array_4ba
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_4c2
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_4ca
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_4d2
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_4da
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_4e2
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_4ea
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_4f2
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_4fa
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_502
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_50a
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method protected onDestroy()V
    .registers 3

    .line 333
    invoke-super {p0}, Lcom/keephealth/android/base/BaseMvpActivity;->onDestroy()V

    .line 334
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->destroy(Ljava/lang/Object;)V

    return-void
.end method

.method public onStatusClick(Landroid/view/View;IZ)V
    .registers 5

    if-eqz p3, :cond_69

    .line 298
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->mRecyclerViewHide:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 299
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->openSport:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget v0, p0, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->minShow:I

    if-gt p1, v0, :cond_22

    .line 300
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f100577

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->showToast(Ljava/lang/String;)V

    goto/16 :goto_b9

    .line 302
    :cond_22
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->openSport:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/ui/device/bean/SportModeBean;

    .line 303
    invoke-virtual {p1, p3}, Lcom/keephealth/android/ui/device/bean/SportModeBean;->setSportStaus(Z)V

    .line 304
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->openSport:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 305
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->showAdapter:Lcom/keephealth/android/ui/device/adapter/SportModeAdapter;

    invoke-virtual {p2}, Lcom/keephealth/android/ui/device/adapter/SportModeAdapter;->notifyDataSetChanged()V

    .line 306
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->hideAdapter:Lcom/keephealth/android/ui/device/adapter/SportModeAdapter;

    if-nez p2, :cond_54

    .line 307
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->closeSport:Ljava/util/List;

    invoke-interface {p2, p3, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 308
    new-instance p2, Lcom/keephealth/android/ui/device/adapter/SportModeAdapter;

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->closeSport:Ljava/util/List;

    invoke-direct {p2, p0, v0}, Lcom/keephealth/android/ui/device/adapter/SportModeAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object p2, p0, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->hideAdapter:Lcom/keephealth/android/ui/device/adapter/SportModeAdapter;

    .line 309
    invoke-virtual {p2, p0}, Lcom/keephealth/android/ui/device/adapter/SportModeAdapter;->setmClickListener(Lcom/keephealth/android/ui/device/adapter/SportModeAdapter$OnStatusClickListener;)V

    .line 310
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->mRecyclerViewHide:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->hideAdapter:Lcom/keephealth/android/ui/device/adapter/SportModeAdapter;

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_57

    .line 312
    :cond_54
    invoke-virtual {p2, p3, p1}, Lcom/keephealth/android/ui/device/adapter/SportModeAdapter;->addItem(ILjava/lang/Object;)V

    .line 314
    :goto_57
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->statusMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/bean/SportModeBean;->getSportNo()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-interface {p2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b9

    .line 317
    :cond_69
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->openSport:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget p3, p0, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->maxShow:I

    if-lt p1, p3, :cond_82

    .line 318
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f100578

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->showToast(Ljava/lang/String;)V

    goto :goto_b9

    .line 320
    :cond_82
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->closeSport:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/ui/device/bean/SportModeBean;

    const/4 p3, 0x1

    .line 321
    invoke-virtual {p1, p3}, Lcom/keephealth/android/ui/device/bean/SportModeBean;->setSportStaus(Z)V

    .line 322
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->closeSport:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 323
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->hideAdapter:Lcom/keephealth/android/ui/device/adapter/SportModeAdapter;

    invoke-virtual {p2}, Lcom/keephealth/android/ui/device/adapter/SportModeAdapter;->notifyDataSetChanged()V

    .line 324
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->showAdapter:Lcom/keephealth/android/ui/device/adapter/SportModeAdapter;

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->openSport:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p2, v0, p1}, Lcom/keephealth/android/ui/device/adapter/SportModeAdapter;->addItem(ILjava/lang/Object;)V

    .line 325
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->showAdapter:Lcom/keephealth/android/ui/device/adapter/SportModeAdapter;

    invoke-virtual {p2}, Lcom/keephealth/android/ui/device/adapter/SportModeAdapter;->notifyDataSetChanged()V

    .line 326
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->statusMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/bean/SportModeBean;->getSportNo()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-interface {p2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_b9
    return-void
.end method
