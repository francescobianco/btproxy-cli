.class public Lcom/keephealth/android/ui/main/activity/LookWeatherInfoActivity;
.super Lcom/keephealth/android/base/BaseActivity;
.source "LookWeatherInfoActivity.java"


# static fields
.field protected static final ACCESS_FINE_LOCATION_REQUEST_CODE:I = 0x64

.field protected static final ACCESS_FINE_LOCATION_REQUEST_CODE_BACK:I = 0x65

.field protected static final REQUEST_CODE_BLUETOOH:I = 0x66


# instance fields
.field btnNext:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900a8
    .end annotation
.end field

.field private commonDialog:Lcom/keephealth/android/views/dialog/CommonDialog;

.field private commonDialog2:Lcom/keephealth/android/views/dialog/CommonDialog;

.field private enableBtLauncher:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private mDialog:Landroid/app/Dialog;

.field private permissionsBluetoothConnect:[Ljava/lang/String;

.field private permissionsLocation:[Ljava/lang/String;

.field private permissionsLocationBack:[Ljava/lang/String;

.field tv_content_1:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09072d
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 5

    .line 44
    invoke-direct {p0}, Lcom/keephealth/android/base/BaseActivity;-><init>()V

    const/4 v0, 0x2

    .line 53
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    const/4 v3, 0x1

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/LookWeatherInfoActivity;->permissionsLocation:[Ljava/lang/String;

    .line 54
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "android.permission.BLUETOOTH_CONNECT"

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/LookWeatherInfoActivity;->permissionsBluetoothConnect:[Ljava/lang/String;

    return-void
.end method

.method private getBlueRequest(I)V
    .registers 4

    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getBlueRequest_a:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "khf432"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->isBluetoothOpen()Z

    move-result p1

    if-nez p1, :cond_66

    .line 274
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/LookWeatherInfoActivity;->commonDialog2:Lcom/keephealth/android/views/dialog/CommonDialog;

    if-nez p1, :cond_58

    .line 275
    new-instance p1, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    invoke-direct {p1, p0}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 276
    invoke-virtual {p1, v0}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->isVertical(Z)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object p1

    const v0, 0x7f10030b

    invoke-virtual {p1, v0}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setTitle(I)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/keephealth/android/ui/main/activity/LookWeatherInfoActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/keephealth/android/ui/main/activity/LookWeatherInfoActivity$$ExternalSyntheticLambda0;-><init>()V

    const v1, 0x7f100193

    .line 277
    invoke-virtual {p1, v1, v0}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setLeftButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object p1

    const v0, 0x7f100474

    .line 278
    invoke-virtual {p1, v0}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setMessage(I)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/keephealth/android/ui/main/activity/LookWeatherInfoActivity$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/keephealth/android/ui/main/activity/LookWeatherInfoActivity$$ExternalSyntheticLambda2;-><init>(Lcom/keephealth/android/ui/main/activity/LookWeatherInfoActivity;)V

    const v1, 0x7f100257

    .line 279
    invoke-virtual {p1, v1, v0}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setRightButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object p1

    .line 295
    invoke-virtual {p1}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->create()Lcom/keephealth/android/views/dialog/CommonDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/LookWeatherInfoActivity;->commonDialog2:Lcom/keephealth/android/views/dialog/CommonDialog;

    .line 297
    :cond_58
    const-string p1, "bluetooth_open_cancel"

    invoke-static {p0, p1}, Lcom/keephealth/android/util/SharePreferenceUtils;->getBool(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_84

    .line 299
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/LookWeatherInfoActivity;->commonDialog2:Lcom/keephealth/android/views/dialog/CommonDialog;

    invoke-virtual {p1}, Lcom/keephealth/android/views/dialog/CommonDialog;->show()V

    goto :goto_84

    .line 302
    :cond_66
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1f

    if-lt p1, v0, :cond_6d

    goto :goto_84

    .line 304
    :cond_6d
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/LookWeatherInfoActivity;->permissionsLocation:[Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/main/activity/LookWeatherInfoActivity;->checkSelfPermission([Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7d

    .line 305
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/LookWeatherInfoActivity;->permissionsLocationBack:[Ljava/lang/String;

    if-eqz p1, :cond_84

    .line 306
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/main/activity/LookWeatherInfoActivity;->checkSelfPermission([Ljava/lang/String;)Z

    goto :goto_84

    :cond_7d
    const/16 p1, 0x64

    .line 311
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/LookWeatherInfoActivity;->permissionsLocation:[Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/keephealth/android/ui/main/activity/LookWeatherInfoActivity;->requestPermissions(I[Ljava/lang/String;)V

    :cond_84
    :goto_84
    return-void
.end method

.method private isOpenBle(I)V
    .registers 4

    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "c:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GFD34f"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1f

    if-lt p1, v0, :cond_6a

    .line 231
    const-string p1, "android.permission.BLUETOOTH_CONNECT"

    invoke-static {p0, p1}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_6a

    .line 239
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/LookWeatherInfoActivity;->commonDialog:Lcom/keephealth/android/views/dialog/CommonDialog;

    if-nez p1, :cond_5c

    .line 240
    new-instance p1, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    invoke-direct {p1, p0}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 241
    invoke-virtual {p1, v0}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->isVertical(Z)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object p1

    const v0, 0x7f10017d

    invoke-virtual {p1, v0}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setTitle(I)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/keephealth/android/ui/main/activity/LookWeatherInfoActivity$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcom/keephealth/android/ui/main/activity/LookWeatherInfoActivity$$ExternalSyntheticLambda6;-><init>()V

    const v1, 0x7f100193

    .line 242
    invoke-virtual {p1, v1, v0}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setLeftButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object p1

    const v0, 0x7f10017b

    .line 243
    invoke-virtual {p1, v0}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setMessage(I)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/keephealth/android/ui/main/activity/LookWeatherInfoActivity$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lcom/keephealth/android/ui/main/activity/LookWeatherInfoActivity$$ExternalSyntheticLambda7;-><init>(Lcom/keephealth/android/ui/main/activity/LookWeatherInfoActivity;)V

    const v1, 0x7f100257

    .line 244
    invoke-virtual {p1, v1, v0}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setRightButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object p1

    .line 249
    invoke-virtual {p1}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->create()Lcom/keephealth/android/views/dialog/CommonDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/LookWeatherInfoActivity;->commonDialog:Lcom/keephealth/android/views/dialog/CommonDialog;

    .line 251
    :cond_5c
    const-string p1, "bluetooth_connect"

    invoke-static {p0, p1}, Lcom/keephealth/android/util/SharePreferenceUtils;->getBool(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_69

    .line 253
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/LookWeatherInfoActivity;->commonDialog:Lcom/keephealth/android/views/dialog/CommonDialog;

    invoke-virtual {p1}, Lcom/keephealth/android/views/dialog/CommonDialog;->show()V

    :cond_69
    return-void

    :cond_6a
    const/4 p1, 0x1

    .line 260
    invoke-direct {p0, p1}, Lcom/keephealth/android/ui/main/activity/LookWeatherInfoActivity;->getBlueRequest(I)V

    return-void
.end method

.method static synthetic lambda$getBlueRequest$9(Landroid/content/DialogInterface;I)V
    .registers 2

    .line 277
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method static synthetic lambda$initView$0(Landroidx/activity/result/ActivityResult;)V
    .registers 1

    .line 70
    invoke-virtual {p0}, Landroidx/activity/result/ActivityResult;->getResultCode()I

    return-void
.end method

.method static synthetic lambda$isOpenBle$7(Landroid/content/DialogInterface;I)V
    .registers 2

    .line 242
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method


# virtual methods
.method protected getContentView()I
    .registers 2

    const v0, 0x7f0c0064

    return v0
.end method

.method protected initView()V
    .registers 4

    .line 66
    invoke-super {p0}, Lcom/keephealth/android/base/BaseActivity;->initView()V

    .line 67
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    new-instance v1, Lcom/keephealth/android/ui/main/activity/LookWeatherInfoActivity$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/keephealth/android/ui/main/activity/LookWeatherInfoActivity$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/keephealth/android/ui/main/activity/LookWeatherInfoActivity;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/LookWeatherInfoActivity;->enableBtLauncher:Landroidx/activity/result/ActivityResultLauncher;

    .line 77
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/LookWeatherInfoActivity;->bgView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 78
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/LookWeatherInfoActivity;->tv_content_1:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 79
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v0, v2, :cond_34

    .line 80
    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.ACCESS_BACKGROUND_LOCATION"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/LookWeatherInfoActivity;->permissionsLocationBack:[Ljava/lang/String;

    goto :goto_37

    :cond_34
    const/4 v0, 0x0

    .line 82
    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/LookWeatherInfoActivity;->permissionsLocationBack:[Ljava/lang/String;

    .line 84
    :goto_37
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/LookWeatherInfoActivity;->titleBack:Landroid/widget/ImageView;

    new-instance v1, Lcom/keephealth/android/ui/main/activity/LookWeatherInfoActivity$1;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/activity/LookWeatherInfoActivity$1;-><init>(Lcom/keephealth/android/ui/main/activity/LookWeatherInfoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method synthetic lambda$getBlueRequest$10$com-keephealth-android-ui-main-activity-LookWeatherInfoActivity(Landroid/content/DialogInterface;I)V
    .registers 5

    .line 280
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.bluetooth.adapter.action.REQUEST_ENABLE"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 281
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_12

    .line 282
    const-string v0, "android.permission.BLUETOOTH_CONNECT"

    invoke-static {p0, v0}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 292
    :cond_12
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/LookWeatherInfoActivity;->enableBtLauncher:Landroidx/activity/result/ActivityResultLauncher;

    invoke-virtual {v0, p2}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    .line 293
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method synthetic lambda$isOpenBle$8$com-keephealth-android-ui-main-activity-LookWeatherInfoActivity(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 0
    const/16 p2, 0x66

    .line 245
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/LookWeatherInfoActivity;->permissionsBluetoothConnect:[Ljava/lang/String;

    invoke-virtual {p0, p2, v0}, Lcom/keephealth/android/ui/main/activity/LookWeatherInfoActivity;->requestPermissions(I[Ljava/lang/String;)V

    .line 246
    const-string p2, "FF4d332"

    const-string v0, "\u8bf7\u6c42\u84dd\u7259\u6743\u9650..."

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method synthetic lambda$onOneClick$1$com-keephealth-android-ui-main-activity-LookWeatherInfoActivity(Landroid/view/View;)V
    .registers 3

    .line 0
    const/16 p1, 0x64

    .line 104
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/LookWeatherInfoActivity;->permissionsLocation:[Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/keephealth/android/ui/main/activity/LookWeatherInfoActivity;->requestPermissions(I[Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$onOneClick$2$com-keephealth-android-ui-main-activity-LookWeatherInfoActivity(Landroid/view/View;)V
    .registers 2

    .line 106
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/LookWeatherInfoActivity;->mDialog:Landroid/app/Dialog;

    if-eqz p1, :cond_7

    .line 107
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_7
    return-void
.end method

.method synthetic lambda$requestPermissionsFail$3$com-keephealth-android-ui-main-activity-LookWeatherInfoActivity(Landroid/view/View;)V
    .registers 5

    .line 156
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 157
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/LookWeatherInfoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "package"

    invoke-static {v2, v0, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 158
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/16 v0, 0x64

    .line 159
    invoke-virtual {p0, p1, v0}, Lcom/keephealth/android/ui/main/activity/LookWeatherInfoActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method synthetic lambda$requestPermissionsFail$4$com-keephealth-android-ui-main-activity-LookWeatherInfoActivity(Landroid/view/View;)V
    .registers 2

    .line 161
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/LookWeatherInfoActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 162
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/LookWeatherInfoActivity;->finish()V

    const/4 p1, 0x1

    .line 163
    sput-boolean p1, Lcom/keephealth/android/app/AppApplication;->isBackHome:Z

    return-void
.end method

.method synthetic lambda$requestPermissionsFail$5$com-keephealth-android-ui-main-activity-LookWeatherInfoActivity(Landroid/view/View;)V
    .registers 5

    .line 173
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 174
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/LookWeatherInfoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "package"

    invoke-static {v2, v0, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 175
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/16 v0, 0x66

    .line 176
    invoke-virtual {p0, p1, v0}, Lcom/keephealth/android/ui/main/activity/LookWeatherInfoActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method synthetic lambda$requestPermissionsFail$6$com-keephealth-android-ui-main-activity-LookWeatherInfoActivity(Landroid/view/View;)V
    .registers 2

    .line 178
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/LookWeatherInfoActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 179
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/LookWeatherInfoActivity;->finish()V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 4

    .line 265
    invoke-super {p0, p1, p2, p3}, Lcom/keephealth/android/base/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p2, 0x66

    if-ne p1, p2, :cond_b

    const/4 p1, 0x3

    .line 267
    invoke-direct {p0, p1}, Lcom/keephealth/android/ui/main/activity/LookWeatherInfoActivity;->getBlueRequest(I)V

    :cond_b
    return-void
.end method

.method public onBackPressed()V
    .registers 4

    .line 127
    invoke-super {p0}, Lcom/keephealth/android/base/BaseActivity;->onBackPressed()V

    .line 128
    const-class v0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;

    invoke-static {p0, v0}, Lcom/keephealth/android/util/IntentUtil;->goToActivityAndFinish(Landroid/content/Context;Ljava/lang/Class;)V

    .line 129
    const-class v0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;

    const-string v0, "MainActivityNew"

    sput-object v0, Lcom/keephealth/android/app/AppApplication;->className:Ljava/lang/String;

    .line 130
    sget-object v0, Lcom/keephealth/android/app/AppApplication;->className:Ljava/lang/String;

    const-string v1, "class"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "classStr"

    invoke-static {p0, v1, v0}, Lcom/keephealth/android/util/SharePreferenceUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-static {}, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->getDefault()Lcom/keephealth/android/sevice/IntelligentNotificationAddService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->getCurrentStep()V

    const/4 v0, 0x1

    .line 132
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isBackHome:Z

    .line 133
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isLookWeatherBack:Z

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0900b4
        }
    .end annotation

    const p1, 0x7f0900b4

    .line 138
    invoke-static {p1}, Lcom/keephealth/android/util/ButtonUtils;->isFastDoubleClick(I)Z

    move-result p1

    if-nez p1, :cond_36

    .line 140
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/keephealth/android/ui/main/activity/ReceivePhoneInfoActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 141
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/main/activity/LookWeatherInfoActivity;->startActivity(Landroid/content/Intent;)V

    .line 142
    const-class p1, Lcom/keephealth/android/ui/main/activity/ReceivePhoneInfoActivity;

    const-string p1, "ReceivePhoneInfoActivity"

    sput-object p1, Lcom/keephealth/android/app/AppApplication;->className:Ljava/lang/String;

    .line 143
    sget-object p1, Lcom/keephealth/android/app/AppApplication;->className:Ljava/lang/String;

    const-string v0, "class"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v0, "classStr"

    invoke-static {p0, v0, p1}, Lcom/keephealth/android/util/SharePreferenceUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    invoke-static {}, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->getDefault()Lcom/keephealth/android/sevice/IntelligentNotificationAddService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->getCurrentStep()V

    .line 145
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/LookWeatherInfoActivity;->finish()V

    :cond_36
    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .line 318
    invoke-super {p0}, Lcom/keephealth/android/base/BaseActivity;->onDestroy()V

    .line 319
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->clearQueue()V

    .line 320
    invoke-static {}, Lcom/keephealth/android/util/LocationUtil;->stopLocation()V

    return-void
.end method

.method public onOneClick(Landroid/view/View;)V
    .registers 9
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0900a8
        }
    .end annotation

    const p1, 0x7f0900a8

    const-wide/16 v0, 0x3e8

    .line 100
    invoke-static {p1, v0, v1}, Lcom/keephealth/android/util/ButtonUtils;->isFastDoubleClick(IJ)Z

    move-result p1

    if-nez p1, :cond_95

    .line 101
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/LookWeatherInfoActivity;->permissionsLocation:[Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/main/activity/LookWeatherInfoActivity;->checkSelfPermission([Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_46

    .line 102
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/LookWeatherInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f10037d

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 103
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/LookWeatherInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f10047b

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/LookWeatherInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f100257

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/keephealth/android/ui/main/activity/LookWeatherInfoActivity$$ExternalSyntheticLambda4;

    invoke-direct {v5, p0}, Lcom/keephealth/android/ui/main/activity/LookWeatherInfoActivity$$ExternalSyntheticLambda4;-><init>(Lcom/keephealth/android/ui/main/activity/LookWeatherInfoActivity;)V

    new-instance v6, Lcom/keephealth/android/ui/main/activity/LookWeatherInfoActivity$$ExternalSyntheticLambda5;

    invoke-direct {v6, p0}, Lcom/keephealth/android/ui/main/activity/LookWeatherInfoActivity$$ExternalSyntheticLambda5;-><init>(Lcom/keephealth/android/ui/main/activity/LookWeatherInfoActivity;)V

    move-object v1, p0

    .line 102
    invoke-static/range {v1 .. v6}, Lcom/keephealth/android/util/DialogHelperNew;->showRemindDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/LookWeatherInfoActivity;->mDialog:Landroid/app/Dialog;

    goto :goto_95

    .line 112
    :cond_46
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/app/AppApplication;->isSysndata()Z

    move-result p1

    if-nez p1, :cond_87

    sget-boolean p1, Lcom/keephealth/android/app/AppApplication;->isRunningEcg:Z

    if-nez p1, :cond_87

    sget-boolean p1, Lcom/keephealth/android/app/AppApplication;->sendingOrno:Z

    if-eqz p1, :cond_59

    goto :goto_87

    .line 115
    :cond_59
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/keephealth/android/ui/main/activity/ReceivePhoneInfoActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 116
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/main/activity/LookWeatherInfoActivity;->startActivity(Landroid/content/Intent;)V

    .line 117
    const-class p1, Lcom/keephealth/android/ui/main/activity/ReceivePhoneInfoActivity;

    const-string p1, "ReceivePhoneInfoActivity"

    sput-object p1, Lcom/keephealth/android/app/AppApplication;->className:Ljava/lang/String;

    .line 118
    sget-object p1, Lcom/keephealth/android/app/AppApplication;->className:Ljava/lang/String;

    const-string v0, "class"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v0, "classStr"

    invoke-static {p0, v0, p1}, Lcom/keephealth/android/util/SharePreferenceUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    invoke-static {}, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->getDefault()Lcom/keephealth/android/sevice/IntelligentNotificationAddService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->getCurrentStep()V

    .line 120
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/LookWeatherInfoActivity;->finish()V

    goto :goto_95

    .line 113
    :cond_87
    :goto_87
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/LookWeatherInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f10053c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/main/activity/LookWeatherInfoActivity;->showToast(Ljava/lang/String;)V

    :cond_95
    :goto_95
    return-void
.end method

.method protected onResume()V
    .registers 4

    .line 217
    invoke-super {p0}, Lcom/keephealth/android/base/BaseActivity;->onResume()V

    .line 218
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->isBluetoothOpen()Z

    move-result v0

    const/4 v1, 0x1

    .line 219
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    if-nez v0, :cond_17

    const-string v0, "bluetooth_open_cancel"

    invoke-static {p0, v0, v1}, Lcom/keephealth/android/util/SharePreferenceUtils;->putBool(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 221
    :cond_17
    const-string v0, "android.permission.BLUETOOTH_CONNECT"

    invoke-static {p0, v0}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const-string v2, "bluetooth_connect"

    if-eqz v0, :cond_25

    .line 223
    invoke-static {p0, v2, v1}, Lcom/keephealth/android/util/SharePreferenceUtils;->putBool(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_2d

    :cond_25
    const/4 v0, 0x0

    .line 225
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p0, v2, v0}, Lcom/keephealth/android/util/SharePreferenceUtils;->putBool(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    :goto_2d
    return-void
.end method

.method public requestPermissionsFail(I)V
    .registers 9

    .line 151
    invoke-super {p0, p1}, Lcom/keephealth/android/base/BaseActivity;->requestPermissionsFail(I)V

    const/16 v0, 0x64

    if-ne p1, v0, :cond_4c

    .line 153
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/LookWeatherInfoActivity;->permissionsLocation:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-static {p0, p1}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_45

    .line 154
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/LookWeatherInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1004a3

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 155
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/LookWeatherInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1004a2

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/LookWeatherInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1004a1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/keephealth/android/ui/main/activity/LookWeatherInfoActivity$$ExternalSyntheticLambda8;

    invoke-direct {v5, p0}, Lcom/keephealth/android/ui/main/activity/LookWeatherInfoActivity$$ExternalSyntheticLambda8;-><init>(Lcom/keephealth/android/ui/main/activity/LookWeatherInfoActivity;)V

    new-instance v6, Lcom/keephealth/android/ui/main/activity/LookWeatherInfoActivity$$ExternalSyntheticLambda9;

    invoke-direct {v6, p0}, Lcom/keephealth/android/ui/main/activity/LookWeatherInfoActivity$$ExternalSyntheticLambda9;-><init>(Lcom/keephealth/android/ui/main/activity/LookWeatherInfoActivity;)V

    move-object v1, p0

    .line 154
    invoke-static/range {v1 .. v6}, Lcom/keephealth/android/util/DialogHelperNew;->showRemindDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/LookWeatherInfoActivity;->mDialog:Landroid/app/Dialog;

    goto :goto_80

    .line 166
    :cond_45
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/LookWeatherInfoActivity;->finish()V

    const/4 p1, 0x1

    .line 167
    sput-boolean p1, Lcom/keephealth/android/app/AppApplication;->isBackHome:Z

    goto :goto_80

    :cond_4c
    const/16 v0, 0x66

    if-ne p1, v0, :cond_80

    .line 170
    const-string p1, "dfede333"

    const-string v0, "\u8bf7\u6c42\u6743\u9650..."

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/LookWeatherInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f100449

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/LookWeatherInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f100257

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/keephealth/android/ui/main/activity/LookWeatherInfoActivity$$ExternalSyntheticLambda10;

    invoke-direct {v5, p0}, Lcom/keephealth/android/ui/main/activity/LookWeatherInfoActivity$$ExternalSyntheticLambda10;-><init>(Lcom/keephealth/android/ui/main/activity/LookWeatherInfoActivity;)V

    new-instance v6, Lcom/keephealth/android/ui/main/activity/LookWeatherInfoActivity$$ExternalSyntheticLambda1;

    invoke-direct {v6, p0}, Lcom/keephealth/android/ui/main/activity/LookWeatherInfoActivity$$ExternalSyntheticLambda1;-><init>(Lcom/keephealth/android/ui/main/activity/LookWeatherInfoActivity;)V

    .line 171
    const-string v2, ""

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcom/keephealth/android/util/DialogHelperNew;->showRemindDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/LookWeatherInfoActivity;->mDialog:Landroid/app/Dialog;

    :cond_80
    :goto_80
    return-void
.end method

.method public requestPermissionsSuccess(I)V
    .registers 6

    const/16 v0, 0x64

    if-ne p1, v0, :cond_57

    .line 186
    const-string p1, "jjj433"

    const-string v0, "3333"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    invoke-static {p0}, Lcom/keephealth/android/util/LocationUtil;->StartLocation(Landroid/content/Context;)V

    .line 189
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/LookWeatherInfoActivity;->permissionsLocationBack:[Ljava/lang/String;

    if-eqz v1, :cond_51

    .line 191
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/keephealth/android/ui/main/activity/ReceivePhoneInfoActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 192
    invoke-virtual {p0, v1}, Lcom/keephealth/android/ui/main/activity/LookWeatherInfoActivity;->startActivity(Landroid/content/Intent;)V

    .line 193
    const-class v1, Lcom/keephealth/android/ui/main/activity/ReceivePhoneInfoActivity;

    const-string v1, "ReceivePhoneInfoActivity"

    sput-object v1, Lcom/keephealth/android/app/AppApplication;->className:Ljava/lang/String;

    .line 194
    sget-object v1, Lcom/keephealth/android/app/AppApplication;->className:Ljava/lang/String;

    const-string v2, "class"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "classStr"

    invoke-static {p0, v2, v1}, Lcom/keephealth/android/util/SharePreferenceUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    invoke-static {}, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->getDefault()Lcom/keephealth/android/sevice/IntelligentNotificationAddService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->getCurrentStep()V

    .line 196
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/LookWeatherInfoActivity;->finish()V

    .line 197
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/LookWeatherInfoActivity;->permissionsLocationBack:[Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/keephealth/android/ui/main/activity/LookWeatherInfoActivity;->checkSelfPermission([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4d

    const/16 p1, 0x8

    .line 198
    invoke-direct {p0, p1}, Lcom/keephealth/android/ui/main/activity/LookWeatherInfoActivity;->isOpenBle(I)V

    goto :goto_60

    .line 200
    :cond_4d
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_60

    :cond_51
    const/16 p1, 0x9

    .line 209
    invoke-direct {p0, p1}, Lcom/keephealth/android/ui/main/activity/LookWeatherInfoActivity;->isOpenBle(I)V

    goto :goto_60

    :cond_57
    const/16 v0, 0x66

    if-ne p1, v0, :cond_60

    const/16 p1, 0xb

    .line 212
    invoke-direct {p0, p1}, Lcom/keephealth/android/ui/main/activity/LookWeatherInfoActivity;->isOpenBle(I)V

    :cond_60
    :goto_60
    return-void
.end method
