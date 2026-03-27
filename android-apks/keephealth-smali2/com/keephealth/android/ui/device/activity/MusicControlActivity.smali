.class public Lcom/keephealth/android/ui/device/activity/MusicControlActivity;
.super Lcom/keephealth/android/base/BaseActivity;
.source "MusicControlActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keephealth/android/ui/device/activity/MusicControlActivity$MusicControlAdapter;
    }
.end annotation


# instance fields
.field private activity:Landroid/app/Activity;

.field private adapter:Lcom/keephealth/android/ui/device/activity/MusicControlActivity$MusicControlAdapter;

.field private deviceConfig:Lcom/keephealth/android/model/bean/DeviceConfig;

.field mMusicControl:Lcom/keephealth/android/views/CustomToggleButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090436
    .end annotation
.end field

.field mMusicPlayLv:Landroid/widget/ListView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090435
    .end annotation
.end field

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field mSelectPlayTv:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09055d
    .end annotation
.end field

.field private musicPlayDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/keephealth/android/model/bean/MusicPlayData;",
            ">;"
        }
    .end annotation
.end field

.field private musicUtil:Lcom/keephealth/android/util/MusicUtil;

.field private res:Landroid/content/res/Resources;

.field private selectItem:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 37
    invoke-direct {p0}, Lcom/keephealth/android/base/BaseActivity;-><init>()V

    const/4 v0, -0x1

    .line 44
    iput v0, p0, Lcom/keephealth/android/ui/device/activity/MusicControlActivity;->selectItem:I

    return-void
.end method

.method static synthetic access$000(Lcom/keephealth/android/ui/device/activity/MusicControlActivity;)I
    .registers 1

    .line 37
    iget p0, p0, Lcom/keephealth/android/ui/device/activity/MusicControlActivity;->selectItem:I

    return p0
.end method

.method static synthetic access$002(Lcom/keephealth/android/ui/device/activity/MusicControlActivity;I)I
    .registers 2

    .line 37
    iput p1, p0, Lcom/keephealth/android/ui/device/activity/MusicControlActivity;->selectItem:I

    return p1
.end method

.method private selectMusicPlay(Ljava/lang/String;)V
    .registers 7

    .line 122
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ":"

    const v2, 0x7f100442

    if-eqz v0, :cond_35

    .line 123
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/MusicControlActivity;->mSelectPlayTv:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/MusicControlActivity;->res:Landroid/content/res/Resources;

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/MusicControlActivity;->res:Landroid/content/res/Resources;

    const v2, 0x7f10045e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_55

    .line 125
    :cond_35
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/MusicControlActivity;->mSelectPlayTv:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/keephealth/android/ui/device/activity/MusicControlActivity;->res:Landroid/content/res/Resources;

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_55
    return-void
.end method

.method private setMusicState(Z)V
    .registers 5

    const/16 v0, 0x8

    if-eqz p1, :cond_11

    .line 109
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/MusicControlActivity;->deviceConfig:Lcom/keephealth/android/model/bean/DeviceConfig;

    iget-object p1, p1, Lcom/keephealth/android/model/bean/DeviceConfig;->musicAppName:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/keephealth/android/ui/device/activity/MusicControlActivity;->selectMusicPlay(Ljava/lang/String;)V

    .line 110
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/MusicControlActivity;->mMusicPlayLv:Landroid/widget/ListView;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_44

    .line 112
    :cond_11
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/MusicControlActivity;->mMusicPlayLv:Landroid/widget/ListView;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setVisibility(I)V

    .line 113
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/MusicControlActivity;->mSelectPlayTv:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/MusicControlActivity;->res:Landroid/content/res/Resources;

    const v2, 0x7f100442

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/MusicControlActivity;->res:Landroid/content/res/Resources;

    const v2, 0x7f10045e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_44
    return-void
.end method


# virtual methods
.method protected getContentView()I
    .registers 2

    const v0, 0x7f0c006b

    return v0
.end method

