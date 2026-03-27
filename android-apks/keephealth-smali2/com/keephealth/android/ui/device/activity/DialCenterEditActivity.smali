.class public Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity;
.super Lcom/keephealth/android/base/BaseActivity;
.source "DialCenterEditActivity.java"

# interfaces
.implements Lcom/keephealth/android/base/BaseAdapter$OnItemClickListener;


# static fields
.field static final REQUEST_CODE_CAMER_PERMISSION:I = 0x1

.field private static final WRITE_EXTERNAL_STORAGE_REQUEST_CODE:I = 0x64


# instance fields
.field private final REQUEST_CROP_CODE:I

.field private adapter:Lcom/keephealth/android/ui/device/adapter/DialCenterEditAdapter;

.field btnSend:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900b3
    .end annotation
.end field

.field private currentBitmap:Landroid/graphics/Bitmap;

.field private currentTheme:I

.field private currentType:I

.field dialBackgroud:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090131
    .end annotation
.end field

.field private dialCenterBeans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/keephealth/android/model/bean/DicalDetail;",
            ">;"
        }
    .end annotation
.end field

.field dialTheme:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090132
    .end annotation
.end field

.field private imgHeight:I

.field private imgWidth:I

.field private isSending:Z

.field private mDialog:Landroid/app/Dialog;

.field mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0903dc
    .end annotation
.end field

