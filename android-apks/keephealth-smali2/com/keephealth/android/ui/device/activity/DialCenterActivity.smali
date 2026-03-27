.class public Lcom/keephealth/android/ui/device/activity/DialCenterActivity;
.super Lcom/keephealth/android/base/BaseMvpActivity;
.source "DialCenterActivity.java"

# interfaces
.implements Lcom/keephealth/android/base/BaseAdapter$OnItemClickListener;
.implements Lcom/keephealth/android/persenter/device/DialCenterContract$View;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/keephealth/android/base/BaseMvpActivity<",
        "Lcom/keephealth/android/persenter/device/DialCenterPresenter;",
        ">;",
        "Lcom/keephealth/android/base/BaseAdapter$OnItemClickListener;",
        "Lcom/keephealth/android/persenter/device/DialCenterContract$View;"
    }
.end annotation


# instance fields
.field private adapter:Lcom/keephealth/android/ui/device/adapter/DialCenterAdapter;

.field btnSend:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900b3
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

.field private handler:Landroid/os/Handler;

.field private imgHeight:I

.field private imgWidth:I

.field private isSending:Z

.field private mDicalDataBean:Lcom/keephealth/android/model/bean/DicalDataBean;

.field mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0903dc
    .end annotation
.end field

.field private selectDialCenterBean:Lcom/keephealth/android/model/bean/DicalDetail;

.field private urlBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 61
    invoke-direct {p0}, Lcom/keephealth/android/base/BaseMvpActivity;-><init>()V

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/DialCenterActivity;->dialCenterBeans:Ljava/util/List;

    .line 176
    new-instance v0, Lcom/keephealth/android/ui/device/activity/DialCenterActivity$2;

    invoke-direct {v0, p0}, Lcom/keephealth/android/ui/device/activity/DialCenterActivity$2;-><init>(Lcom/keephealth/android/ui/device/activity/DialCenterActivity;)V

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/DialCenterActivity;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$002(Lcom/keephealth/android/ui/device/activity/DialCenterActivity;Z)Z
    .registers 2

    .line 61
    iput-boolean p1, p0, Lcom/keephealth/android/ui/device/activity/DialCenterActivity;->isSending:Z

    return p1
.end method

.method static synthetic access$100(Lcom/keephealth/android/ui/device/activity/DialCenterActivity;)V
    .registers 1

    .line 61
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/activity/DialCenterActivity;->beginSend()V

    return-void
.end method

