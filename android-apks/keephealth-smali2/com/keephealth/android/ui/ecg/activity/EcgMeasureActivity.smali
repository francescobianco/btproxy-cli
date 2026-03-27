.class public Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;
.super Lcom/keephealth/android/base/BaseActivity;
.source "EcgMeasureActivity.java"


# instance fields
.field btnRestart:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900af
    .end annotation
.end field

.field private ecgDataHandler:Lcom/keephealth/android/util/ble/EcgDataHandler;

.field private hrList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field layoutFaild:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090305
    .end annotation
.end field

.field layoutMeasureing:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090314
    .end annotation
.end field

.field layoutStart:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09031d
    .end annotation
.end field

.field mHeartSurfaceView:Lcom/keephealth/android/views/ecg/EcgView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09015c
    .end annotation
.end field

.field private measureCalendar:Ljava/util/Calendar;

.field mhandle:Landroid/os/Handler;

.field private resultList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field saveItem:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/keephealth/android/greendao/bean/ECGItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field timeCloseRunnable:Ljava/lang/Runnable;

.field timeCount:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0905ea
    .end annotation
.end field

.field private timeOut:I

.field timeRunnable:Ljava/lang/Runnable;

.field private timerLca:I

.field tvAvgHr:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09061f
    .end annotation
.end field

.field tvFinishTips:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090662
    .end annotation
.end field

.field tvTimerTips:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0906f4
    .end annotation
.end field

.field updateUi:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 56
    invoke-direct {p0}, Lcom/keephealth/android/base/BaseActivity;-><init>()V

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;->saveItem:Ljava/util/List;

    .line 83
    new-instance v0, Lcom/keephealth/android/util/ble/EcgDataHandler;

    invoke-direct {v0}, Lcom/keephealth/android/util/ble/EcgDataHandler;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;->ecgDataHandler:Lcom/keephealth/android/util/ble/EcgDataHandler;

    const/4 v0, 0x0

    .line 84
    iput v0, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;->timerLca:I

    .line 98
    iput v0, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;->timeOut:I

    .line 99
    new-instance v0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity$1;

    invoke-direct {v0, p0}, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity$1;-><init>(Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;)V

    iput-object v0, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;->timeRunnable:Ljava/lang/Runnable;

    .line 117
    new-instance v0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity$2;

    invoke-direct {v0, p0}, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity$2;-><init>(Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;)V

    iput-object v0, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;->timeCloseRunnable:Ljava/lang/Runnable;

    .line 177
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;->mhandle:Landroid/os/Handler;

    .line 180
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;->hrList:Ljava/util/List;

    .line 181
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;->resultList:Ljava/util/Set;

    .line 322
    new-instance v0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity$4;

    invoke-direct {v0, p0}, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity$4;-><init>(Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;)V

    iput-object v0, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;->updateUi:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;)I
    .registers 1

    .line 56
    iget p0, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;->timeOut:I

    return p0
.end method

.method static synthetic access$002(Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;I)I
    .registers 2

    .line 56
    iput p1, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;->timeOut:I

    return p1
.end method

.method static synthetic access$008(Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;)I
    .registers 3

    .line 56
    iget v0, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;->timeOut:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;->timeOut:I

    return v0
.end method

.method static synthetic access$100(Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;)V
    .registers 1

    .line 56
    invoke-direct {p0}, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;->stopMeasure()V

    return-void
.end method

.method static synthetic access$200(Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;)I
    .registers 1

    .line 56
    iget p0, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;->timerLca:I

    return p0
.end method

.method static synthetic access$208(Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;)I
    .registers 3

    .line 56
    iget v0, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;->timerLca:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;->timerLca:I

    return v0
.end method

.method static synthetic access$300(Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;)V
    .registers 1

    .line 56
    invoke-direct {p0}, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;->mearsureFinish()V

    return-void
.end method

.method static synthetic access$400(Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;)Lcom/keephealth/android/util/ble/EcgDataHandler;
    .registers 1

    .line 56
    iget-object p0, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;->ecgDataHandler:Lcom/keephealth/android/util/ble/EcgDataHandler;

    return-object p0