.field private permissionsCamer:[Ljava/lang/String;

.field private permissionsLocation:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 8

    .line 63
    invoke-direct {p0}, Lcom/keephealth/android/base/BaseActivity;-><init>()V

    const/4 v0, 0x1

    .line 74
    iput v0, p0, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity;->currentType:I

    const/4 v1, 0x0

    .line 75
    iput-object v1, p0, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity;->currentBitmap:Landroid/graphics/Bitmap;

    const/16 v1, 0x64

    .line 76
    iput v1, p0, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity;->REQUEST_CROP_CODE:I

    const/4 v1, 0x3

    .line 78
    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "android.permission.CAMERA"

    aput-object v4, v2, v3

    const-string v5, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v5, v2, v0

    const-string v5, "android.permission.WRITE_EXTERNAL_STORAGE"

    const/4 v6, 0x2

    aput-object v5, v2, v6

    iput-object v2, p0, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity;->permissionsCamer:[Ljava/lang/String;

    .line 80
    iput-boolean v3, p0, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity;->isSending:Z

    .line 88
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity;->dialCenterBeans:Ljava/util/List;

    .line 93
    new-array v1, v1, [Ljava/lang/String;

    aput-object v4, v1, v3

    const-string v2, "android.permission.READ_MEDIA_IMAGES"

    aput-object v2, v1, v0

    const-string v0, "android.permission.READ_MEDIA_AUDIO"

    aput-object v0, v1, v6

    iput-object v1, p0, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity;->permissionsLocation:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity;[BI)V
    .registers 3

    .line 63
    invoke-direct {p0, p1, p2}, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity;->sendBack([BI)V

    return-void
.end method

.method static synthetic access$102(Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity;Z)Z
    .registers 2

    .line 63
    iput-boolean p1, p0, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity;->isSending:Z

    return p1
.end method

.method private sendBack([BI)V
    .registers 9

    .line 271
    array-length v0, p1

    rem-int/lit16 v0, v0, 0x200

    if-nez v0, :cond_9

    .line 272
    array-length v0, p1

    div-int/lit16 v0, v0, 0x200

    goto :goto_e

    .line 274
    :cond_9
    array-length v0, p1

    div-int/lit16 v0, v0, 0x200

    add-int/lit8 v0, v0, 0x1

    .line 276
    :goto_e
    invoke-static {p1, p2}, Lcom/keephealth/android/util/ble/CmdHelper;->setBackgroud([BI)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    .line 277
    :goto_13
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_44

    .line 278
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_34

    .line 279
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    new-instance v5, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity$2;

    invoke-direct {v5, p0, p2, v0, p1}, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity$2;-><init>(Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity;II[B)V

    invoke-virtual {v3, v4, v5}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([BLcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;)V

    goto :goto_41

    .line 311
    :cond_34
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    invoke-virtual {v3, v4}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([B)V

    :goto_41
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_44
    return-void
.end method


# virtual methods
.method protected getContentView()I
    .registers 2

    const v0, 0x7f0c0043

    return v0
.end method

.method protected handleMessage(Lcom/keephealth/android/model/bean/BaseMessage;)V
    .registers 4

    .line 329
    invoke-super {p0, p1}, Lcom/keephealth/android/base/BaseActivity;->handleMessage(Lcom/keephealth/android/model/bean/BaseMessage;)V

    .line 330
    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/BaseMessage;->getType()I

    move-result p1

    const/16 v0, 0x12d

    if-eq p1, v0, :cond_10

    const/16 v0, 0x12e

    if-eq p1, v0, :cond_10

    goto :goto_45

    .line 333
    :cond_10
    iget-boolean p1, p0, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity;->isSending:Z

    if-eqz p1, :cond_45

    const/4 p1, 0x0

    .line 334
    iput-boolean p1, p0, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity;->isSending:Z

    .line 335
    sput-boolean p1, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenter:Z

    .line 336
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity;->btnSend:Landroid/widget/Button;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 337
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity;->btnSend:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10022a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 338
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity;->btnSend:Landroid/widget/Button;

    const v0, 0x7f0800a3

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 339
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f100534

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    :cond_45
    :goto_45
    return-void
.end method

.method protected initView()V
    .registers 11

    .line 97
    invoke-super {p0}, Lcom/keephealth/android/base/BaseActivity;->initView()V

    .line 98
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity;->bgView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 99
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity;->titleName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10022f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_b1

    .line 102
    const-string v2, "data"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/model/bean/DicalDataBean;

    if-nez v0, :cond_32

    .line 104
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity;->finish()V

    .line 106
    :cond_32
    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/DicalDataBean;->getTemplates()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity;->dialCenterBeans:Ljava/util/List;

    .line 107
    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/DicalDataBean;->getDialSizeString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "\\*"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 108
    aget-object v2, v0, v1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity;->imgWidth:I

    const/4 v2, 0x1

    .line 109
    aget-object v3, v0, v2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity;->imgHeight:I

    .line 110
    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity;->dialCenterBeans:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/keephealth/android/model/bean/DicalDetail;

    invoke-virtual {v3}, Lcom/keephealth/android/model/bean/DicalDetail;->getCode()I

    move-result v3

    iput v3, p0, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity;->currentTheme:I

    .line 111
    iput v2, p0, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity;->currentType:I

    .line 113
    iget v3, p0, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity;->imgWidth:I

    int-to-float v3, v3

    invoke-static {v3, p0}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v3

    .line 114
    iget v4, p0, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity;->imgHeight:I

    int-to-float v4, v4

    invoke-static {v4, p0}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v4

    .line 115
    invoke-static {p0}, Lcom/keephealth/android/util/ScreenUtil;->getScreenWidth(Landroid/content/Context;)I

    move-result v5

    div-int/lit8 v5, v5, 0x3

    if-le v3, v5, :cond_8f

    int-to-double v3, v5

    .line 118
    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-double v6, v2

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v6, v8

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-double v8, v0

    div-double/2addr v6, v8

    mul-double/2addr v3, v6

    double-to-int v4, v3

    move v3, v5

    .line 120
    :cond_8f
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity;->dialTheme:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 121
    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 122
    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 123
    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity;->dialTheme:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 125
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity;->dialBackgroud:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 126
    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 127
    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 128
    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity;->dialBackgroud:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 131
    :cond_b1
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity;->getImageLoader()Lcom/keephealth/android/util/ImageLoadUtil;

    move-result-object v0

    const v2, 0x7f080122

    invoke-virtual {v0, v2}, Lcom/keephealth/android/util/ImageLoadUtil;->setPlaceholder(I)Lcom/keephealth/android/util/ImageLoadUtil;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/keephealth/android/util/ImageLoadUtil;->setError(I)Lcom/keephealth/android/util/ImageLoadUtil;

    move-result-object v0

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity;->dialTheme:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity;->dialCenterBeans:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/keephealth/android/model/bean/DicalDetail;

    invoke-virtual {v3}, Lcom/keephealth/android/model/bean/DicalDetail;->getTemplateUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, p0, v2, v3}, Lcom/keephealth/android/util/ImageLoadUtil;->loadRectImage(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 133
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 134
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 135
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 136
    new-instance v0, Lcom/keephealth/android/ui/device/adapter/DialCenterEditAdapter;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity;->dialCenterBeans:Ljava/util/List;

    iget v2, p0, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity;->imgWidth:I

    iget v3, p0, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity;->imgHeight:I

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/keephealth/android/ui/device/adapter/DialCenterEditAdapter;-><init>(Landroid/content/Context;Ljava/util/List;II)V

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity;->adapter:Lcom/keephealth/android/ui/device/adapter/DialCenterEditAdapter;

    .line 137
    invoke-virtual {v0, p0}, Lcom/keephealth/android/ui/device/adapter/DialCenterEditAdapter;->setOnItemClickListener(Lcom/keephealth/android/base/BaseAdapter$OnItemClickListener;)V

    .line 138
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity;->adapter:Lcom/keephealth/android/ui/device/adapter/DialCenterEditAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method synthetic lambda$onActivityResult$3$com-keephealth-android-ui-device-activity-DialCenterEditActivity([Ljava/lang/String;)V
    .registers 5

    .line 192
    invoke-static {}, Lcom/keephealth/android/util/image/ClipImageActivity;->prepare()Lcom/keephealth/android/util/image/ClipImageActivity$ClipOptions;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity;->imgWidth:I

    .line 193
    invoke-virtual {v0, v1}, Lcom/keephealth/android/util/image/ClipImageActivity$ClipOptions;->aspectX(I)Lcom/keephealth/android/util/image/ClipImageActivity$ClipOptions;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity;->imgHeight:I

    invoke-virtual {v0, v1}, Lcom/keephealth/android/util/image/ClipImageActivity$ClipOptions;->aspectY(I)Lcom/keephealth/android/util/image/ClipImageActivity$ClipOptions;

    move-result-object v0

    const/4 v1, 0x0

    aget-object p1, p1, v1

    .line 195
    invoke-virtual {v0, p1}, Lcom/keephealth/android/util/image/ClipImageActivity$ClipOptions;->inputPath(Ljava/lang/String;)Lcom/keephealth/android/util/image/ClipImageActivity$ClipOptions;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/keephealth/android/util/file/FileUtil;->getPICPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/cropImage_.jpg"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/keephealth/android/util/image/ClipImageActivity$ClipOptions;->outputPath(Ljava/lang/String;)Lcom/keephealth/android/util/image/ClipImageActivity$ClipOptions;

    move-result-object p1

    .line 196
    invoke-virtual {p1, v1}, Lcom/keephealth/android/util/image/ClipImageActivity$ClipOptions;->isCircle(Z)Lcom/keephealth/android/util/image/ClipImageActivity$ClipOptions;

    move-result-object p1

    const/16 v0, 0x3e9

    .line 197
    invoke-virtual {p1, p0, v0}, Lcom/keephealth/android/util/image/ClipImageActivity$ClipOptions;->startForResult(Landroid/app/Activity;I)V

    return-void
.end method

.method synthetic lambda$requestPermissionsFail$5$com-keephealth-android-ui-device-activity-DialCenterEditActivity(Landroid/view/View;)V
    .registers 5

    .line 224
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 225
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "package"

    invoke-static {v2, v0, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 226
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/4 v0, 0x1

    .line 227
    invoke-virtual {p0, p1, v0}, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method synthetic lambda$requestPermissionsFail$6$com-keephealth-android-ui-device-activity-DialCenterEditActivity(Landroid/view/View;)V
    .registers 2

    .line 228
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method synthetic lambda$requestPermissionsSuccess$4$com-keephealth-android-ui-device-activity-DialCenterEditActivity([Ljava/lang/String;)V
    .registers 5

    .line 208
    invoke-static {}, Lcom/keephealth/android/util/image/ClipImageActivity;->prepare()Lcom/keephealth/android/util/image/ClipImageActivity$ClipOptions;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity;->imgWidth:I

    .line 209
    invoke-virtual {v0, v1}, Lcom/keephealth/android/util/image/ClipImageActivity$ClipOptions;->aspectX(I)Lcom/keephealth/android/util/image/ClipImageActivity$ClipOptions;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity;->imgHeight:I

    invoke-virtual {v0, v1}, Lcom/keephealth/android/util/image/ClipImageActivity$ClipOptions;->aspectY(I)Lcom/keephealth/android/util/image/ClipImageActivity$ClipOptions;

    move-result-object v0

    const/4 v1, 0x0

    aget-object p1, p1, v1

    .line 211
    invoke-virtual {v0, p1}, Lcom/keephealth/android/util/image/ClipImageActivity$ClipOptions;->inputPath(Ljava/lang/String;)Lcom/keephealth/android/util/image/ClipImageActivity$ClipOptions;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/keephealth/android/util/file/FileUtil;->getPICPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/cropImage_.jpg"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/keephealth/android/util/image/ClipImageActivity$ClipOptions;->outputPath(Ljava/lang/String;)Lcom/keephealth/android/util/image/ClipImageActivity$ClipOptions;

    move-result-object p1

    .line 212
    invoke-virtual {p1, v1}, Lcom/keephealth/android/util/image/ClipImageActivity$ClipOptions;->isCircle(Z)Lcom/keephealth/android/util/image/ClipImageActivity$ClipOptions;

    move-result-object p1

    const/16 v0, 0x3e9

    .line 213
    invoke-virtual {p1, p0, v0}, Lcom/keephealth/android/util/image/ClipImageActivity$ClipOptions;->startForResult(Landroid/app/Activity;I)V

    return-void
.end method

.method synthetic lambda$selectBackground$0$com-keephealth-android-ui-device-activity-DialCenterEditActivity([Ljava/lang/String;)V
    .registers 5

    .line 148
    invoke-static {}, Lcom/keephealth/android/util/image/ClipImageActivity;->prepare()Lcom/keephealth/android/util/image/ClipImageActivity$ClipOptions;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity;->imgWidth:I

    .line 149
    invoke-virtual {v0, v1}, Lcom/keephealth/android/util/image/ClipImageActivity$ClipOptions;->aspectX(I)Lcom/keephealth/android/util/image/ClipImageActivity$ClipOptions;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity;->imgHeight:I

    invoke-virtual {v0, v1}, Lcom/keephealth/android/util/image/ClipImageActivity$ClipOptions;->aspectY(I)Lcom/keephealth/android/util/image/ClipImageActivity$ClipOptions;

    move-result-object v0

    const/4 v1, 0x0

    aget-object p1, p1, v1

    .line 151
    invoke-virtual {v0, p1}, Lcom/keephealth/android/util/image/ClipImageActivity$ClipOptions;->inputPath(Ljava/lang/String;)Lcom/keephealth/android/util/image/ClipImageActivity$ClipOptions;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/keephealth/android/util/file/FileUtil;->getPICPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/cropImage_.jpg"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/keephealth/android/util/image/ClipImageActivity$ClipOptions;->outputPath(Ljava/lang/String;)Lcom/keephealth/android/util/image/ClipImageActivity$ClipOptions;

    move-result-object p1

    .line 152
    invoke-virtual {p1, v1}, Lcom/keephealth/android/util/image/ClipImageActivity$ClipOptions;->isCircle(Z)Lcom/keephealth/android/util/image/ClipImageActivity$ClipOptions;

    move-result-object p1

    const/16 v0, 0x64

    .line 153
    invoke-virtual {p1, p0, v0}, Lcom/keephealth/android/util/image/ClipImageActivity$ClipOptions;->startForResult(Landroid/app/Activity;I)V

    return-void
.end method

.method synthetic lambda$selectBackground$1$com-keephealth-android-ui-device-activity-DialCenterEditActivity(Landroid/view/View;)V
    .registers 4

    .line 165
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x20

    const/16 v1, 0x64

    if-le p1, v0, :cond_e

    .line 166
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity;->permissionsLocation:[Ljava/lang/String;

    invoke-virtual {p0, v1, p1}, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity;->requestPermissions(I[Ljava/lang/String;)V

    goto :goto_13

    .line 168
    :cond_e
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity;->permissionsCamer:[Ljava/lang/String;

    invoke-virtual {p0, v1, p1}, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity;->requestPermissions(I[Ljava/lang/String;)V

    .line 170
    :goto_13
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method synthetic lambda$selectBackground$2$com-keephealth-android-ui-device-activity-DialCenterEditActivity(Landroid/view/View;)V
    .registers 2

    .line 171
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 6

    .line 182
    invoke-super {p0, p1, p2, p3}, Lcom/keephealth/android/base/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x64

    const/4 v1, -0x1

    if-ne p1, v0, :cond_2d

    if-ne p2, v1, :cond_4f

    .line 185
    invoke-static {p3}, Lcom/keephealth/android/util/image/ClipImageActivity$ClipOptions;->createFromBundle(Landroid/content/Intent;)Lcom/keephealth/android/util/image/ClipImageActivity$ClipOptions;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/util/image/ClipImageActivity$ClipOptions;->getOutputPath()Ljava/lang/String;

    move-result-object p1

    .line 186
    invoke-static {p1}, Lcom/keephealth/android/util/image/BitmapBuilder;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity;->currentBitmap:Landroid/graphics/Bitmap;

    .line 187
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity;->getImageLoader()Lcom/keephealth/android/util/ImageLoadUtil;

    move-result-object p2

    const p3, 0x7f080122

    invoke-virtual {p2, p3}, Lcom/keephealth/android/util/ImageLoadUtil;->setPlaceholder(I)Lcom/keephealth/android/util/ImageLoadUtil;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/keephealth/android/util/ImageLoadUtil;->setError(I)Lcom/keephealth/android/util/ImageLoadUtil;

    move-result-object p2

    iget-object p3, p0, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity;->dialBackgroud:Landroid/widget/ImageView;

    invoke-virtual {p2, p0, p3, p1}, Lcom/keephealth/android/util/ImageLoadUtil;->loadRectImage(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;)V

    goto :goto_4f

    :cond_2d
    const/4 p3, 0x1

    if-ne p1, p3, :cond_4f

    if-ne p2, v1, :cond_4f

    .line 191
    new-instance p1, Lcom/keephealth/android/views/gallery/SelectOptions$Builder;

    invoke-direct {p1}, Lcom/keephealth/android/views/gallery/SelectOptions$Builder;-><init>()V

    invoke-virtual {p1, p3}, Lcom/keephealth/android/views/gallery/SelectOptions$Builder;->setHasCam(Z)Lcom/keephealth/android/views/gallery/SelectOptions$Builder;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/keephealth/android/views/gallery/SelectOptions$Builder;->setSelectCount(I)Lcom/keephealth/android/views/gallery/SelectOptions$Builder;

    move-result-object p1

    new-instance p2, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity;)V

    invoke-virtual {p1, p2}, Lcom/keephealth/android/views/gallery/SelectOptions$Builder;->setCallback(Lcom/keephealth/android/views/gallery/SelectOptions$Callback;)Lcom/keephealth/android/views/gallery/SelectOptions$Builder;

    move-result-object p1

    .line 198
    invoke-virtual {p1}, Lcom/keephealth/android/views/gallery/SelectOptions$Builder;->build()Lcom/keephealth/android/views/gallery/SelectOptions;

    move-result-object p1

    .line 191
    invoke-static {p0, p1}, Lcom/keephealth/android/views/gallery/ImagePickerActivity;->show(Landroid/content/Context;Lcom/keephealth/android/views/gallery/SelectOptions;)V

    :cond_4f
    :goto_4f
    return-void
.end method

.method public onBackPressed()V
    .registers 3

    .line 319
    iget-boolean v0, p0, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity;->isSending:Z

    if-eqz v0, :cond_13

    .line 320
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100535

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity;->showToast(Ljava/lang/String;)V

    goto :goto_16

    .line 322
    :cond_13
    invoke-super {p0}, Lcom/keephealth/android/base/BaseActivity;->onBackPressed()V

    :goto_16
    return-void
.end method

.method protected onDestroy()V
    .registers 3

    .line 347
    invoke-super {p0}, Lcom/keephealth/android/base/BaseActivity;->onDestroy()V

    .line 349
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->destroy(Ljava/lang/Object;)V

    return-void
.end method

.method public onItemClick(Landroid/view/View;I)V
    .registers 5

    .line 354
    iget-boolean p1, p0, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity;->isSending:Z

    if-eqz p1, :cond_13

    .line 355
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f100535

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity;->showToast(Ljava/lang/String;)V

    goto :goto_49

    .line 357
    :cond_13
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity;->dialCenterBeans:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/model/bean/DicalDetail;

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/DicalDetail;->getCode()I

    move-result p1

    iput p1, p0, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity;->currentTheme:I

    const/4 p1, 0x1

    .line 358
    iput p1, p0, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity;->currentType:I

    .line 359
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity;->getImageLoader()Lcom/keephealth/android/util/ImageLoadUtil;

    move-result-object p1

    const v0, 0x7f080122

    invoke-virtual {p1, v0}, Lcom/keephealth/android/util/ImageLoadUtil;->setPlaceholder(I)Lcom/keephealth/android/util/ImageLoadUtil;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/keephealth/android/util/ImageLoadUtil;->setError(I)Lcom/keephealth/android/util/ImageLoadUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity;->dialTheme:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity;->dialCenterBeans:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/model/bean/DicalDetail;

    invoke-virtual {v1}, Lcom/keephealth/android/model/bean/DicalDetail;->getTemplateUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p0, v0, v1}, Lcom/keephealth/android/util/ImageLoadUtil;->loadRectImage(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 360
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity;->adapter:Lcom/keephealth/android/ui/device/adapter/DialCenterEditAdapter;

    invoke-virtual {p1, p2}, Lcom/keephealth/android/ui/device/adapter/DialCenterEditAdapter;->setSelectPosition(I)V

    :goto_49
    return-void
.end method

.method public requestPermissionsFail(I)V
    .registers 9

    .line 219
    invoke-super {p0, p1}, Lcom/keephealth/android/base/BaseActivity;->requestPermissionsFail(I)V

    .line 220
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity;->permissionsCamer:[Ljava/lang/String;

    array-length v0, p1

    if-lez v0, :cond_43

    const/4 v0, 0x0

    aget-object p1, p1, v0

    .line 221
    invoke-static {p0, p1}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_43

    .line 222
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1005c1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 223
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1005bf

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1004a1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity$$ExternalSyntheticLambda4;

    invoke-direct {v5, p0}, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity$$ExternalSyntheticLambda4;-><init>(Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity;)V

    new-instance v6, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity$$ExternalSyntheticLambda5;

    invoke-direct {v6, p0}, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity$$ExternalSyntheticLambda5;-><init>(Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity;)V

    move-object v1, p0

    .line 222
    invoke-static/range {v1 .. v6}, Lcom/keephealth/android/util/DialogHelperNew;->showRemindDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity;->mDialog:Landroid/app/Dialog;

    :cond_43
    return-void
.end method

.method public requestPermissionsSuccess(I)V
    .registers 3

    .line 205
    invoke-super {p0, p1}, Lcom/keephealth/android/base/BaseActivity;->requestPermissionsSuccess(I)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_23

    .line 207
    new-instance p1, Lcom/keephealth/android/views/gallery/SelectOptions$Builder;

    invoke-direct {p1}, Lcom/keephealth/android/views/gallery/SelectOptions$Builder;-><init>()V

    invoke-virtual {p1, v0}, Lcom/keephealth/android/views/gallery/SelectOptions$Builder;->setHasCam(Z)Lcom/keephealth/android/views/gallery/SelectOptions$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/keephealth/android/views/gallery/SelectOptions$Builder;->setSelectCount(I)Lcom/keephealth/android/views/gallery/SelectOptions$Builder;

    move-result-object p1

    new-instance v0, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity$$ExternalSyntheticLambda6;-><init>(Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity;)V

    invoke-virtual {p1, v0}, Lcom/keephealth/android/views/gallery/SelectOptions$Builder;->setCallback(Lcom/keephealth/android/views/gallery/SelectOptions$Callback;)Lcom/keephealth/android/views/gallery/SelectOptions$Builder;

    move-result-object p1

    .line 214
    invoke-virtual {p1}, Lcom/keephealth/android/views/gallery/SelectOptions$Builder;->build()Lcom/keephealth/android/views/gallery/SelectOptions;

    move-result-object p1

    .line 207
    invoke-static {p0, p1}, Lcom/keephealth/android/views/gallery/ImagePickerActivity;->show(Landroid/content/Context;Lcom/keephealth/android/views/gallery/SelectOptions;)V

    :cond_23
    return-void
.end method

.method selectBackground()V
    .registers 9
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f090133
        }
    .end annotation

    .line 143
    iget-boolean v0, p0, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity;->isSending:Z

    if-eqz v0, :cond_14

    .line 144
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100535

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity;->showToast(Ljava/lang/String;)V

    goto/16 :goto_92

    .line 146
    :cond_14
    invoke-static {p0}, Lcom/keephealth/android/util/PermissionUtil;->hasCameraPermissions(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_39

    .line 147
    new-instance v0, Lcom/keephealth/android/views/gallery/SelectOptions$Builder;

    invoke-direct {v0}, Lcom/keephealth/android/views/gallery/SelectOptions$Builder;-><init>()V

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/gallery/SelectOptions$Builder;->setHasCam(Z)Lcom/keephealth/android/views/gallery/SelectOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/gallery/SelectOptions$Builder;->setSelectCount(I)Lcom/keephealth/android/views/gallery/SelectOptions$Builder;

    move-result-object v0

    new-instance v1, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity$$ExternalSyntheticLambda1;-><init>(Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity;)V

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/gallery/SelectOptions$Builder;->setCallback(Lcom/keephealth/android/views/gallery/SelectOptions$Callback;)Lcom/keephealth/android/views/gallery/SelectOptions$Builder;

    move-result-object v0

    .line 154
    invoke-virtual {v0}, Lcom/keephealth/android/views/gallery/SelectOptions$Builder;->build()Lcom/keephealth/android/views/gallery/SelectOptions;

    move-result-object v0

    .line 147
    invoke-static {p0, v0}, Lcom/keephealth/android/views/gallery/ImagePickerActivity;->show(Landroid/content/Context;Lcom/keephealth/android/views/gallery/SelectOptions;)V

    goto :goto_92

    .line 156
    :cond_39
    invoke-static {}, Lcom/keephealth/android/util/RomUtils;->isVivo()Z

    move-result v0

    if-nez v0, :cond_58

    invoke-static {}, Lcom/keephealth/android/util/RomUtils;->isEmui()Z

    move-result v0

    if-nez v0, :cond_58

    invoke-static {}, Lcom/keephealth/android/util/RomUtils;->isMiui()Z

    move-result v0

    if-nez v0, :cond_58

    invoke-static {}, Lcom/keephealth/android/util/RomUtils;->isFlyme()Z

    move-result v0

    if-eqz v0, :cond_52

    goto :goto_58

    .line 174
    :cond_52
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity;->permissionsCamer:[Ljava/lang/String;

    invoke-static {p0, v1, v0}, Lcom/keephealth/android/util/PermissionUtil;->requestPermissions(Ljava/lang/Object;I[Ljava/lang/String;)V

    goto :goto_92

    .line 157
    :cond_58
    :goto_58
    const-string v0, "android.permission.CAMERA"

    invoke-static {p0, v0}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_92

    .line 158
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1005c1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 159
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1005bf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1004a1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity$$ExternalSyntheticLambda2;

    invoke-direct {v6, p0}, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity$$ExternalSyntheticLambda2;-><init>(Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity;)V

    new-instance v7, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity$$ExternalSyntheticLambda3;

    invoke-direct {v7, p0}, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity$$ExternalSyntheticLambda3;-><init>(Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity;)V

    move-object v2, p0

    .line 158
    invoke-static/range {v2 .. v7}, Lcom/keephealth/android/util/DialogHelperNew;->showRemindDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity;->mDialog:Landroid/app/Dialog;

    :cond_92
    :goto_92
    return-void
.end method

.method sendDialToDevice()V
    .registers 7
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0900b3
        }
    .end annotation

    .line 236
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity;->currentBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_14

    .line 237
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10022d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity;->showToast(Ljava/lang/String;)V

    goto/16 :goto_a5

    :cond_14
    const/4 v0, 0x1

    .line 239
    iput-boolean v0, p0, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity;->isSending:Z

    .line 240
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenter:Z

    .line 241
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity;->btnSend:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 242
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity;->btnSend:Landroid/widget/Button;

    const v1, 0x7f0800a4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 243
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity;->currentBitmap:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity;->imgWidth:I

    iget v2, p0, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity;->imgHeight:I

    invoke-static {v0, v1, v2}, Lcom/keephealth/android/util/image/BitmapBuilder;->getBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 245
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u538b\u7f29\u524d\u56fe\u7247\u7684\u5927\u5c0f:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "M\u5bbd\u5ea6\u4e3a"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\u9ad8\u5ea6\u4e3a"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap$Config;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 246
    invoke-static {v0}, Lcom/keephealth/android/util/image/BitmapUtil;->bitmap2Bytes(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    .line 247
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 248
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v1

    iget v2, p0, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity;->currentTheme:I

    iget v3, p0, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity;->currentType:I

    iget v4, p0, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity;->imgWidth:I

    iget v5, p0, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity;->imgHeight:I

    mul-int/2addr v4, v5

    mul-int/lit8 v4, v4, 0x2

    invoke-static {v2, v3, v4}, Lcom/keephealth/android/util/ble/CmdHelper;->setTheme(III)[B

    move-result-object v2

    new-instance v3, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity$1;

    invoke-direct {v3, p0, v0}, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity$1;-><init>(Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity;[B)V

    invoke-virtual {v1, v2, v3}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([BLcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;)V

    :goto_a5
    return-void
.end method
