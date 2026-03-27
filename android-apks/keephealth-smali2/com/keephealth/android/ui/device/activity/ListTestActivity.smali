.class public Lcom/keephealth/android/ui/device/activity/ListTestActivity;
.super Lcom/keephealth/android/base/BaseMvpActivity;
.source "ListTestActivity.java"

# interfaces
.implements Lcom/keephealth/android/persenter/device/DialRecommendDetailContract$View;
.implements Lcom/keephealth/android/ui/device/adapter/RecommendDownloadItemAdapter$OnCustomClickListener;
.implements Lcom/keephealth/android/twootablue/ota/OTAManager$OTAListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/keephealth/android/base/BaseMvpActivity<",
        "Lcom/keephealth/android/persenter/device/DialRecommendDetailPresenter;",
        ">;",
        "Lcom/keephealth/android/persenter/device/DialRecommendDetailContract$View;",
        "Lcom/keephealth/android/ui/device/adapter/RecommendDownloadItemAdapter$OnCustomClickListener;",
        "Lcom/keephealth/android/twootablue/ota/OTAManager$OTAListener;"
    }
.end annotation


# static fields
.field private static final BLE_UUID_SERVICE:Ljava/lang/String; = "e49a25f8-f69a-11e8-8eb2-f2801f1b9fd1"

.field private static final BLE_UUID_SERVICE_READ:Ljava/lang/String; = "e49a28e1-f69a-11e8-8eb2-f2801f1b9fd1"

.field private static final BLE_UUID_SERVICE_WRITE:Ljava/lang/String; = "e49a25e0-f69a-11e8-8eb2-f2801f1b9fd1"

.field private static final KEY_BLE_UUID_READ:Ljava/lang/String; = "BLE_UUID_READ"

.field private static final KEY_BLE_UUID_SERVICE:Ljava/lang/String; = "BLE_UUID_SERVICE"

.field private static final KEY_BLE_UUID_WRITE:Ljava/lang/String; = "BLE_UUID_WRITE"

.field private static final REQUEST_PERMISSION_CODE:I = 0x4

.field private static final WRITE_EXTERNAL_STORAGE_REQUEST_CODE:I = 0x64


# instance fields
.field private bluetoothLe:Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

.field private changePosition:I

.field private final dialDetailBDao:Lcom/keephealth/android/greendao/gen/DialDetailBDao;

.field private firstGo:Z

.field private isSending:Z

.field private isVisible:Z

.field private labelId:I

.field list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBluzConnector:Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice;

.field private mDialog:Landroid/app/Dialog;

.field private mOTAManager:Lcom/keephealth/android/twootablue/ota/OTAManager;

.field private mOTAVersion:Ljava/lang/String;

.field mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0903dc
    .end annotation
.end field