.end method

.method private mearsureFinish()V
    .registers 10

    .line 133
    invoke-direct {p0}, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;->stopMeasure()V

    .line 134
    iget-object v0, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;->mhandle:Landroid/os/Handler;

    iget-object v1, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;->timeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 135
    iget-object v0, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;->mhandle:Landroid/os/Handler;

    iget-object v1, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;->timeCloseRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 136
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/DaoSession;->getECGItemInfoDao()Lcom/keephealth/android/greendao/gen/ECGItemInfoDao;

    move-result-object v0

    .line 137
    iget-object v1, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;->saveItem:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/keephealth/android/greendao/gen/ECGItemInfoDao;->saveInTx(Ljava/lang/Iterable;)V

    .line 138
    iget-object v0, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;->timeCount:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100281

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    new-instance v0, Lcom/keephealth/android/greendao/bean/EcgRecordInfo;

    invoke-direct {v0}, Lcom/keephealth/android/greendao/bean/EcgRecordInfo;-><init>()V

    .line 140
    iget-object v1, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;->measureCalendar:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/keephealth/android/greendao/bean/EcgRecordInfo;->setDate(J)V

    .line 141
    iget-object v1, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;->measureCalendar:Ljava/util/Calendar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/greendao/bean/EcgRecordInfo;->setYear(I)V

    .line 142
    iget-object v1, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;->measureCalendar:Ljava/util/Calendar;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/keephealth/android/greendao/bean/EcgRecordInfo;->setMonth(I)V

    .line 143
    iget-object v1, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;->measureCalendar:Ljava/util/Calendar;

    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/greendao/bean/EcgRecordInfo;->setDay(I)V

    .line 144
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 145
    iget-object v3, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;->resultList:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    const-string v4, "22"

    const/4 v5, 0x0

    if-nez v3, :cond_77

    .line 146
    invoke-virtual {v0, v4}, Lcom/keephealth/android/greendao/bean/EcgRecordInfo;->setDesc(Ljava/lang/String;)V

    .line 147
    invoke-virtual {v0, v5}, Lcom/keephealth/android/greendao/bean/EcgRecordInfo;->setState(I)V

    goto/16 :goto_f0

    .line 149
    :cond_77
    iget-object v3, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;->resultList:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_7d
    :goto_7d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 150
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/16 v8, 0x8

    if-eq v7, v8, :cond_c6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/16 v8, 0x9

    if-eq v7, v8, :cond_c6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/16 v8, 0xa

    if-eq v7, v8, :cond_c6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/16 v8, 0xb

    if-eq v7, v8, :cond_c6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/16 v8, 0x10

    if-eq v7, v8, :cond_c6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x7

    if-eq v7, v8, :cond_c6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x6

    if-eq v7, v8, :cond_c6

    .line 151
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_7d

    .line 152
    :cond_c6
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7d

    .line 155
    :cond_d0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-nez v3, :cond_dd

    .line 156
    invoke-virtual {v0, v5}, Lcom/keephealth/android/greendao/bean/EcgRecordInfo;->setState(I)V

    .line 157
    invoke-virtual {v0, v4}, Lcom/keephealth/android/greendao/bean/EcgRecordInfo;->setDesc(Ljava/lang/String;)V

    goto :goto_f0

    .line 159
    :cond_dd
    invoke-virtual {v0, v2}, Lcom/keephealth/android/greendao/bean/EcgRecordInfo;->setState(I)V

    .line 160
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v3, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/greendao/bean/EcgRecordInfo;->setDesc(Ljava/lang/String;)V

    .line 163
    :goto_f0
    iget-object v1, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;->hrList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_11a

    .line 165
    iget-object v1, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;->hrList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_fe
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_110

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 166
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v5, v2

    goto :goto_fe

    .line 168
    :cond_110
    iget-object v1, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;->hrList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    div-int/2addr v5, v1

    invoke-virtual {v0, v5}, Lcom/keephealth/android/greendao/bean/EcgRecordInfo;->setAvgHeart(I)V

    .line 170
    :cond_11a
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/gen/DaoSession;->getEcgRecordInfoDao()Lcom/keephealth/android/greendao/gen/EcgRecordInfoDao;

    move-result-object v1

    .line 171
    invoke-virtual {v1, v0}, Lcom/keephealth/android/greendao/gen/EcgRecordInfoDao;->save(Ljava/lang/Object;)V

    .line 172
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 173
    const-string v2, "recordInfo"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 174
    iget-object v0, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;->measureCalendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const-string v0, "measureTime"

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 175
    const-class v0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureFinishActivity;

    invoke-static {p0, v0, v1}, Lcom/keephealth/android/util/IntentUtil;->goToActivityAndFinish(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    return-void
.end method

.method private startMeasure()V
    .registers 5

    .line 262
    iget-object v0, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;->saveItem:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 263
    iget-object v0, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;->resultList:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 264
    iget-object v0, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;->hrList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 265
    iget-object v0, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;->layoutStart:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 266
    iget-object v0, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;->layoutFaild:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 267
    iget-object v0, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;->layoutMeasureing:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 268
    iget-object v0, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;->mHeartSurfaceView:Lcom/keephealth/android/views/ecg/EcgView;

    invoke-virtual {v0}, Lcom/keephealth/android/views/ecg/EcgView;->startThread()V

    .line 270
    iput v1, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;->timerLca:I

    .line 273
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;->TAG:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v2}, Lcom/keephealth/android/util/ble/CmdHelper;->setEcg(I)[B

    move-result-object v2

    new-instance v3, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity$3;

    invoke-direct {v3, p0}, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity$3;-><init>(Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic(Ljava/lang/Object;[BLcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;)V

    return-void
.end method

.method private stopMeasure()V
    .registers 2

    .line 319
    iget-object v0, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;->mHeartSurfaceView:Lcom/keephealth/android/views/ecg/EcgView;

    invoke-virtual {v0}, Lcom/keephealth/android/views/ecg/EcgView;->stopThread()V

    return-void
.end method


# virtual methods
.method protected getContentView()I
    .registers 2

    const v0, 0x7f0c004e

    return v0
.end method

.method protected handleMessage(Lcom/keephealth/android/model/bean/BaseMessage;)V
    .registers 11
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 185
    invoke-super {p0, p1}, Lcom/keephealth/android/base/BaseActivity;->handleMessage(Lcom/keephealth/android/model/bean/BaseMessage;)V

    .line 186
    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/BaseMessage;->getType()I

    move-result v0

    const/16 v1, 0x322

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-ne v0, v1, :cond_22

    .line 187
    invoke-direct {p0}, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;->stopMeasure()V

    .line 188
    sput-boolean v3, Lcom/keephealth/android/app/AppApplication;->isRunningEcg:Z

    .line 189
    iget-object p1, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;->tvTimerTips:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 190
    iget-object p1, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;->tvFinishTips:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 191
    invoke-direct {p0}, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;->mearsureFinish()V

    goto/16 :goto_19b

    .line 192
    :cond_22
    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/BaseMessage;->getType()I

    move-result v0

    const/16 v1, 0x321

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    if-ne v0, v1, :cond_50

    .line 193
    iget-object v0, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;->mhandle:Landroid/os/Handler;

    iget-object v1, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;->timeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 194
    iput v3, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;->timerLca:I

    .line 195
    iget-object v0, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;->mhandle:Landroid/os/Handler;

    iget-object v1, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;->timeCloseRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 196
    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/BaseMessage;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Calendar;

    iput-object p1, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;->measureCalendar:Ljava/util/Calendar;

    .line 197
    sput-boolean v6, Lcom/keephealth/android/app/AppApplication;->isRunningEcg:Z

    .line 198
    iget-object p1, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;->mhandle:Landroid/os/Handler;

    iget-object v0, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;->updateUi:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_19b

    .line 199
    :cond_50
    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/BaseMessage;->getType()I

    move-result v0

    const/16 v1, 0x325

    if-ne v0, v1, :cond_81

    .line 201
    invoke-direct {p0}, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;->stopMeasure()V

    .line 202
    sput-boolean v3, Lcom/keephealth/android/app/AppApplication;->isRunningEcg:Z

    .line 203
    iget-object p1, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;->saveItem:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 204
    iget-object p1, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;->mhandle:Landroid/os/Handler;

    iget-object v0, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;->timeRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 205
    iget-object p1, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;->mhandle:Landroid/os/Handler;

    iget-object v0, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;->timeCloseRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 206
    iget-object p1, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;->layoutStart:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 207
    iget-object p1, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;->layoutFaild:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 208
    iget-object p1, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;->layoutMeasureing:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_19b

    .line 209
    :cond_81
    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/BaseMessage;->getType()I

    move-result v0

    const/16 v1, 0x12e

    if-eq v0, v1, :cond_174

    .line 210
    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/BaseMessage;->getType()I

    move-result v0

    const/16 v1, 0x12d

    if-ne v0, v1, :cond_93

    goto/16 :goto_174

    .line 219
    :cond_93
    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/BaseMessage;->getType()I

    move-result v0

    const/16 v1, 0x324

    if-ne v0, v1, :cond_19b

    .line 220
    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/BaseMessage;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/ui/ecg/bean/EcgData;

    .line 221
    invoke-virtual {p1}, Lcom/keephealth/android/ui/ecg/bean/EcgData;->getData()Ljava/util/List;

    move-result-object v0

    .line 222
    sget-boolean v1, Lcom/keephealth/android/app/AppApplication;->isRunningEcg:Z

    if-nez v1, :cond_c2

    .line 223
    iget-object v1, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;->mhandle:Landroid/os/Handler;

    iget-object v2, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;->timeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 224
    iget-object v1, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;->mhandle:Landroid/os/Handler;

    iget-object v2, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;->timeCloseRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 225
    iput v3, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;->timerLca:I

    .line 226
    iget-object v1, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;->mhandle:Landroid/os/Handler;

    iget-object v2, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;->timeCloseRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 227
    sput-boolean v6, Lcom/keephealth/android/app/AppApplication;->isRunningEcg:Z

    .line 229
    :cond_c2
    iget-object v1, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;->mhandle:Landroid/os/Handler;

    iget-object v2, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;->updateUi:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 230
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_cd
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_114

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-double v2, v2

    .line 231
    new-instance v4, Lcom/keephealth/android/greendao/bean/ECGItemInfo;

    invoke-direct {v4}, Lcom/keephealth/android/greendao/bean/ECGItemInfo;-><init>()V

    .line 232
    iget-object v5, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;->measureCalendar:Ljava/util/Calendar;

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Lcom/keephealth/android/greendao/bean/ECGItemInfo;->setDate(J)V

    .line 233
    iget-object v5, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;->measureCalendar:Ljava/util/Calendar;

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/keephealth/android/greendao/bean/ECGItemInfo;->setYear(I)V

    .line 234
    iget-object v5, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;->measureCalendar:Ljava/util/Calendar;

    const/4 v7, 0x2

    invoke-virtual {v5, v7}, Ljava/util/Calendar;->get(I)I

    move-result v5

    add-int/2addr v5, v6

    invoke-virtual {v4, v5}, Lcom/keephealth/android/greendao/bean/ECGItemInfo;->setMonth(I)V

    .line 235
    iget-object v5, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;->measureCalendar:Ljava/util/Calendar;

    const/4 v7, 0x5

    invoke-virtual {v5, v7}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/keephealth/android/greendao/bean/ECGItemInfo;->setDay(I)V

    double-to-float v2, v2

    .line 236
    invoke-virtual {v4, v2}, Lcom/keephealth/android/greendao/bean/ECGItemInfo;->setHr(F)V

    .line 237
    iget-object v2, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;->saveItem:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_cd

    .line 239
    :cond_114
    iget-object v1, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;->mHeartSurfaceView:Lcom/keephealth/android/views/ecg/EcgView;

    invoke-virtual {v1, v0}, Lcom/keephealth/android/views/ecg/EcgView;->addEcgData0(Ljava/util/List;)V

    .line 241
    invoke-virtual {p1}, Lcom/keephealth/android/ui/ecg/bean/EcgData;->getHr()I

    move-result v0

    if-eqz v0, :cond_149

    .line 242
    iget-object v0, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;->tvAvgHr:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/keephealth/android/ui/ecg/bean/EcgData;->getHr()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    iget-object v0, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;->hrList:Ljava/util/List;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/ecg/bean/EcgData;->getHr()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_150

    .line 245
    :cond_149
    iget-object v0, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;->tvAvgHr:Landroid/widget/TextView;

    const-string v1, "--"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 247
    :goto_150
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u6d4b\u8bd5\u7ed3\u679c\uff1a"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/keephealth/android/ui/ecg/bean/EcgData;->getResult()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 248
    iget-object v0, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;->resultList:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/ecg/bean/EcgData;->getResult()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_19b

    .line 211
    :cond_174
    :goto_174
    invoke-direct {p0}, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;->stopMeasure()V

    .line 212
    sput-boolean v3, Lcom/keephealth/android/app/AppApplication;->isRunningEcg:Z

    .line 213
    iget-object p1, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;->saveItem:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 214
    iget-object p1, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;->mhandle:Landroid/os/Handler;

    iget-object v0, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;->timeRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 215
    iget-object p1, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;->mhandle:Landroid/os/Handler;

    iget-object v0, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;->timeCloseRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 216
    iget-object p1, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;->layoutStart:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 217
    iget-object p1, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;->layoutFaild:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 218
    iget-object p1, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;->layoutMeasureing:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_19b
    :goto_19b
    return-void
.end method

.method protected initView()V
    .registers 4

    .line 87
    invoke-super {p0}, Lcom/keephealth/android/base/BaseActivity;->initView()V

    .line 89
    invoke-virtual {p0}, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x2400

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 91
    iget-object v0, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;->layoutTitle:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060163

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 92
    iget-object v0, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;->bgView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 93
    iget-object v0, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;->titleBack:Landroid/widget/ImageView;

    const v1, 0x7f0d010a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 96
    invoke-direct {p0}, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;->startMeasure()V

    return-void
.end method

.method public onBackPressed()V
    .registers 3

    .line 333
    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->isRunningEcg:Z

    if-nez v0, :cond_8

    .line 334
    invoke-super {p0}, Lcom/keephealth/android/base/BaseActivity;->onBackPressed()V

    goto :goto_16

    .line 336
    :cond_8
    invoke-virtual {p0}, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100460

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    :goto_16
    return-void
.end method

.method protected onDestroy()V
    .registers 3

    .line 307
    invoke-super {p0}, Lcom/keephealth/android/base/BaseActivity;->onDestroy()V

    .line 308
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->destroy(Ljava/lang/Object;)V

    return-void
.end method

.method protected onResume()V
    .registers 2

    .line 298
    invoke-super {p0}, Lcom/keephealth/android/base/BaseActivity;->onResume()V

    .line 299
    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->isRunningEcg:Z

    if-eqz v0, :cond_c

    .line 300
    iget-object v0, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;->mHeartSurfaceView:Lcom/keephealth/android/views/ecg/EcgView;

    invoke-virtual {v0}, Lcom/keephealth/android/views/ecg/EcgView;->startThread()V

    :cond_c
    return-void
.end method

.method protected onStop()V
    .registers 2

    .line 290
    invoke-super {p0}, Lcom/keephealth/android/base/BaseActivity;->onStop()V

    .line 291
    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->isRunningEcg:Z

    if-eqz v0, :cond_a

    .line 292
    invoke-direct {p0}, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;->stopMeasure()V

    :cond_a
    return-void
.end method

.method restart()V
    .registers 3
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0900af
        }
    .end annotation

    .line 254
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getConnected()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 255
    invoke-direct {p0}, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;->startMeasure()V

    goto :goto_1c

    .line 257
    :cond_e
    invoke-virtual {p0}, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100258

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;->showToast(Ljava/lang/String;)V

    :goto_1c
    return-void
.end method