.method static synthetic access$200(Lcom/keephealth/android/ui/device/activity/DialCenterActivity;[BI)V
    .registers 3

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/keephealth/android/ui/device/activity/DialCenterActivity;->sendBack([BI)V

    return-void
.end method

.method private beginSend()V
    .registers 7

    .line 189
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DialCenterActivity;->urlBitmap:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/keephealth/android/ui/device/activity/DialCenterActivity;->imgWidth:I

    iget v2, p0, Lcom/keephealth/android/ui/device/activity/DialCenterActivity;->imgHeight:I

    invoke-static {v0, v1, v2}, Lcom/keephealth/android/util/image/BitmapBuilder;->getBitmapByUrl(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_3e

    const/4 v0, 0x0

    .line 191
    iput-boolean v0, p0, Lcom/keephealth/android/ui/device/activity/DialCenterActivity;->isSending:Z

    .line 192
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenter:Z

    .line 193
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DialCenterActivity;->btnSend:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 194
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DialCenterActivity;->btnSend:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/DialCenterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10022a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 195
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DialCenterActivity;->btnSend:Landroid/widget/Button;

    const v1, 0x7f0800a3

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 196
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/DialCenterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100534

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    return-void

    .line 199
    :cond_3e
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u538b\u7f29\u524d\u56fe\u7247\u7684\u5927\u5c0f:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "M\u5bbd\u5ea6\u4e3a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u9ad8\u5ea6\u4e3a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap$Config;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 200
    invoke-static {v0}, Lcom/keephealth/android/util/image/BitmapUtil;->bitmap2Bytes(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    .line 201
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v1

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/DialCenterActivity;->selectDialCenterBean:Lcom/keephealth/android/model/bean/DicalDetail;

    invoke-virtual {v2}, Lcom/keephealth/android/model/bean/DicalDetail;->getCode()I

    move-result v2

    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/DialCenterActivity;->selectDialCenterBean:Lcom/keephealth/android/model/bean/DicalDetail;

    invoke-virtual {v3}, Lcom/keephealth/android/model/bean/DicalDetail;->getType()I

    move-result v3

    iget v4, p0, Lcom/keephealth/android/ui/device/activity/DialCenterActivity;->imgWidth:I

    iget v5, p0, Lcom/keephealth/android/ui/device/activity/DialCenterActivity;->imgHeight:I

    mul-int/2addr v4, v5

    mul-int/lit8 v4, v4, 0x2

    invoke-static {v2, v3, v4}, Lcom/keephealth/android/util/ble/CmdHelper;->setTheme(III)[B

    move-result-object v2

    new-instance v3, Lcom/keephealth/android/ui/device/activity/DialCenterActivity$3;

    invoke-direct {v3, p0, v0}, Lcom/keephealth/android/ui/device/activity/DialCenterActivity$3;-><init>(Lcom/keephealth/android/ui/device/activity/DialCenterActivity;[B)V

    invoke-virtual {v1, v2, v3}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([BLcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;)V

    return-void
.end method

.method private returnBitMap(Ljava/lang/String;)V
    .registers 4

    .line 155
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/DialCenterActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/keephealth/android/ui/device/activity/DialCenterActivity$$ExternalSyntheticLambda1;-><init>(Lcom/keephealth/android/ui/device/activity/DialCenterActivity;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 173
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private sendBack([BI)V
    .registers 9

    .line 224
    array-length v0, p1

    rem-int/lit16 v0, v0, 0x200

    if-nez v0, :cond_9

    .line 225
    array-length v0, p1

    div-int/lit16 v0, v0, 0x200

    goto :goto_e

    .line 227
    :cond_9
    array-length v0, p1

    div-int/lit16 v0, v0, 0x200

    add-int/lit8 v0, v0, 0x1

    .line 229
    :goto_e
    invoke-static {p1, p2}, Lcom/keephealth/android/util/ble/CmdHelper;->setBackgroud([BI)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    .line 230
    :goto_13
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_44

    .line 231
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_34

    .line 232
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    new-instance v5, Lcom/keephealth/android/ui/device/activity/DialCenterActivity$4;

    invoke-direct {v5, p0, p2, v0, p1}, Lcom/keephealth/android/ui/device/activity/DialCenterActivity$4;-><init>(Lcom/keephealth/android/ui/device/activity/DialCenterActivity;II[B)V

    invoke-virtual {v3, v4, v5}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([BLcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;)V

    goto :goto_41

    .line 265
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

    const v0, 0x7f0c0041

    return v0
.end method

.method public getDialCenterDetail(Lcom/keephealth/android/model/bean/DicalDataBean;)V
    .registers 6

    .line 310
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/DialCenterActivity;->mDicalDataBean:Lcom/keephealth/android/model/bean/DicalDataBean;

    if-eqz p1, :cond_56

    .line 311
    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/DicalDataBean;->getDetails()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_b

    goto :goto_56

    .line 315
    :cond_b
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DialCenterActivity;->mDicalDataBean:Lcom/keephealth/android/model/bean/DicalDataBean;

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/DicalDataBean;->getDetails()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/DialCenterActivity;->dialCenterBeans:Ljava/util/List;

    .line 316
    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/DicalDataBean;->getDialSizeString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "\\*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 317
    aget-object v1, p1, v0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/keephealth/android/ui/device/activity/DialCenterActivity;->imgWidth:I

    const/4 v1, 0x1

    .line 318
    aget-object p1, p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/keephealth/android/ui/device/activity/DialCenterActivity;->imgHeight:I

    .line 319
    new-instance p1, Lcom/keephealth/android/ui/device/adapter/DialCenterAdapter;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/DialCenterActivity;->dialCenterBeans:Ljava/util/List;

    iget v2, p0, Lcom/keephealth/android/ui/device/activity/DialCenterActivity;->imgWidth:I

    iget v3, p0, Lcom/keephealth/android/ui/device/activity/DialCenterActivity;->imgHeight:I

    invoke-direct {p1, p0, v1, v2, v3}, Lcom/keephealth/android/ui/device/adapter/DialCenterAdapter;-><init>(Landroid/content/Context;Ljava/util/List;II)V

    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/DialCenterActivity;->adapter:Lcom/keephealth/android/ui/device/adapter/DialCenterAdapter;

    .line 320
    invoke-virtual {p1, v0}, Lcom/keephealth/android/ui/device/adapter/DialCenterAdapter;->setSelectPosition(I)V

    .line 321
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DialCenterActivity;->dialCenterBeans:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/model/bean/DicalDetail;

    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/DialCenterActivity;->selectDialCenterBean:Lcom/keephealth/android/model/bean/DicalDetail;

    .line 322
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DialCenterActivity;->adapter:Lcom/keephealth/android/ui/device/adapter/DialCenterAdapter;

    invoke-virtual {p1, p0}, Lcom/keephealth/android/ui/device/adapter/DialCenterAdapter;->setOnItemClickListener(Lcom/keephealth/android/base/BaseAdapter$OnItemClickListener;)V

    .line 323
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DialCenterActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DialCenterActivity;->adapter:Lcom/keephealth/android/ui/device/adapter/DialCenterAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void

    .line 312
    :cond_56
    :goto_56
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/DialCenterActivity;->finish()V

    return-void
.end method

.method protected handleMessage(Lcom/keephealth/android/model/bean/BaseMessage;)V
    .registers 4

    .line 283
    invoke-super {p0, p1}, Lcom/keephealth/android/base/BaseMvpActivity;->handleMessage(Lcom/keephealth/android/model/bean/BaseMessage;)V

    .line 284
    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/BaseMessage;->getType()I

    move-result p1

    const/16 v0, 0x12d

    if-eq p1, v0, :cond_10

    const/16 v0, 0x12e

    if-eq p1, v0, :cond_10

    goto :goto_45

    .line 287
    :cond_10
    iget-boolean p1, p0, Lcom/keephealth/android/ui/device/activity/DialCenterActivity;->isSending:Z

    if-eqz p1, :cond_45

    const/4 p1, 0x0

    .line 288
    iput-boolean p1, p0, Lcom/keephealth/android/ui/device/activity/DialCenterActivity;->isSending:Z

    .line 289
    sput-boolean p1, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenter:Z

    .line 290
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DialCenterActivity;->btnSend:Landroid/widget/Button;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 291
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DialCenterActivity;->btnSend:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/DialCenterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10022a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 292
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DialCenterActivity;->btnSend:Landroid/widget/Button;

    const v0, 0x7f0800a3

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 293
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/DialCenterActivity;->getResources()Landroid/content/res/Resources;

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
    .registers 4

    .line 79
    invoke-super {p0}, Lcom/keephealth/android/base/BaseMvpActivity;->initView()V

    .line 80
    const-string v0, "ggf32d"

    const-string v1, "\u70b9\u51fb\u8868\u76d8DialCenterActivity"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DialCenterActivity;->bgView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 82
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DialCenterActivity;->titleName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/DialCenterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1007a8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DialCenterActivity;->rightImg:Landroid/widget/ImageView;

    const v1, 0x7f0d0041

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 84
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DialCenterActivity;->rightImg:Landroid/widget/ImageView;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/DialCenterActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/DialCenterActivity$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/ui/device/activity/DialCenterActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DialCenterActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 96
    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getBindBLEDevice()Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object v0

    .line 97
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/DialCenterActivity;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast v1, Lcom/keephealth/android/persenter/device/DialCenterPresenter;

    iget-object v0, v0, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceProduct:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/keephealth/android/persenter/device/DialCenterPresenter;->getDialCebter(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$initView$0$com-keephealth-android-ui-device-activity-DialCenterActivity(Landroid/view/View;)V
    .registers 4

    .line 85
    iget-boolean p1, p0, Lcom/keephealth/android/ui/device/activity/DialCenterActivity;->isSending:Z

    if-eqz p1, :cond_13

    .line 86
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/DialCenterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f100535

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/activity/DialCenterActivity;->showToast(Ljava/lang/String;)V

    goto :goto_2e

    .line 88
    :cond_13
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DialCenterActivity;->mDicalDataBean:Lcom/keephealth/android/model/bean/DicalDataBean;

    if-eqz p1, :cond_2e

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/DicalDataBean;->getTemplates()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2e

    .line 89
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 90
    const-string v0, "data"

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/DialCenterActivity;->mDicalDataBean:Lcom/keephealth/android/model/bean/DicalDataBean;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 91
    const-class v0, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity;

    invoke-static {p0, v0, p1}, Lcom/keephealth/android/util/IntentUtil;->goToActivity(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    :cond_2e
    :goto_2e
    return-void
.end method

.method synthetic lambda$returnBitMap$1$com-keephealth-android-ui-device-activity-DialCenterActivity(Ljava/lang/String;)V
    .registers 4

    .line 158
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_7

    :catch_6
    const/4 v0, 0x0

    .line 163
    :goto_7
    :try_start_7
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    const/4 v0, 0x1

    .line 164
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 165
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->connect()V

    .line 166
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    .line 167
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/keephealth/android/ui/device/activity/DialCenterActivity;->urlBitmap:Landroid/graphics/Bitmap;

    .line 168
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/DialCenterActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 169
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_26} :catch_26

    :catch_26
    return-void
.end method

.method public onBackPressed()V
    .registers 3

    .line 273
    iget-boolean v0, p0, Lcom/keephealth/android/ui/device/activity/DialCenterActivity;->isSending:Z

    if-eqz v0, :cond_13

    .line 274
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/DialCenterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100535

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/DialCenterActivity;->showToast(Ljava/lang/String;)V

    goto :goto_16

    .line 276
    :cond_13
    invoke-super {p0}, Lcom/keephealth/android/base/BaseMvpActivity;->onBackPressed()V

    :goto_16
    return-void
.end method

.method protected onDestroy()V
    .registers 3

    .line 301
    invoke-super {p0}, Lcom/keephealth/android/base/BaseMvpActivity;->onDestroy()V

    .line 303
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/DialCenterActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->destroy(Ljava/lang/Object;)V

    return-void
.end method

.method public onItemClick(Landroid/view/View;I)V
    .registers 3

    .line 103
    iget-boolean p1, p0, Lcom/keephealth/android/ui/device/activity/DialCenterActivity;->isSending:Z

    if-eqz p1, :cond_13

    .line 104
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/DialCenterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f100535

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/activity/DialCenterActivity;->showToast(Ljava/lang/String;)V

    goto :goto_22

    .line 106
    :cond_13
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DialCenterActivity;->adapter:Lcom/keephealth/android/ui/device/adapter/DialCenterAdapter;

    invoke-virtual {p1, p2}, Lcom/keephealth/android/ui/device/adapter/DialCenterAdapter;->setSelectPosition(I)V

    .line 107
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DialCenterActivity;->dialCenterBeans:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/model/bean/DicalDetail;

    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/DialCenterActivity;->selectDialCenterBean:Lcom/keephealth/android/model/bean/DicalDetail;

    :goto_22
    return-void
.end method

.method sendDialToDevice()V
    .registers 6
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0900b3
        }
    .end annotation

    const/4 v0, 0x1

    .line 113
    iput-boolean v0, p0, Lcom/keephealth/android/ui/device/activity/DialCenterActivity;->isSending:Z

    .line 114
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenter:Z

    .line 115
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DialCenterActivity;->btnSend:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 116
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DialCenterActivity;->selectDialCenterBean:Lcom/keephealth/android/model/bean/DicalDetail;

    if-eqz v0, :cond_4f

    .line 117
    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/DicalDetail;->getType()I

    move-result v0

    if-nez v0, :cond_39

    .line 118
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/DialCenterActivity;->selectDialCenterBean:Lcom/keephealth/android/model/bean/DicalDetail;

    invoke-virtual {v1}, Lcom/keephealth/android/model/bean/DicalDetail;->getCode()I

    move-result v1

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/DialCenterActivity;->selectDialCenterBean:Lcom/keephealth/android/model/bean/DicalDetail;

    invoke-virtual {v2}, Lcom/keephealth/android/model/bean/DicalDetail;->getType()I

    move-result v2

    iget v3, p0, Lcom/keephealth/android/ui/device/activity/DialCenterActivity;->imgWidth:I

    iget v4, p0, Lcom/keephealth/android/ui/device/activity/DialCenterActivity;->imgHeight:I

    mul-int/2addr v3, v4

    mul-int/lit8 v3, v3, 0x2

    invoke-static {v1, v2, v3}, Lcom/keephealth/android/util/ble/CmdHelper;->setTheme(III)[B

    move-result-object v1

    new-instance v2, Lcom/keephealth/android/ui/device/activity/DialCenterActivity$1;

    invoke-direct {v2, p0}, Lcom/keephealth/android/ui/device/activity/DialCenterActivity$1;-><init>(Lcom/keephealth/android/ui/device/activity/DialCenterActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([BLcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;)V

    goto :goto_4f

    .line 145
    :cond_39
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DialCenterActivity;->btnSend:Landroid/widget/Button;

    const v1, 0x7f0800a4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 146
    const-string v0, "\u4e0b\u8f7d\u56fe\u7247"

    invoke-static {v0}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DialCenterActivity;->selectDialCenterBean:Lcom/keephealth/android/model/bean/DicalDetail;

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/DicalDetail;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/keephealth/android/ui/device/activity/DialCenterActivity;->returnBitMap(Ljava/lang/String;)V

    :cond_4f
    :goto_4f
    return-void
.end method
