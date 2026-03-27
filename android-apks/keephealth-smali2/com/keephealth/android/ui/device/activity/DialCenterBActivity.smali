.class public Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;
.super Lcom/keephealth/android/base/BaseActivity;
.source "DialCenterBActivity.java"


# static fields
.field public static final REQUEST_CODE_CAMER_PERMISSION:I = 0x1

.field public static final REQUEST_CROP_CODE:I = 0x3e9

.field private static final WRITE_EXTERNAL_STORAGE_REQUEST_CODE:I = 0x64

.field public static currentDialId:I = -0x1

.field public static currentProgress:I = 0x0

.field public static dialAdapterId:I = 0x0

.field public static dialHeight:I = 0x0

.field public static dialInfo:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static dialWight:I = 0x0

.field public static isDownloading:Z = false

.field public static isInstallingId:I = -0x1

.field public static shape:Ljava/lang/String;


# instance fields
.field private bluetoothLe:Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

.field private currentIndex:I

.field private customFragment:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

.field customLine:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090114
    .end annotation
.end field

.field private dataLengh:I

.field dataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field flFrame:Landroid/widget/FrameLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090049
    .end annotation
.end field

.field private final fragments:[Landroidx/fragment/app/Fragment;

.field llCustom:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090363
    .end annotation
.end field

.field llMine:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09038d
    .end annotation
.end field

.field llRecommend:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09039b
    .end annotation
.end field

.field private mDialog:Landroid/app/Dialog;

.field private mineDialFragment:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

.field mineLine:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09040b
    .end annotation
.end field

.field private recommendFragment:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

.field recommendLine:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090491
    .end annotation
.end field

.field tvCustom:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09063b
    .end annotation
.end field

.field tvMine:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090687
    .end annotation
.end field

.field tvRecommend:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0906a7
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 114
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->dialInfo:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 81
    invoke-direct {p0}, Lcom/keephealth/android/base/BaseActivity;-><init>()V

    const/4 v0, 0x3

    .line 116
    new-array v0, v0, [Landroidx/fragment/app/Fragment;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->fragments:[Landroidx/fragment/app/Fragment;

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->dataList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;)I
    .registers 1

    .line 81
    iget p0, p0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->dataLengh:I

    return p0
.end method

.method static synthetic access$002(Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;I)I
    .registers 2

    .line 81
    iput p1, p0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->dataLengh:I

    return p1
.end method

.method static synthetic access$100(Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;)V
    .registers 1

    .line 81
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->handleData()V

    return-void
.end method

.method private handleData()V
    .registers 7

    .line 210
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->dataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x14

    new-array v0, v0, [B

    .line 211
    sget-object v1, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->dialInfo:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    const/4 v1, 0x0

    move v2, v1

    .line 212
    :goto_11
    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->dataList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2a

    .line 213
    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->dataList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    mul-int/lit8 v4, v2, 0x14

    .line 214
    array-length v5, v3

    invoke-static {v3, v1, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_2a
    const/4 v1, 0x1

    const/4 v2, 0x3

    .line 216
    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    invoke-static {v1}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToInt([B)I

    move-result v1

    const/4 v2, 0x7

    :goto_35
    add-int/lit8 v3, v1, 0x2

    if-gt v2, v3, :cond_57

    .line 218
    sget-object v3, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->dialInfo:Ljava/util/Map;

    add-int/lit8 v4, v2, 0x2

    invoke-static {v0, v2, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v5

    invoke-static {v5}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToInt([B)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x3

    goto :goto_35

    .line 220
    :cond_57
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->bluetoothLe:Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->destroy(Ljava/lang/Object;)V

    .line 221
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->recommendFragment:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    invoke-virtual {v0}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->updateAdapter()V

    return-void
.end method

.method private showFragment(I)V
    .registers 5

    .line 278
    iget v0, p0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->currentIndex:I

    if-ne v0, p1, :cond_5

    return-void

    .line 281
    :cond_5
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 282
    iget v1, p0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->currentIndex:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_19

    .line 284
    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->fragments:[Landroidx/fragment/app/Fragment;

    aget-object v1, v2, v1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 286
    :cond_19
    iput p1, p0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->currentIndex:I

    .line 288
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->fragments:[Landroidx/fragment/app/Fragment;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_30

    .line 289
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->fragments:[Landroidx/fragment/app/Fragment;

    aget-object p1, v1, p1

    const v1, 0x7f090049

    invoke-virtual {v0, v1, p1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_37

    .line 291
    :cond_30
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->fragments:[Landroidx/fragment/app/Fragment;

    aget-object p1, v1, p1

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 293
    :goto_37
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method


# virtual methods
.method checkCustom()V
    .registers 6
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f090363
        }
    .end annotation

    .line 318
    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenterTwo:Z

    if-eqz v0, :cond_13

    .line 319
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100535

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->showToast(Ljava/lang/String;)V

    goto :goto_5e

    :cond_13
    const/4 v0, 0x1

    .line 321
    invoke-direct {p0, v0}, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->showFragment(I)V

    .line 322
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->tvRecommend:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060113

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 323
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->recommendLine:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 324
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->tvCustom:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f06003b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 325
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->customLine:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 326
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->tvMine:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 327
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->mineLine:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 329
    sput-boolean v3, Lcom/keephealth/android/app/AppApplication;->isComeRecom:Z

    .line 330
    sput-boolean v3, Lcom/keephealth/android/app/AppApplication;->isComeRecomDetail:Z

    .line 331
    sput-boolean v3, Lcom/keephealth/android/app/AppApplication;->isComMe:Z

    .line 332
    sput-boolean v3, Lcom/keephealth/android/app/AppApplication;->isComMeDetail:Z

    :goto_5e
    return-void
.end method

.method checkMine()V
    .registers 6
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f09038d
        }
    .end annotation

    .line 338
    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenterTwo:Z

    if-eqz v0, :cond_13

    .line 339
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100535

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->showToast(Ljava/lang/String;)V

    goto :goto_71

    .line 341
    :cond_13
    invoke-static {}, Lcom/keephealth/android/util/QthreeUtils;->isQ32Device()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eqz v0, :cond_28

    .line 342
    invoke-direct {p0, v2}, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->showFragment(I)V

    .line 343
    sput-boolean v3, Lcom/keephealth/android/app/AppApplication;->isComeRecom:Z

    .line 344
    sput-boolean v3, Lcom/keephealth/android/app/AppApplication;->isComeRecomDetail:Z

    .line 345
    sput-boolean v1, Lcom/keephealth/android/app/AppApplication;->isComMe:Z

    .line 346
    sput-boolean v3, Lcom/keephealth/android/app/AppApplication;->isComMeDetail:Z

    goto :goto_33

    .line 348
    :cond_28
    invoke-direct {p0, v2}, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->showFragment(I)V

    .line 350
    sput-boolean v3, Lcom/keephealth/android/app/AppApplication;->isComeRecom:Z

    .line 351
    sput-boolean v3, Lcom/keephealth/android/app/AppApplication;->isComeRecomDetail:Z

    .line 352
    sput-boolean v1, Lcom/keephealth/android/app/AppApplication;->isComMe:Z

    .line 353
    sput-boolean v3, Lcom/keephealth/android/app/AppApplication;->isComMeDetail:Z

    .line 356
    :goto_33
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->tvRecommend:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060113

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 357
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->recommendLine:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 358
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->tvCustom:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 359
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->customLine:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 360
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->tvMine:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06003b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 361
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->mineLine:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_71
    return-void
.end method

.method checkRecommend()V
    .registers 6
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f09039b
        }
    .end annotation

    .line 298
    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenterTwo:Z

    if-eqz v0, :cond_13

    .line 299
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100535

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->showToast(Ljava/lang/String;)V

    goto :goto_5e

    :cond_13
    const/4 v0, 0x0

    .line 301
    invoke-direct {p0, v0}, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->showFragment(I)V

    .line 302
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->tvRecommend:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06003b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 303
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->recommendLine:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 304
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->tvCustom:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060113

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 305
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->customLine:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 306
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->tvMine:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 307
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->mineLine:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    const/4 v1, 0x1

    .line 309
    sput-boolean v1, Lcom/keephealth/android/app/AppApplication;->isComeRecom:Z

    .line 310
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isComeRecomDetail:Z

    .line 311
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isComMe:Z

    .line 312
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isComMeDetail:Z

    :goto_5e
    return-void
.end method

.method protected getContentView()I
    .registers 2

    const v0, 0x7f0c0042

    return v0
.end method

.method protected handleMessage(Lcom/keephealth/android/model/bean/BaseMessage;)V
    .registers 8

    .line 226
    invoke-super {p0, p1}, Lcom/keephealth/android/base/BaseActivity;->handleMessage(Lcom/keephealth/android/model/bean/BaseMessage;)V

    .line 227
    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/BaseMessage;->getType()I

    move-result v0

    const/16 v1, 0x6a

    const/4 v2, 0x2

    const/4 v3, 0x1

    const-string v4, "gfe43"

    if-eq v0, v1, :cond_74

    const/16 p1, 0x3f5

    if-eq v0, p1, :cond_69

    const/16 p1, 0xc28

    if-eq v0, p1, :cond_4a

    const/16 p1, 0x1d8a

    if-eq v0, p1, :cond_3d

    const/16 p1, 0x12d

    if-eq v0, p1, :cond_25

    const/16 p1, 0x12e

    if-eq v0, p1, :cond_25

    goto/16 :goto_c3

    .line 231
    :cond_25
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->customFragment:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->sendFail()V

    .line 232
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->recommendFragment:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->sendFail()V

    .line 233
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->mineDialFragment:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->sendFail()V

    const/4 p1, 0x0

    .line 234
    sput-boolean p1, Lcom/keephealth/android/app/AppApplication;->isScanAcivity:Z

    .line 235
    sput-boolean p1, Lcom/keephealth/android/app/AppApplication;->connectingOrno:Z

    .line 236
    sput-boolean p1, Lcom/keephealth/android/app/AppApplication;->isOtaUpdate:Z

    goto/16 :goto_c3

    .line 268
    :cond_3d
    invoke-static {}, Lcom/keephealth/android/util/QthreeUtils;->isQ32Device()Z

    move-result p1

    if-eqz p1, :cond_c3

    const/4 p1, 0x0

    .line 269
    sput-object p1, Lcom/keephealth/android/app/AppApplication;->mWriteBuffer:Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$WriteDataBuffer;

    .line 270
    sput-object p1, Lcom/keephealth/android/app/AppApplication;->mReadBuffer:Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$ReadDataBuffer;

    goto/16 :goto_c3

    .line 256
    :cond_4a
    const-string p1, "case 3112"

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iget p1, p0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->currentIndex:I

    if-nez p1, :cond_59

    .line 258
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->recommendFragment:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->sendDial()V

    goto :goto_c3

    :cond_59
    if-ne p1, v3, :cond_61

    .line 260
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->customFragment:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->sendDial()V

    goto :goto_c3

    :cond_61
    if-ne p1, v2, :cond_c3

    .line 262
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->mineDialFragment:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->sendDial()V

    goto :goto_c3

    .line 241
    :cond_69
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->recommendFragment:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->updateAdapter()V

    .line 242
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->mineDialFragment:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->onDialChange()V

    goto :goto_c3

    .line 245
    :cond_74
    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/BaseMessage;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/model/bean/UpdateOtaProgressBean;

    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u6536\u5230\u6570\u636e:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/UpdateOtaProgressBean;->getProgress()I

    move-result v1

    mul-int/lit8 v1, v1, 0x64

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/UpdateOtaProgressBean;->getTotal()I

    move-result v5

    div-int/2addr v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iget v0, p0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->currentIndex:I

    if-nez v0, :cond_b4

    .line 248
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->recommendFragment:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    invoke-virtual {v0, p1}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->reflashData(Lcom/keephealth/android/model/bean/UpdateOtaProgressBean;)V

    goto :goto_c3

    :cond_b4
    if-ne v0, v3, :cond_bc

    .line 250
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->customFragment:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    invoke-virtual {v0, p1}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->reflashData(Lcom/keephealth/android/model/bean/UpdateOtaProgressBean;)V

    goto :goto_c3

    :cond_bc
    if-ne v0, v2, :cond_c3

    .line 252
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->mineDialFragment:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    invoke-virtual {v0, p1}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->reflashData(Lcom/keephealth/android/model/bean/UpdateOtaProgressBean;)V

    :cond_c3
    :goto_c3
    return-void
.end method

.method protected initView()V
    .registers 8

    .line 137
    invoke-super {p0}, Lcom/keephealth/android/base/BaseActivity;->initView()V

    const/4 v0, 0x1

    .line 138
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->setRequestedOrientation(I)V

    .line 139
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AppApplication.getContext().getPackageName()\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ggf32d"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->comeDial:Z

    .line 142
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->comeDial2:Z

    const/4 v1, 0x0

    .line 144
    sput-boolean v1, Lcom/keephealth/android/app/AppApplication;->isHomeLoading:Z

    .line 145
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isComeRecom:Z

    .line 146
    sput-boolean v1, Lcom/keephealth/android/app/AppApplication;->isComeRecomDetail:Z

    .line 147
    sput-boolean v1, Lcom/keephealth/android/app/AppApplication;->isComMe:Z

    .line 148
    sput-boolean v1, Lcom/keephealth/android/app/AppApplication;->isComMeDetail:Z

    const/4 v2, -0x1

    .line 150
    sput v2, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->dialAdapterId:I

    .line 151
    sput v2, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->currentDialId:I

    .line 152
    sput v2, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->isInstallingId:I

    .line 153
    sput v1, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->currentProgress:I

    .line 154
    sput-boolean v1, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->isDownloading:Z

    .line 155
    sput-boolean v1, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenter:Z

    .line 156
    sput-boolean v1, Lcom/keephealth/android/app/AppApplication;->isSendDial:Z

    .line 157
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v3

    iput-object v3, p0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->bluetoothLe:Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    .line 158
    invoke-static {}, Lcom/keephealth/android/util/DiscoverServiceUtils;->discoverService()Z

    move-result v3

    if-eqz v3, :cond_5d

    .line 159
    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->bluetoothLe:Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    iget-object v4, p0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->TAG:Ljava/lang/String;

    invoke-static {}, Lcom/keephealth/android/util/ble/CmdHelper;->getDialInfo()[B

    move-result-object v5

    new-instance v6, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity$1;

    invoke-direct {v6, p0}, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity$1;-><init>(Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;)V

    invoke-virtual {v3, v4, v5, v6}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic(Ljava/lang/Object;[BLcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;)V

    .line 187
    :cond_5d
    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->titleName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f1007a8

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->bgView:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 189
    iput v2, p0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->currentIndex:I

    .line 190
    new-instance v2, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    invoke-direct {v2}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;-><init>()V

    iput-object v2, p0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->recommendFragment:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    .line 191
    new-instance v2, Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    invoke-direct {v2}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;-><init>()V

    iput-object v2, p0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->customFragment:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    .line 192
    new-instance v2, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    invoke-direct {v2}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;-><init>()V

    iput-object v2, p0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->mineDialFragment:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    .line 194
    invoke-static {}, Lcom/keephealth/android/util/QthreeUtils;->isOldProduct()Z

    move-result v2

    if-eqz v2, :cond_a2

    .line 195
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->fragments:[Landroidx/fragment/app/Fragment;

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->recommendFragment:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    aput-object v2, v0, v1

    .line 196
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->llCustom:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 197
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->llMine:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_bb

    .line 199
    :cond_a2
    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->fragments:[Landroidx/fragment/app/Fragment;

    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->recommendFragment:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    aput-object v3, v2, v1

    .line 200
    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->customFragment:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    aput-object v3, v2, v0

    const/4 v0, 0x2

    .line 201
    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->mineDialFragment:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    aput-object v3, v2, v0

    .line 202
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->llCustom:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 203
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->llMine:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 206
    :goto_bb
    invoke-direct {p0, v1}, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->showFragment(I)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 6

    .line 385
    invoke-super {p0, p1, p2, p3}, Lcom/keephealth/android/base/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x3e9

    const/4 v1, -0x1

    if-ne p1, v0, :cond_40

    .line 387
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "resultCode:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FF433"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p2, v1, :cond_4a

    .line 390
    invoke-static {p3}, Lcom/keephealth/android/util/image/ClipImageActivity$ClipOptions;->createFromBundle(Landroid/content/Intent;)Lcom/keephealth/android/util/image/ClipImageActivity$ClipOptions;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/util/image/ClipImageActivity$ClipOptions;->getOutputPath()Ljava/lang/String;

    move-result-object p1

    .line 391
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "path:"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "3423rew22"

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->customFragment:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    invoke-virtual {p2, p1}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->savePath(Ljava/lang/String;)V

    goto :goto_4a

    :cond_40
    const/4 p3, 0x1

    if-ne p1, p3, :cond_4a

    if-ne p2, v1, :cond_4a

    .line 397
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->customFragment:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->requestPer()V

    :cond_4a
    :goto_4a
    return-void
.end method

.method public onBackPressed()V
    .registers 4

    .line 405
    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenter:Z

    if-nez v0, :cond_14

    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->isHomeLoading:Z

    if-nez v0, :cond_14

    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->isSendDial:Z

    if-nez v0, :cond_14

    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenterTwo:Z

    if-nez v0, :cond_14

    .line 406
    invoke-super {p0}, Lcom/keephealth/android/base/BaseActivity;->onBackPressed()V

    goto :goto_60

    .line 408
    :cond_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-boolean v1, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenter:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v2, Lcom/keephealth/android/app/AppApplication;->isHomeLoading:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v2, Lcom/keephealth/android/app/AppApplication;->isSendDial:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenterTwo:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ttft3"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    invoke-static {}, Lcom/keephealth/android/util/DiscoverServiceUtils;->discoverService()Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 410
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100535

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->showToast(Ljava/lang/String;)V

    goto :goto_60

    .line 412
    :cond_5d
    invoke-super {p0}, Lcom/keephealth/android/base/BaseActivity;->onBackPressed()V

    :goto_60
    return-void
.end method

.method protected onDestroy()V
    .registers 3

    .line 367
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->bluetoothLe:Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->destroy(I)V

    const/4 v0, 0x0

    .line 368
    sput-boolean v0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->isDownloading:Z

    .line 369
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenter:Z

    .line 370
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenterTwo:Z

    .line 371
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isSendDial:Z

    .line 372
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->comeDial:Z

    .line 374
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isComeRecom:Z

    .line 375
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isComeRecomDetail:Z

    .line 376
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isComMe:Z

    .line 377
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isComMeDetail:Z

    .line 378
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->clearQueue()V

    .line 380
    invoke-super {p0}, Lcom/keephealth/android/base/BaseActivity;->onDestroy()V

    return-void
.end method