.method public initEvent()V
    .registers 3

    .line 133
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/MusicControlActivity;->mMusicControl:Lcom/keephealth/android/views/CustomToggleButton;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/MusicControlActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/MusicControlActivity$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/ui/device/activity/MusicControlActivity;)V

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/CustomToggleButton;->setOnSwitchListener(Lcom/keephealth/android/views/CustomToggleButton$OnSwitchListener;)V

    .line 160
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/MusicControlActivity;->mMusicPlayLv:Landroid/widget/ListView;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/MusicControlActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/MusicControlActivity$$ExternalSyntheticLambda1;-><init>(Lcom/keephealth/android/ui/device/activity/MusicControlActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public initView()V
    .registers 6

    .line 61
    iput-object p0, p0, Lcom/keephealth/android/ui/device/activity/MusicControlActivity;->activity:Landroid/app/Activity;

    .line 62
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/MusicControlActivity;->res:Landroid/content/res/Resources;

    .line 63
    new-instance v0, Lcom/keephealth/android/util/MusicUtil;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/MusicControlActivity;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/MusicControlActivity;->mMusicControl:Lcom/keephealth/android/views/CustomToggleButton;

    invoke-direct {v0, v1, v2}, Lcom/keephealth/android/util/MusicUtil;-><init>(Landroid/app/Activity;Lcom/keephealth/android/views/CustomToggleButton;)V

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/MusicControlActivity;->musicUtil:Lcom/keephealth/android/util/MusicUtil;

    .line 64
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/MusicControlActivity;->titleName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/MusicControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100441

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/MusicControlActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/MusicControlActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v0, 0x25

    .line 82
    invoke-static {p0, v0}, Lcom/keephealth/android/util/SPHelper;->getDeviceConfig(Landroid/content/Context;I)Lcom/keephealth/android/model/bean/DeviceConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/MusicControlActivity;->deviceConfig:Lcom/keephealth/android/model/bean/DeviceConfig;

    .line 84
    invoke-static {}, Lcom/keephealth/android/util/MusicUtil;->getMusicPlayLists()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/MusicControlActivity;->musicPlayDataList:Ljava/util/List;

    .line 85
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/MusicControlActivity;->deviceConfig:Lcom/keephealth/android/model/bean/DeviceConfig;

    iget-object v0, v0, Lcom/keephealth/android/model/bean/DeviceConfig;->musicPackageName:Ljava/lang/String;

    if-nez v0, :cond_66

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/MusicControlActivity;->musicPlayDataList:Ljava/util/List;

    if-eqz v0, :cond_66

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_66

    .line 86
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/MusicControlActivity;->deviceConfig:Lcom/keephealth/android/model/bean/DeviceConfig;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/MusicControlActivity;->musicPlayDataList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/model/bean/MusicPlayData;

    invoke-virtual {v1}, Lcom/keephealth/android/model/bean/MusicPlayData;->getPlayName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/keephealth/android/model/bean/DeviceConfig;->musicAppName:Ljava/lang/String;

    .line 87
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/MusicControlActivity;->deviceConfig:Lcom/keephealth/android/model/bean/DeviceConfig;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/MusicControlActivity;->musicPlayDataList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/model/bean/MusicPlayData;

    iget-object v1, v1, Lcom/keephealth/android/model/bean/MusicPlayData;->packageName:Ljava/lang/String;

    iput-object v1, v0, Lcom/keephealth/android/model/bean/DeviceConfig;->musicPackageName:Ljava/lang/String;

    .line 89
    :cond_66
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/MusicControlActivity;->deviceConfig:Lcom/keephealth/android/model/bean/DeviceConfig;

    invoke-static {v0}, Lcom/keephealth/android/util/SPHelper;->saveDeviceConfig(Lcom/keephealth/android/model/bean/DeviceConfig;)V

    .line 90
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/MusicControlActivity;->mMusicControl:Lcom/keephealth/android/views/CustomToggleButton;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/MusicControlActivity;->deviceConfig:Lcom/keephealth/android/model/bean/DeviceConfig;

    iget-boolean v1, v1, Lcom/keephealth/android/model/bean/DeviceConfig;->isMusic:Z

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/CustomToggleButton;->setSwitchState(Z)V

    .line 92
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/MusicControlActivity;->deviceConfig:Lcom/keephealth/android/model/bean/DeviceConfig;

    iget-boolean v0, v0, Lcom/keephealth/android/model/bean/DeviceConfig;->isMusic:Z

    const/16 v1, 0x8

    if-eqz v0, :cond_84

    .line 93
    invoke-static {}, Lcom/keephealth/android/util/MusicUtil;->getSelectedMusic()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/keephealth/android/ui/device/activity/MusicControlActivity;->selectMusicPlay(Ljava/lang/String;)V

    goto :goto_b7

    .line 95
    :cond_84
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/MusicControlActivity;->mMusicPlayLv:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 96
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/MusicControlActivity;->mSelectPlayTv:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/MusicControlActivity;->res:Landroid/content/res/Resources;

    const v4, 0x7f100442

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/MusicControlActivity;->res:Landroid/content/res/Resources;

    const v4, 0x7f10045e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    :goto_b7
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/MusicControlActivity;->mMusicPlayLv:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 100
    new-instance v0, Lcom/keephealth/android/ui/device/activity/MusicControlActivity$MusicControlAdapter;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/MusicControlActivity;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/MusicControlActivity;->musicPlayDataList:Ljava/util/List;

    invoke-direct {v0, p0, v1, v2}, Lcom/keephealth/android/ui/device/activity/MusicControlActivity$MusicControlAdapter;-><init>(Lcom/keephealth/android/ui/device/activity/MusicControlActivity;Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/MusicControlActivity;->adapter:Lcom/keephealth/android/ui/device/activity/MusicControlActivity$MusicControlAdapter;

    .line 101
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/MusicControlActivity;->mMusicPlayLv:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 102
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/MusicControlActivity;->initEvent()V

    return-void
.end method

.method synthetic lambda$initEvent$0$com-keephealth-android-ui-device-activity-MusicControlActivity(Z)V
    .registers 15

    .line 134
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/MusicControlActivity;->musicUtil:Lcom/keephealth/android/util/MusicUtil;

    invoke-virtual {v0, p1}, Lcom/keephealth/android/util/MusicUtil;->setNoticeMusicPlay(Z)V

    .line 135
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/MusicControlActivity;->deviceConfig:Lcom/keephealth/android/model/bean/DeviceConfig;

    iput-boolean p1, v0, Lcom/keephealth/android/model/bean/DeviceConfig;->isMusic:Z

    .line 136
    invoke-direct {p0, p1}, Lcom/keephealth/android/ui/device/activity/MusicControlActivity;->setMusicState(Z)V

    .line 137
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/MusicControlActivity;->deviceConfig:Lcom/keephealth/android/model/bean/DeviceConfig;

    invoke-static {v0}, Lcom/keephealth/android/util/SPHelper;->saveDeviceConfig(Lcom/keephealth/android/model/bean/DeviceConfig;)V

    .line 138
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/MusicControlActivity;->deviceConfig:Lcom/keephealth/android/model/bean/DeviceConfig;

    iget-object v0, v0, Lcom/keephealth/android/model/bean/DeviceConfig;->deviceState:Lcom/keephealth/android/model/bean/DeviceState;

    iget v4, v0, Lcom/keephealth/android/model/bean/DeviceState;->language:I

    .line 139
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/MusicControlActivity;->deviceConfig:Lcom/keephealth/android/model/bean/DeviceConfig;

    iget-object v0, v0, Lcom/keephealth/android/model/bean/DeviceConfig;->deviceState:Lcom/keephealth/android/model/bean/DeviceState;

    iget v1, v0, Lcom/keephealth/android/model/bean/DeviceState;->screenLight:I

    .line 140
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/MusicControlActivity;->deviceConfig:Lcom/keephealth/android/model/bean/DeviceConfig;

    iget-object v0, v0, Lcom/keephealth/android/model/bean/DeviceConfig;->deviceState:Lcom/keephealth/android/model/bean/DeviceState;

    iget v2, v0, Lcom/keephealth/android/model/bean/DeviceState;->screenTime:I

    .line 141
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/MusicControlActivity;->deviceConfig:Lcom/keephealth/android/model/bean/DeviceConfig;

    iget-object v0, v0, Lcom/keephealth/android/model/bean/DeviceConfig;->deviceState:Lcom/keephealth/android/model/bean/DeviceState;

    iget v3, v0, Lcom/keephealth/android/model/bean/DeviceState;->theme:I

    .line 142
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/MusicControlActivity;->deviceConfig:Lcom/keephealth/android/model/bean/DeviceConfig;

    iget-object v0, v0, Lcom/keephealth/android/model/bean/DeviceConfig;->deviceState:Lcom/keephealth/android/model/bean/DeviceState;

    iget v5, v0, Lcom/keephealth/android/model/bean/DeviceState;->unit:I

    .line 143
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    xor-int/lit8 v6, v0, 0x1

    .line 144
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/MusicControlActivity;->deviceConfig:Lcom/keephealth/android/model/bean/DeviceConfig;

    iget-object v0, v0, Lcom/keephealth/android/model/bean/DeviceConfig;->deviceState:Lcom/keephealth/android/model/bean/DeviceState;

    iget v7, v0, Lcom/keephealth/android/model/bean/DeviceState;->upHander:I

    .line 145
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/MusicControlActivity;->deviceConfig:Lcom/keephealth/android/model/bean/DeviceConfig;

    iget-boolean v8, v0, Lcom/keephealth/android/model/bean/DeviceConfig;->isMusic:Z

    .line 146
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/MusicControlActivity;->deviceConfig:Lcom/keephealth/android/model/bean/DeviceConfig;

    iget-boolean v9, v0, Lcom/keephealth/android/model/bean/DeviceConfig;->isDisturbMode:Z

    .line 147
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/MusicControlActivity;->deviceConfig:Lcom/keephealth/android/model/bean/DeviceConfig;

    iget-object v0, v0, Lcom/keephealth/android/model/bean/DeviceConfig;->deviceState:Lcom/keephealth/android/model/bean/DeviceState;

    iget v10, v0, Lcom/keephealth/android/model/bean/DeviceState;->handHabits:I

    .line 148
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->getUserBean()Lcom/keephealth/android/model/bean/UserBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/UserBean;->getTemperatureUnit()I

    move-result v11

    .line 150
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->getUserBean()Lcom/keephealth/android/model/bean/UserBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/UserBean;->getWaterUnit()I

    move-result v12

    .line 149
    invoke-static/range {v1 .. v12}, Lcom/keephealth/android/util/ble/CmdHelper;->setDeviceState(IIIIIIIIIIII)[B

    move-result-object v0

    .line 151
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([B)V

    if-eqz p1, :cond_73

    .line 153
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/MusicControlActivity;->musicUtil:Lcom/keephealth/android/util/MusicUtil;

    invoke-virtual {p1}, Lcom/keephealth/android/util/MusicUtil;->openMusicService()V

    :cond_73
    return-void
.end method

.method synthetic lambda$initEvent$1$com-keephealth-android-ui-device-activity-MusicControlActivity(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6

    .line 162
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/MusicControlActivity;->adapter:Lcom/keephealth/android/ui/device/activity/MusicControlActivity$MusicControlAdapter;

    invoke-virtual {p1, p3}, Lcom/keephealth/android/ui/device/activity/MusicControlActivity$MusicControlAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/model/bean/MusicPlayData;

    .line 163
    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/MusicPlayData;->getPlayName()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/keephealth/android/ui/device/activity/MusicControlActivity;->selectMusicPlay(Ljava/lang/String;)V

    .line 164
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/MusicControlActivity;->deviceConfig:Lcom/keephealth/android/model/bean/DeviceConfig;

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/MusicPlayData;->getPlayName()Ljava/lang/String;

    move-result-object p4

    iput-object p4, p2, Lcom/keephealth/android/model/bean/DeviceConfig;->musicAppName:Ljava/lang/String;

    .line 165
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/MusicControlActivity;->deviceConfig:Lcom/keephealth/android/model/bean/DeviceConfig;

    iget-object p1, p1, Lcom/keephealth/android/model/bean/MusicPlayData;->packageName:Ljava/lang/String;

    iput-object p1, p2, Lcom/keephealth/android/model/bean/DeviceConfig;->musicPackageName:Ljava/lang/String;

    .line 166
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/MusicControlActivity;->deviceConfig:Lcom/keephealth/android/model/bean/DeviceConfig;

    invoke-static {p1}, Lcom/keephealth/android/util/SPHelper;->saveDeviceConfig(Lcom/keephealth/android/model/bean/DeviceConfig;)V

    .line 167
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/MusicControlActivity;->adapter:Lcom/keephealth/android/ui/device/activity/MusicControlActivity$MusicControlAdapter;

    invoke-virtual {p1, p3}, Lcom/keephealth/android/ui/device/activity/MusicControlActivity$MusicControlAdapter;->setSelectItem(I)V

    .line 168
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/MusicControlActivity;->adapter:Lcom/keephealth/android/ui/device/activity/MusicControlActivity$MusicControlAdapter;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/activity/MusicControlActivity$MusicControlAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .line 211
    invoke-super {p0}, Lcom/keephealth/android/base/BaseActivity;->onDestroy()V

    .line 212
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/MusicControlActivity;->musicUtil:Lcom/keephealth/android/util/MusicUtil;

    invoke-virtual {v0}, Lcom/keephealth/android/util/MusicUtil;->removeListener()V

    .line 213
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/MusicControlActivity;->deviceConfig:Lcom/keephealth/android/model/bean/DeviceConfig;

    invoke-static {v0}, Lcom/keephealth/android/util/SPHelper;->saveDeviceConfig(Lcom/keephealth/android/model/bean/DeviceConfig;)V

    return-void
.end method

.method protected onResume()V
    .registers 5

    .line 174
    invoke-super {p0}, Lcom/keephealth/android/base/BaseActivity;->onResume()V

    .line 176
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/MusicControlActivity;->musicUtil:Lcom/keephealth/android/util/MusicUtil;

    invoke-virtual {v0}, Lcom/keephealth/android/util/MusicUtil;->addListener()V

    .line 178
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/MusicControlActivity;->deviceConfig:Lcom/keephealth/android/model/bean/DeviceConfig;

    iget-boolean v0, v0, Lcom/keephealth/android/model/bean/DeviceConfig;->isMusic:Z

    if-eqz v0, :cond_13

    .line 179
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/MusicControlActivity;->musicUtil:Lcom/keephealth/android/util/MusicUtil;

    invoke-virtual {v0}, Lcom/keephealth/android/util/MusicUtil;->openMusicService()V

    .line 184
    :cond_13
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/MusicControlActivity;->musicUtil:Lcom/keephealth/android/util/MusicUtil;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/MusicControlActivity;->deviceConfig:Lcom/keephealth/android/model/bean/DeviceConfig;

    iget-boolean v1, v1, Lcom/keephealth/android/model/bean/DeviceConfig;->isMusic:Z

    invoke-virtual {v0, v1}, Lcom/keephealth/android/util/MusicUtil;->setNoticeMusicPlay(Z)V

    .line 188
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/MusicControlActivity;->deviceConfig:Lcom/keephealth/android/model/bean/DeviceConfig;

    iget-object v0, v0, Lcom/keephealth/android/model/bean/DeviceConfig;->musicPackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_54

    move v0, v1

    .line 189
    :goto_28
    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/MusicControlActivity;->musicPlayDataList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_54

    .line 190
    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/MusicControlActivity;->musicPlayDataList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/keephealth/android/model/bean/MusicPlayData;

    .line 191
    invoke-virtual {v2}, Lcom/keephealth/android/model/bean/MusicPlayData;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/MusicControlActivity;->deviceConfig:Lcom/keephealth/android/model/bean/DeviceConfig;

    iget-object v3, v3, Lcom/keephealth/android/model/bean/DeviceConfig;->musicPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_51

    .line 192
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/MusicControlActivity;->adapter:Lcom/keephealth/android/ui/device/activity/MusicControlActivity$MusicControlAdapter;

    invoke-virtual {v1, v0}, Lcom/keephealth/android/ui/device/activity/MusicControlActivity$MusicControlAdapter;->setSelectItem(I)V

    .line 193
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/MusicControlActivity;->adapter:Lcom/keephealth/android/ui/device/activity/MusicControlActivity$MusicControlAdapter;

    invoke-virtual {v0}, Lcom/keephealth/android/ui/device/activity/MusicControlActivity$MusicControlAdapter;->notifyDataSetChanged()V

    goto :goto_76

    :cond_51
    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    .line 200
    :cond_54
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/MusicControlActivity;->adapter:Lcom/keephealth/android/ui/device/activity/MusicControlActivity$MusicControlAdapter;

    invoke-virtual {v0, v1}, Lcom/keephealth/android/ui/device/activity/MusicControlActivity$MusicControlAdapter;->setSelectItem(I)V

    .line 201
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/MusicControlActivity;->adapter:Lcom/keephealth/android/ui/device/activity/MusicControlActivity$MusicControlAdapter;

    invoke-virtual {v0}, Lcom/keephealth/android/ui/device/activity/MusicControlActivity$MusicControlAdapter;->notifyDataSetChanged()V

    .line 202
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/MusicControlActivity;->musicPlayDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_76

    .line 204
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/MusicControlActivity;->deviceConfig:Lcom/keephealth/android/model/bean/DeviceConfig;

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/MusicControlActivity;->musicPlayDataList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/model/bean/MusicPlayData;

    invoke-virtual {v1}, Lcom/keephealth/android/model/bean/MusicPlayData;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/keephealth/android/model/bean/DeviceConfig;->musicPackageName:Ljava/lang/String;

    :cond_76
    :goto_76
    return-void
.end method
