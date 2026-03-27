.class public Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;
.super Lcom/keephealth/android/base/BaseMvpFragment;
.source "DeviceFragmentNew.java"

# interfaces
.implements Lcom/keephealth/android/persenter/device/DeviceFragmentContract$View;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/keephealth/android/base/BaseMvpFragment<",
        "Lcom/keephealth/android/persenter/device/DeviceFragmentPresenter;",
        ">;",
        "Lcom/keephealth/android/persenter/device/DeviceFragmentContract$View;"
    }
.end annotation


# instance fields
.field adapter:Lcom/keephealth/android/ui/device/adapter/DeviceSettingAdapter;

.field barBgTitle:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090081
    .end annotation
.end field

.field btnUnbind:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900bc
    .end annotation
.end field

.field private commonDialog:Lcom/keephealth/android/views/dialog/CommonDialog;

.field private deviceModel:Lcom/keephealth/android/model/bean/DeviceModel;

.field deviceSettingBeanList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/keephealth/android/ui/device/bean/DeviceSettingBean;",
            ">;"
        }
    .end annotation
.end field

.field enableBtIntent:Landroid/content/Intent;

.field private enableBtLauncher:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field handler:Landroid/os/Handler;

.field ilAudioBluetooth:Lcom/keephealth/android/views/ItemLableValue;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0901c7
    .end annotation
.end field

.field ilBackPermission:Lcom/keephealth/android/views/ItemLableValue;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0901c8
    .end annotation
.end field

.field ilContacts:Lcom/keephealth/android/views/ItemLableValue;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0901cf
    .end annotation
.end field

.field ilDeviceReset:Lcom/keephealth/android/views/ItemLableValue;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0901d1
    .end annotation
.end field

.field ilDeviceVersion:Lcom/keephealth/android/views/ItemLableValue;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0901d2
    .end annotation
.end field

.field ilFindDevice:Lcom/keephealth/android/views/ItemLableValue;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0901d9
    .end annotation
.end field

.field ilMoreSet:Lcom/keephealth/android/views/ItemLableValue;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0901e2
    .end annotation
.end field

.field ilNavi:Lcom/keephealth/android/views/ItemLableValue;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0901e4
    .end annotation
.end field

.field public isPausePage:Z

.field ivConnectStatus:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0902a6
    .end annotation
.end field

.field ivDevice:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0902a8
    .end annotation
.end field

.field ivDevice2:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0902a9
    .end annotation
.end field

.field ivPower:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0902c4
    .end annotation
.end field

.field jsonStr:Ljava/lang/String;

.field llDialCenter:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090367
    .end annotation
.end field

.field private mBluetoothLe:Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

.field private mCommonDialog:Lcom/keephealth/android/views/dialog/CommonDialog;

.field private mDialog:Landroid/app/Dialog;

.field private mPower:I

.field private mUpdateDialog:Landroid/app/Dialog;