.field private needPermission:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private permissionArray:[Ljava/lang/String;

.field salesRankAdapter:Lcom/SalesRankAdapter;

.field private saveFileName:Ljava/lang/String;

.field private sendDial:Lcom/keephealth/android/model/bean/DialDetailB;

.field private showList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/keephealth/android/model/bean/DialDetailB;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 5

    .line 95
    invoke-direct {p0}, Lcom/keephealth/android/base/BaseMvpActivity;-><init>()V

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/ListTestActivity;->list:Ljava/util/List;

    .line 103
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/DaoSession;->getDialDetailBDao()Lcom/keephealth/android/greendao/gen/DialDetailBDao;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/ListTestActivity;->dialDetailBDao:Lcom/keephealth/android/greendao/gen/DialDetailBDao;

    const/16 v0, 0x9

    .line 121
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v3, v0, v1

    const/4 v1, 0x2

    const-string v3, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v3, v0, v1

    const/4 v1, 0x3

    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v3, v0, v1

    const/4 v1, 0x4

    const-string v3, "android.permission.INTERNET"

    aput-object v3, v0, v1

    const/4 v1, 0x5

    const-string v3, "android.permission.ACCESS_NETWORK_STATE"

    aput-object v3, v0, v1

    const/4 v1, 0x6

    const-string v3, "android.permission.READ_PHONE_STATE"

    aput-object v3, v0, v1

    const/4 v1, 0x7

    const-string v3, "android.permission.BLUETOOTH_SCAN"

    aput-object v3, v0, v1

    const/16 v1, 0x8

    const-string v3, "android.permission.BLUETOOTH_CONNECT"

    aput-object v3, v0, v1

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/ListTestActivity;->permissionArray:[Ljava/lang/String;

    .line 135
    iput-boolean v2, p0, Lcom/keephealth/android/ui/device/activity/ListTestActivity;->isSending:Z

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Environment;->DIRECTORY_DOCUMENTS:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/SDKDemo/DialCenter/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/ListTestActivity;->saveFileName:Ljava/lang/String;

    .line 143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/ListTestActivity;->showList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method protected getContentView()I
    .registers 2

    const v0, 0x7f0c0076

    return v0
.end method

.method public getFail()V
    .registers 1

    return-void
.end method

.method public getSuccess(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/keephealth/android/model/bean/DialDetailB;",
            ">;)V"
        }
    .end annotation

    .line 188
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/ListTestActivity;->showList:Ljava/util/List;

    .line 189
    iget-boolean p1, p0, Lcom/keephealth/android/ui/device/activity/ListTestActivity;->firstGo:Z

    if-eqz p1, :cond_19

    .line 190
    new-instance p1, Lcom/SalesRankAdapter;

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ListTestActivity;->showList:Ljava/util/List;

    sget v1, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->dialWight:I

    sget v2, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->dialHeight:I

    invoke-direct {p1, p0, v0, v1, v2}, Lcom/SalesRankAdapter;-><init>(Landroid/content/Context;Ljava/util/List;II)V

    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/ListTestActivity;->salesRankAdapter:Lcom/SalesRankAdapter;

    .line 191
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ListTestActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_27

    .line 194
    :cond_19
    const-string p1, "hger3"

    const-string v0, "2"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ListTestActivity;->salesRankAdapter:Lcom/SalesRankAdapter;

    iget v0, p0, Lcom/keephealth/android/ui/device/activity/ListTestActivity;->changePosition:I

    invoke-virtual {p1, v0}, Lcom/SalesRankAdapter;->notifyItemChanged(I)V

    :goto_27
    return-void
.end method

.method protected initView()V
    .registers 6

    .line 152
    invoke-super {p0}, Lcom/keephealth/android/base/BaseMvpActivity;->initView()V

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/ListTestActivity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/SDKDemo/DialCenter/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/ListTestActivity;->saveFileName:Ljava/lang/String;

    const/4 v0, 0x1

    .line 154
    iput-boolean v0, p0, Lcom/keephealth/android/ui/device/activity/ListTestActivity;->firstGo:Z

    .line 155
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->comeDetail:Z

    const/4 v1, 0x0

    .line 156
    sput-boolean v1, Lcom/keephealth/android/app/AppApplication;->comeDial2:Z

    .line 158
    sput-boolean v1, Lcom/keephealth/android/app/AppApplication;->isComeRecom:Z

    .line 159
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isComeRecomDetail:Z

    .line 160
    sput-boolean v1, Lcom/keephealth/android/app/AppApplication;->isComMe:Z

    .line 161
    sput-boolean v1, Lcom/keephealth/android/app/AppApplication;->isComMeDetail:Z

    .line 163
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/ListTestActivity;->bluetoothLe:Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    .line 164
    sput-boolean v1, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenter:Z

    .line 165
    iput-boolean v1, p0, Lcom/keephealth/android/ui/device/activity/ListTestActivity;->isSending:Z

    .line 166
    const-string v0, "rtft9"

    const-string v2, "\u8be6\u60c5"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    .line 167
    sput v0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->isInstallingId:I

    .line 168
    sput v1, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->currentProgress:I

    .line 169
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ListTestActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/SimpleItemAnimator;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 172
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ListTestActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/SimpleItemAnimator;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 173
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/ListTestActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    const-string v2, "labelId"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/ui/device/activity/ListTestActivity;->labelId:I

    .line 174
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/ListTestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "dial_type_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/keephealth/android/ui/device/activity/ListTestActivity;->labelId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "string"

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/ListTestActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 175
    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/ListTestActivity;->titleName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/ListTestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ListTestActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v3, 0x3

    invoke-direct {v2, p0, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 179
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ListTestActivity;->bgView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 180
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ListTestActivity;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast v0, Lcom/keephealth/android/persenter/device/DialRecommendDetailPresenter;

    sget v2, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->dialAdapterId:I

    iget v3, p0, Lcom/keephealth/android/ui/device/activity/ListTestActivity;->labelId:I

    invoke-virtual {v0, v2, v3}, Lcom/keephealth/android/persenter/device/DialRecommendDetailPresenter;->getRecommendDialDetail(II)V

    .line 181
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->clearQueue()V

    .line 182
    sput-boolean v1, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenterTwo:Z

    return-void
.end method

.method public onAudioDataReceived(II[B)V
    .registers 4

    return-void
.end method

.method public onCustomClick(Landroid/view/View;I)V
    .registers 3

    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .registers 3

    return-void
.end method

.method public onProgress(II)V
    .registers 3

    return-void
.end method

.method public onRemoteStatusReceived(Lcom/keephealth/android/twootablue/ota/RemoteStatus;)V
    .registers 2

    return-void
.end method

.method public onStatus(I)V
    .registers 2

    return-void
.end method

.method public onWriteBytes(I)V
    .registers 2

    return-void
.end method