.field private permissionsBluetoothConnect:[Ljava/lang/String;

.field permissionsBluetooth_connect:[Ljava/lang/String;

.field permissionsBluetooth_scan:[Ljava/lang/String;

.field private permissionsLocation:[Ljava/lang/String;

.field private reMindTimeOut:Ljava/lang/Runnable;

.field recyclerDialCenter:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09049e
    .end annotation
.end field

.field rlBindDevice:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0904dc
    .end annotation
.end field

.field rlNotice:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090501
    .end annotation
.end field

.field rlScreen:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09050f
    .end annotation
.end field

.field rlSport:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090516
    .end annotation
.end field

.field rlUnBindDevice:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09051c
    .end annotation
.end field

.field rvSetting:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090533
    .end annotation
.end field

.field tvAlarm:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090616
    .end annotation
.end field

.field tvConnectStatus:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090635
    .end annotation
.end field

.field tvDeviceName:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090650
    .end annotation
.end field

.field tvDialCenter:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090651
    .end annotation
.end field

.field tvHealthMonitoring:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090668
    .end annotation
.end field

.field tvHealthReminder:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090669
    .end annotation
.end field

.field tvMac:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090681
    .end annotation
.end field

.field tvNotice:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090699
    .end annotation
.end field

.field tvPid:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0906a0
    .end annotation
.end field

.field tvPower:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0906a1
    .end annotation
.end field

.field tvScreen:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0906b4
    .end annotation
.end field

.field tvSport:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0906d6
    .end annotation
.end field

.field private updatePower:Z


# direct methods
.method public constructor <init>()V
    .registers 7

    .line 135
    invoke-direct {p0}, Lcom/keephealth/android/base/BaseMvpFragment;-><init>()V

    const/4 v0, 0x2

    .line 209
    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "android.permission.BLUETOOTH_CONNECT"

    aput-object v3, v1, v2

    const/4 v4, 0x1

    const-string v5, "android.permission.BLUETOOTH_SCAN"

    aput-object v5, v1, v4

    iput-object v1, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->permissionsBluetooth_connect:[Ljava/lang/String;

    .line 210
    new-array v1, v4, [Ljava/lang/String;

    aput-object v5, v1, v2

    iput-object v1, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->permissionsBluetooth_scan:[Ljava/lang/String;

    const/4 v1, 0x0

    .line 212
    iput-object v1, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->adapter:Lcom/keephealth/android/ui/device/adapter/DeviceSettingAdapter;

    .line 261
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->deviceSettingBeanList:Ljava/util/List;

    .line 1058
    new-array v1, v0, [Ljava/lang/String;

    aput-object v3, v1, v2

    aput-object v5, v1, v4

    iput-object v1, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->permissionsBluetoothConnect:[Ljava/lang/String;

    .line 1061
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v1, v0, v2

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->permissionsLocation:[Ljava/lang/String;

    .line 1430
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->handler:Landroid/os/Handler;

    .line 1431
    new-instance v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$5;

    invoke-direct {v0, p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$5;-><init>(Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;)V

    iput-object v0, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->reMindTimeOut:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;Ljava/lang/String;)V
    .registers 2

    .line 135
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;Ljava/lang/String;)V
    .registers 2

    .line 135
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;Ljava/lang/String;)V
    .registers 2

    .line 135
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;Ljava/lang/String;)V
    .registers 2

    .line 135
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;Ljava/lang/String;)V
    .registers 2

    .line 135
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;Ljava/lang/String;)V
    .registers 2

    .line 135
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;)[Ljava/lang/String;
    .registers 1

    .line 135
    iget-object p0, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->permissionsLocation:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;)Landroid/app/Dialog;
    .registers 1

    .line 135
    iget-object p0, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->mDialog:Landroid/app/Dialog;

    return-object p0
.end method

.method static synthetic access$1502(Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;Landroid/app/Dialog;)Landroid/app/Dialog;
    .registers 2

    .line 135
    iput-object p1, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->mDialog:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;Ljava/lang/String;)V
    .registers 2

    .line 135
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;Ljava/lang/String;)V
    .registers 2

    .line 135
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;Ljava/lang/String;)V
    .registers 2

    .line 135
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;Ljava/lang/String;)V
    .registers 2

    .line 135
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;Ljava/lang/String;)V
    .registers 2

    .line 135
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;Ljava/lang/String;)V
    .registers 2

    .line 135
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;Ljava/lang/String;)V
    .registers 2

    .line 135
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;Ljava/lang/String;)V
    .registers 2

    .line 135
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;Ljava/lang/String;)V
    .registers 2

    .line 135
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;Ljava/lang/String;)V
    .registers 2

    .line 135
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;Ljava/lang/String;)V
    .registers 2

    .line 135
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;)Ljava/lang/Runnable;
    .registers 1

    .line 135
    iget-object p0, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->reMindTimeOut:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$300(Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;Ljava/lang/String;)V
    .registers 2

    .line 135
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;Ljava/lang/String;)V
    .registers 2

    .line 135
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;Ljava/lang/String;)V
    .registers 2

    .line 135
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;Ljava/lang/String;)V
    .registers 2

    .line 135
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;Ljava/lang/String;)V
    .registers 2

    .line 135
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;Ljava/lang/String;)V
    .registers 2

    .line 135
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;Ljava/lang/String;)V
    .registers 2

    .line 135
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method private initListener()V
    .registers 3

    .line 704
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->rlSport:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$3;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$3;-><init>(Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 721
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->rlScreen:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$4;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$4;-><init>(Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic lambda$bindDevice$13(Landroid/content/DialogInterface;I)V
    .registers 2

    const/4 p1, 0x0

    .line 1124
    sput-boolean p1, Lcom/keephealth/android/app/AppApplication;->isClickAddDevice:Z

    .line 1125
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method static synthetic lambda$bindDevice$15(Landroid/content/DialogInterface;I)V
    .registers 2

    const/4 p1, 0x0

    .line 1144
    sput-boolean p1, Lcom/keephealth/android/app/AppApplication;->isClickAddDevice:Z

    .line 1145
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method static synthetic lambda$bindDevice$17(Landroid/content/DialogInterface;I)V
    .registers 2

    const/4 p1, 0x0

    .line 1164
    sput-boolean p1, Lcom/keephealth/android/app/AppApplication;->isClickAddDevice:Z

    .line 1165
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method static synthetic lambda$bindDevice$19(Landroid/content/DialogInterface;I)V
    .registers 2

    const/4 p1, 0x0

    .line 1192
    sput-boolean p1, Lcom/keephealth/android/app/AppApplication;->isClickAddDevice:Z

    .line 1193
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method static synthetic lambda$bindDevice$8(Landroid/view/View;)V
    .registers 1

    const/4 p0, 0x0

    .line 1077
    sput-boolean p0, Lcom/keephealth/android/app/AppApplication;->isClickAddDevice:Z

    return-void
.end method

.method static synthetic lambda$initView$0(Landroidx/activity/result/ActivityResult;)V
    .registers 1

    .line 225
    invoke-virtual {p0}, Landroidx/activity/result/ActivityResult;->getResultCode()I

    return-void
.end method

.method static synthetic lambda$unBindDevice$25(Landroid/content/DialogInterface;I)V
    .registers 2

    .line 1559
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method static synthetic lambda$unBindDevice$28(Landroid/content/DialogInterface;I)V
    .registers 2

    .line 1598
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method static synthetic lambda$unBindDevice$30(Landroid/content/DialogInterface;I)V
    .registers 2

    .line 1622
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method static synthetic lambda$unBindDevice$35(Landroid/content/DialogInterface;I)V
    .registers 2

    .line 1739
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method static synthetic lambda$updateDevice$3(Landroid/content/DialogInterface;I)V
    .registers 2

    .line 816
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private unBindDevices(I)V
    .registers 8

    .line 1848
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f10046f

    invoke-virtual {p0, v1}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f100257

    .line 1849
    invoke-virtual {p0, v2}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, p1}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;I)V

    new-instance v5, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$$ExternalSyntheticLambda11;

    invoke-direct {v5, p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$$ExternalSyntheticLambda11;-><init>(Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;)V

    .line 1848
    const-string v2, ""

    invoke-static/range {v0 .. v5}, Lcom/keephealth/android/util/DialogHelperNew;->showRemindDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->mDialog:Landroid/app/Dialog;

    return-void
.end method


# virtual methods
.method alarmEdit()V
    .registers 4
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0904d7
        }
    .end annotation

    const v0, 0x7f0904d7

    const-wide/16 v1, 0x3e8

    .line 977
    invoke-static {v0, v1, v2}, Lcom/keephealth/android/util/ButtonUtils;->isFastDoubleClick(IJ)Z

    move-result v0

    if-nez v0, :cond_4a

    .line 978
    invoke-static {}, Lcom/keephealth/android/util/DiscoverServiceUtils;->discoverService()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 979
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->isSysndata()Z

    move-result v0

    if-nez v0, :cond_2a

    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->isRunningEcg:Z

    if-eqz v0, :cond_20

    goto :goto_2a

    .line 982
    :cond_20
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/keephealth/android/ui/device/activity/AlarmListActivity;

    invoke-static {v0, v1}, Lcom/keephealth/android/util/IntentUtil;->goToActivity(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_4a

    .line 980
    :cond_2a
    :goto_2a
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f10053c

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->showToast(Ljava/lang/String;)V

    goto :goto_4a

    .line 985
    :cond_39
    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getBindBLEDevice()Lcom/keephealth/android/model/bean/BLEDevice;

    .line 989
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f100258

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->showToast(Ljava/lang/String;)V

    :cond_4a
    :goto_4a
    return-void
.end method

.method audioBluetooth()V
    .registers 4
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0901c7
        }
    .end annotation

    const v0, 0x7f0901c7

    const-wide/16 v1, 0x3e8

    .line 743
    invoke-static {v0, v1, v2}, Lcom/keephealth/android/util/ButtonUtils;->isFastDoubleClick(IJ)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 744
    invoke-static {}, Lcom/keephealth/android/util/DiscoverServiceUtils;->discoverService()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 745
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/keephealth/android/ui/device/activity/AudioBluetoothActivity;

    invoke-static {v0, v1}, Lcom/keephealth/android/util/IntentUtil;->goToActivity(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_2c

    .line 747
    :cond_1b
    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getBindBLEDevice()Lcom/keephealth/android/model/bean/BLEDevice;

    .line 751
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f100258

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->showToast(Ljava/lang/String;)V

    :cond_2c
    :goto_2c
    return-void
.end method

.method backPermission()V
    .registers 4
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0901c8
        }
    .end annotation

    const v0, 0x7f0901c8

    const-wide/16 v1, 0x3e8

    .line 734
    invoke-static {v0, v1, v2}, Lcom/keephealth/android/util/ButtonUtils;->isFastDoubleClick(IJ)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 735
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 736
    const-string v1, "loadType"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 737
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgActivity;

    invoke-static {v1, v2, v0}, Lcom/keephealth/android/util/IntentUtil;->goToActivity(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    :cond_1f
    return-void
.end method

.method bindDevice()V
    .registers 12
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f09051c
        }
    .end annotation

    .line 1065
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->isSysndata()Z

    move-result v0

    if-nez v0, :cond_235

    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->isRunningEcg:Z

    if-eqz v0, :cond_10

    goto/16 :goto_235

    :cond_10
    const v0, 0x7f09051c

    const-wide/16 v1, 0x3e8

    .line 1068
    invoke-static {v0, v1, v2}, Lcom/keephealth/android/util/ButtonUtils;->isFastDoubleClick(IJ)Z

    move-result v0

    if-nez v0, :cond_243

    const/4 v0, 0x1

    .line 1069
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isClickAddDevice:Z

    .line 1070
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/keephealth/android/util/CommonUtil;->isOPen(Landroid/content/Context;)Z

    move-result v1

    const v2, 0x7f1004a1

    if-nez v1, :cond_5c

    .line 1071
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f10037d

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1072
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f10047b

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$$ExternalSyntheticLambda13;

    invoke-direct {v7, p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$$ExternalSyntheticLambda13;-><init>(Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;)V

    new-instance v8, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$$ExternalSyntheticLambda18;

    invoke-direct {v8}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$$ExternalSyntheticLambda18;-><init>()V

    .line 1071
    invoke-static/range {v3 .. v8}, Lcom/keephealth/android/util/DialogHelperNew;->showRemindDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;

    goto/16 :goto_243

    .line 1080
    :cond_5c
    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->permissionsLocation:[Ljava/lang/String;

    invoke-static {v1}, Lcom/keephealth/android/util/PermissionUtil;->checkSelfPermission([Ljava/lang/String;)Z

    move-result v1

    const-string v3, "isRefuPermisstion"

    const v4, 0x7f100257

    if-nez v1, :cond_db

    .line 1082
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/keephealth/android/util/SharePreferenceUtils;->getBool(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const v1, 0x7f10049e

    const v3, 0x7f1004a3

    if-nez v0, :cond_a7

    .line 1084
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1085
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$$ExternalSyntheticLambda19;

    invoke-direct {v9, p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$$ExternalSyntheticLambda19;-><init>(Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;)V

    new-instance v10, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$$ExternalSyntheticLambda20;

    invoke-direct {v10, p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$$ExternalSyntheticLambda20;-><init>(Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;)V

    .line 1084
    invoke-static/range {v5 .. v10}, Lcom/keephealth/android/util/DialogHelperNew;->showRemindDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->mDialog:Landroid/app/Dialog;

    goto/16 :goto_243

    .line 1097
    :cond_a7
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1098
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$$ExternalSyntheticLambda21;

    invoke-direct {v6, p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$$ExternalSyntheticLambda21;-><init>(Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;)V

    new-instance v7, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$$ExternalSyntheticLambda23;

    invoke-direct {v7, p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$$ExternalSyntheticLambda23;-><init>(Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;)V

    move-object v1, v0

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    .line 1097
    invoke-static/range {v1 .. v6}, Lcom/keephealth/android/util/DialogHelperNew;->showRemindDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->mDialog:Landroid/app/Dialog;

    goto/16 :goto_243

    .line 1112
    :cond_db
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {v1, v3, v6}, Lcom/keephealth/android/util/SharePreferenceUtils;->putBool(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1113
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1f

    const v6, 0x7f100474

    const v7, 0x7f10030b

    const-string v8, "MainActivity"

    const-string v9, "from"

    const v10, 0x7f100193

    if-lt v1, v3, :cond_1e6

    .line 1115
    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->permissionsBluetooth_connect:[Ljava/lang/String;

    invoke-static {v1}, Lcom/keephealth/android/util/PermissionUtil;->checkSelfPermission([Ljava/lang/String;)Z

    move-result v1

    const-string v3, "reFrushNumber"

    if-nez v1, :cond_18b

    .line 1117
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/keephealth/android/util/SharePreferenceUtils;->getBool(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const v1, 0x7f10010f

    const v3, 0x7f10010e

    const/4 v6, 0x0

    if-nez v0, :cond_14b

    .line 1119
    iput-object v6, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->commonDialog:Lcom/keephealth/android/views/dialog/CommonDialog;

    .line 1121
    new-instance v0, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1122
    invoke-virtual {v0, v5}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->isVertical(Z)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setTitle(I)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$$ExternalSyntheticLambda24;

    invoke-direct {v2}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$$ExternalSyntheticLambda24;-><init>()V

    .line 1123
    invoke-virtual {v0, v10, v2}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setLeftButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object v0

    .line 1127
    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setMessage(I)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$$ExternalSyntheticLambda25;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$$ExternalSyntheticLambda25;-><init>(Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;)V

    .line 1128
    invoke-virtual {v0, v4, v1}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setRightButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object v0

    .line 1132
    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->create()Lcom/keephealth/android/views/dialog/CommonDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->commonDialog:Lcom/keephealth/android/views/dialog/CommonDialog;

    .line 1134
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->commonDialog:Lcom/keephealth/android/views/dialog/CommonDialog;

    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/CommonDialog;->show()V

    goto/16 :goto_243

    .line 1137
    :cond_14b
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->mCommonDialog:Lcom/keephealth/android/views/dialog/CommonDialog;

    if-eqz v0, :cond_151

    .line 1138
    iput-object v6, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->mCommonDialog:Lcom/keephealth/android/views/dialog/CommonDialog;

    .line 1140
    :cond_151
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->mCommonDialog:Lcom/keephealth/android/views/dialog/CommonDialog;

    if-nez v0, :cond_182

    .line 1141
    new-instance v0, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1142
    invoke-virtual {v0, v5}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->isVertical(Z)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setTitle(I)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object v0

    new-instance v3, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$$ExternalSyntheticLambda26;

    invoke-direct {v3}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$$ExternalSyntheticLambda26;-><init>()V

    .line 1143
    invoke-virtual {v0, v10, v3}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setLeftButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object v0

    .line 1147
    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setMessage(I)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$$ExternalSyntheticLambda27;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$$ExternalSyntheticLambda27;-><init>(Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;)V

    .line 1148
    invoke-virtual {v0, v2, v1}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setRightButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object v0

    .line 1152
    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->create()Lcom/keephealth/android/views/dialog/CommonDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->mCommonDialog:Lcom/keephealth/android/views/dialog/CommonDialog;

    .line 1154
    :cond_182
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->mCommonDialog:Lcom/keephealth/android/views/dialog/CommonDialog;

    if-eqz v0, :cond_243

    .line 1155
    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/CommonDialog;->show()V

    goto/16 :goto_243

    .line 1159
    :cond_18b
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v3, v2}, Lcom/keephealth/android/util/SharePreferenceUtils;->putBool(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1160
    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->mBluetoothLe:Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    invoke-virtual {v1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->isBluetoothOpen()Z

    move-result v1

    if-nez v1, :cond_1ce

    .line 1161
    new-instance v0, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1162
    invoke-virtual {v0, v5}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->isVertical(Z)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setTitle(I)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$$ExternalSyntheticLambda14;

    invoke-direct {v1}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$$ExternalSyntheticLambda14;-><init>()V

    .line 1163
    invoke-virtual {v0, v10, v1}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setLeftButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object v0

    .line 1167
    invoke-virtual {v0, v6}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setMessage(I)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$$ExternalSyntheticLambda15;-><init>(Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;)V

    .line 1168
    invoke-virtual {v0, v4, v1}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setRightButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object v0

    .line 1175
    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->create()Lcom/keephealth/android/views/dialog/CommonDialog;

    move-result-object v0

    .line 1176
    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/CommonDialog;->show()V

    goto/16 :goto_243

    .line 1179
    :cond_1ce
    sput-boolean v5, Lcom/keephealth/android/app/AppApplication;->isRefuPermisstion:Z

    .line 1180
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1181
    invoke-virtual {v1, v9, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1182
    sget-boolean v2, Lcom/keephealth/android/app/AppApplication;->isClickAddDevice:Z

    if-eqz v2, :cond_243

    .line 1183
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    invoke-static {v2, v3, v1, v0}, Lcom/keephealth/android/util/IntentUtil;->goToActivityForResult(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;I)V

    goto :goto_243

    .line 1188
    :cond_1e6
    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->mBluetoothLe:Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    invoke-virtual {v1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->isBluetoothOpen()Z

    move-result v1

    if-nez v1, :cond_21d

    .line 1189
    new-instance v0, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1190
    invoke-virtual {v0, v5}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->isVertical(Z)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setTitle(I)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$$ExternalSyntheticLambda16;

    invoke-direct {v1}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$$ExternalSyntheticLambda16;-><init>()V

    .line 1191
    invoke-virtual {v0, v10, v1}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setLeftButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object v0

    .line 1195
    invoke-virtual {v0, v6}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setMessage(I)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$$ExternalSyntheticLambda17;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$$ExternalSyntheticLambda17;-><init>(Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;)V

    .line 1196
    invoke-virtual {v0, v4, v1}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setRightButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object v0

    .line 1203
    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->create()Lcom/keephealth/android/views/dialog/CommonDialog;

    move-result-object v0

    .line 1204
    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/CommonDialog;->show()V

    goto :goto_243

    .line 1206
    :cond_21d
    sput-boolean v5, Lcom/keephealth/android/app/AppApplication;->isRefuPermisstion:Z

    .line 1207
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1208
    invoke-virtual {v1, v9, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1209
    sget-boolean v2, Lcom/keephealth/android/app/AppApplication;->isClickAddDevice:Z

    if-eqz v2, :cond_243

    .line 1210
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    invoke-static {v2, v3, v1, v0}, Lcom/keephealth/android/util/IntentUtil;->goToActivityForResult(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;I)V

    goto :goto_243

    .line 1066
    :cond_235
    :goto_235
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f10053c

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->showToast(Ljava/lang/String;)V

    :cond_243
    :goto_243
    return-void
.end method

.method public clearData(I)V
    .registers 10

    .line 1933
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    sget-object v1, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->SERVICE_FFD2:Ljava/util/UUID;

    sget-object v2, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->READ_FFD2:Ljava/util/UUID;

    const/4 v3, 0x7

    const/4 v4, 0x0

    .line 1961
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 1933
    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->enableNotification(IZLjava/util/UUID;Ljava/util/UUID;)Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    .line 1935
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    sget-object v1, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->SERVICE:Ljava/util/UUID;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/util/UUID;

    sget-object v6, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->READ:Ljava/util/UUID;

    aput-object v6, v3, v4

    const/16 v6, 0x12

    invoke-virtual {v0, v6, v4, v1, v3}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->enableNotification(IZLjava/util/UUID;[Ljava/util/UUID;)Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    .line 1937
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->stopScan()V

    .line 1938
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v3, "LAST_SYNCH_TIME"

    invoke-static {v0, v3, v1}, Lcom/keephealth/android/util/SharePreferenceUtils;->putLong(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;)V

    .line 1939
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "bleName"

    const-string v6, ""

    invoke-static {v0, v3, v6}, Lcom/keephealth/android/util/SharePreferenceUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1940
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "bleAddress"

    invoke-static {v0, v3, v6}, Lcom/keephealth/android/util/SharePreferenceUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1941
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    const-string v3, "HOME_DATA_TIME"

    invoke-static {v0, v3, v6}, Lcom/keephealth/android/util/SharePreferenceUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1942
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v3, "POWER_TIME"

    invoke-static {v0, v3, v1}, Lcom/keephealth/android/util/SharePreferenceUtils;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1943
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "HEART_RATE_DATA"

    invoke-static {v0, v1}, Lcom/keephealth/android/util/SharePreferenceUtils;->remove(Landroid/content/Context;Ljava/lang/String;)V

    .line 1944
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "OXYGEN_DATA"

    invoke-static {v0, v1}, Lcom/keephealth/android/util/SharePreferenceUtils;->remove(Landroid/content/Context;Ljava/lang/String;)V

    .line 1945
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "STRESS_DATA"

    invoke-static {v0, v1}, Lcom/keephealth/android/util/SharePreferenceUtils;->remove(Landroid/content/Context;Ljava/lang/String;)V

    .line 1946
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "HRV_DATA"

    invoke-static {v0, v1}, Lcom/keephealth/android/util/SharePreferenceUtils;->remove(Landroid/content/Context;Ljava/lang/String;)V

    .line 1947
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "TEMP_DATA"

    invoke-static {v0, v1}, Lcom/keephealth/android/util/SharePreferenceUtils;->remove(Landroid/content/Context;Ljava/lang/String;)V

    .line 1948
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "BLOOD_DATA"

    invoke-static {v0, v1}, Lcom/keephealth/android/util/SharePreferenceUtils;->remove(Landroid/content/Context;Ljava/lang/String;)V

    .line 1949
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "BLOOD_GLUCOSE_DATA"

    invoke-static {v0, v1}, Lcom/keephealth/android/util/SharePreferenceUtils;->remove(Landroid/content/Context;Ljava/lang/String;)V

    .line 1950
    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->isUnbandDeleDevice:Z

    if-eqz v0, :cond_c8

    .line 1951
    sput-boolean v4, Lcom/keephealth/android/app/AppApplication;->isUnbandDeleDevice:Z

    .line 1952
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f100763

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->showToast(Ljava/lang/String;)V

    .line 1953
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "update_comple"

    invoke-static {v0, v1, v5}, Lcom/keephealth/android/util/SharePreferenceUtils;->putBool(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1954
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "isUnbandDeleDevice"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/keephealth/android/util/SharePreferenceUtils;->putBool(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1957
    :cond_c8
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "current"

    const/4 v3, 0x3

    invoke-static {v0, v1, v3}, Lcom/keephealth/android/util/SharePreferenceUtils;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1958
    sput v4, Lcom/keephealth/android/app/AppApplication;->discoverService:I

    .line 1959
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast v0, Lcom/keephealth/android/persenter/device/DeviceFragmentPresenter;

    invoke-virtual {v0}, Lcom/keephealth/android/persenter/device/DeviceFragmentPresenter;->cleanDeviceInfo()V

    .line 1961
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pairSuccess"

    invoke-static {v0, v1, v5}, Lcom/keephealth/android/util/SharePreferenceUtils;->putBool(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1963
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "firstUnband"

    invoke-static {v0, v1, v5}, Lcom/keephealth/android/util/SharePreferenceUtils;->putBool(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    const/16 v0, 0x6e

    .line 1965
    invoke-static {v0}, Lcom/keephealth/android/util/EventBusHelper;->post(I)V

    .line 1968
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/DaoSession;->getMainMenuSetDao()Lcom/keephealth/android/greendao/gen/MainMenuSetDao;

    move-result-object v0

    .line 1969
    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/MainMenuSetDao;->deleteAll()V

    .line 1971
    sput-boolean v4, Lcom/keephealth/android/app/AppApplication;->connectingOrno:Z

    .line 1972
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "a:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "trt5t55"

    invoke-static {v1, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1973
    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getBindBLEDevice()Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object v0

    const/4 v3, 0x5

    if-eq p1, v3, :cond_16b

    if-eq p1, v2, :cond_16b

    const/4 v2, 0x6

    if-eq p1, v2, :cond_16b

    if-eqz v0, :cond_133

    .line 1975
    iget-object v2, v0, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceProduct:Ljava/lang/String;

    if-eqz v2, :cond_133

    iget-object v2, v0, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceProduct:Ljava/lang/String;

    const-string v3, "TA1J01N5"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16b

    :cond_133
    if-eqz v0, :cond_144

    iget-object v2, v0, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceProduct:Ljava/lang/String;

    if-eqz v2, :cond_144

    iget-object v2, v0, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceProduct:Ljava/lang/String;

    const-string v3, "TA2J01N5"

    .line 1976
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_144

    goto :goto_16b

    .line 2012
    :cond_144
    invoke-static {}, Lcom/keephealth/android/util/QthreeUtils;->isQ32Device()Z

    move-result v0

    if-eqz v0, :cond_1cd

    .line 2013
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "\u4e0d\u6ee1\u8db3\u6e05\u914d\u5bf9\u4fe1\u606f\u7684\u8bdd-a:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 2015
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/keephealth/android/ui/main/activity/UnbindDevicePairActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2016
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->startActivity(Landroid/content/Intent;)V

    goto :goto_1cd

    .line 1978
    :cond_16b
    :goto_16b
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    if-eqz p1, :cond_1c6

    .line 1981
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "\u672c\u673a\u6709\u84dd\u7259\u8bbe\u5907\uff01"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1986
    :try_start_178
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object p1

    .line 1987
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_1be

    .line 1988
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_186
    :goto_186
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1cd

    .line 1989
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 1991
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    if-eqz v1, :cond_186

    if-eqz v0, :cond_186

    .line 1993
    iget-object v2, v0, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceAddress:Ljava/lang/String;

    if-eqz v2, :cond_186

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_1b1
    .catch Ljava/lang/SecurityException; {:try_start_178 .. :try_end_1b1} :catch_1cd

    if-eqz v2, :cond_186

    .line 1995
    :try_start_1b3
    invoke-virtual {p0, v1}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->removeBond(Landroid/bluetooth/BluetoothDevice;)V
    :try_end_1b6
    .catch Ljava/lang/Exception; {:try_start_1b3 .. :try_end_1b6} :catch_1b7
    .catch Ljava/lang/SecurityException; {:try_start_1b3 .. :try_end_1b6} :catch_1cd

    goto :goto_186

    :catch_1b7
    move-exception p1

    .line 1997
    :try_start_1b8
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 2003
    :cond_1be
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "\u8fd8\u6ca1\u6709\u5df2\u914d\u5bf9\u7684\u8fdc\u7a0b\u84dd\u7259\u8bbe\u5907\uff01"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1c5
    .catch Ljava/lang/SecurityException; {:try_start_1b8 .. :try_end_1c5} :catch_1cd

    goto :goto_1cd

    .line 2009
    :cond_1c6
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "\u672c\u673a\u6ca1\u6709\u84dd\u7259\u8bbe\u5907\uff01"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2020
    :catch_1cd
    :cond_1cd
    :goto_1cd
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/app/AppApplication;->getUserBean()Lcom/keephealth/android/model/bean/UserBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/UserBean;->getToken()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1f3

    .line 2021
    const-string p1, "{\"model\":\"\",\"mac\":\"\",\"deviceType\":\"0\",\"version\":\"\",\"name\":\"\"}"

    iput-object p1, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->jsonStr:Ljava/lang/String;

    .line 2023
    const-string p1, "application/json; charset=utf-8"

    invoke-static {p1}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object p1

    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->jsonStr:Ljava/lang/String;

    invoke-static {p1, v0}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p1

    .line 2024
    new-instance v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$12;

    invoke-direct {v0, p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$12;-><init>(Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;)V

    invoke-static {p1, v0}, Lcom/keephealth/android/model/net/http/UserHttp;->sendDeviceInfo(Lokhttp3/RequestBody;Lcom/keephealth/android/model/net/ApiCallback;)V

    .line 2047
    :cond_1f3
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "\u5f53\u524d\u9875\u9762:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "  \u89e3\u7ed1\u8bbe\u5907\u6210\u529f"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/keephealth/android/util/FileUtilsTest;->writeTxtToFile(ZLjava/lang/String;)V

    const/16 p1, 0x1d

    const/4 v0, 0x0

    .line 2048
    invoke-static {v0, p1}, Lcom/keephealth/android/util/SPHelper;->saveBLEDevice(Lcom/keephealth/android/model/bean/BLEDevice;I)V

    .line 2049
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/keephealth/android/util/SPHelper;->saveDeviceModel(Lcom/keephealth/android/model/bean/DeviceModel;Landroid/content/Context;)V

    .line 2050
    invoke-static {v0}, Lcom/keephealth/android/util/SPHelper;->saveDeviceUpdate(Lcom/keephealth/android/model/bean/DeviceUpdate;)V

    .line 2051
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/keephealth/android/util/SPHelper;->saveAppNotice(Lcom/keephealth/android/model/bean/AppNotice;Landroid/content/Context;)V

    const/4 p1, 0x2

    .line 2054
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->updateUi(I)V

    .line 2055
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "openOrCloseSchedule"

    invoke-static {p1, v0, v5}, Lcom/keephealth/android/util/SharePreferenceUtils;->putBool(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method dialCenter()V
    .registers 4
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f090367
        }
    .end annotation

    const v0, 0x7f090367

    const-wide/16 v1, 0x3e8

    .line 1035
    invoke-static {v0, v1, v2}, Lcom/keephealth/android/util/ButtonUtils;->isFastDoubleClick(IJ)Z

    move-result v0

    if-nez v0, :cond_66

    .line 1036
    invoke-static {}, Lcom/keephealth/android/util/DiscoverServiceUtils;->discoverService()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 1037
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->isSysndata()Z

    move-result v0

    if-nez v0, :cond_46

    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->isRunningEcg:Z

    if-eqz v0, :cond_20

    goto :goto_46

    .line 1040
    :cond_20
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->deviceModel:Lcom/keephealth/android/model/bean/DeviceModel;

    if-eqz v0, :cond_66

    .line 1041
    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/DeviceModel;->isDialCenter()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 1042
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/keephealth/android/ui/device/activity/DialCenterActivity;

    invoke-static {v0, v1}, Lcom/keephealth/android/util/IntentUtil;->goToActivity(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_66

    .line 1043
    :cond_34
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->deviceModel:Lcom/keephealth/android/model/bean/DeviceModel;

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/DeviceModel;->isDialCenterA()Z

    move-result v0

    if-eqz v0, :cond_66

    .line 1044
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;

    invoke-static {v0, v1}, Lcom/keephealth/android/util/IntentUtil;->goToActivity(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_66

    .line 1038
    :cond_46
    :goto_46
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f10053c

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->showToast(Ljava/lang/String;)V

    goto :goto_66

    .line 1049
    :cond_55
    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getBindBLEDevice()Lcom/keephealth/android/model/bean/BLEDevice;

    .line 1053
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f100258

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->showToast(Ljava/lang/String;)V

    :cond_66
    :goto_66
    return-void
.end method

.method findDevice()V
    .registers 4
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0901d9
        }
    .end annotation

    .line 916
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->clearQueue()V

    const v0, 0x7f0901d9

    const-wide/16 v1, 0x3e8

    .line 917
    invoke-static {v0, v1, v2}, Lcom/keephealth/android/util/ButtonUtils;->isFastDoubleClick(IJ)Z

    move-result v0

    if-nez v0, :cond_4f

    .line 918
    invoke-static {}, Lcom/keephealth/android/util/DiscoverServiceUtils;->discoverService()Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 919
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->isSysndata()Z

    move-result v0

    if-nez v0, :cond_2f

    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->isRunningEcg:Z

    if-eqz v0, :cond_27

    goto :goto_2f

    .line 922
    :cond_27
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast v0, Lcom/keephealth/android/persenter/device/DeviceFragmentPresenter;

    invoke-virtual {v0}, Lcom/keephealth/android/persenter/device/DeviceFragmentPresenter;->findDevice()V

    goto :goto_4f

    .line 920
    :cond_2f
    :goto_2f
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f10053c

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->showToast(Ljava/lang/String;)V

    goto :goto_4f

    .line 925
    :cond_3e
    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getBindBLEDevice()Lcom/keephealth/android/model/bean/BLEDevice;

    .line 929
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f100258

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->showToast(Ljava/lang/String;)V

    :cond_4f
    :goto_4f
    return-void
.end method

.method public getDialCenterDetail(Lcom/keephealth/android/model/bean/DicalDataBean;)V
    .registers 9

    if-eqz p1, :cond_86

    .line 2227
    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/DicalDataBean;->getDetails()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_a

    goto/16 :goto_86

    .line 2230
    :cond_a
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->llDialCenter:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2231
    const-string v0, "FF3324"

    const-string v2, "3333"

    invoke-static {v0, v2}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 2232
    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/DicalDataBean;->getDetails()Ljava/util/List;

    move-result-object v0

    .line 2233
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_53

    .line 2235
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x3

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    move v4, v1

    :goto_2c
    if-ge v4, v3, :cond_53

    .line 2237
    new-instance v5, Lcom/keephealth/android/ui/device/bean/DeviceDialCenter;

    invoke-direct {v5}, Lcom/keephealth/android/ui/device/bean/DeviceDialCenter;-><init>()V

    .line 2238
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/keephealth/android/model/bean/DicalDetail;

    invoke-virtual {v6}, Lcom/keephealth/android/model/bean/DicalDetail;->getImageUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/keephealth/android/ui/device/bean/DeviceDialCenter;->setBackgroundUrl(Ljava/lang/String;)V

    .line 2239
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/keephealth/android/model/bean/DicalDetail;

    invoke-virtual {v6}, Lcom/keephealth/android/model/bean/DicalDetail;->getTemplateUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/keephealth/android/ui/device/bean/DeviceDialCenter;->setImageUrl(Ljava/lang/String;)V

    .line 2240
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_2c

    .line 2243
    :cond_53
    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/DicalDataBean;->getDialSizeString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "\\*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 2244
    aget-object v0, p1, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    .line 2245
    aget-object p1, p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 2246
    new-instance v3, Lcom/keephealth/android/ui/device/adapter/DeviceDialCenterAdapter;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, v4, v2, v0, p1}, Lcom/keephealth/android/ui/device/adapter/DeviceDialCenterAdapter;-><init>(Landroid/content/Context;Ljava/util/List;II)V

    .line 2247
    new-instance p1, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$$ExternalSyntheticLambda12;

    invoke-direct {p1, p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$$ExternalSyntheticLambda12;-><init>(Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;)V

    invoke-virtual {v3, p1}, Lcom/keephealth/android/ui/device/adapter/DeviceDialCenterAdapter;->setOnItemClickListener(Lcom/keephealth/android/base/BaseAdapter$OnItemClickListener;)V

    .line 2265
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->recyclerDialCenter:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 2266
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->recyclerDialCenter:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutFrozen(Z)V

    goto :goto_89

    .line 2228
    :cond_86
    :goto_86
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->getDialCenterFail()V

    :goto_89
    return-void
.end method

.method public getDialCenterDetailA(Lcom/keephealth/android/model/bean/DialCenterB;)V
    .registers 10

    .line 2272
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "model:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u8bbe\u5907\u8868\u76d8\u4fe1\u606f"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2273
    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/DialCenterB;->getDialALables()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_28

    .line 2274
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->getDialCenterFail()V

    goto/16 :goto_c2

    .line 2276
    :cond_28
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->llDialCenter:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2277
    const-string v0, "FF3324"

    const-string v2, "4444"

    invoke-static {v0, v2}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 2278
    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/DialCenterB;->getDialSizeString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "\\*"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2279
    aget-object v2, v0, v1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    .line 2280
    aget-object v0, v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2281
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2282
    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/DialCenterB;->getDialALables()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_59
    :goto_59
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_75

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/keephealth/android/model/bean/DialCenterClass;

    .line 2283
    invoke-virtual {v5}, Lcom/keephealth/android/model/bean/DialCenterClass;->getId()I

    move-result v6

    const/16 v7, 0x9

    if-ne v6, v7, :cond_59

    .line 2284
    invoke-virtual {v5}, Lcom/keephealth/android/model/bean/DialCenterClass;->getDialAs()Ljava/util/List;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_59

    .line 2287
    :cond_75
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x3

    .line 2288
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    :goto_83
    if-ge v1, v5, :cond_9d

    .line 2290
    new-instance v6, Lcom/keephealth/android/ui/device/bean/DeviceDialCenter;

    invoke-direct {v6}, Lcom/keephealth/android/ui/device/bean/DeviceDialCenter;-><init>()V

    .line 2291
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/keephealth/android/model/bean/DialDetailB;

    invoke-virtual {v7}, Lcom/keephealth/android/model/bean/DialDetailB;->getPicUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/keephealth/android/ui/device/bean/DeviceDialCenter;->setBackgroundUrl(Ljava/lang/String;)V

    .line 2292
    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_83

    .line 2294
    :cond_9d
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_a7

    .line 2295
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->getDialCenterFail()V

    goto :goto_c2

    .line 2297
    :cond_a7
    new-instance v1, Lcom/keephealth/android/ui/device/adapter/DeviceDialCenterAdapter;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v1, v4, p1, v2, v0}, Lcom/keephealth/android/ui/device/adapter/DeviceDialCenterAdapter;-><init>(Landroid/content/Context;Ljava/util/List;II)V

    .line 2298
    new-instance p1, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$$ExternalSyntheticLambda28;

    invoke-direct {p1, p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$$ExternalSyntheticLambda28;-><init>(Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;)V

    invoke-virtual {v1, p1}, Lcom/keephealth/android/ui/device/adapter/DeviceDialCenterAdapter;->setOnItemClickListener(Lcom/keephealth/android/base/BaseAdapter$OnItemClickListener;)V

    .line 2316
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->recyclerDialCenter:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 2317
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->recyclerDialCenter:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutFrozen(Z)V

    :goto_c2
    return-void
.end method

.method public getDialCenterFail()V
    .registers 6

    .line 2324
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->llDialCenter:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2325
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2326
    new-instance v1, Lcom/keephealth/android/ui/device/bean/DeviceDialCenter;

    invoke-direct {v1}, Lcom/keephealth/android/ui/device/bean/DeviceDialCenter;-><init>()V

    const v2, 0x7f0d0091

    .line 2327
    invoke-virtual {v1, v2}, Lcom/keephealth/android/ui/device/bean/DeviceDialCenter;->setBackgroundId(I)V

    .line 2328
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2329
    new-instance v1, Lcom/keephealth/android/ui/device/bean/DeviceDialCenter;

    invoke-direct {v1}, Lcom/keephealth/android/ui/device/bean/DeviceDialCenter;-><init>()V

    const v2, 0x7f0d0092

    .line 2330
    invoke-virtual {v1, v2}, Lcom/keephealth/android/ui/device/bean/DeviceDialCenter;->setBackgroundId(I)V

    .line 2331
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2332
    new-instance v1, Lcom/keephealth/android/ui/device/bean/DeviceDialCenter;

    invoke-direct {v1}, Lcom/keephealth/android/ui/device/bean/DeviceDialCenter;-><init>()V

    const v2, 0x7f0d0093

    .line 2333
    invoke-virtual {v1, v2}, Lcom/keephealth/android/ui/device/bean/DeviceDialCenter;->setBackgroundId(I)V

    .line 2334
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2335
    new-instance v1, Lcom/keephealth/android/ui/device/adapter/DeviceDialCenterAdapter;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const/16 v3, 0xf0

    const/16 v4, 0x118

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/keephealth/android/ui/device/adapter/DeviceDialCenterAdapter;-><init>(Landroid/content/Context;Ljava/util/List;II)V

    .line 2336
    new-instance v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$$ExternalSyntheticLambda35;

    invoke-direct {v0, p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$$ExternalSyntheticLambda35;-><init>(Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;)V

    invoke-virtual {v1, v0}, Lcom/keephealth/android/ui/device/adapter/DeviceDialCenterAdapter;->setOnItemClickListener(Lcom/keephealth/android/base/BaseAdapter$OnItemClickListener;)V

    .line 2356
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->recyclerDialCenter:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 2357
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->recyclerDialCenter:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutFrozen(Z)V

    return-void
.end method

.method protected getLayoutId()I
    .registers 2

    const v0, 0x7f0c0101

    return v0
.end method

.method protected handleMessage(Lcom/keephealth/android/model/bean/BaseMessage;)V
    .registers 5

    .line 663
    invoke-super {p0, p1}, Lcom/keephealth/android/base/BaseMvpFragment;->handleMessage(Lcom/keephealth/android/model/bean/BaseMessage;)V

    .line 664
    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/BaseMessage;->getType()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_b

    goto :goto_4f

    .line 666
    :cond_b
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-le p1, v1, :cond_4f

    .line 667
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->permissionsBluetooth_connect:[Ljava/lang/String;

    invoke-static {p1}, Lcom/keephealth/android/util/PermissionUtil;->checkSelfPermission([Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_36

    .line 676
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string v0, "android.permission.BLUETOOTH_SCAN"

    invoke-static {p1, v0}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2e

    .line 679
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/keephealth/android/util/SetPermissionUtils;->goSystemSetPermission(Landroid/content/Context;I)V

    goto :goto_35

    :cond_2e
    const/16 p1, 0x1c8

    .line 681
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->permissionsBluetooth_scan:[Ljava/lang/String;

    invoke-static {p0, p1, v0}, Lcom/keephealth/android/util/PermissionUtil;->requestPermissions(Ljava/lang/Object;I[Ljava/lang/String;)V

    :goto_35
    return-void

    .line 685
    :cond_36
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 686
    const-string v1, "from"

    const-string v2, "MainActivity"

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    sget-boolean v1, Lcom/keephealth/android/app/AppApplication;->isClickAddDevice:Z

    if-eqz v1, :cond_4f

    .line 688
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    invoke-static {v1, v2, p1, v0}, Lcom/keephealth/android/util/IntentUtil;->goToActivityForResult(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;I)V

    :cond_4f
    :goto_4f
    return-void
.end method

.method healthMonitoring()V
    .registers 4
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0904ee
        }
    .end annotation

    const v0, 0x7f0904ee

    const-wide/16 v1, 0x3e8

    .line 996
    invoke-static {v0, v1, v2}, Lcom/keephealth/android/util/ButtonUtils;->isFastDoubleClick(IJ)Z

    move-result v0

    if-nez v0, :cond_4e

    .line 997
    invoke-static {}, Lcom/keephealth/android/util/DiscoverServiceUtils;->discoverService()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 998
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->isSysndata()Z

    move-result v0

    if-nez v0, :cond_2e

    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->isRunningEcg:Z

    if-nez v0, :cond_2e

    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->sendingOrno:Z

    if-eqz v0, :cond_24

    goto :goto_2e

    .line 1001
    :cond_24
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;

    invoke-static {v0, v1}, Lcom/keephealth/android/util/IntentUtil;->goToActivity(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_4e

    .line 999
    :cond_2e
    :goto_2e
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f10053c

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->showToast(Ljava/lang/String;)V

    goto :goto_4e

    .line 1004
    :cond_3d
    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getBindBLEDevice()Lcom/keephealth/android/model/bean/BLEDevice;

    .line 1008
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f100258

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->showToast(Ljava/lang/String;)V

    :cond_4e
    :goto_4e
    return-void
.end method

.method healthReminder()V
    .registers 4
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0904ef
        }
    .end annotation

    const v0, 0x7f0904ef

    const-wide/16 v1, 0x3e8

    .line 1016
    invoke-static {v0, v1, v2}, Lcom/keephealth/android/util/ButtonUtils;->isFastDoubleClick(IJ)Z

    move-result v0

    if-nez v0, :cond_4a

    .line 1017
    invoke-static {}, Lcom/keephealth/android/util/DiscoverServiceUtils;->discoverService()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 1018
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->isSysndata()Z

    move-result v0

    if-nez v0, :cond_2a

    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->isRunningEcg:Z

    if-eqz v0, :cond_20

    goto :goto_2a

    .line 1021
    :cond_20
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/keephealth/android/ui/device/activity/HealthReminderActivity;

    invoke-static {v0, v1}, Lcom/keephealth/android/util/IntentUtil;->goToActivity(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_4a

    .line 1019
    :cond_2a
    :goto_2a
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f10053c

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->showToast(Ljava/lang/String;)V

    goto :goto_4a

    .line 1024
    :cond_39
    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getBindBLEDevice()Lcom/keephealth/android/model/bean/BLEDevice;

    .line 1028
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f100258

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->showToast(Ljava/lang/String;)V

    :cond_4a
    :goto_4a
    return-void
.end method

.method ilContacts()V
    .registers 4
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0901cf
        }
    .end annotation

    const v0, 0x7f0901cf

    const-wide/16 v1, 0x3e8

    .line 758
    invoke-static {v0, v1, v2}, Lcom/keephealth/android/util/ButtonUtils;->isFastDoubleClick(IJ)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 759
    invoke-static {}, Lcom/keephealth/android/util/DiscoverServiceUtils;->discoverService()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 760
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/keephealth/android/ui/mine/activity/FrequentContactActivity;

    invoke-static {v0, v1}, Lcom/keephealth/android/util/IntentUtil;->goToActivity(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_2c

    .line 762
    :cond_1b
    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getBindBLEDevice()Lcom/keephealth/android/model/bean/BLEDevice;

    .line 766
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f100258

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->showToast(Ljava/lang/String;)V

    :cond_2c
    :goto_2c
    return-void
.end method

.method protected initView()V
    .registers 7

    .line 221
    invoke-super {p0}, Lcom/keephealth/android/base/BaseMvpFragment;->initView()V

    .line 222
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    new-instance v1, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$$ExternalSyntheticLambda31;

    invoke-direct {v1}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$$ExternalSyntheticLambda31;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->enableBtLauncher:Landroidx/activity/result/ActivityResultLauncher;

    .line 232
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->barBgTitle:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    .line 233
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 234
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/keephealth/android/util/ScreenUtil;->getStatusHeight(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 235
    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->barBgTitle:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 236
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->mBluetoothLe:Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    .line 237
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->recyclerDialCenter:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 238
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->rvSetting:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3, v4, v5}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 242
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->tvPower:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 244
    new-instance v0, Lcom/keephealth/android/ui/device/adapter/DeviceSettingAdapter;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->deviceSettingBeanList:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/keephealth/android/ui/device/adapter/DeviceSettingAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->adapter:Lcom/keephealth/android/ui/device/adapter/DeviceSettingAdapter;

    .line 245
    invoke-virtual {p0, v4}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->updateUi(I)V

    .line 246
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->initListener()V

    return-void
.end method

.method synthetic lambda$bindDevice$10$com-keephealth-android-ui-device-fragment-DeviceFragmentNew(Landroid/view/View;)V
    .registers 2

    .line 0
    const/4 p1, 0x0

    .line 1091
    sput-boolean p1, Lcom/keephealth/android/app/AppApplication;->isClickAddDevice:Z

    .line 1092
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->mDialog:Landroid/app/Dialog;

    if-eqz p1, :cond_a

    .line 1093
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_a
    return-void
.end method

.method synthetic lambda$bindDevice$11$com-keephealth-android-ui-device-fragment-DeviceFragmentNew(Landroid/view/View;)V
    .registers 3

    .line 1099
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/16 v0, 0x10

    invoke-static {p1, v0}, Lcom/keephealth/android/util/SetPermissionUtils;->goSystemSetPermission(Landroid/content/Context;I)V

    .line 1100
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->mDialog:Landroid/app/Dialog;

    if-eqz p1, :cond_10

    .line 1101
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_10
    return-void
.end method

.method synthetic lambda$bindDevice$12$com-keephealth-android-ui-device-fragment-DeviceFragmentNew(Landroid/view/View;)V
    .registers 2

    .line 0
    const/4 p1, 0x0

    .line 1104
    sput-boolean p1, Lcom/keephealth/android/app/AppApplication;->isClickAddDevice:Z

    .line 1105
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->mDialog:Landroid/app/Dialog;

    if-eqz p1, :cond_a

    .line 1106
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_a
    return-void
.end method

.method synthetic lambda$bindDevice$14$com-keephealth-android-ui-device-fragment-DeviceFragmentNew(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 0
    const/16 p2, 0x3bf

    .line 1129
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->permissionsBluetooth_connect:[Ljava/lang/String;

    invoke-static {p0, p2, v0}, Lcom/keephealth/android/util/PermissionUtil;->requestPermissions(Ljava/lang/Object;I[Ljava/lang/String;)V

    .line 1130
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method synthetic lambda$bindDevice$16$com-keephealth-android-ui-device-fragment-DeviceFragmentNew(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 1149
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const/4 v0, 0x5

    invoke-static {p2, v0}, Lcom/keephealth/android/util/SetPermissionUtils;->goSystemSetPermission(Landroid/content/Context;I)V

    .line 1150
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method synthetic lambda$bindDevice$18$com-keephealth-android-ui-device-fragment-DeviceFragmentNew(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 1169
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.bluetooth.adapter.action.REQUEST_ENABLE"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->enableBtIntent:Landroid/content/Intent;

    .line 1171
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1172
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->enableBtLauncher:Landroidx/activity/result/ActivityResultLauncher;

    iget-object p2, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->enableBtIntent:Landroid/content/Intent;

    invoke-virtual {p1, p2}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    return-void
.end method

.method synthetic lambda$bindDevice$20$com-keephealth-android-ui-device-fragment-DeviceFragmentNew(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 1197
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.bluetooth.adapter.action.REQUEST_ENABLE"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->enableBtIntent:Landroid/content/Intent;

    .line 1199
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1200
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->enableBtLauncher:Landroidx/activity/result/ActivityResultLauncher;

    iget-object p2, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->enableBtIntent:Landroid/content/Intent;

    invoke-virtual {p1, p2}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    return-void
.end method

.method synthetic lambda$bindDevice$7$com-keephealth-android-ui-device-fragment-DeviceFragmentNew(Landroid/view/View;)V
    .registers 3

    .line 1073
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 1074
    const-string v0, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v0, 0x3e8

    .line 1075
    invoke-virtual {p0, p1, v0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method synthetic lambda$bindDevice$9$com-keephealth-android-ui-device-fragment-DeviceFragmentNew(Landroid/view/View;)V
    .registers 4

    .line 1086
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/16 v0, 0x5b0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->permissionsLocation:[Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/keephealth/android/util/PermissionUtil;->requestPermissions(Ljava/lang/Object;I[Ljava/lang/String;)V

    .line 1087
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->mDialog:Landroid/app/Dialog;

    if-eqz p1, :cond_12

    .line 1088
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_12
    return-void
.end method

.method synthetic lambda$getDialCenterDetail$43$com-keephealth-android-ui-device-fragment-DeviceFragmentNew(Landroid/view/View;I)V
    .registers 3

    .line 2248
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getConnected()Z

    move-result p1

    if-eqz p1, :cond_4c

    .line 2249
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/app/AppApplication;->isSysndata()Z

    move-result p1

    if-nez p1, :cond_3d

    sget-boolean p1, Lcom/keephealth/android/app/AppApplication;->isRunningEcg:Z

    if-eqz p1, :cond_19

    goto :goto_3d

    .line 2252
    :cond_19
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->deviceModel:Lcom/keephealth/android/model/bean/DeviceModel;

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/DeviceModel;->isDialCenter()Z

    move-result p1

    if-eqz p1, :cond_2b

    .line 2253
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-class p2, Lcom/keephealth/android/ui/device/activity/DialCenterActivity;

    invoke-static {p1, p2}, Lcom/keephealth/android/util/IntentUtil;->goToActivity(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_60

    .line 2254
    :cond_2b
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->deviceModel:Lcom/keephealth/android/model/bean/DeviceModel;

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/DeviceModel;->isDialCenterA()Z

    move-result p1

    if-eqz p1, :cond_60

    .line 2255
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-class p2, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;

    invoke-static {p1, p2}, Lcom/keephealth/android/util/IntentUtil;->goToActivity(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_60

    .line 2250
    :cond_3d
    :goto_3d
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const p2, 0x7f10053c

    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->showToast(Ljava/lang/String;)V

    goto :goto_60

    .line 2259
    :cond_4c
    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getBindBLEDevice()Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object p1

    if-eqz p1, :cond_60

    .line 2261
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const p2, 0x7f100258

    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->showToast(Ljava/lang/String;)V

    :cond_60
    :goto_60
    return-void
.end method

.method synthetic lambda$getDialCenterDetailA$44$com-keephealth-android-ui-device-fragment-DeviceFragmentNew(Landroid/view/View;I)V
    .registers 3

    .line 2299
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getConnected()Z

    move-result p1

    if-eqz p1, :cond_50

    .line 2300
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/app/AppApplication;->isSysndata()Z

    move-result p1

    if-nez p1, :cond_41

    sget-boolean p1, Lcom/keephealth/android/app/AppApplication;->isRunningEcg:Z

    if-nez p1, :cond_41

    sget-boolean p1, Lcom/keephealth/android/app/AppApplication;->sendingOrno:Z

    if-eqz p1, :cond_1d

    goto :goto_41

    .line 2303
    :cond_1d
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->deviceModel:Lcom/keephealth/android/model/bean/DeviceModel;

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/DeviceModel;->isDialCenter()Z

    move-result p1

    if-eqz p1, :cond_2f

    .line 2304
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-class p2, Lcom/keephealth/android/ui/device/activity/DialCenterActivity;

    invoke-static {p1, p2}, Lcom/keephealth/android/util/IntentUtil;->goToActivity(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_64

    .line 2305
    :cond_2f
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->deviceModel:Lcom/keephealth/android/model/bean/DeviceModel;

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/DeviceModel;->isDialCenterA()Z

    move-result p1

    if-eqz p1, :cond_64

    .line 2306
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-class p2, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;

    invoke-static {p1, p2}, Lcom/keephealth/android/util/IntentUtil;->goToActivity(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_64

    .line 2301
    :cond_41
    :goto_41
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const p2, 0x7f10053c

    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->showToast(Ljava/lang/String;)V

    goto :goto_64

    .line 2310
    :cond_50
    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getBindBLEDevice()Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object p1

    if-eqz p1, :cond_64

    .line 2312
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const p2, 0x7f100258

    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->showToast(Ljava/lang/String;)V

    :cond_64
    :goto_64
    return-void
.end method

.method synthetic lambda$getDialCenterFail$45$com-keephealth-android-ui-device-fragment-DeviceFragmentNew(Landroid/view/View;I)V
    .registers 3

    .line 2337
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getConnected()Z

    move-result p1

    if-eqz p1, :cond_4e

    .line 2338
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/app/AppApplication;->isSysndata()Z

    move-result p1

    if-nez p1, :cond_3f

    sget-boolean p1, Lcom/keephealth/android/app/AppApplication;->isRunningEcg:Z

    if-eqz p1, :cond_19

    goto :goto_3f

    .line 2341
    :cond_19
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->deviceModel:Lcom/keephealth/android/model/bean/DeviceModel;

    if-eqz p1, :cond_62

    .line 2342
    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/DeviceModel;->isDialCenter()Z

    move-result p1

    if-eqz p1, :cond_2d

    .line 2343
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-class p2, Lcom/keephealth/android/ui/device/activity/DialCenterActivity;

    invoke-static {p1, p2}, Lcom/keephealth/android/util/IntentUtil;->goToActivity(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_62

    .line 2344
    :cond_2d
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->deviceModel:Lcom/keephealth/android/model/bean/DeviceModel;

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/DeviceModel;->isDialCenterA()Z

    move-result p1

    if-eqz p1, :cond_62

    .line 2345
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-class p2, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;

    invoke-static {p1, p2}, Lcom/keephealth/android/util/IntentUtil;->goToActivity(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_62

    .line 2339
    :cond_3f
    :goto_3f
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const p2, 0x7f10053c

    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->showToast(Ljava/lang/String;)V

    goto :goto_62

    .line 2350
    :cond_4e
    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getBindBLEDevice()Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object p1

    if-eqz p1, :cond_62

    .line 2352
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const p2, 0x7f100258

    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->showToast(Ljava/lang/String;)V

    :cond_62
    :goto_62
    return-void
.end method

.method synthetic lambda$onActivityResult$21$com-keephealth-android-ui-device-fragment-DeviceFragmentNew(Landroid/view/View;)V
    .registers 3

    .line 0
    const/16 p1, 0x3ec

    .line 1406
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->permissionsLocation:[Ljava/lang/String;

    invoke-static {p0, p1, v0}, Lcom/keephealth/android/util/PermissionUtil;->requestPermissions(Ljava/lang/Object;I[Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$onActivityResult$22$com-keephealth-android-ui-device-fragment-DeviceFragmentNew(Landroid/view/View;)V
    .registers 2

    .line 1408
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->mDialog:Landroid/app/Dialog;

    if-eqz p1, :cond_7

    .line 1409
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_7
    return-void
.end method

.method synthetic lambda$onActivityResult$23$com-keephealth-android-ui-device-fragment-DeviceFragmentNew(Landroid/view/View;)V
    .registers 3

    .line 0
    const/16 p1, 0x3ec

    .line 1418
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->permissionsLocation:[Ljava/lang/String;

    invoke-static {p0, p1, v0}, Lcom/keephealth/android/util/PermissionUtil;->requestPermissions(Ljava/lang/Object;I[Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$onActivityResult$24$com-keephealth-android-ui-device-fragment-DeviceFragmentNew(Landroid/view/View;)V
    .registers 2

    .line 1420
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->mDialog:Landroid/app/Dialog;

    if-eqz p1, :cond_7

    .line 1421
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_7
    return-void
.end method

.method synthetic lambda$reSetDevice$2$com-keephealth-android-ui-device-fragment-DeviceFragmentNew(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 784
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast p1, Lcom/keephealth/android/persenter/device/DeviceFragmentPresenter;

    invoke-virtual {p1}, Lcom/keephealth/android/persenter/device/DeviceFragmentPresenter;->reSetDevice()V

    .line 785
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string v0, "openOrCloseSchedule"

    invoke-static {p1, v0, p2}, Lcom/keephealth/android/util/SharePreferenceUtils;->putBool(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method synthetic lambda$returnPower$42$com-keephealth-android-ui-device-fragment-DeviceFragmentNew(I)V
    .registers 5

    .line 2191
    iput p1, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->mPower:I

    const/4 v0, 0x0

    .line 2192
    iput-boolean v0, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->updatePower:Z

    if-gez p1, :cond_21

    .line 2194
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->tvPower:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f10019a

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2195
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->ivPower:Landroid/widget/ImageView;

    const v0, 0x7f0d0081

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_c9

    .line 2197
    :cond_21
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->tvPower:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x5

    if-gt p1, v0, :cond_46

    .line 2199
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->ivPower:Landroid/widget/ImageView;

    const v0, 0x7f0d0076

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_c9

    :cond_46
    const/16 v0, 0xa

    if-gt p1, v0, :cond_54

    .line 2201
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->ivPower:Landroid/widget/ImageView;

    const v0, 0x7f0d0077

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_c9

    :cond_54
    const/16 v0, 0x14

    if-gt p1, v0, :cond_62

    .line 2203
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->ivPower:Landroid/widget/ImageView;

    const v0, 0x7f0d0079

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_c9

    :cond_62
    const/16 v0, 0x1e

    if-gt p1, v0, :cond_6f

    .line 2205
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->ivPower:Landroid/widget/ImageView;

    const v0, 0x7f0d007a

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_c9

    :cond_6f
    const/16 v0, 0x28

    if-gt p1, v0, :cond_7c

    .line 2207
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->ivPower:Landroid/widget/ImageView;

    const v0, 0x7f0d007b

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_c9

    :cond_7c
    const/16 v0, 0x32

    if-gt p1, v0, :cond_89

    .line 2209
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->ivPower:Landroid/widget/ImageView;

    const v0, 0x7f0d007c

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_c9

    :cond_89
    const/16 v0, 0x3c

    if-gt p1, v0, :cond_96

    .line 2211
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->ivPower:Landroid/widget/ImageView;

    const v0, 0x7f0d007d

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_c9

    :cond_96
    const/16 v0, 0x46

    if-gt p1, v0, :cond_a3

    .line 2213
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->ivPower:Landroid/widget/ImageView;

    const v0, 0x7f0d007e

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_c9

    :cond_a3
    const/16 v0, 0x50

    if-gt p1, v0, :cond_b0

    .line 2215
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->ivPower:Landroid/widget/ImageView;

    const v0, 0x7f0d007f

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_c9

    :cond_b0
    const/16 v0, 0x5a

    if-gt p1, v0, :cond_bd

    .line 2217
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->ivPower:Landroid/widget/ImageView;

    const v0, 0x7f0d0080

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_c9

    :cond_bd
    const/16 v0, 0x64

    if-gt p1, v0, :cond_c9

    .line 2219
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->ivPower:Landroid/widget/ImageView;

    const v0, 0x7f0d0078

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_c9
    :goto_c9
    return-void
.end method

.method synthetic lambda$unBindDevice$26$com-keephealth-android-ui-device-fragment-DeviceFragmentNew(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 1562
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.bluetooth.adapter.action.REQUEST_ENABLE"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->enableBtIntent:Landroid/content/Intent;

    .line 1564
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1565
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->enableBtLauncher:Landroidx/activity/result/ActivityResultLauncher;

    iget-object p2, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->enableBtIntent:Landroid/content/Intent;

    invoke-virtual {p1, p2}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    return-void
.end method

.method synthetic lambda$unBindDevice$27$com-keephealth-android-ui-device-fragment-DeviceFragmentNew(Landroid/view/View;)V
    .registers 4

    .line 1551
    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getBindBLEDevice()Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object p1

    if-eqz p1, :cond_a2

    .line 1553
    iget v0, p1, Lcom/keephealth/android/model/bean/BLEDevice;->power:I

    const/16 v1, 0x14

    if-gt v0, v1, :cond_1c

    .line 1554
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f10020a

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    goto/16 :goto_a2

    .line 1556
    :cond_1c
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->mBluetoothLe:Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    invoke-virtual {v0}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->isBluetoothOpen()Z

    move-result v0

    if-nez v0, :cond_60

    .line 1557
    new-instance p1, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 1558
    invoke-virtual {p1, v0}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->isVertical(Z)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object p1

    const v0, 0x7f10030b

    invoke-virtual {p1, v0}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setTitle(I)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$$ExternalSyntheticLambda36;

    invoke-direct {v0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$$ExternalSyntheticLambda36;-><init>()V

    const v1, 0x7f100193

    .line 1559
    invoke-virtual {p1, v1, v0}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setLeftButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object p1

    const v0, 0x7f100474

    .line 1560
    invoke-virtual {p1, v0}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setMessage(I)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$$ExternalSyntheticLambda37;

    invoke-direct {v0, p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$$ExternalSyntheticLambda37;-><init>(Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;)V

    const v1, 0x7f100257

    .line 1561
    invoke-virtual {p1, v1, v0}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setRightButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object p1

    .line 1568
    invoke-virtual {p1}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->create()Lcom/keephealth/android/views/dialog/CommonDialog;

    move-result-object p1

    .line 1569
    invoke-virtual {p1}, Lcom/keephealth/android/views/dialog/CommonDialog;->show()V

    goto :goto_a2

    .line 1571
    :cond_60
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->mUpdateDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1572
    iget-object v0, p1, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceProduct:Ljava/lang/String;

    const-string v1, "T"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_85

    .line 1574
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1575
    const-string v0, "type"

    const-string v1, "mainactivitynew"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1576
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->startActivity(Landroid/content/Intent;)V

    goto :goto_a2

    .line 1577
    :cond_85
    iget-object p1, p1, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceProduct:Ljava/lang/String;

    const-string v0, "S"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_99

    .line 1578
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-class v0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    invoke-static {p1, v0}, Lcom/keephealth/android/util/IntentUtil;->goToActivity(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_a2

    .line 1580
    :cond_99
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-class v0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;

    invoke-static {p1, v0}, Lcom/keephealth/android/util/IntentUtil;->goToActivity(Landroid/content/Context;Ljava/lang/Class;)V

    :cond_a2
    :goto_a2
    return-void
.end method

.method synthetic lambda$unBindDevice$29$com-keephealth-android-ui-device-fragment-DeviceFragmentNew(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 1601
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.bluetooth.adapter.action.REQUEST_ENABLE"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->enableBtIntent:Landroid/content/Intent;

    .line 1603
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1604
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->enableBtLauncher:Landroidx/activity/result/ActivityResultLauncher;

    iget-object p2, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->enableBtIntent:Landroid/content/Intent;

    invoke-virtual {p1, p2}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    return-void
.end method

.method synthetic lambda$unBindDevice$31$com-keephealth-android-ui-device-fragment-DeviceFragmentNew(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 1625
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.bluetooth.adapter.action.REQUEST_ENABLE"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->enableBtIntent:Landroid/content/Intent;

    .line 1627
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1628
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->enableBtLauncher:Landroidx/activity/result/ActivityResultLauncher;

    iget-object p2, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->enableBtIntent:Landroid/content/Intent;

    invoke-virtual {p1, p2}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    return-void
.end method

.method synthetic lambda$unBindDevice$32$com-keephealth-android-ui-device-fragment-DeviceFragmentNew(Landroid/view/View;)V
    .registers 4

    .line 1614
    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getBindBLEDevice()Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object p1

    if-eqz p1, :cond_a2

    .line 1616
    iget v0, p1, Lcom/keephealth/android/model/bean/BLEDevice;->power:I

    const/16 v1, 0x14

    if-gt v0, v1, :cond_1c

    .line 1617
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f10020a

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    goto/16 :goto_a2

    .line 1619
    :cond_1c
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->mBluetoothLe:Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    invoke-virtual {v0}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->isBluetoothOpen()Z

    move-result v0

    if-nez v0, :cond_60

    .line 1620
    new-instance p1, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 1621
    invoke-virtual {p1, v0}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->isVertical(Z)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object p1

    const v0, 0x7f10030b

    invoke-virtual {p1, v0}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setTitle(I)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$$ExternalSyntheticLambda9;-><init>()V

    const v1, 0x7f100193

    .line 1622
    invoke-virtual {p1, v1, v0}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setLeftButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object p1

    const v0, 0x7f100474

    .line 1623
    invoke-virtual {p1, v0}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setMessage(I)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$$ExternalSyntheticLambda10;-><init>(Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;)V

    const v1, 0x7f100257

    .line 1624
    invoke-virtual {p1, v1, v0}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setRightButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object p1

    .line 1631
    invoke-virtual {p1}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->create()Lcom/keephealth/android/views/dialog/CommonDialog;

    move-result-object p1

    .line 1632
    invoke-virtual {p1}, Lcom/keephealth/android/views/dialog/CommonDialog;->show()V

    return-void

    .line 1635
    :cond_60
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->mUpdateDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1636
    iget-object v0, p1, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceProduct:Ljava/lang/String;

    const-string v1, "T"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_85

    .line 1638
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1639
    const-string v0, "type"

    const-string v1, "mainactivitynew"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1640
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->startActivity(Landroid/content/Intent;)V

    goto :goto_a2

    .line 1641
    :cond_85
    iget-object p1, p1, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceProduct:Ljava/lang/String;

    const-string v0, "S"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_99

    .line 1642
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-class v0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    invoke-static {p1, v0}, Lcom/keephealth/android/util/IntentUtil;->goToActivity(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_a2

    .line 1644
    :cond_99
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-class v0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;

    invoke-static {p1, v0}, Lcom/keephealth/android/util/IntentUtil;->goToActivity(Landroid/content/Context;Ljava/lang/Class;)V

    :cond_a2
    :goto_a2
    return-void
.end method

.method synthetic lambda$unBindDevice$33$com-keephealth-android-ui-device-fragment-DeviceFragmentNew(Landroid/view/View;)V
    .registers 5

    .line 1658
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/SPHelper;->getDeviceModel(Landroid/content/Context;)Lcom/keephealth/android/model/bean/DeviceModel;

    move-result-object p1

    const/4 v0, 0x1

    .line 1659
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isUnbandDevice:Z

    .line 1660
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isUnbandAgaginDevice:Z

    .line 1661
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isUnbandDeleDevice:Z

    .line 1662
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "isUnbandDeleDevice"

    invoke-static {v0, v2, v1}, Lcom/keephealth/android/util/SharePreferenceUtils;->putBool(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    if-eqz p1, :cond_76

    .line 1664
    invoke-static {}, Lcom/keephealth/android/util/QthreeUtils;->isQ32Device()Z

    move-result p1

    if-eqz p1, :cond_53

    .line 1665
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getConnected()Z

    move-result p1

    if-eqz p1, :cond_47

    .line 1667
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->reMindTimeOut:Ljava/lang/Runnable;

    const-wide/16 v1, 0xbb8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1669
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    const/16 v0, 0x2a

    invoke-virtual {p1, v0}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->disconnect(I)V

    const/16 p1, 0x856

    .line 1670
    invoke-static {p1}, Lcom/keephealth/android/util/EventBusHelper;->post(I)V

    goto :goto_4e

    .line 1672
    :cond_47
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->mDialog:Landroid/app/Dialog;

    if-eqz p1, :cond_4e

    .line 1673
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_4e
    :goto_4e
    const/4 p1, 0x3

    .line 1677
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->clearData(I)V

    goto :goto_98

    .line 1679
    :cond_53
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->mDialog:Landroid/app/Dialog;

    if-eqz p1, :cond_5a

    .line 1680
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 1682
    :cond_5a
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getConnected()Z

    move-result p1

    if-eqz p1, :cond_70

    .line 1683
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    new-instance v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$6;

    invoke-direct {v0, p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$6;-><init>(Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;)V

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_70
    const/16 p1, 0xb

    .line 1693
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->clearData(I)V

    goto :goto_98

    .line 1697
    :cond_76
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->mDialog:Landroid/app/Dialog;

    if-eqz p1, :cond_7d

    .line 1698
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 1700
    :cond_7d
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getConnected()Z

    move-result p1

    if-eqz p1, :cond_93

    .line 1701
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    new-instance v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$7;

    invoke-direct {v0, p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$7;-><init>(Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;)V

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_93
    const/16 p1, 0x8

    .line 1711
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->clearData(I)V

    :goto_98
    return-void
.end method

.method synthetic lambda$unBindDevice$34$com-keephealth-android-ui-device-fragment-DeviceFragmentNew(Landroid/view/View;)V
    .registers 2

    .line 0
    const/4 p1, 0x0

    .line 1717
    sput-boolean p1, Lcom/keephealth/android/app/AppApplication;->isUnbandDevice:Z

    .line 1718
    sput-boolean p1, Lcom/keephealth/android/app/AppApplication;->isUnbandAgaginDevice:Z

    .line 1719
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method synthetic lambda$unBindDevice$36$com-keephealth-android-ui-device-fragment-DeviceFragmentNew(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 1742
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.bluetooth.adapter.action.REQUEST_ENABLE"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->enableBtIntent:Landroid/content/Intent;

    .line 1744
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1745
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->enableBtLauncher:Landroidx/activity/result/ActivityResultLauncher;

    iget-object p2, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->enableBtIntent:Landroid/content/Intent;

    invoke-virtual {p1, p2}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    return-void
.end method

.method synthetic lambda$unBindDevice$37$com-keephealth-android-ui-device-fragment-DeviceFragmentNew(Landroid/view/View;)V
    .registers 4

    .line 1731
    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getBindBLEDevice()Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object p1

    if-eqz p1, :cond_a2

    .line 1733
    iget v0, p1, Lcom/keephealth/android/model/bean/BLEDevice;->power:I

    const/16 v1, 0x14

    if-gt v0, v1, :cond_1c

    .line 1734
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f10020a

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    goto/16 :goto_a2

    .line 1736
    :cond_1c
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->mBluetoothLe:Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    invoke-virtual {v0}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->isBluetoothOpen()Z

    move-result v0

    if-nez v0, :cond_60

    .line 1737
    new-instance p1, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 1738
    invoke-virtual {p1, v0}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->isVertical(Z)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object p1

    const v0, 0x7f10030b

    invoke-virtual {p1, v0}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setTitle(I)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$$ExternalSyntheticLambda32;

    invoke-direct {v0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$$ExternalSyntheticLambda32;-><init>()V

    const v1, 0x7f100193

    .line 1739
    invoke-virtual {p1, v1, v0}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setLeftButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object p1

    const v0, 0x7f100474

    .line 1740
    invoke-virtual {p1, v0}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setMessage(I)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$$ExternalSyntheticLambda34;

    invoke-direct {v0, p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$$ExternalSyntheticLambda34;-><init>(Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;)V

    const v1, 0x7f100257

    .line 1741
    invoke-virtual {p1, v1, v0}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setRightButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object p1

    .line 1748
    invoke-virtual {p1}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->create()Lcom/keephealth/android/views/dialog/CommonDialog;

    move-result-object p1

    .line 1749
    invoke-virtual {p1}, Lcom/keephealth/android/views/dialog/CommonDialog;->show()V

    return-void

    .line 1752
    :cond_60
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->mUpdateDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1753
    iget-object v0, p1, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceProduct:Ljava/lang/String;

    const-string v1, "T"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_85

    .line 1755
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1756
    const-string v0, "type"

    const-string v1, "mainactivitynew"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1757
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->startActivity(Landroid/content/Intent;)V

    goto :goto_a2

    .line 1758
    :cond_85
    iget-object p1, p1, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceProduct:Ljava/lang/String;

    const-string v0, "S"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_99

    .line 1759
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-class v0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    invoke-static {p1, v0}, Lcom/keephealth/android/util/IntentUtil;->goToActivity(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_a2

    .line 1761
    :cond_99
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-class v0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;

    invoke-static {p1, v0}, Lcom/keephealth/android/util/IntentUtil;->goToActivity(Landroid/content/Context;Ljava/lang/Class;)V

    :cond_a2
    :goto_a2
    return-void
.end method

.method synthetic lambda$unBindDevice$38$com-keephealth-android-ui-device-fragment-DeviceFragmentNew(Landroid/view/View;)V
    .registers 5

    .line 1775
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/SPHelper;->getDeviceModel(Landroid/content/Context;)Lcom/keephealth/android/model/bean/DeviceModel;

    move-result-object p1

    const/4 v0, 0x1

    .line 1776
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isUnbandDevice:Z

    .line 1777
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isUnbandAgaginDevice:Z

    .line 1778
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isUnbandDeleDevice:Z

    .line 1779
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "isUnbandDeleDevice"

    invoke-static {v0, v2, v1}, Lcom/keephealth/android/util/SharePreferenceUtils;->putBool(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    if-eqz p1, :cond_76

    .line 1781
    invoke-static {}, Lcom/keephealth/android/util/QthreeUtils;->isQ32Device()Z

    move-result p1

    if-eqz p1, :cond_54

    .line 1782
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getConnected()Z

    move-result p1

    if-eqz p1, :cond_47

    .line 1784
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->reMindTimeOut:Ljava/lang/Runnable;

    const-wide/16 v1, 0xbb8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1786
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    const/16 v0, 0x2a

    invoke-virtual {p1, v0}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->disconnect(I)V

    const/16 p1, 0x856

    .line 1787
    invoke-static {p1}, Lcom/keephealth/android/util/EventBusHelper;->post(I)V

    goto :goto_4e

    .line 1789
    :cond_47
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->mDialog:Landroid/app/Dialog;

    if-eqz p1, :cond_4e

    .line 1790
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_4e
    :goto_4e
    const/16 p1, 0xa

    .line 1794
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->clearData(I)V

    goto :goto_98

    .line 1796
    :cond_54
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->mDialog:Landroid/app/Dialog;

    if-eqz p1, :cond_5b

    .line 1797
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 1799
    :cond_5b
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getConnected()Z

    move-result p1

    if-eqz p1, :cond_71

    .line 1800
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    new-instance v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$8;

    invoke-direct {v0, p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$8;-><init>(Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;)V

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_71
    const/4 p1, 0x7

    .line 1810
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->clearData(I)V

    goto :goto_98

    .line 1814
    :cond_76
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->mDialog:Landroid/app/Dialog;

    if-eqz p1, :cond_7d

    .line 1815
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 1817
    :cond_7d
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getConnected()Z

    move-result p1

    if-eqz p1, :cond_93

    .line 1818
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    new-instance v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$9;

    invoke-direct {v0, p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$9;-><init>(Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;)V

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_93
    const/16 p1, 0x9

    .line 1828
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->clearData(I)V

    :goto_98
    return-void
.end method

.method synthetic lambda$unBindDevice$39$com-keephealth-android-ui-device-fragment-DeviceFragmentNew(Landroid/view/View;)V
    .registers 2

    .line 0
    const/4 p1, 0x0

    .line 1834
    sput-boolean p1, Lcom/keephealth/android/app/AppApplication;->isUnbandDevice:Z

    .line 1835
    sput-boolean p1, Lcom/keephealth/android/app/AppApplication;->isUnbandAgaginDevice:Z

    .line 1836
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method synthetic lambda$unBindDevices$40$com-keephealth-android-ui-device-fragment-DeviceFragmentNew(ILandroid/view/View;)V
    .registers 8

    .line 1853
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/keephealth/android/util/SPHelper;->getDeviceModel(Landroid/content/Context;)Lcom/keephealth/android/model/bean/DeviceModel;

    move-result-object p2

    const/4 v0, 0x1

    .line 1854
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isUnbandDevice:Z

    .line 1855
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isUnbandAgaginDevice:Z

    .line 1856
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isUnbandDeleDevice:Z

    .line 1857
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "isUnbandDeleDevice"

    invoke-static {v1, v3, v2}, Lcom/keephealth/android/util/SharePreferenceUtils;->putBool(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    const/4 v1, 0x5

    if-eqz p2, :cond_82

    .line 1859
    invoke-static {}, Lcom/keephealth/android/util/QthreeUtils;->isQ32Device()Z

    move-result p2

    if-eqz p2, :cond_5a

    .line 1860
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p2

    invoke-virtual {p2}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getConnected()Z

    move-result p2

    if-eqz p2, :cond_48

    .line 1862
    iget-object p2, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->reMindTimeOut:Ljava/lang/Runnable;

    const-wide/16 v3, 0xbb8

    invoke-virtual {p2, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1864
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p2

    const/16 v2, 0x2a

    invoke-virtual {p2, v2}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->disconnect(I)V

    const/16 p2, 0x856

    .line 1865
    invoke-static {p2}, Lcom/keephealth/android/util/EventBusHelper;->post(I)V

    goto :goto_4f

    .line 1867
    :cond_48
    iget-object p2, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->mDialog:Landroid/app/Dialog;

    if-eqz p2, :cond_4f

    .line 1868
    invoke-virtual {p2}, Landroid/app/Dialog;->dismiss()V

    :cond_4f
    :goto_4f
    if-ne p1, v0, :cond_55

    .line 1873
    invoke-virtual {p0, v1}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->clearData(I)V

    goto :goto_aa

    :cond_55
    const/4 p1, 0x4

    .line 1875
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->clearData(I)V

    goto :goto_aa

    .line 1878
    :cond_5a
    iget-object p2, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->mDialog:Landroid/app/Dialog;

    if-eqz p2, :cond_61

    .line 1879
    invoke-virtual {p2}, Landroid/app/Dialog;->dismiss()V

    .line 1881
    :cond_61
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p2

    invoke-virtual {p2}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getConnected()Z

    move-result p2

    if-eqz p2, :cond_77

    .line 1882
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    new-instance v2, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$10;

    invoke-direct {v2, p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$10;-><init>(Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;)V

    invoke-virtual {p2, v2}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_77
    if-ne p1, v0, :cond_7d

    .line 1893
    invoke-virtual {p0, v1}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->clearData(I)V

    goto :goto_aa

    :cond_7d
    const/4 p1, 0x2

    .line 1895
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->clearData(I)V

    goto :goto_aa

    .line 1900
    :cond_82
    iget-object p2, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->mDialog:Landroid/app/Dialog;

    if-eqz p2, :cond_89

    .line 1901
    invoke-virtual {p2}, Landroid/app/Dialog;->dismiss()V

    .line 1903
    :cond_89
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p2

    invoke-virtual {p2}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getConnected()Z

    move-result p2

    if-eqz p2, :cond_9f

    .line 1904
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    new-instance v2, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$11;

    invoke-direct {v2, p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$11;-><init>(Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;)V

    invoke-virtual {p2, v2}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_9f
    if-ne p1, v0, :cond_a5

    .line 1915
    invoke-virtual {p0, v1}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->clearData(I)V

    goto :goto_aa

    :cond_a5
    const/16 p1, 0x37

    .line 1917
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->clearData(I)V

    :goto_aa
    return-void
.end method

.method synthetic lambda$unBindDevices$41$com-keephealth-android-ui-device-fragment-DeviceFragmentNew(Landroid/view/View;)V
    .registers 2

    .line 0
    const/4 p1, 0x0

    .line 1924
    sput-boolean p1, Lcom/keephealth/android/app/AppApplication;->isUnbandDevice:Z

    .line 1925
    sput-boolean p1, Lcom/keephealth/android/app/AppApplication;->isUnbandAgaginDevice:Z

    .line 1926
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method synthetic lambda$updateDevice$4$com-keephealth-android-ui-device-fragment-DeviceFragmentNew(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 819
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.bluetooth.adapter.action.REQUEST_ENABLE"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->enableBtIntent:Landroid/content/Intent;

    .line 821
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 822
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->enableBtLauncher:Landroidx/activity/result/ActivityResultLauncher;

    iget-object p2, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->enableBtIntent:Landroid/content/Intent;

    invoke-virtual {p1, p2}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    return-void
.end method

.method synthetic lambda$updateDevice$5$com-keephealth-android-ui-device-fragment-DeviceFragmentNew(Landroid/view/View;)V
    .registers 4

    .line 808
    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getBindBLEDevice()Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object p1

    if-eqz p1, :cond_a2

    .line 810
    iget v0, p1, Lcom/keephealth/android/model/bean/BLEDevice;->power:I

    const/16 v1, 0x14

    if-gt v0, v1, :cond_1c

    .line 811
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f10020a

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    goto/16 :goto_a2

    .line 813
    :cond_1c
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->mBluetoothLe:Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    invoke-virtual {v0}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->isBluetoothOpen()Z

    move-result v0

    if-nez v0, :cond_60

    .line 814
    new-instance p1, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 815
    invoke-virtual {p1, v0}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->isVertical(Z)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object p1

    const v0, 0x7f10030b

    invoke-virtual {p1, v0}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setTitle(I)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$$ExternalSyntheticLambda38;

    invoke-direct {v0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$$ExternalSyntheticLambda38;-><init>()V

    const v1, 0x7f100193

    .line 816
    invoke-virtual {p1, v1, v0}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setLeftButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object p1

    const v0, 0x7f100474

    .line 817
    invoke-virtual {p1, v0}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setMessage(I)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$$ExternalSyntheticLambda39;

    invoke-direct {v0, p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$$ExternalSyntheticLambda39;-><init>(Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;)V

    const v1, 0x7f100257

    .line 818
    invoke-virtual {p1, v1, v0}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setRightButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object p1

    .line 825
    invoke-virtual {p1}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->create()Lcom/keephealth/android/views/dialog/CommonDialog;

    move-result-object p1

    .line 826
    invoke-virtual {p1}, Lcom/keephealth/android/views/dialog/CommonDialog;->show()V

    return-void

    .line 829
    :cond_60
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->mUpdateDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 830
    iget-object v0, p1, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceProduct:Ljava/lang/String;

    const-string v1, "T"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_85

    .line 832
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 833
    const-string v0, "type"

    const-string v1, "mainactivitynew"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 834
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->startActivity(Landroid/content/Intent;)V

    goto :goto_a2

    .line 835
    :cond_85
    iget-object p1, p1, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceProduct:Ljava/lang/String;

    const-string v0, "S"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_99

    .line 836
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-class v0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    invoke-static {p1, v0}, Lcom/keephealth/android/util/IntentUtil;->goToActivity(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_a2

    .line 838
    :cond_99
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-class v0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;

    invoke-static {p1, v0}, Lcom/keephealth/android/util/IntentUtil;->goToActivity(Landroid/content/Context;Ljava/lang/Class;)V

    :cond_a2
    :goto_a2
    return-void
.end method

.method synthetic lambda$updateDevice$6$com-keephealth-android-ui-device-fragment-DeviceFragmentNew(Lcom/keephealth/android/model/bean/BLEDevice;Landroid/view/View;)V
    .registers 5

    .line 863
    iget-object p2, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->mUpdateDialog:Landroid/app/Dialog;

    invoke-virtual {p2}, Landroid/app/Dialog;->dismiss()V

    .line 864
    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getBindBLEDevice()Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object p2

    if-eqz p2, :cond_92

    .line 866
    iget v0, p2, Lcom/keephealth/android/model/bean/BLEDevice;->power:I

    const/16 v1, 0x14

    if-gt v0, v1, :cond_21

    .line 867
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const p2, 0x7f10020a

    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    goto/16 :goto_92

    .line 869
    :cond_21
    invoke-static {}, Lcom/keephealth/android/util/DiscoverServiceUtils;->discoverService()Z

    move-result v0

    if-eqz v0, :cond_81

    .line 870
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->isSysndata()Z

    move-result v0

    if-nez v0, :cond_72

    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->isRunningEcg:Z

    if-nez v0, :cond_72

    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->sendingOrno:Z

    if-eqz v0, :cond_3a

    goto :goto_72

    :cond_3a
    if-eqz p1, :cond_92

    .line 873
    iget-object p1, p1, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceProduct:Ljava/lang/String;

    if-eqz p1, :cond_92

    .line 874
    iget-object p1, p2, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceProduct:Ljava/lang/String;

    const-string v0, "T"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_54

    .line 875
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-class p2, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    invoke-static {p1, p2}, Lcom/keephealth/android/util/IntentUtil;->goToActivity(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_92

    .line 876
    :cond_54
    iget-object p1, p2, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceProduct:Ljava/lang/String;

    const-string p2, "S"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_68

    .line 877
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-class p2, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    invoke-static {p1, p2}, Lcom/keephealth/android/util/IntentUtil;->goToActivity(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_92

    .line 879
    :cond_68
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-class p2, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;

    invoke-static {p1, p2}, Lcom/keephealth/android/util/IntentUtil;->goToActivity(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_92

    .line 871
    :cond_72
    :goto_72
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const p2, 0x7f10053c

    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->showToast(Ljava/lang/String;)V

    goto :goto_92

    .line 884
    :cond_81
    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getBindBLEDevice()Lcom/keephealth/android/model/bean/BLEDevice;

    .line 888
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const p2, 0x7f100258

    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->showToast(Ljava/lang/String;)V

    :cond_92
    :goto_92
    return-void
.end method

.method synthetic lambda$updateUi$1$com-keephealth-android-ui-device-fragment-DeviceFragmentNew(Lcom/keephealth/android/model/bean/BLEDevice;Landroid/view/View;)Z
    .registers 6

    .line 648
    invoke-static {}, Lcom/keephealth/android/util/DiscoverServiceUtils;->discoverService()Z

    move-result p2

    if-eqz p2, :cond_15

    .line 649
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$2;

    invoke-direct {v0, p0, p1}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$2;-><init>(Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;Lcom/keephealth/android/model/bean/BLEDevice;)V

    const-wide/16 v1, 0x1388

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_15
    const/4 p1, 0x0

    return p1
.end method

.method moreSet()V
    .registers 4
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0901e2
        }
    .end annotation

    const v0, 0x7f0901e2

    const-wide/16 v1, 0x3e8

    .line 936
    invoke-static {v0, v1, v2}, Lcom/keephealth/android/util/ButtonUtils;->isFastDoubleClick(IJ)Z

    move-result v0

    if-nez v0, :cond_4a

    .line 937
    invoke-static {}, Lcom/keephealth/android/util/DiscoverServiceUtils;->discoverService()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 938
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->isSysndata()Z

    move-result v0

    if-nez v0, :cond_2a

    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->isRunningEcg:Z

    if-eqz v0, :cond_20

    goto :goto_2a

    .line 941
    :cond_20
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;

    invoke-static {v0, v1}, Lcom/keephealth/android/util/IntentUtil;->goToActivity(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_4a

    .line 939
    :cond_2a
    :goto_2a
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f10053c

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->showToast(Ljava/lang/String;)V

    goto :goto_4a

    .line 944
    :cond_39
    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getBindBLEDevice()Lcom/keephealth/android/model/bean/BLEDevice;

    .line 948
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f100258

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->showToast(Ljava/lang/String;)V

    :cond_4a
    :goto_4a
    return-void
.end method

.method noticeEdit()V
    .registers 4
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f090501
        }
    .end annotation

    const v0, 0x7f090501

    const-wide/16 v1, 0x3e8

    .line 955
    invoke-static {v0, v1, v2}, Lcom/keephealth/android/util/ButtonUtils;->isFastDoubleClick(IJ)Z

    move-result v0

    if-nez v0, :cond_5a

    .line 956
    invoke-static {}, Lcom/keephealth/android/util/DiscoverServiceUtils;->discoverService()Z

    move-result v0

    if-eqz v0, :cond_49

    .line 957
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->isSysndata()Z

    move-result v0

    if-nez v0, :cond_3a

    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->isRunningEcg:Z

    if-eqz v0, :cond_20

    goto :goto_3a

    .line 961
    :cond_20
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/keephealth/android/ui/device/activity/NoticeActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 962
    const-string v1, "comeClass"

    const-string v2, "deviceFragment"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 963
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_5a

    .line 958
    :cond_3a
    :goto_3a
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f10053c

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->showToast(Ljava/lang/String;)V

    goto :goto_5a

    .line 966
    :cond_49
    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getBindBLEDevice()Lcom/keephealth/android/model/bean/BLEDevice;

    .line 970
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f100258

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->showToast(Ljava/lang/String;)V

    :cond_5a
    :goto_5a
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 12

    .line 1397
    invoke-super {p0, p1, p2, p3}, Lcom/keephealth/android/base/BaseMvpFragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p2, 0x9c

    if-ne p1, p2, :cond_e

    .line 1399
    iget-object p2, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->enableBtLauncher:Landroidx/activity/result/ActivityResultLauncher;

    iget-object p3, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->enableBtIntent:Landroid/content/Intent;

    invoke-virtual {p2, p3}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    :cond_e
    const/16 p2, 0x2713

    const p3, 0x7f100257

    const v0, 0x7f10049e

    const v1, 0x7f1004a3

    if-ne p1, p2, :cond_5a

    .line 1402
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/CommonUtil;->isOPen(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_92

    .line 1403
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->permissionsLocation:[Ljava/lang/String;

    invoke-static {p1}, Lcom/keephealth/android/util/PermissionUtil;->checkSelfPermission([Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_92

    .line 1404
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1405
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$$ExternalSyntheticLambda5;

    invoke-direct {v6, p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$$ExternalSyntheticLambda5;-><init>(Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;)V

    new-instance v7, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$$ExternalSyntheticLambda6;

    invoke-direct {v7, p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$$ExternalSyntheticLambda6;-><init>(Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;)V

    .line 1404
    invoke-static/range {v2 .. v7}, Lcom/keephealth/android/util/DialogHelperNew;->showRemindDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->mDialog:Landroid/app/Dialog;

    goto :goto_92

    :cond_5a
    const/16 p2, 0x3ec

    if-ne p1, p2, :cond_92

    .line 1415
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->permissionsLocation:[Ljava/lang/String;

    invoke-static {p1}, Lcom/keephealth/android/util/PermissionUtil;->checkSelfPermission([Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_92

    .line 1416
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1417
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$$ExternalSyntheticLambda7;

    invoke-direct {v6, p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$$ExternalSyntheticLambda7;-><init>(Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;)V

    new-instance v7, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$$ExternalSyntheticLambda8;

    invoke-direct {v7, p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$$ExternalSyntheticLambda8;-><init>(Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;)V

    .line 1416
    invoke-static/range {v2 .. v7}, Lcom/keephealth/android/util/DialogHelperNew;->showRemindDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->mDialog:Landroid/app/Dialog;

    :cond_92
    :goto_92
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .registers 2

    .line 251
    invoke-super {p0, p1}, Lcom/keephealth/android/base/BaseMvpFragment;->onAttach(Landroid/content/Context;)V

    return-void
.end method

.method public onDestroy()V
    .registers 2

    .line 2362
    invoke-super {p0}, Lcom/keephealth/android/base/BaseMvpFragment;->onDestroy()V

    .line 2363
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->mUpdateDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_d

    .line 2364
    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    const/4 v0, 0x0

    .line 2365
    iput-object v0, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->mUpdateDialog:Landroid/app/Dialog;

    :cond_d
    return-void
.end method

.method public onDetach()V
    .registers 1

    .line 257
    invoke-super {p0}, Lcom/keephealth/android/base/BaseMvpFragment;->onDetach()V

    return-void
.end method

.method public onPause()V
    .registers 2

    .line 2121
    invoke-super {p0}, Lcom/keephealth/android/base/BaseMvpFragment;->onPause()V

    const/4 v0, 0x1

    .line 2122
    iput-boolean v0, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->isPausePage:Z

    return-void
.end method

.method public onResume()V
    .registers 2

    .line 698
    invoke-super {p0}, Lcom/keephealth/android/base/BaseMvpFragment;->onResume()V

    const/4 v0, 0x1

    .line 699
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isShowMain:Z

    return-void
.end method

.method protected onVisiable()V
    .registers 5

    .line 2071
    invoke-super {p0}, Lcom/keephealth/android/base/BaseMvpFragment;->onVisiable()V

    const/4 v0, 0x0

    .line 2072
    iput-boolean v0, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->isPausePage:Z

    .line 2074
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x2400

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 2076
    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->mBluetoothLe:Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    invoke-virtual {v1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getConnected()Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 2077
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/app/AppApplication;->isSysndata()Z

    move-result v1

    if-nez v1, :cond_3c

    sget-boolean v1, Lcom/keephealth/android/app/AppApplication;->isRunningEcg:Z

    if-nez v1, :cond_3c

    .line 2079
    sget-boolean v1, Lcom/keephealth/android/app/AppApplication;->backFromHealth:Z

    if-nez v1, :cond_39

    .line 2080
    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast v1, Lcom/keephealth/android/persenter/device/DeviceFragmentPresenter;

    invoke-virtual {v1}, Lcom/keephealth/android/persenter/device/DeviceFragmentPresenter;->getPower()V

    goto :goto_3f

    .line 2082
    :cond_39
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->backFromHealth:Z

    goto :goto_3f

    :cond_3c
    const/4 v1, 0x1

    .line 2085
    iput-boolean v1, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->updatePower:Z

    :cond_3f
    :goto_3f
    const/4 v1, 0x3

    .line 2089
    invoke-virtual {p0, v1}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->updateUi(I)V

    .line 2090
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/keephealth/android/util/SPHelper;->getDeviceModel(Landroid/content/Context;)Lcom/keephealth/android/model/bean/DeviceModel;

    move-result-object v1

    const/16 v2, 0x8

    if-eqz v1, :cond_72

    .line 2092
    invoke-static {}, Lcom/keephealth/android/util/QthreeUtils;->isQ32Device()Z

    move-result v3

    if-eqz v3, :cond_5b

    .line 2093
    iget-object v3, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->ilContacts:Lcom/keephealth/android/views/ItemLableValue;

    invoke-virtual {v3, v0}, Lcom/keephealth/android/views/ItemLableValue;->setVisibility(I)V

    goto :goto_60

    .line 2095
    :cond_5b
    iget-object v3, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->ilContacts:Lcom/keephealth/android/views/ItemLableValue;

    invoke-virtual {v3, v2}, Lcom/keephealth/android/views/ItemLableValue;->setVisibility(I)V

    .line 2097
    :goto_60
    invoke-virtual {v1}, Lcom/keephealth/android/model/bean/DeviceModel;->isContacts()Z

    move-result v1

    if-eqz v1, :cond_6c

    .line 2098
    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->ilContacts:Lcom/keephealth/android/views/ItemLableValue;

    invoke-virtual {v1, v0}, Lcom/keephealth/android/views/ItemLableValue;->setVisibility(I)V

    goto :goto_77

    .line 2100
    :cond_6c
    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->ilContacts:Lcom/keephealth/android/views/ItemLableValue;

    invoke-virtual {v1, v2}, Lcom/keephealth/android/views/ItemLableValue;->setVisibility(I)V

    goto :goto_77

    .line 2103
    :cond_72
    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->ilContacts:Lcom/keephealth/android/views/ItemLableValue;

    invoke-virtual {v1, v2}, Lcom/keephealth/android/views/ItemLableValue;->setVisibility(I)V

    .line 2106
    :goto_77
    sput v0, Lcom/keephealth/android/app/AppApplication;->firstConnect:I

    .line 2107
    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getBindBLEDevice()Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object v0

    if-eqz v0, :cond_84

    .line 2109
    iget v0, v0, Lcom/keephealth/android/model/bean/BLEDevice;->power:I

    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->returnPower(I)V

    :cond_84
    return-void
.end method

.method public oninVisiable()V
    .registers 2

    .line 2115
    invoke-super {p0}, Lcom/keephealth/android/base/BaseMvpFragment;->oninVisiable()V

    const/4 v0, 0x1

    .line 2116
    iput-boolean v0, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->isPausePage:Z

    return-void
.end method

.method reSetDevice()V
    .registers 4
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0901d1
        }
    .end annotation

    .line 774
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->clearQueue()V

    const v0, 0x7f0901d1

    const-wide/16 v1, 0x3e8

    .line 775
    invoke-static {v0, v1, v2}, Lcom/keephealth/android/util/ButtonUtils;->isFastDoubleClick(IJ)Z

    move-result v0

    if-nez v0, :cond_72

    .line 776
    invoke-static {}, Lcom/keephealth/android/util/DiscoverServiceUtils;->discoverService()Z

    move-result v0

    if-eqz v0, :cond_61

    .line 777
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->isSysndata()Z

    move-result v0

    if-nez v0, :cond_52

    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->isRunningEcg:Z

    if-eqz v0, :cond_27

    goto :goto_52

    .line 780
    :cond_27
    new-instance v0, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1004fc

    .line 781
    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setMessage(I)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object v0

    const v1, 0x7f100193

    .line 782
    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setLeftButton(I)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$$ExternalSyntheticLambda4;-><init>(Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;)V

    const v2, 0x7f100257

    .line 783
    invoke-virtual {v0, v2, v1}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setRightButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object v0

    .line 787
    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->create()Lcom/keephealth/android/views/dialog/CommonDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/CommonDialog;->show()V

    goto :goto_72

    .line 778
    :cond_52
    :goto_52
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f10053c

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->showToast(Ljava/lang/String;)V

    goto :goto_72

    .line 790
    :cond_61
    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getBindBLEDevice()Lcom/keephealth/android/model/bean/BLEDevice;

    .line 794
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f100258

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->showToast(Ljava/lang/String;)V

    :cond_72
    :goto_72
    return-void
.end method

.method public removeBond(Landroid/bluetooth/BluetoothDevice;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2062
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "removeBond"

    const/4 v2, 0x0

    move-object v3, v2

    check-cast v3, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 2063
    move-object v1, v2

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    .line 2064
    sput-boolean p1, Lcom/keephealth/android/app/AppApplication;->isPairSuccess:Z
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_17} :catch_17

    :catch_17
    return-void
.end method

.method public returnPower(I)V
    .registers 4

    .line 2190
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$$ExternalSyntheticLambda22;

    invoke-direct {v1, p0, p1}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$$ExternalSyntheticLambda22;-><init>(Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;I)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method unBindDevice()V
    .registers 9
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0900bc
        }
    .end annotation

    const v0, 0x7f0900bc

    const-wide/16 v1, 0x3e8

    .line 1441
    invoke-static {v0, v1, v2}, Lcom/keephealth/android/util/ButtonUtils;->isFastDoubleClick(IJ)Z

    move-result v0

    if-nez v0, :cond_14d

    .line 1448
    invoke-static {}, Lcom/keephealth/android/util/QthreeUtils;->isQ32Device()Z

    move-result v0

    const v1, 0x7f10046f

    const v2, 0x7f100257

    const-string v3, "c60_fail_ota"

    if-eqz v0, :cond_112

    .line 1449
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/CommonUtil;->isOPen(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_29

    const/4 v0, 0x5

    .line 1457
    invoke-direct {p0, v0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->unBindDevices(I)V

    goto/16 :goto_14d

    .line 1459
    :cond_29
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->permissionsLocation:[Ljava/lang/String;

    invoke-static {v0}, Lcom/keephealth/android/util/PermissionUtil;->checkSelfPermission([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_37

    const/4 v0, 0x4

    .line 1487
    invoke-direct {p0, v0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->unBindDevices(I)V

    goto/16 :goto_14d

    .line 1489
    :cond_37
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v4, "isRefuPermisstion"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {v0, v4, v6}, Lcom/keephealth/android/util/SharePreferenceUtils;->putBool(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1490
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1f

    if-lt v0, v4, :cond_95

    .line 1492
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->permissionsBluetooth_connect:[Ljava/lang/String;

    invoke-static {v0}, Lcom/keephealth/android/util/PermissionUtil;->checkSelfPermission([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_59

    const/4 v0, 0x3

    .line 1528
    invoke-direct {p0, v0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->unBindDevices(I)V

    goto/16 :goto_14d

    .line 1530
    :cond_59
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "reFrushNumber"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/keephealth/android/util/SharePreferenceUtils;->putBool(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1531
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->mBluetoothLe:Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    invoke-virtual {v0}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->isBluetoothOpen()Z

    move-result v0

    if-nez v0, :cond_74

    const/4 v0, 0x2

    .line 1545
    invoke-direct {p0, v0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->unBindDevices(I)V

    goto/16 :goto_14d

    .line 1547
    :cond_74
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/keephealth/android/util/SharePreferenceUtils;->getBool(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8f

    .line 1549
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$$ExternalSyntheticLambda33;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$$ExternalSyntheticLambda33;-><init>(Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;)V

    invoke-static {v0, v1}, Lcom/keephealth/android/util/DialogHelperNew;->showUpdateC60DeviceAgain(Landroid/app/Activity;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->mUpdateDialog:Landroid/app/Dialog;

    goto/16 :goto_14d

    :cond_8f
    const/4 v0, 0x1

    .line 1589
    invoke-direct {p0, v0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->unBindDevices(I)V

    goto/16 :goto_14d

    .line 1595
    :cond_95
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->mBluetoothLe:Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    invoke-virtual {v0}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->isBluetoothOpen()Z

    move-result v0

    if-nez v0, :cond_d6

    .line 1596
    new-instance v0, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1597
    invoke-virtual {v0, v5}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->isVertical(Z)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object v0

    const v1, 0x7f10030b

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setTitle(I)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$$ExternalSyntheticLambda40;

    invoke-direct {v1}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$$ExternalSyntheticLambda40;-><init>()V

    const v3, 0x7f100193

    .line 1598
    invoke-virtual {v0, v3, v1}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setLeftButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object v0

    const v1, 0x7f100474

    .line 1599
    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setMessage(I)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$$ExternalSyntheticLambda41;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$$ExternalSyntheticLambda41;-><init>(Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;)V

    .line 1600
    invoke-virtual {v0, v2, v1}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setRightButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object v0

    .line 1607
    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->create()Lcom/keephealth/android/views/dialog/CommonDialog;

    move-result-object v0

    .line 1608
    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/CommonDialog;->show()V

    goto/16 :goto_14d

    .line 1610
    :cond_d6
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/keephealth/android/util/SharePreferenceUtils;->getBool(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f0

    .line 1612
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$$ExternalSyntheticLambda42;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$$ExternalSyntheticLambda42;-><init>(Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;)V

    invoke-static {v0, v1}, Lcom/keephealth/android/util/DialogHelperNew;->showUpdateC60DeviceAgain(Landroid/app/Activity;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->mUpdateDialog:Landroid/app/Dialog;

    goto :goto_14d

    .line 1653
    :cond_f0
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0, v1}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1654
    invoke-virtual {p0, v2}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$$ExternalSyntheticLambda43;

    invoke-direct {v5, p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$$ExternalSyntheticLambda43;-><init>(Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;)V

    new-instance v6, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$$ExternalSyntheticLambda44;

    invoke-direct {v6, p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$$ExternalSyntheticLambda44;-><init>(Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;)V

    .line 1653
    const-string v7, ""

    move-object v1, v0

    move-object v2, v3

    move-object v3, v7

    invoke-static/range {v1 .. v6}, Lcom/keephealth/android/util/DialogHelperNew;->showRemindDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->mDialog:Landroid/app/Dialog;

    goto :goto_14d

    .line 1727
    :cond_112
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/keephealth/android/util/SharePreferenceUtils;->getBool(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12c

    .line 1729
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$$ExternalSyntheticLambda45;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$$ExternalSyntheticLambda45;-><init>(Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;)V

    invoke-static {v0, v1}, Lcom/keephealth/android/util/DialogHelperNew;->showUpdateC60DeviceAgain(Landroid/app/Activity;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->mUpdateDialog:Landroid/app/Dialog;

    goto :goto_14d

    .line 1770
    :cond_12c
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0, v1}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1771
    invoke-virtual {p0, v2}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$$ExternalSyntheticLambda1;

    invoke-direct {v5, p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$$ExternalSyntheticLambda1;-><init>(Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;)V

    new-instance v6, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$$ExternalSyntheticLambda2;

    invoke-direct {v6, p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$$ExternalSyntheticLambda2;-><init>(Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;)V

    .line 1770
    const-string v7, ""

    move-object v1, v0

    move-object v2, v3

    move-object v3, v7

    invoke-static/range {v1 .. v6}, Lcom/keephealth/android/util/DialogHelperNew;->showRemindDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->mDialog:Landroid/app/Dialog;

    :cond_14d
    :goto_14d
    return-void
.end method

.method public updateConnect()V
    .registers 8

    const/4 v0, 0x0

    .line 2130
    :try_start_1
    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->mBluetoothLe:Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    if-eqz v1, :cond_11e

    iget-boolean v1, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->isPausePage:Z

    if-nez v1, :cond_11e

    .line 2131
    iget-boolean v1, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->updatePower:Z
    :try_end_b
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_b} :catch_10b

    const/16 v2, 0x8

    const v3, 0x7f100331

    const v4, 0x7f1001ec

    const-string v5, "file:///android_asset/device_connecting.gif"

    const v6, 0x7f0d003c

    if-eqz v1, :cond_6b

    .line 2132
    :try_start_1a
    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast v1, Lcom/keephealth/android/persenter/device/DeviceFragmentPresenter;

    invoke-virtual {v1}, Lcom/keephealth/android/persenter/device/DeviceFragmentPresenter;->getPower()V

    .line 2133
    sget-boolean v1, Lcom/keephealth/android/app/AppApplication;->isHomeLoading:Z

    if-eqz v1, :cond_57

    .line 2134
    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->tvConnectStatus:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2135
    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->ivConnectStatus:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2136
    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->ivConnectStatus:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2, v6}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2137
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/Fragment;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    .line 2138
    invoke-virtual {v1}, Lcom/bumptech/glide/RequestManager;->asGif()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    .line 2139
    invoke-virtual {v1, v5}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->ivConnectStatus:Landroid/widget/ImageView;

    .line 2140
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto/16 :goto_11e

    .line 2142
    :cond_57
    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->tvConnectStatus:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2143
    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->ivConnectStatus:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_11e

    .line 2146
    :cond_6b
    invoke-static {}, Lcom/keephealth/android/util/DiscoverServiceUtils;->discoverService()Z

    move-result v1

    if-eqz v1, :cond_c0

    .line 2147
    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast v1, Lcom/keephealth/android/persenter/device/DeviceFragmentPresenter;

    invoke-virtual {v1}, Lcom/keephealth/android/persenter/device/DeviceFragmentPresenter;->getPower()V

    .line 2148
    sget-boolean v1, Lcom/keephealth/android/app/AppApplication;->isHomeLoading:Z

    if-eqz v1, :cond_ad

    .line 2149
    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->tvConnectStatus:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2150
    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->ivConnectStatus:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2151
    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->ivConnectStatus:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2, v6}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2152
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/Fragment;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    .line 2153
    invoke-virtual {v1}, Lcom/bumptech/glide/RequestManager;->asGif()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    .line 2154
    invoke-virtual {v1, v5}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->ivConnectStatus:Landroid/widget/ImageView;

    .line 2155
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto :goto_11e

    .line 2157
    :cond_ad
    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->tvConnectStatus:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2158
    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->ivConnectStatus:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_11e

    .line 2161
    :cond_c0
    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->ivPower:Landroid/widget/ImageView;

    if-eqz v1, :cond_ca

    const v2, 0x7f0d0076

    .line 2162
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2164
    :cond_ca
    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->tvPower:Landroid/widget/TextView;

    if-eqz v1, :cond_d3

    .line 2165
    const-string v2, "--%"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2167
    :cond_d3
    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->tvConnectStatus:Landroid/widget/TextView;

    if-eqz v1, :cond_e5

    .line 2168
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f100330

    invoke-virtual {v2, v3}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2170
    :cond_e5
    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->ivConnectStatus:Landroid/widget/ImageView;

    if-eqz v1, :cond_11e

    .line 2171
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2172
    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->ivConnectStatus:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2, v6}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2173
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/Fragment;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    .line 2174
    invoke-virtual {v1}, Lcom/bumptech/glide/RequestManager;->asGif()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    .line 2175
    invoke-virtual {v1, v5}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->ivConnectStatus:Landroid/widget/ImageView;

    .line 2176
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;
    :try_end_10a
    .catch Ljava/lang/IllegalStateException; {:try_start_1a .. :try_end_10a} :catch_10b

    goto :goto_11e

    :catch_10b
    move-exception v1

    .line 2182
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "updateConnect-e:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/keephealth/android/util/FileUtilsTest;->writeTxtToFile(ZLjava/lang/String;)V

    :cond_11e
    :goto_11e
    return-void
.end method

.method updateDevice()V
    .registers 4
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0901d2
        }
    .end annotation

    const v0, 0x7f0901d2

    const-wide/16 v1, 0x3e8

    .line 803
    invoke-static {v0, v1, v2}, Lcom/keephealth/android/util/ButtonUtils;->isFastDoubleClick(IJ)Z

    move-result v0

    if-nez v0, :cond_9c

    .line 804
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "c60_fail_ota"

    invoke-static {v0, v1}, Lcom/keephealth/android/util/SharePreferenceUtils;->getBool(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 806
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$$ExternalSyntheticLambda29;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$$ExternalSyntheticLambda29;-><init>(Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;)V

    invoke-static {v0, v1}, Lcom/keephealth/android/util/DialogHelperNew;->showUpdateC60DeviceAgain(Landroid/app/Activity;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->mUpdateDialog:Landroid/app/Dialog;

    goto/16 :goto_9c

    .line 847
    :cond_28
    invoke-static {}, Lcom/keephealth/android/util/DiscoverServiceUtils;->discoverService()Z

    move-result v0

    if-eqz v0, :cond_8b

    .line 848
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->isSysndata()Z

    move-result v0

    if-eqz v0, :cond_47

    .line 849
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f10053c

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->showToast(Ljava/lang/String;)V

    goto :goto_9c

    .line 851
    :cond_47
    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getDeviceUpdate()Lcom/keephealth/android/model/bean/DeviceUpdate;

    move-result-object v0

    if-eqz v0, :cond_9c

    .line 853
    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/DeviceUpdate;->isUpdate()Z

    move-result v0

    if-eqz v0, :cond_9c

    .line 854
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->mUpdateDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_5a

    .line 855
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 857
    :cond_5a
    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getBindBLEDevice()Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object v0

    .line 858
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string v2, "update_comple"

    invoke-static {v1, v2}, Lcom/keephealth/android/util/SharePreferenceUtils;->getBool(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 859
    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getBindBLEDevice()Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object v2

    if-eqz v2, :cond_9c

    if-eqz v1, :cond_80

    .line 862
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$$ExternalSyntheticLambda30;

    invoke-direct {v2, p0, v0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$$ExternalSyntheticLambda30;-><init>(Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;Lcom/keephealth/android/model/bean/BLEDevice;)V

    invoke-static {v1, v2}, Lcom/keephealth/android/util/DialogHelperNew;->showUpdateDeviceAgain(Landroid/app/Activity;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->mUpdateDialog:Landroid/app/Dialog;

    goto :goto_9c

    .line 895
    :cond_80
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/DialogHelperNew;->showUpdateDevice(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->mUpdateDialog:Landroid/app/Dialog;

    goto :goto_9c

    .line 903
    :cond_8b
    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getBindBLEDevice()Lcom/keephealth/android/model/bean/BLEDevice;

    .line 907
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f100258

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->showToast(Ljava/lang/String;)V

    :cond_9c
    :goto_9c
    return-void
.end method

.method public updateUi(I)V
    .registers 18

    move-object/from16 v0, p0

    .line 266
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/keephealth/android/util/SPHelper;->getDeviceModel(Landroid/content/Context;)Lcom/keephealth/android/model/bean/DeviceModel;

    move-result-object v1

    iput-object v1, v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->deviceModel:Lcom/keephealth/android/model/bean/DeviceModel;

    .line 267
    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getBindBLEDevice()Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object v1

    .line 268
    const-string v2, ""

    const v3, 0x7f100576

    const/4 v4, 0x5

    const v5, 0x7f1001f0

    const/4 v6, 0x4

    const v7, 0x7f1001ef

    const/4 v8, 0x3

    const v9, 0x7f100132

    const/4 v10, 0x2

    const v11, 0x7f100746

    const/4 v12, 0x1

    const/16 v13, 0x8

    const/4 v14, 0x0

    if-eqz v1, :cond_4ff

    iget-object v15, v1, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceName:Ljava/lang/String;

    if-eqz v15, :cond_4ff

    iget-object v15, v1, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_4ff

    .line 269
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->deviceSettingBeanList:Ljava/util/List;

    .line 270
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 271
    iget-object v2, v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->deviceModel:Lcom/keephealth/android/model/bean/DeviceModel;

    if-nez v2, :cond_b2

    .line 272
    iget-object v2, v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->ivDevice:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 273
    iget-object v2, v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->llDialCenter:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 274
    iget-object v2, v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->ilAudioBluetooth:Lcom/keephealth/android/views/ItemLableValue;

    invoke-virtual {v2, v13}, Lcom/keephealth/android/views/ItemLableValue;->setVisibility(I)V

    .line 275
    iget-object v2, v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->ivDevice2:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 276
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/app/AppApplication;->isSysndata()Z

    .line 279
    iget-object v2, v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->deviceSettingBeanList:Ljava/util/List;

    new-instance v3, Lcom/keephealth/android/ui/device/bean/DeviceSettingBean;

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v15

    invoke-virtual {v15, v11}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v3, v11, v10}, Lcom/keephealth/android/ui/device/bean/DeviceSettingBean;-><init>(Ljava/lang/String;I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 280
    iget-object v2, v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->deviceSettingBeanList:Ljava/util/List;

    new-instance v3, Lcom/keephealth/android/ui/device/bean/DeviceSettingBean;

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v10

    invoke-virtual {v10, v9}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v3, v9, v8}, Lcom/keephealth/android/ui/device/bean/DeviceSettingBean;-><init>(Ljava/lang/String;I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 281
    iget-object v2, v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->deviceSettingBeanList:Ljava/util/List;

    new-instance v3, Lcom/keephealth/android/ui/device/bean/DeviceSettingBean;

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7, v6}, Lcom/keephealth/android/ui/device/bean/DeviceSettingBean;-><init>(Ljava/lang/String;I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 282
    iget-object v2, v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->deviceSettingBeanList:Ljava/util/List;

    new-instance v3, Lcom/keephealth/android/ui/device/bean/DeviceSettingBean;

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5, v4}, Lcom/keephealth/android/ui/device/bean/DeviceSettingBean;-><init>(Ljava/lang/String;I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 283
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/app/AppApplication;->isSysndata()Z

    goto/16 :goto_2fb

    :cond_b2
    if-nez v2, :cond_115

    .line 289
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->deviceSettingBeanList:Ljava/util/List;

    .line 290
    new-instance v15, Lcom/keephealth/android/ui/device/bean/DeviceSettingBean;

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v13

    invoke-virtual {v13, v3}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v15, v3, v12}, Lcom/keephealth/android/ui/device/bean/DeviceSettingBean;-><init>(Ljava/lang/String;I)V

    invoke-interface {v2, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 291
    iget-object v2, v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->deviceSettingBeanList:Ljava/util/List;

    new-instance v3, Lcom/keephealth/android/ui/device/bean/DeviceSettingBean;

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v13

    invoke-virtual {v13, v11}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v3, v11, v10}, Lcom/keephealth/android/ui/device/bean/DeviceSettingBean;-><init>(Ljava/lang/String;I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 292
    iget-object v2, v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->deviceSettingBeanList:Ljava/util/List;

    new-instance v3, Lcom/keephealth/android/ui/device/bean/DeviceSettingBean;

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v10

    invoke-virtual {v10, v9}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v3, v9, v8}, Lcom/keephealth/android/ui/device/bean/DeviceSettingBean;-><init>(Ljava/lang/String;I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 293
    iget-object v2, v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->deviceSettingBeanList:Ljava/util/List;

    new-instance v3, Lcom/keephealth/android/ui/device/bean/DeviceSettingBean;

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7, v6}, Lcom/keephealth/android/ui/device/bean/DeviceSettingBean;-><init>(Ljava/lang/String;I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 294
    iget-object v2, v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->deviceSettingBeanList:Ljava/util/List;

    new-instance v3, Lcom/keephealth/android/ui/device/bean/DeviceSettingBean;

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5, v4}, Lcom/keephealth/android/ui/device/bean/DeviceSettingBean;-><init>(Ljava/lang/String;I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2fb

    .line 296
    :cond_115
    invoke-virtual {v2}, Lcom/keephealth/android/model/bean/DeviceModel;->isWristScreen()Z

    move-result v2

    if-nez v2, :cond_14b

    iget-object v2, v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->deviceModel:Lcom/keephealth/android/model/bean/DeviceModel;

    invoke-virtual {v2}, Lcom/keephealth/android/model/bean/DeviceModel;->isWristScreenB()Z

    move-result v2

    if-nez v2, :cond_14b

    iget-object v2, v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->deviceModel:Lcom/keephealth/android/model/bean/DeviceModel;

    invoke-virtual {v2}, Lcom/keephealth/android/model/bean/DeviceModel;->isScreenBrightness()Z

    move-result v2

    if-nez v2, :cond_14b

    iget-object v2, v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->deviceModel:Lcom/keephealth/android/model/bean/DeviceModel;

    invoke-virtual {v2}, Lcom/keephealth/android/model/bean/DeviceModel;->isScreenShutdownTime()Z

    move-result v2

    if-nez v2, :cond_14b

    iget-object v2, v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->deviceModel:Lcom/keephealth/android/model/bean/DeviceModel;

    invoke-virtual {v2}, Lcom/keephealth/android/model/bean/DeviceModel;->isAllDayNotDisturbMode()Z

    move-result v2

    if-nez v2, :cond_14b

    iget-object v2, v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->deviceModel:Lcom/keephealth/android/model/bean/DeviceModel;

    invoke-virtual {v2}, Lcom/keephealth/android/model/bean/DeviceModel;->isNotDisturbMode()Z

    move-result v2

    if-nez v2, :cond_14b

    iget-object v2, v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->deviceModel:Lcom/keephealth/android/model/bean/DeviceModel;

    invoke-virtual {v2}, Lcom/keephealth/android/model/bean/DeviceModel;->isNightView()Z

    move-result v2

    if-eqz v2, :cond_160

    .line 297
    :cond_14b
    iget-object v2, v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->deviceSettingBeanList:Ljava/util/List;

    new-instance v13, Lcom/keephealth/android/ui/device/bean/DeviceSettingBean;

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v15

    const v4, 0x7f100512

    invoke-virtual {v15, v4}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v13, v4, v14}, Lcom/keephealth/android/ui/device/bean/DeviceSettingBean;-><init>(Ljava/lang/String;I)V

    invoke-interface {v2, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 299
    :cond_160
    iget-object v2, v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->deviceModel:Lcom/keephealth/android/model/bean/DeviceModel;

    invoke-virtual {v2}, Lcom/keephealth/android/model/bean/DeviceModel;->getImageSrc()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_190

    iget-object v2, v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->ivDevice2:Landroid/widget/ImageView;

    if-eqz v2, :cond_190

    .line 300
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lcom/keephealth/android/ui/main/activity/MainActivityNew;

    invoke-virtual {v2}, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->getImageLoader()Lcom/keephealth/android/util/ImageLoadUtil;

    move-result-object v2

    const v4, 0x7f080122

    invoke-virtual {v2, v4}, Lcom/keephealth/android/util/ImageLoadUtil;->setError(I)Lcom/keephealth/android/util/ImageLoadUtil;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/keephealth/android/util/ImageLoadUtil;->setPlaceholder(I)Lcom/keephealth/android/util/ImageLoadUtil;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    iget-object v13, v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->ivDevice2:Landroid/widget/ImageView;

    iget-object v15, v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->deviceModel:Lcom/keephealth/android/model/bean/DeviceModel;

    .line 302
    invoke-virtual {v15}, Lcom/keephealth/android/model/bean/DeviceModel;->getImageSrc()Ljava/lang/String;

    move-result-object v15

    .line 300
    invoke-virtual {v2, v4, v13, v15}, Lcom/keephealth/android/util/ImageLoadUtil;->loadRectImage(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 304
    :cond_190
    iget-object v2, v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->deviceModel:Lcom/keephealth/android/model/bean/DeviceModel;

    invoke-virtual {v2}, Lcom/keephealth/android/model/bean/DeviceModel;->isDialCenter()Z

    move-result v2

    if-eqz v2, :cond_1b9

    .line 305
    iget-object v2, v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->llDialCenter:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v14}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 306
    iget-object v2, v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->deviceModel:Lcom/keephealth/android/model/bean/DeviceModel;

    invoke-virtual {v2}, Lcom/keephealth/android/model/bean/DeviceModel;->getModel()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1b6

    iget-object v2, v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    if-eqz v2, :cond_1b6

    .line 307
    iget-object v2, v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast v2, Lcom/keephealth/android/persenter/device/DeviceFragmentPresenter;

    iget-object v4, v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->deviceModel:Lcom/keephealth/android/model/bean/DeviceModel;

    invoke-virtual {v4}, Lcom/keephealth/android/model/bean/DeviceModel;->getModel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/keephealth/android/persenter/device/DeviceFragmentPresenter;->getDialCenter(Ljava/lang/String;)V

    :cond_1b6
    :goto_1b6
    const/16 v4, 0x8

    goto :goto_1e7

    .line 309
    :cond_1b9
    iget-object v2, v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->deviceModel:Lcom/keephealth/android/model/bean/DeviceModel;

    invoke-virtual {v2}, Lcom/keephealth/android/model/bean/DeviceModel;->isDialCenterA()Z

    move-result v2

    if-eqz v2, :cond_1e0

    .line 310
    iget-object v2, v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->llDialCenter:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v14}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 311
    iget-object v2, v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->deviceModel:Lcom/keephealth/android/model/bean/DeviceModel;

    invoke-virtual {v2}, Lcom/keephealth/android/model/bean/DeviceModel;->getModel()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1b6

    iget-object v2, v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    if-eqz v2, :cond_1b6

    .line 312
    iget-object v2, v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast v2, Lcom/keephealth/android/persenter/device/DeviceFragmentPresenter;

    iget-object v4, v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->deviceModel:Lcom/keephealth/android/model/bean/DeviceModel;

    invoke-virtual {v4}, Lcom/keephealth/android/model/bean/DeviceModel;->getModel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/keephealth/android/persenter/device/DeviceFragmentPresenter;->getDialCenterA(Ljava/lang/String;)V

    goto :goto_1b6

    .line 315
    :cond_1e0
    iget-object v2, v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->llDialCenter:Landroid/widget/LinearLayout;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 317
    :goto_1e7
    iget-object v2, v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->deviceModel:Lcom/keephealth/android/model/bean/DeviceModel;

    invoke-virtual {v2}, Lcom/keephealth/android/model/bean/DeviceModel;->isAudioBluetooth()Z

    move-result v2

    if-eqz v2, :cond_1f5

    .line 318
    iget-object v2, v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->ilAudioBluetooth:Lcom/keephealth/android/views/ItemLableValue;

    invoke-virtual {v2, v14}, Lcom/keephealth/android/views/ItemLableValue;->setVisibility(I)V

    goto :goto_1fa

    .line 320
    :cond_1f5
    iget-object v2, v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->ilAudioBluetooth:Lcom/keephealth/android/views/ItemLableValue;

    invoke-virtual {v2, v4}, Lcom/keephealth/android/views/ItemLableValue;->setVisibility(I)V

    .line 322
    :goto_1fa
    iget-object v2, v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->deviceModel:Lcom/keephealth/android/model/bean/DeviceModel;

    invoke-virtual {v2}, Lcom/keephealth/android/model/bean/DeviceModel;->isSportModeAdapter()Z

    move-result v2

    if-eqz v2, :cond_21a

    .line 323
    iget-object v2, v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->rlSport:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v14}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 324
    iget-object v2, v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->deviceSettingBeanList:Ljava/util/List;

    new-instance v4, Lcom/keephealth/android/ui/device/bean/DeviceSettingBean;

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v13

    invoke-virtual {v13, v3}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3, v12}, Lcom/keephealth/android/ui/device/bean/DeviceSettingBean;-><init>(Ljava/lang/String;I)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_221

    .line 326
    :cond_21a
    iget-object v2, v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->rlSport:Landroid/widget/RelativeLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 328
    :goto_221
    iget-object v2, v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->deviceModel:Lcom/keephealth/android/model/bean/DeviceModel;

    invoke-virtual {v2}, Lcom/keephealth/android/model/bean/DeviceModel;->isMessagerNotification()Z

    move-result v2

    if-eqz v2, :cond_241

    .line 329
    iget-object v2, v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->rlNotice:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v14}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 330
    iget-object v2, v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->deviceSettingBeanList:Ljava/util/List;

    new-instance v3, Lcom/keephealth/android/ui/device/bean/DeviceSettingBean;

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4, v11}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v10}, Lcom/keephealth/android/ui/device/bean/DeviceSettingBean;-><init>(Ljava/lang/String;I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_248

    .line 332
    :cond_241
    iget-object v2, v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->rlNotice:Landroid/widget/RelativeLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 334
    :goto_248
    iget-object v2, v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->deviceModel:Lcom/keephealth/android/model/bean/DeviceModel;

    invoke-virtual {v2}, Lcom/keephealth/android/model/bean/DeviceModel;->isAlarm()Z

    move-result v2

    if-eqz v2, :cond_262

    .line 335
    iget-object v2, v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->deviceSettingBeanList:Ljava/util/List;

    new-instance v3, Lcom/keephealth/android/ui/device/bean/DeviceSettingBean;

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v8}, Lcom/keephealth/android/ui/device/bean/DeviceSettingBean;-><init>(Ljava/lang/String;I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 337
    :cond_262
    iget-object v2, v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->deviceSettingBeanList:Ljava/util/List;

    new-instance v3, Lcom/keephealth/android/ui/device/bean/DeviceSettingBean;

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v6}, Lcom/keephealth/android/ui/device/bean/DeviceSettingBean;-><init>(Ljava/lang/String;I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 338
    iget-object v2, v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->deviceModel:Lcom/keephealth/android/model/bean/DeviceModel;

    invoke-virtual {v2}, Lcom/keephealth/android/model/bean/DeviceModel;->isHealthReminders()Z

    move-result v2

    if-eqz v2, :cond_28f

    .line 339
    iget-object v2, v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->deviceSettingBeanList:Ljava/util/List;

    new-instance v3, Lcom/keephealth/android/ui/device/bean/DeviceSettingBean;

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x5

    invoke-direct {v3, v4, v5}, Lcom/keephealth/android/ui/device/bean/DeviceSettingBean;-><init>(Ljava/lang/String;I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 347
    :cond_28f
    iget-object v2, v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->deviceModel:Lcom/keephealth/android/model/bean/DeviceModel;

    invoke-virtual {v2}, Lcom/keephealth/android/model/bean/DeviceModel;->isBusinessCards()Z

    move-result v2

    if-eqz v2, :cond_2aa

    .line 348
    iget-object v2, v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->deviceSettingBeanList:Ljava/util/List;

    new-instance v3, Lcom/keephealth/android/ui/device/bean/DeviceSettingBean;

    const v4, 0x7f1005ef

    invoke-virtual {v0, v4}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x8

    invoke-direct {v3, v4, v5}, Lcom/keephealth/android/ui/device/bean/DeviceSettingBean;-><init>(Ljava/lang/String;I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 350
    :cond_2aa
    iget-object v2, v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->deviceModel:Lcom/keephealth/android/model/bean/DeviceModel;

    invoke-virtual {v2}, Lcom/keephealth/android/model/bean/DeviceModel;->isWallet()Z

    move-result v2

    if-eqz v2, :cond_2c5

    .line 351
    iget-object v2, v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->deviceSettingBeanList:Ljava/util/List;

    new-instance v3, Lcom/keephealth/android/ui/device/bean/DeviceSettingBean;

    const v4, 0x7f10070f

    invoke-virtual {v0, v4}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x9

    invoke-direct {v3, v4, v5}, Lcom/keephealth/android/ui/device/bean/DeviceSettingBean;-><init>(Ljava/lang/String;I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 353
    :cond_2c5
    iget-object v2, v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->deviceModel:Lcom/keephealth/android/model/bean/DeviceModel;

    invoke-virtual {v2}, Lcom/keephealth/android/model/bean/DeviceModel;->isGestureControl()Z

    move-result v2

    if-eqz v2, :cond_2e0

    .line 354
    iget-object v2, v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->deviceSettingBeanList:Ljava/util/List;

    new-instance v3, Lcom/keephealth/android/ui/device/bean/DeviceSettingBean;

    const v4, 0x7f100637

    invoke-virtual {v0, v4}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xa

    invoke-direct {v3, v4, v5}, Lcom/keephealth/android/ui/device/bean/DeviceSettingBean;-><init>(Ljava/lang/String;I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 356
    :cond_2e0
    iget-object v2, v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->deviceModel:Lcom/keephealth/android/model/bean/DeviceModel;

    invoke-virtual {v2}, Lcom/keephealth/android/model/bean/DeviceModel;->isGameTimeManagement()Z

    move-result v2

    if-eqz v2, :cond_2fb

    .line 357
    iget-object v2, v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->deviceSettingBeanList:Ljava/util/List;

    new-instance v3, Lcom/keephealth/android/ui/device/bean/DeviceSettingBean;

    const v4, 0x7f100636

    invoke-virtual {v0, v4}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xb

    invoke-direct {v3, v4, v5}, Lcom/keephealth/android/ui/device/bean/DeviceSettingBean;-><init>(Ljava/lang/String;I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 363
    :cond_2fb
    :goto_2fb
    iget-object v2, v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->rlBindDevice:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v14}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 364
    iget-object v2, v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->rlUnBindDevice:Landroid/widget/RelativeLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 365
    iget-object v2, v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->btnUnbind:Landroid/widget/Button;

    invoke-virtual {v2, v14}, Landroid/widget/Button;->setVisibility(I)V

    .line 366
    iget-object v2, v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->tvDeviceName:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 367
    iget-object v2, v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->tvDeviceName:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2, v12}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 368
    iget-object v2, v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->tvPid:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "PID: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceProduct:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 369
    iget-object v2, v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->tvMac:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "MAC: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 370
    iget-object v2, v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->mBluetoothLe:Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    invoke-virtual {v2}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getConnected()Z

    move-result v2

    const-string v3, "file:///android_asset/device_connecting.gif"

    const v4, 0x7f0d003c

    if-eqz v2, :cond_3a5

    .line 371
    sget-boolean v2, Lcom/keephealth/android/app/AppApplication;->isHomeLoading:Z

    if-eqz v2, :cond_38d

    .line 372
    iget-object v2, v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->tvConnectStatus:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    const v6, 0x7f100331

    invoke-virtual {v5, v6}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 373
    iget-object v2, v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->ivConnectStatus:Landroid/widget/ImageView;

    invoke-virtual {v2, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 374
    iget-object v2, v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->ivConnectStatus:Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5, v4}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 375
    invoke-static/range {p0 .. p0}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/Fragment;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    .line 376
    invoke-virtual {v2}, Lcom/bumptech/glide/RequestManager;->asGif()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v2

    .line 377
    invoke-virtual {v2, v3}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->ivConnectStatus:Landroid/widget/ImageView;

    .line 378
    invoke-virtual {v2, v3}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto :goto_3e7

    .line 380
    :cond_38d
    iget-object v2, v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->tvConnectStatus:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    const v4, 0x7f1001ec

    invoke-virtual {v3, v4}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 381
    iget-object v2, v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->ivConnectStatus:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3e7

    .line 384
    :cond_3a5
    iget-object v2, v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->ivPower:Landroid/widget/ImageView;

    const v5, 0x7f0d0076

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 385
    iget-object v2, v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->tvPower:Landroid/widget/TextView;

    const-string v5, "--%"

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 387
    iget-object v2, v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->ivConnectStatus:Landroid/widget/ImageView;

    invoke-virtual {v2, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 388
    iget-object v2, v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->tvConnectStatus:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    const v6, 0x7f100330

    invoke-virtual {v5, v6}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 389
    iget-object v2, v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->ivConnectStatus:Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5, v4}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 390
    invoke-static/range {p0 .. p0}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/Fragment;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    .line 391
    invoke-virtual {v2}, Lcom/bumptech/glide/RequestManager;->asGif()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v2

    .line 392
    invoke-virtual {v2, v3}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->ivConnectStatus:Landroid/widget/ImageView;

    .line 393
    invoke-virtual {v2, v3}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 395
    :goto_3e7
    iget-object v2, v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->tvDialCenter:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    const v4, 0x7f060113

    invoke-static {v3, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 396
    iget-object v2, v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->tvNotice:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 397
    iget-object v2, v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->tvSport:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 398
    iget-object v2, v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->tvAlarm:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 399
    iget-object v2, v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->tvHealthMonitoring:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 400
    iget-object v2, v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->tvScreen:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 401
    iget-object v2, v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->tvHealthReminder:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 402
    iget-object v2, v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->ilMoreSet:Lcom/keephealth/android/views/ItemLableValue;

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/keephealth/android/views/ItemLableValue;->setLableColor(I)V

    .line 403
    iget-object v2, v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->ilContacts:Lcom/keephealth/android/views/ItemLableValue;

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/keephealth/android/views/ItemLableValue;->setLableColor(I)V

    .line 404
    iget-object v2, v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->ilFindDevice:Lcom/keephealth/android/views/ItemLableValue;

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/keephealth/android/views/ItemLableValue;->setLableColor(I)V

    .line 405
    iget-object v2, v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->ilDeviceVersion:Lcom/keephealth/android/views/ItemLableValue;

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/keephealth/android/views/ItemLableValue;->setLableColor(I)V

    .line 406
    iget-object v2, v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->ilDeviceVersion:Lcom/keephealth/android/views/ItemLableValue;

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/keephealth/android/views/ItemLableValue;->setValueColor(I)V

    .line 407
    iget-object v2, v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->ilDeviceVersion:Lcom/keephealth/android/views/ItemLableValue;

    iget-object v3, v1, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceVersion:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/keephealth/android/views/ItemLableValue;->setValue(Ljava/lang/String;)V

    .line 408
    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getDeviceUpdate()Lcom/keephealth/android/model/bean/DeviceUpdate;

    move-result-object v2

    if-eqz v2, :cond_4a2

    .line 409
    invoke-virtual {v2}, Lcom/keephealth/android/model/bean/DeviceUpdate;->isUpdate()Z

    move-result v3

    if-eqz v3, :cond_4a2

    .line 410
    iget-object v3, v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->ilDeviceVersion:Lcom/keephealth/android/views/ItemLableValue;

    const v5, 0x7f080155

    invoke-virtual {v3, v5}, Lcom/keephealth/android/views/ItemLableValue;->setRightBitmap(I)V

    goto :goto_4a7

    .line 412
    :cond_4a2
    iget-object v3, v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->ilDeviceVersion:Lcom/keephealth/android/views/ItemLableValue;

    invoke-virtual {v3, v14}, Lcom/keephealth/android/views/ItemLableValue;->setRightBitmap(I)V

    .line 414
    :goto_4a7
    sget v3, Lcom/keephealth/android/app/AppApplication;->isBluetoothOpen:I

    if-nez v3, :cond_4cf

    .line 415
    invoke-virtual {v1}, Lcom/keephealth/android/model/bean/BLEDevice;->isDfu()Z

    move-result v3

    if-eqz v3, :cond_4c9

    if-eqz v2, :cond_4c9

    .line 416
    iget-object v2, v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->mUpdateDialog:Landroid/app/Dialog;

    if-eqz v2, :cond_4d6

    .line 418
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const-string v3, "c60_fail_ota"

    invoke-static {v2, v3}, Lcom/keephealth/android/util/SharePreferenceUtils;->getBool(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4d6

    .line 420
    iget-object v2, v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->mUpdateDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    goto :goto_4d6

    :cond_4c9
    if-eqz v2, :cond_4d6

    .line 424
    invoke-virtual {v2}, Lcom/keephealth/android/model/bean/DeviceUpdate;->isForceUpdate()Z

    goto :goto_4d6

    .line 429
    :cond_4cf
    iget-object v2, v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->mUpdateDialog:Landroid/app/Dialog;

    if-eqz v2, :cond_4d6

    .line 430
    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 433
    :cond_4d6
    :goto_4d6
    iget-object v2, v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->ilDeviceReset:Lcom/keephealth/android/views/ItemLableValue;

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/keephealth/android/views/ItemLableValue;->setLableColor(I)V

    .line 434
    iget-object v2, v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->ilBackPermission:Lcom/keephealth/android/views/ItemLableValue;

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/keephealth/android/views/ItemLableValue;->setLableColor(I)V

    .line 435
    iget-object v2, v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->ilAudioBluetooth:Lcom/keephealth/android/views/ItemLableValue;

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/keephealth/android/views/ItemLableValue;->setLableColor(I)V

    goto/16 :goto_653

    .line 437
    :cond_4ff
    iget-object v4, v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->btnUnbind:Landroid/widget/Button;

    const/16 v13, 0x8

    invoke-virtual {v4, v13}, Landroid/widget/Button;->setVisibility(I)V

    .line 438
    iget-object v4, v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->rlBindDevice:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v13}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 439
    iget-object v4, v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->rlUnBindDevice:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v14}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 440
    iget-object v4, v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->tvDialCenter:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v13

    const v15, 0x7f060137

    invoke-static {v13, v15}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v13

    invoke-virtual {v4, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 441
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->getDialCenterFail()V

    .line 442
    iget-object v4, v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->tvNotice:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v13

    invoke-static {v13, v15}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v13

    invoke-virtual {v4, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 443
    iget-object v4, v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->tvSport:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v13

    invoke-static {v13, v15}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v13

    invoke-virtual {v4, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 444
    iget-object v4, v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->tvAlarm:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v13

    invoke-static {v13, v15}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v13

    invoke-virtual {v4, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 445
    iget-object v4, v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->tvHealthMonitoring:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v13

    invoke-static {v13, v15}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v13

    invoke-virtual {v4, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 446
    iget-object v4, v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->tvScreen:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v13

    invoke-static {v13, v15}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v13

    invoke-virtual {v4, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 447
    iget-object v4, v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->tvHealthReminder:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v13

    invoke-static {v13, v15}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v13

    invoke-virtual {v4, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 448
    iget-object v4, v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->ilMoreSet:Lcom/keephealth/android/views/ItemLableValue;

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v13

    invoke-static {v13, v15}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v13

    invoke-virtual {v4, v13}, Lcom/keephealth/android/views/ItemLableValue;->setLableColor(I)V

    .line 449
    iget-object v4, v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->ilContacts:Lcom/keephealth/android/views/ItemLableValue;

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v13

    invoke-static {v13, v15}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v13

    invoke-virtual {v4, v13}, Lcom/keephealth/android/views/ItemLableValue;->setLableColor(I)V

    .line 450
    iget-object v4, v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->ilFindDevice:Lcom/keephealth/android/views/ItemLableValue;

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v13

    invoke-static {v13, v15}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v13

    invoke-virtual {v4, v13}, Lcom/keephealth/android/views/ItemLableValue;->setLableColor(I)V

    .line 451
    iget-object v4, v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->ilDeviceVersion:Lcom/keephealth/android/views/ItemLableValue;

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v13

    invoke-static {v13, v15}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v13

    invoke-virtual {v4, v13}, Lcom/keephealth/android/views/ItemLableValue;->setLableColor(I)V

    .line 452
    iget-object v4, v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->ilDeviceVersion:Lcom/keephealth/android/views/ItemLableValue;

    invoke-virtual {v4, v14}, Lcom/keephealth/android/views/ItemLableValue;->setRightBitmap(I)V

    .line 453
    iget-object v4, v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->ilDeviceVersion:Lcom/keephealth/android/views/ItemLableValue;

    invoke-virtual {v4, v2}, Lcom/keephealth/android/views/ItemLableValue;->setValue(Ljava/lang/String;)V

    .line 454
    iget-object v2, v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->ilDeviceReset:Lcom/keephealth/android/views/ItemLableValue;

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4, v15}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/keephealth/android/views/ItemLableValue;->setLableColor(I)V

    .line 455
    iget-object v2, v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->ilBackPermission:Lcom/keephealth/android/views/ItemLableValue;

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4, v15}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/keephealth/android/views/ItemLableValue;->setLableColor(I)V

    .line 456
    iget-object v2, v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->ilAudioBluetooth:Lcom/keephealth/android/views/ItemLableValue;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Lcom/keephealth/android/views/ItemLableValue;->setVisibility(I)V

    .line 457
    iget-object v2, v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->ilAudioBluetooth:Lcom/keephealth/android/views/ItemLableValue;

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v13

    invoke-static {v13, v15}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v13

    invoke-virtual {v2, v13}, Lcom/keephealth/android/views/ItemLableValue;->setLableColor(I)V

    .line 460
    iget-object v2, v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->llDialCenter:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 461
    iget-object v2, v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->deviceSettingBeanList:Ljava/util/List;

    if-eqz v2, :cond_5ed

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_5ed

    goto :goto_652

    .line 464
    :cond_5ed
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->deviceSettingBeanList:Ljava/util/List;

    .line 465
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 466
    iget-object v2, v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->deviceSettingBeanList:Ljava/util/List;

    new-instance v4, Lcom/keephealth/android/ui/device/bean/DeviceSettingBean;

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v13

    invoke-virtual {v13, v3}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3, v12}, Lcom/keephealth/android/ui/device/bean/DeviceSettingBean;-><init>(Ljava/lang/String;I)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 467
    iget-object v2, v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->deviceSettingBeanList:Ljava/util/List;

    new-instance v3, Lcom/keephealth/android/ui/device/bean/DeviceSettingBean;

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4, v11}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v10}, Lcom/keephealth/android/ui/device/bean/DeviceSettingBean;-><init>(Ljava/lang/String;I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 468
    iget-object v2, v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->deviceSettingBeanList:Ljava/util/List;

    new-instance v3, Lcom/keephealth/android/ui/device/bean/DeviceSettingBean;

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v8}, Lcom/keephealth/android/ui/device/bean/DeviceSettingBean;-><init>(Ljava/lang/String;I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 469
    iget-object v2, v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->deviceSettingBeanList:Ljava/util/List;

    new-instance v3, Lcom/keephealth/android/ui/device/bean/DeviceSettingBean;

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v6}, Lcom/keephealth/android/ui/device/bean/DeviceSettingBean;-><init>(Ljava/lang/String;I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 470
    iget-object v2, v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->deviceSettingBeanList:Ljava/util/List;

    new-instance v3, Lcom/keephealth/android/ui/device/bean/DeviceSettingBean;

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x5

    invoke-direct {v3, v4, v5}, Lcom/keephealth/android/ui/device/bean/DeviceSettingBean;-><init>(Ljava/lang/String;I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_652
    move v12, v14

    .line 473
    :goto_653
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isSettingVisible:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " a:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "rrer4e"

    invoke-static {v3, v2}, Lcom/keephealth/android/util/log/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    iget-object v2, v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->adapter:Lcom/keephealth/android/ui/device/adapter/DeviceSettingAdapter;

    invoke-virtual {v2, v12}, Lcom/keephealth/android/ui/device/adapter/DeviceSettingAdapter;->setSettingVisible(Z)V

    .line 475
    iget-object v2, v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->adapter:Lcom/keephealth/android/ui/device/adapter/DeviceSettingAdapter;

    iget-object v3, v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->deviceSettingBeanList:Ljava/util/List;

    invoke-virtual {v2, v3}, Lcom/keephealth/android/ui/device/adapter/DeviceSettingAdapter;->setList(Ljava/util/List;)V

    .line 476
    iget-object v2, v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->rvSetting:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->adapter:Lcom/keephealth/android/ui/device/adapter/DeviceSettingAdapter;

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 477
    iget-object v2, v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->rvSetting:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v14}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 478
    iget-object v2, v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->adapter:Lcom/keephealth/android/ui/device/adapter/DeviceSettingAdapter;

    new-instance v3, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$1;

    invoke-direct {v3, v0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$1;-><init>(Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;)V

    invoke-virtual {v2, v3}, Lcom/keephealth/android/ui/device/adapter/DeviceSettingAdapter;->setOnItemClickListener(Lcom/keephealth/android/base/BaseAdapter$OnItemClickListener;)V

    .line 647
    iget-object v2, v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->rlBindDevice:Landroid/widget/RelativeLayout;

    new-instance v3, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$$ExternalSyntheticLambda3;

    invoke-direct {v3, v0, v1}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$$ExternalSyntheticLambda3;-><init>(Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;Lcom/keephealth/android/model/bean/BLEDevice;)V

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method
