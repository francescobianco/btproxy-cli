.class public Lcom/keephealth/android/persenter/main/MainFragmentPresenter;
.super Lcom/keephealth/android/base/BasePersenter;
.source "MainFragmentPresenter.java"

# interfaces
.implements Lcom/keephealth/android/persenter/main/MainFragmentContract$Presenter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/keephealth/android/base/BasePersenter<",
        "Lcom/keephealth/android/persenter/main/MainFragmentContract$View;",
        ">;",
        "Lcom/keephealth/android/persenter/main/MainFragmentContract$Presenter;"
    }
.end annotation


# instance fields
.field private activityDataHandler:Lcom/keephealth/android/util/ble/ActivityDataHandler;

.field address:Ljava/lang/String;

.field private calendar:Ljava/util/Calendar;

.field private config:Lcom/keephealth/android/model/bean/DeviceConfig;

.field private currentIndex:I

.field delayMillis:I

.field delayMillisWeather:I

.field private distanDay:I

.field private ecgDataHandler:Lcom/keephealth/android/util/ble/EcgDataHandler;

.field handler:Landroid/os/Handler;

.field private healthDataHandler:Lcom/keephealth/android/util/ble/HealthDataHandler;

.field private healthHrDataHandler:Lcom/keephealth/android/util/ble/HealthHrDataHandler;

.field private hrvDataHandler:Lcom/keephealth/android/util/ble/HRVDataHandler;

.field index:I

.field isDeleteSchedule:Z

.field isDrinkWaterOpen:Z

.field private isFrist:Z

.field private isGesture:Z

.field private isHighSleep:Z

.field isHrv:Z

.field private isOpenSchedule:Z

.field private isSendShedule:Z

.field isWaterData:Z

.field jsonStr:Ljava/lang/String;

.field jsonStrs:Ljava/lang/String;

.field kl:I

.field length:I

.field lengthWaterData:I

.field private mIndex:I

.field private mWeight:I

.field private final maxSendCount:I

.field product:Ljava/lang/String;

.field targatItem:I

.field target:[B

.field target1:[B

.field target2:[B

.field targetall:[B

.field private task:Ljava/lang/Runnable;

.field private tempDataHandler:Lcom/keephealth/android/util/ble/TempDataHandler;

.field private waterDataHandler:Lcom/keephealth/android/util/ble/WaterDataHandler;

.field waterDataIndex:I

.field weatherTask:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 186
    invoke-direct {p0}, Lcom/keephealth/android/base/BasePersenter;-><init>()V

    .line 187
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->handler:Landroid/os/Handler;

    const/16 v0, 0x4e20

    .line 188
    iput v0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->delayMillis:I

    const v0, 0x6ddd00

    .line 189
    iput v0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->delayMillisWeather:I

    .line 190
    new-instance v0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$1;

    invoke-direct {v0, p0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$1;-><init>(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)V

    iput-object v0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->task:Ljava/lang/Runnable;

    .line 212
    new-instance v0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$2;

    invoke-direct {v0, p0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$2;-><init>(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)V

    iput-object v0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->weatherTask:Ljava/lang/Runnable;

    const/4 v0, 0x0

    .line 738
    iput-boolean v0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->isDeleteSchedule:Z

    .line 1313
    iput v0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->length:I

    .line 1626
    iput v0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->distanDay:I

    .line 1650
    iput v0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mIndex:I

    .line 1724
    new-instance v1, Lcom/keephealth/android/util/ble/HealthDataHandler;

    invoke-direct {v1}, Lcom/keephealth/android/util/ble/HealthDataHandler;-><init>()V

    iput-object v1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->healthDataHandler:Lcom/keephealth/android/util/ble/HealthDataHandler;

    .line 1725
    new-instance v1, Lcom/keephealth/android/util/ble/HealthHrDataHandler;

    invoke-direct {v1}, Lcom/keephealth/android/util/ble/HealthHrDataHandler;-><init>()V

    iput-object v1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->healthHrDataHandler:Lcom/keephealth/android/util/ble/HealthHrDataHandler;

    .line 1726
    new-instance v1, Lcom/keephealth/android/util/ble/HRVDataHandler;

    invoke-direct {v1}, Lcom/keephealth/android/util/ble/HRVDataHandler;-><init>()V

    iput-object v1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->hrvDataHandler:Lcom/keephealth/android/util/ble/HRVDataHandler;

    .line 1727
    new-instance v1, Lcom/keephealth/android/util/ble/TempDataHandler;

    invoke-direct {v1}, Lcom/keephealth/android/util/ble/TempDataHandler;-><init>()V

    iput-object v1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->tempDataHandler:Lcom/keephealth/android/util/ble/TempDataHandler;

    .line 1728
    new-instance v1, Lcom/keephealth/android/util/ble/ActivityDataHandler;

    invoke-direct {v1}, Lcom/keephealth/android/util/ble/ActivityDataHandler;-><init>()V

    iput-object v1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->activityDataHandler:Lcom/keephealth/android/util/ble/ActivityDataHandler;

    .line 1729
    new-instance v1, Lcom/keephealth/android/util/ble/EcgDataHandler;

    invoke-direct {v1}, Lcom/keephealth/android/util/ble/EcgDataHandler;-><init>()V

    iput-object v1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->ecgDataHandler:Lcom/keephealth/android/util/ble/EcgDataHandler;

    .line 1730
    new-instance v1, Lcom/keephealth/android/util/ble/WaterDataHandler;

    invoke-direct {v1}, Lcom/keephealth/android/util/ble/WaterDataHandler;-><init>()V

    iput-object v1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->waterDataHandler:Lcom/keephealth/android/util/ble/WaterDataHandler;

    .line 1822
    iput-boolean v0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->isHighSleep:Z

    .line 2166
    iput-boolean v0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->isHrv:Z

    .line 2328
    iput v0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->index:I

    .line 2329
    iput-boolean v0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->isWaterData:Z

    .line 2330
    iput v0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->lengthWaterData:I

    .line 2331
    iput v0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->waterDataIndex:I

    .line 2410
    iput-boolean v0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->isFrist:Z

    .line 2411
    iput-boolean v0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->isGesture:Z

    .line 2455
    iput-boolean v0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->isDrinkWaterOpen:Z

    const/16 v0, 0x1e

    .line 2755
    iput v0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->maxSendCount:I

    .line 2882
    const-string v0, ""

    iput-object v0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->address:Ljava/lang/String;

    .line 2883
    iput-object v0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->product:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)V
    .registers 1

    .line 186
    invoke-direct {p0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->synchWeather()V

    return-void
.end method

.method static synthetic access$100(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Lcom/keephealth/android/util/ble/HealthDataHandler;
    .registers 1

    .line 186
    iget-object p0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->healthDataHandler:Lcom/keephealth/android/util/ble/HealthDataHandler;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Lcom/keephealth/android/base/IBaseView;
    .registers 1

    .line 186
    iget-object p0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    return-object p0
.end method

.method static synthetic access$10000(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Lcom/keephealth/android/base/IBaseView;
    .registers 1

    .line 186
    iget-object p0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    return-object p0
.end method

.method static synthetic access$10100(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Lcom/keephealth/android/base/IBaseView;
    .registers 1

    .line 186
    iget-object p0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    return-object p0
.end method

.method static synthetic access$10200(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)V
    .registers 1

    .line 186
    invoke-direct {p0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->updateWeather()V

    return-void
.end method

.method static synthetic access$10300(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Lcom/keephealth/android/base/IBaseView;
    .registers 1

    .line 186
    iget-object p0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    return-object p0
.end method

.method static synthetic access$10400(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Lcom/keephealth/android/base/IBaseView;
    .registers 1

    .line 186
    iget-object p0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    return-object p0
.end method

.method static synthetic access$10500(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Lcom/keephealth/android/base/IBaseView;
    .registers 1

    .line 186
    iget-object p0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    return-object p0
.end method

.method static synthetic access$10600(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Lcom/keephealth/android/base/IBaseView;
    .registers 1

    .line 186
    iget-object p0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    return-object p0
.end method

.method static synthetic access$10700(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Lcom/keephealth/android/base/IBaseView;
    .registers 1

    .line 186
    iget-object p0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    return-object p0
.end method

.method static synthetic access$10800(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Lcom/keephealth/android/base/IBaseView;
    .registers 1

    .line 186
    iget-object p0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    return-object p0
.end method

.method static synthetic access$10900(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Z
    .registers 1

    .line 186
    iget-boolean p0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->isGesture:Z

    return p0
.end method

.method static synthetic access$10902(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;Z)Z
    .registers 2

    .line 186
    iput-boolean p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->isGesture:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Lcom/keephealth/android/util/ble/TempDataHandler;
    .registers 1

    .line 186
    iget-object p0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->tempDataHandler:Lcom/keephealth/android/util/ble/TempDataHandler;

    return-object p0
.end method

.method static synthetic access$11000(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Lcom/keephealth/android/base/IBaseView;
    .registers 1

    .line 186
    iget-object p0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    return-object p0
.end method

.method static synthetic access$11100(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Lcom/keephealth/android/base/IBaseView;
    .registers 1

    .line 186
    iget-object p0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    return-object p0
.end method

.method static synthetic access$11200(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Lcom/keephealth/android/base/IBaseView;
    .registers 1

    .line 186
    iget-object p0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    return-object p0
.end method

.method static synthetic access$11300(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Lcom/keephealth/android/base/IBaseView;
    .registers 1

    .line 186
    iget-object p0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    return-object p0
.end method

.method static synthetic access$11400(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Z
    .registers 1

    .line 186
    iget-boolean p0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->isFrist:Z

    return p0
.end method

.method static synthetic access$11402(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;Z)Z
    .registers 2

    .line 186
    iput-boolean p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->isFrist:Z

    return p1
.end method

.method static synthetic access$11500(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;[B)V
    .registers 2

    .line 186
    invoke-direct {p0, p1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->handleData([B)V

    return-void
.end method

.method static synthetic access$11600(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)V
    .registers 1

    .line 186
    invoke-direct {p0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->syncWater()V

    return-void
.end method

.method static synthetic access$11700(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Lcom/keephealth/android/base/IBaseView;
    .registers 1

    .line 186
    iget-object p0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    return-object p0
.end method

.method static synthetic access$11800(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Lcom/keephealth/android/base/IBaseView;
    .registers 1

    .line 186
    iget-object p0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    return-object p0
.end method

.method static synthetic access$11900(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Lcom/keephealth/android/base/IBaseView;
    .registers 1

    .line 186
    iget-object p0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Lcom/keephealth/android/base/IBaseView;
    .registers 1

    .line 186
    iget-object p0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    return-object p0
.end method

.method static synthetic access$12000(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Lcom/keephealth/android/base/IBaseView;
    .registers 1

    .line 186
    iget-object p0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    return-object p0
.end method

.method static synthetic access$12100(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Lcom/keephealth/android/base/IBaseView;
    .registers 1

    .line 186
    iget-object p0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    return-object p0
.end method

.method static synthetic access$12200(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Lcom/keephealth/android/base/IBaseView;
    .registers 1

    .line 186
    iget-object p0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    return-object p0
.end method

.method static synthetic access$12300(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Lcom/keephealth/android/base/IBaseView;
    .registers 1

    .line 186
    iget-object p0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    return-object p0
.end method

.method static synthetic access$12400(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Lcom/keephealth/android/base/IBaseView;
    .registers 1

    .line 186
    iget-object p0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    return-object p0
.end method

.method static synthetic access$12500(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Lcom/keephealth/android/base/IBaseView;
    .registers 1

    .line 186
    iget-object p0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    return-object p0
.end method

.method static synthetic access$12600(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Lcom/keephealth/android/base/IBaseView;
    .registers 1

    .line 186
    iget-object p0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    return-object p0
.end method

.method static synthetic access$12700(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Lcom/keephealth/android/util/ble/ActivityDataHandler;
    .registers 1

    .line 186
    iget-object p0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->activityDataHandler:Lcom/keephealth/android/util/ble/ActivityDataHandler;

    return-object p0
.end method

.method static synthetic access$12800(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)V
    .registers 1

    .line 186
    invoke-direct {p0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->getGesture()V

    return-void
.end method

.method static synthetic access$12900(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Lcom/keephealth/android/base/IBaseView;
    .registers 1

    .line 186
    iget-object p0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Lcom/keephealth/android/base/IBaseView;
    .registers 1

    .line 186
    iget-object p0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    return-object p0
.end method

.method static synthetic access$13000(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Lcom/keephealth/android/base/IBaseView;
    .registers 1

    .line 186
    iget-object p0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    return-object p0
.end method

.method static synthetic access$13100(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Lcom/keephealth/android/base/IBaseView;
    .registers 1

    .line 186
    iget-object p0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    return-object p0
.end method

.method static synthetic access$13200(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Lcom/keephealth/android/base/IBaseView;
    .registers 1

    .line 186
    iget-object p0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    return-object p0
.end method

.method static synthetic access$13300(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;Lio/reactivex/disposables/Disposable;)V
    .registers 2

    .line 186
    invoke-virtual {p0, p1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->addDisposable(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method static synthetic access$13400(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Lcom/keephealth/android/base/IBaseView;
    .registers 1

    .line 186
    iget-object p0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    return-object p0
.end method

.method static synthetic access$13500(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Lcom/keephealth/android/base/IBaseView;
    .registers 1

    .line 186
    iget-object p0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    return-object p0
.end method

.method static synthetic access$13600(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;Lio/reactivex/disposables/Disposable;)V
    .registers 2

    .line 186
    invoke-virtual {p0, p1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->addDisposable(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method static synthetic access$13700(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;Lio/reactivex/disposables/Disposable;)V
    .registers 2

    .line 186
    invoke-virtual {p0, p1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->addDisposable(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method static synthetic access$13800(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;Lio/reactivex/disposables/Disposable;)V
    .registers 2

    .line 186
    invoke-virtual {p0, p1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->addDisposable(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method static synthetic access$13900(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;Lio/reactivex/disposables/Disposable;)V
    .registers 2

    .line 186
    invoke-virtual {p0, p1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->addDisposable(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Lcom/keephealth/android/base/IBaseView;
    .registers 1

    .line 186
    iget-object p0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    return-object p0
.end method

.method static synthetic access$14000(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;Lio/reactivex/disposables/Disposable;)V
    .registers 2

    .line 186
    invoke-virtual {p0, p1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->addDisposable(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method static synthetic access$14100(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;Lio/reactivex/disposables/Disposable;)V
    .registers 2

    .line 186
    invoke-virtual {p0, p1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->addDisposable(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method static synthetic access$14200(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;Lio/reactivex/disposables/Disposable;)V
    .registers 2

    .line 186
    invoke-virtual {p0, p1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->addDisposable(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method static synthetic access$14300(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;Lio/reactivex/disposables/Disposable;)V
    .registers 2

    .line 186
    invoke-virtual {p0, p1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->addDisposable(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method static synthetic access$14400(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Lcom/keephealth/android/base/IBaseView;
    .registers 1

    .line 186
    iget-object p0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    return-object p0
.end method

.method static synthetic access$14500(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Lcom/keephealth/android/base/IBaseView;
    .registers 1

    .line 186
    iget-object p0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    return-object p0
.end method

.method static synthetic access$14600(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)I
    .registers 1

    .line 186
    iget p0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mWeight:I

    return p0
.end method

.method static synthetic access$14700(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Lcom/keephealth/android/base/IBaseView;
    .registers 1

    .line 186
    iget-object p0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    return-object p0
.end method

.method static synthetic access$14800(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Lcom/keephealth/android/base/IBaseView;
    .registers 1

    .line 186
    iget-object p0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    return-object p0
.end method

.method static synthetic access$14900(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Lcom/keephealth/android/base/IBaseView;
    .registers 1

    .line 186
    iget-object p0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Lcom/keephealth/android/base/IBaseView;
    .registers 1

    .line 186
    iget-object p0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    return-object p0
.end method

.method static synthetic access$15000(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Lcom/keephealth/android/base/IBaseView;
    .registers 1

    .line 186
    iget-object p0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    return-object p0
.end method

.method static synthetic access$15100(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Lcom/keephealth/android/base/IBaseView;
    .registers 1

    .line 186
    iget-object p0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    return-object p0
.end method

.method static synthetic access$15200(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;Lio/reactivex/disposables/Disposable;)V
    .registers 2

    .line 186
    invoke-virtual {p0, p1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->addDisposable(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method static synthetic access$15300(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Lcom/keephealth/android/base/IBaseView;
    .registers 1

    .line 186
    iget-object p0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    return-object p0
.end method

.method static synthetic access$15400(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Lcom/keephealth/android/base/IBaseView;
    .registers 1

    .line 186
    iget-object p0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    return-object p0
.end method

.method static synthetic access$15500(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Lcom/keephealth/android/base/IBaseView;
    .registers 1

    .line 186
    iget-object p0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    return-object p0
.end method

.method static synthetic access$15600(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Lcom/keephealth/android/base/IBaseView;
    .registers 1

    .line 186
    iget-object p0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;[B)V
    .registers 2

    .line 186
    invoke-direct {p0, p1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->handlerDeviceInfo([B)V

    return-void
.end method

.method static synthetic access$1700(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Lcom/keephealth/android/base/IBaseView;
    .registers 1

    .line 186
    iget-object p0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Lcom/keephealth/android/base/IBaseView;
    .registers 1

    .line 186
    iget-object p0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)V
    .registers 1

    .line 186
    invoke-direct {p0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->getPowerData()V

    return-void
.end method

.method static synthetic access$200(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Lcom/keephealth/android/base/IBaseView;
    .registers 1

    .line 186
    iget-object p0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Lcom/keephealth/android/model/bean/DeviceModel;
    .registers 1

    .line 186
    invoke-direct {p0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->creatDefultModel()Lcom/keephealth/android/model/bean/DeviceModel;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2100(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;Lcom/keephealth/android/model/bean/DeviceModel;)V
    .registers 2

    .line 186
    invoke-direct {p0, p1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->initMainSet(Lcom/keephealth/android/model/bean/DeviceModel;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;[B)I
    .registers 2

    .line 186
    invoke-direct {p0, p1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->handlerPower([B)I

    move-result p0

    return p0
.end method

.method static synthetic access$2300(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)V
    .registers 1

    .line 186
    invoke-direct {p0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->setDeviceDate()V

    return-void
.end method

.method static synthetic access$2400(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;[B)V
    .registers 2

    .line 186
    invoke-direct {p0, p1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->handlerDeviceState([B)V

    return-void
.end method

.method static synthetic access$2500(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;I)V
    .registers 2

    .line 186
    invoke-direct {p0, p1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->getCurrentStep(I)V

    return-void
.end method

.method static synthetic access$2600(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Lcom/keephealth/android/base/IBaseView;
    .registers 1

    .line 186
    iget-object p0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Lcom/keephealth/android/base/IBaseView;
    .registers 1

    .line 186
    iget-object p0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Lcom/keephealth/android/base/IBaseView;
    .registers 1

    .line 186
    iget-object p0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Lcom/keephealth/android/base/IBaseView;
    .registers 1

    .line 186
    iget-object p0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Lcom/keephealth/android/base/IBaseView;
    .registers 1

    .line 186
    iget-object p0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Z
    .registers 1

    .line 186
    iget-boolean p0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->isOpenSchedule:Z

    return p0
.end method

.method static synthetic access$3002(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;Z)Z
    .registers 2

    .line 186
    iput-boolean p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->isOpenSchedule:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Lcom/keephealth/android/base/IBaseView;
    .registers 1

    .line 186
    iget-object p0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    return-object p0
.end method

.method static synthetic access$3200(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;Lcom/keephealth/android/model/bean/DeviceModel;)V
    .registers 2

    .line 186
    invoke-direct {p0, p1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->glucosePower(Lcom/keephealth/android/model/bean/DeviceModel;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Z
    .registers 1

    .line 186
    iget-boolean p0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->isSendShedule:Z

    return p0
.end method

.method static synthetic access$3302(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;Z)Z
    .registers 2

    .line 186
    iput-boolean p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->isSendShedule:Z

    return p1
.end method

.method static synthetic access$3400(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Lcom/keephealth/android/base/IBaseView;
    .registers 1

    .line 186
    iget-object p0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    return-object p0
.end method

.method static synthetic access$3500(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Lcom/keephealth/android/base/IBaseView;
    .registers 1

    .line 186
    iget-object p0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    return-object p0
.end method

.method static synthetic access$3600(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)V
    .registers 1

    .line 186
    invoke-direct {p0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->getDeviceStateData()V

    return-void
.end method

.method static synthetic access$3700(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Lcom/keephealth/android/base/IBaseView;
    .registers 1

    .line 186
    iget-object p0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    return-object p0
.end method

.method static synthetic access$3800(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Lcom/keephealth/android/base/IBaseView;
    .registers 1

    .line 186
    iget-object p0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    return-object p0
.end method

.method static synthetic access$3900(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)V
    .registers 1

    .line 186
    invoke-direct {p0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->setUserInfo()V

    return-void
.end method

.method static synthetic access$400(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)V
    .registers 1

    .line 186
    invoke-direct {p0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->getCurrentHr()V

    return-void
.end method

.method static synthetic access$4000(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Lcom/keephealth/android/base/IBaseView;
    .registers 1

    .line 186
    iget-object p0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    return-object p0
.end method

.method static synthetic access$4100(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Lcom/keephealth/android/base/IBaseView;
    .registers 1

    .line 186
    iget-object p0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    return-object p0
.end method

.method static synthetic access$4200(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Lcom/keephealth/android/base/IBaseView;
    .registers 1

    .line 186
    iget-object p0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    return-object p0
.end method

.method static synthetic access$4300(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)V
    .registers 1

    .line 186
    invoke-direct {p0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->getTarget()V

    return-void
.end method

.method static synthetic access$4400(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Lcom/keephealth/android/base/IBaseView;
    .registers 1

    .line 186
    iget-object p0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    return-object p0
.end method

.method static synthetic access$4500(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Lcom/keephealth/android/base/IBaseView;
    .registers 1

    .line 186
    iget-object p0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    return-object p0
.end method

.method static synthetic access$4600(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)V
    .registers 1

    .line 186
    invoke-direct {p0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->getNotice()V

    return-void
.end method

.method static synthetic access$4700(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;[B)V
    .registers 2

    .line 186
    invoke-direct {p0, p1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->handlerTargeLongData([B)V

    return-void
.end method

.method static synthetic access$4800(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;[B)V
    .registers 2

    .line 186
    invoke-direct {p0, p1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->handlerTargeData([B)V

    return-void
.end method

.method static synthetic access$4900(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Lcom/keephealth/android/base/IBaseView;
    .registers 1

    .line 186
    iget-object p0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;Lcom/keephealth/android/greendao/bean/HealthHeartRate;)V
    .registers 2

    .line 186
    invoke-direct {p0, p1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->getCurrentTemp(Lcom/keephealth/android/greendao/bean/HealthHeartRate;)V

    return-void
.end method

.method static synthetic access$5000(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Lcom/keephealth/android/base/IBaseView;
    .registers 1

    .line 186
    iget-object p0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    return-object p0
.end method

.method static synthetic access$5100(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)V
    .registers 1

    .line 186
    invoke-direct {p0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->getHeartRong()V

    return-void
.end method

.method static synthetic access$5200(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Lcom/keephealth/android/base/IBaseView;
    .registers 1

    .line 186
    iget-object p0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    return-object p0
.end method

.method static synthetic access$5300(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Lcom/keephealth/android/base/IBaseView;
    .registers 1

    .line 186
    iget-object p0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    return-object p0
.end method

.method static synthetic access$5400(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)V
    .registers 1

    .line 186
    invoke-direct {p0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->getHeartOpen()V

    return-void
.end method

.method static synthetic access$5500(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Lcom/keephealth/android/base/IBaseView;
    .registers 1

    .line 186
    iget-object p0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    return-object p0
.end method

.method static synthetic access$5600(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Lcom/keephealth/android/base/IBaseView;
    .registers 1

    .line 186
    iget-object p0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    return-object p0
.end method

.method static synthetic access$5700(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)I
    .registers 1

    .line 186
    iget p0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->currentIndex:I

    return p0
.end method

.method static synthetic access$5702(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;I)I
    .registers 2

    .line 186
    iput p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->currentIndex:I

    return p1
.end method

.method static synthetic access$5708(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)I
    .registers 3

    .line 186
    iget v0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->currentIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->currentIndex:I

    return v0
.end method

.method static synthetic access$5800(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)I
    .registers 1

    .line 186
    iget p0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->distanDay:I

    return p0
.end method

.method static synthetic access$5802(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;I)I
    .registers 2

    .line 186
    iput p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->distanDay:I

    return p1
.end method

.method static synthetic access$5900(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)I
    .registers 1

    .line 186
    invoke-direct {p0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->getDistanceDay()I

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)V
    .registers 1

    .line 186
    invoke-direct {p0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->setDeviceState()V

    return-void
.end method

.method static synthetic access$6000(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)I
    .registers 1

    .line 186
    iget p0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mIndex:I

    return p0
.end method

.method static synthetic access$6002(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;I)I
    .registers 2

    .line 186
    iput p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mIndex:I

    return p1
.end method

.method static synthetic access$6008(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)I
    .registers 3

    .line 186
    iget v0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mIndex:I

    return v0
.end method

.method static synthetic access$6100(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)V
    .registers 1

    .line 186
    invoke-direct {p0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->getAlarmTask()V

    return-void
.end method

.method static synthetic access$6200(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Lcom/keephealth/android/base/IBaseView;
    .registers 1

    .line 186
    iget-object p0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    return-object p0
.end method

.method static synthetic access$6300(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Lcom/keephealth/android/base/IBaseView;
    .registers 1

    .line 186
    iget-object p0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    return-object p0
.end method

.method static synthetic access$6400(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;Z)V
    .registers 2

    .line 186
    invoke-direct {p0, p1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->syncStepHistory(Z)V

    return-void
.end method

.method static synthetic access$6500(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Lcom/keephealth/android/base/IBaseView;
    .registers 1

    .line 186
    iget-object p0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    return-object p0
.end method

.method static synthetic access$6600(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Lcom/keephealth/android/base/IBaseView;
    .registers 1

    .line 186
    iget-object p0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    return-object p0
.end method

.method static synthetic access$6700(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)V
    .registers 1

    .line 186
    invoke-direct {p0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->getNewHighPrecisionSleepOrHeart()V

    return-void
.end method

.method static synthetic access$6800(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Ljava/util/Calendar;
    .registers 1

    .line 186
    iget-object p0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->calendar:Ljava/util/Calendar;

    return-object p0
.end method

.method static synthetic access$6900(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Lcom/keephealth/android/base/IBaseView;
    .registers 1

    .line 186
    iget-object p0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Lcom/keephealth/android/util/ble/HealthHrDataHandler;
    .registers 1

    .line 186
    iget-object p0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->healthHrDataHandler:Lcom/keephealth/android/util/ble/HealthHrDataHandler;

    return-object p0
.end method

.method static synthetic access$7000(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Lcom/keephealth/android/base/IBaseView;
    .registers 1

    .line 186
    iget-object p0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    return-object p0
.end method

.method static synthetic access$7100(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Z
    .registers 1

    .line 186
    iget-boolean p0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->isHighSleep:Z

    return p0
.end method

.method static synthetic access$7102(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;Z)Z
    .registers 2

    .line 186
    iput-boolean p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->isHighSleep:Z

    return p1
.end method

.method static synthetic access$7200(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;Z)V
    .registers 2

    .line 186
    invoke-direct {p0, p1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->syncHeartHistory(Z)V

    return-void
.end method

.method static synthetic access$7300(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;Z)V
    .registers 2

    .line 186
    invoke-direct {p0, p1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->getHighPrecisionSleep(Z)V

    return-void
.end method

.method static synthetic access$7400(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Lcom/keephealth/android/base/IBaseView;
    .registers 1

    .line 186
    iget-object p0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    return-object p0
.end method

.method static synthetic access$7500(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Lcom/keephealth/android/base/IBaseView;
    .registers 1

    .line 186
    iget-object p0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    return-object p0
.end method

.method static synthetic access$7600(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Lcom/keephealth/android/base/IBaseView;
    .registers 1

    .line 186
    iget-object p0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    return-object p0
.end method

.method static synthetic access$7700(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Lcom/keephealth/android/base/IBaseView;
    .registers 1

    .line 186
    iget-object p0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    return-object p0
.end method

.method static synthetic access$7800(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;Z)V
    .registers 2

    .line 186
    invoke-direct {p0, p1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->syncHRVHistory(Z)V

    return-void
.end method

.method static synthetic access$7900(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;Z)V
    .registers 2

    .line 186
    invoke-direct {p0, p1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->syncTempHistory(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;Lcom/keephealth/android/greendao/bean/HealthHeartRate;)V
    .registers 2

    .line 186
    invoke-direct {p0, p1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->getCurrentHRV(Lcom/keephealth/android/greendao/bean/HealthHeartRate;)V

    return-void
.end method

.method static synthetic access$8000(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)V
    .registers 1

    .line 186
    invoke-direct {p0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->synchActiviy()V

    return-void
.end method

.method static synthetic access$8100(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Lcom/keephealth/android/base/IBaseView;
    .registers 1

    .line 186
    iget-object p0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    return-object p0
.end method

.method static synthetic access$8200(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Lcom/keephealth/android/base/IBaseView;
    .registers 1

    .line 186
    iget-object p0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    return-object p0
.end method

.method static synthetic access$8300(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Lcom/keephealth/android/base/IBaseView;
    .registers 1

    .line 186
    iget-object p0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    return-object p0
.end method

.method static synthetic access$8400(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Lcom/keephealth/android/base/IBaseView;
    .registers 1

    .line 186
    iget-object p0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    return-object p0
.end method

.method static synthetic access$8500(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Lcom/keephealth/android/util/ble/HRVDataHandler;
    .registers 1

    .line 186
    iget-object p0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->hrvDataHandler:Lcom/keephealth/android/util/ble/HRVDataHandler;

    return-object p0
.end method

.method static synthetic access$8600(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Lcom/keephealth/android/base/IBaseView;
    .registers 1

    .line 186
    iget-object p0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    return-object p0
.end method

.method static synthetic access$8700(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Lcom/keephealth/android/base/IBaseView;
    .registers 1

    .line 186
    iget-object p0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    return-object p0
.end method

.method static synthetic access$8800(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Lcom/keephealth/android/base/IBaseView;
    .registers 1

    .line 186
    iget-object p0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    return-object p0
.end method

.method static synthetic access$8900(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Lcom/keephealth/android/base/IBaseView;
    .registers 1

    .line 186
    iget-object p0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    return-object p0
.end method

.method static synthetic access$900(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Lcom/keephealth/android/base/IBaseView;
    .registers 1

    .line 186
    iget-object p0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    return-object p0
.end method

.method static synthetic access$9000(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Lcom/keephealth/android/util/ble/EcgDataHandler;
    .registers 1

    .line 186
    iget-object p0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->ecgDataHandler:Lcom/keephealth/android/util/ble/EcgDataHandler;

    return-object p0
.end method

.method static synthetic access$9100(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)V
    .registers 1

    .line 186
    invoke-direct {p0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->synchEcg()V

    return-void
.end method

.method static synthetic access$9200(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Lcom/keephealth/android/base/IBaseView;
    .registers 1

    .line 186
    iget-object p0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    return-object p0
.end method

.method static synthetic access$9300(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Lcom/keephealth/android/base/IBaseView;
    .registers 1

    .line 186
    iget-object p0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    return-object p0
.end method

.method static synthetic access$9400(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)V
    .registers 1

    .line 186
    invoke-direct {p0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->getDrinkWaterOpen()V

    return-void
.end method

.method static synthetic access$9500(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Lcom/keephealth/android/base/IBaseView;
    .registers 1

    .line 186
    iget-object p0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    return-object p0
.end method

.method static synthetic access$9600(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Lcom/keephealth/android/base/IBaseView;
    .registers 1

    .line 186
    iget-object p0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    return-object p0
.end method

.method static synthetic access$9700(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Lcom/keephealth/android/util/ble/WaterDataHandler;
    .registers 1

    .line 186
    iget-object p0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->waterDataHandler:Lcom/keephealth/android/util/ble/WaterDataHandler;

    return-object p0
.end method

.method static synthetic access$9800(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Lcom/keephealth/android/base/IBaseView;
    .registers 1

    .line 186
    iget-object p0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    return-object p0
.end method

.method static synthetic access$9900(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Lcom/keephealth/android/base/IBaseView;
    .registers 1

    .line 186
    iget-object p0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    return-object p0
.end method

.method private creatDefultModel()Lcom/keephealth/android/model/bean/DeviceModel;
    .registers 3

    .line 706
    new-instance v0, Lcom/keephealth/android/model/bean/DeviceModel;

    invoke-direct {v0}, Lcom/keephealth/android/model/bean/DeviceModel;-><init>()V

    const/4 v1, 0x1

    .line 707
    invoke-virtual {v0, v1}, Lcom/keephealth/android/model/bean/DeviceModel;->setFindBracelet(Z)V

    .line 708
    invoke-virtual {v0, v1}, Lcom/keephealth/android/model/bean/DeviceModel;->setMessagerNotification(Z)V

    .line 709
    invoke-virtual {v0, v1}, Lcom/keephealth/android/model/bean/DeviceModel;->setAlarm(Z)V

    .line 710
    invoke-virtual {v0, v1}, Lcom/keephealth/android/model/bean/DeviceModel;->setTargetReachingReminder(Z)V

    .line 711
    invoke-virtual {v0, v1}, Lcom/keephealth/android/model/bean/DeviceModel;->setPhoto(Z)V

    .line 712
    invoke-virtual {v0, v1}, Lcom/keephealth/android/model/bean/DeviceModel;->setReset(Z)V

    .line 713
    invoke-virtual {v0, v1}, Lcom/keephealth/android/model/bean/DeviceModel;->setHeart(Z)V

    .line 714
    invoke-virtual {v0, v1}, Lcom/keephealth/android/model/bean/DeviceModel;->setSleep(Z)V

    .line 715
    invoke-virtual {v0, v1}, Lcom/keephealth/android/model/bean/DeviceModel;->setSedentaryReminder(Z)V

    .line 716
    invoke-virtual {v0, v1}, Lcom/keephealth/android/model/bean/DeviceModel;->setWristScreen(Z)V

    .line 717
    invoke-virtual {v0, v1}, Lcom/keephealth/android/model/bean/DeviceModel;->setWomenHealth(Z)V

    .line 718
    invoke-virtual {v0, v1}, Lcom/keephealth/android/model/bean/DeviceModel;->setWeightRecord(Z)V

    .line 719
    invoke-virtual {v0, v1}, Lcom/keephealth/android/model/bean/DeviceModel;->setFamilyHealth(Z)V

    .line 720
    invoke-virtual {v0, v1}, Lcom/keephealth/android/model/bean/DeviceModel;->setTwitter(Z)V

    .line 721
    invoke-virtual {v0, v1}, Lcom/keephealth/android/model/bean/DeviceModel;->setSms(Z)V

    .line 722
    invoke-virtual {v0, v1}, Lcom/keephealth/android/model/bean/DeviceModel;->setLine(Z)V

    .line 723
    invoke-virtual {v0, v1}, Lcom/keephealth/android/model/bean/DeviceModel;->setWechat(Z)V

    .line 724
    invoke-virtual {v0, v1}, Lcom/keephealth/android/model/bean/DeviceModel;->setMessenger(Z)V

    .line 725
    invoke-virtual {v0, v1}, Lcom/keephealth/android/model/bean/DeviceModel;->setFacebook(Z)V

    .line 726
    invoke-virtual {v0, v1}, Lcom/keephealth/android/model/bean/DeviceModel;->setIncoming(Z)V

    .line 727
    invoke-virtual {v0, v1}, Lcom/keephealth/android/model/bean/DeviceModel;->setSkype(Z)V

    .line 728
    invoke-virtual {v0, v1}, Lcom/keephealth/android/model/bean/DeviceModel;->setInstagram(Z)V

    .line 729
    invoke-virtual {v0, v1}, Lcom/keephealth/android/model/bean/DeviceModel;->setEmail(Z)V

    .line 730
    invoke-virtual {v0, v1}, Lcom/keephealth/android/model/bean/DeviceModel;->setWhatsapp(Z)V

    .line 731
    invoke-virtual {v0, v1}, Lcom/keephealth/android/model/bean/DeviceModel;->setQq(Z)V

    .line 732
    invoke-virtual {v0, v1}, Lcom/keephealth/android/model/bean/DeviceModel;->setLinkedin(Z)V

    return-object v0
.end method

.method private getAlarmTask()V
    .registers 7

    const/4 v0, 0x0

    .line 1535
    iput v0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->currentIndex:I

    .line 1536
    new-instance v0, Lcom/keephealth/android/util/ble/AlarmDataHandler;

    invoke-direct {v0}, Lcom/keephealth/android/util/ble/AlarmDataHandler;-><init>()V

    .line 1537
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v1

    sget-object v2, Lcom/keephealth/android/util/ble/CmdHelper;->CMD_GET_ALARM:[B

    sget-object v3, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->SERVICE:Ljava/util/UUID;

    sget-object v4, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->WRITE:Ljava/util/UUID;

    new-instance v5, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$25;

    invoke-direct {v5, p0, v0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$25;-><init>(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;Lcom/keephealth/android/util/ble/AlarmDataHandler;)V

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([BLjava/util/UUID;Ljava/util/UUID;Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;)V

    return-void
.end method

.method private getCurrentHRV(Lcom/keephealth/android/greendao/bean/HealthHeartRate;)V
    .registers 7

    .line 387
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    invoke-static {}, Lcom/keephealth/android/util/ble/CmdHelper;->getHRV()[B

    move-result-object v1

    sget-object v2, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->SERVICE:Ljava/util/UUID;

    sget-object v3, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->WRITE:Ljava/util/UUID;

    new-instance v4, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$8;

    invoke-direct {v4, p0, p1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$8;-><init>(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;Lcom/keephealth/android/greendao/bean/HealthHeartRate;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([BLjava/util/UUID;Ljava/util/UUID;Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;)V

    return-void
.end method

.method private getCurrentHr()V
    .registers 6

    .line 323
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/keephealth/android/util/ble/CmdHelper;->getHeartRate(I)[B

    move-result-object v1

    sget-object v2, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->SERVICE:Ljava/util/UUID;

    sget-object v3, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->WRITE:Ljava/util/UUID;

    new-instance v4, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$6;

    invoke-direct {v4, p0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$6;-><init>(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([BLjava/util/UUID;Ljava/util/UUID;Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;)V

    return-void
.end method

.method private getCurrentStep(I)V
    .registers 6

    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getCurrentStep:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ggf3vv2"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 280
    sput-boolean p1, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenter:Z

    .line 281
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    sget-object v0, Lcom/keephealth/android/util/ble/CmdHelper;->CMD_GET_CURRENT_STEP:[B

    sget-object v1, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->SERVICE:Ljava/util/UUID;

    sget-object v2, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->WRITE:Ljava/util/UUID;

    new-instance v3, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$5;

    invoke-direct {v3, p0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$5;-><init>(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)V

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([BLjava/util/UUID;Ljava/util/UUID;Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;)V

    return-void
.end method

.method private getCurrentTemp(Lcom/keephealth/android/greendao/bean/HealthHeartRate;)V
    .registers 7

    .line 360
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    invoke-static {}, Lcom/keephealth/android/util/ble/CmdHelper;->getCurrentTemp()[B

    move-result-object v1

    sget-object v2, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->SERVICE:Ljava/util/UUID;

    sget-object v3, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->WRITE:Ljava/util/UUID;

    new-instance v4, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$7;

    invoke-direct {v4, p0, p1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$7;-><init>(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;Lcom/keephealth/android/greendao/bean/HealthHeartRate;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([BLjava/util/UUID;Ljava/util/UUID;Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;)V

    return-void
.end method

.method private getDeviceInfo()V
    .registers 6

    .line 429
    const-string v0, "ffr3ddft"

    const-string v1, "\u540c\u6b65\u8bbe\u5907\u72b6\u6001:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    const-string v0, "tty5rt"

    const-string v1, "\u540c\u6b65\u8bbe\u5907\u72b6\u6001..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    sget-object v1, Lcom/keephealth/android/util/ble/CmdHelper;->CMD_GET_DEVICE:[B

    sget-object v2, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->SERVICE:Ljava/util/UUID;

    sget-object v3, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->WRITE:Ljava/util/UUID;

    new-instance v4, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$9;

    invoke-direct {v4, p0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$9;-><init>(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([BLjava/util/UUID;Ljava/util/UUID;Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;)V

    return-void
.end method

.method private getDeviceStateData()V
    .registers 6

    .line 670
    const-string v0, "ffr3ddft"

    const-string v1, "getDeviceState:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    sget-object v1, Lcom/keephealth/android/util/ble/CmdHelper;->CMD_GET_DEVICE_STATE:[B

    sget-object v2, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->SERVICE:Ljava/util/UUID;

    sget-object v3, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->WRITE:Ljava/util/UUID;

    new-instance v4, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$14;

    invoke-direct {v4, p0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$14;-><init>(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([BLjava/util/UUID;Ljava/util/UUID;Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;)V

    return-void
.end method

.method private getDistanceDay()I
    .registers 6

    .line 1630
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "LAST_SYNCH_TIME"

    invoke-static {v0, v2, v1}, Lcom/keephealth/android/util/SharePreferenceUtils;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 1631
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const/16 v3, 0xb

    const/4 v4, 0x0

    .line 1632
    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    const/16 v3, 0xc

    .line 1633
    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    const/16 v3, 0xd

    .line 1634
    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 1635
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/32 v0, 0x5265c00

    div-long/2addr v2, v0

    long-to-int v0, v2

    const/4 v1, 0x1

    if-gez v0, :cond_38

    goto :goto_42

    :cond_38
    if-nez v0, :cond_3c

    const/4 v1, 0x2

    goto :goto_42

    :cond_3c
    const/4 v2, 0x6

    if-le v0, v2, :cond_41

    const/4 v1, 0x7

    goto :goto_42

    :cond_41
    add-int/2addr v1, v0

    .line 1645
    :goto_42
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "  --  "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "\u95f4\u9694\u5929\u6570\u6570\u636e"

    invoke-static {v2, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method private getDrinkWaterOpen()V
    .registers 7

    const/16 v0, 0x28

    .line 2457
    new-array v0, v0, [B

    const/4 v1, 0x1

    .line 2458
    iput-boolean v1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->isDrinkWaterOpen:Z

    .line 2459
    iput-boolean v1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->isFrist:Z

    .line 2460
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v1

    invoke-static {}, Lcom/keephealth/android/util/ble/CmdHelper;->getDrinkWater()[B

    move-result-object v2

    sget-object v3, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->SERVICE:Ljava/util/UUID;

    sget-object v4, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->WRITE:Ljava/util/UUID;

    new-instance v5, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$35;

    invoke-direct {v5, p0, v0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$35;-><init>(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;[B)V

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([BLjava/util/UUID;Ljava/util/UUID;Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;)V

    return-void
.end method

.method private getGesture()V
    .registers 6

    const/4 v0, 0x1

    .line 2413
    iput-boolean v0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->isGesture:Z

    .line 2414
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    invoke-static {}, Lcom/keephealth/android/util/ble/CmdHelper;->getGesture()[B

    move-result-object v1

    sget-object v2, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->SERVICE:Ljava/util/UUID;

    sget-object v3, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->WRITE:Ljava/util/UUID;

    new-instance v4, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$34;

    invoke-direct {v4, p0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$34;-><init>(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([BLjava/util/UUID;Ljava/util/UUID;Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;)V

    return-void
.end method

.method private getHeartOpen()V
    .registers 6

    .line 1499
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    sget-object v1, Lcom/keephealth/android/util/ble/CmdHelper;->CMD_GET_HART_OPEN:[B

    sget-object v2, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->SERVICE:Ljava/util/UUID;

    sget-object v3, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->WRITE:Ljava/util/UUID;

    new-instance v4, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$24;

    invoke-direct {v4, p0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$24;-><init>(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([BLjava/util/UUID;Ljava/util/UUID;Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;)V

    return-void
.end method

.method private getHeartRong()V
    .registers 6

    .line 1475
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    sget-object v1, Lcom/keephealth/android/util/ble/CmdHelper;->CMD_GET_HART_RONG:[B

    sget-object v2, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->SERVICE:Ljava/util/UUID;

    sget-object v3, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->WRITE:Ljava/util/UUID;

    new-instance v4, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$23;

    invoke-direct {v4, p0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$23;-><init>(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([BLjava/util/UUID;Ljava/util/UUID;Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;)V

    return-void
.end method

.method private getHighPrecisionSleep(Z)V
    .registers 7

    const/4 v0, 0x5

    if-eqz p1, :cond_12

    const/4 p1, 0x0

    .line 1825
    iput p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mIndex:I

    .line 1826
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->calendar:Ljava/util/Calendar;

    .line 1828
    iget v1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->distanDay:I

    neg-int v1, v1

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->add(II)V

    .line 1830
    :cond_12
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->calendar:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    .line 1831
    iget-object v2, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->calendar:Ljava/util/Calendar;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/2addr v2, v1

    .line 1832
    iget-object v3, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->calendar:Ljava/util/Calendar;

    invoke-virtual {v3, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 1833
    iput-boolean v1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->isHighSleep:Z

    .line 1834
    new-instance v1, Lcom/keephealth/android/util/ble/HealthSleepDataHandler;

    invoke-direct {v1}, Lcom/keephealth/android/util/ble/HealthSleepDataHandler;-><init>()V

    .line 1835
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v3

    invoke-static {p1, v2, v0}, Lcom/keephealth/android/util/ble/CmdHelper;->highSleep(III)[B

    move-result-object p1

    sget-object v0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->SERVICE:Ljava/util/UUID;

    sget-object v2, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->WRITE:Ljava/util/UUID;

    new-instance v4, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$29;

    invoke-direct {v4, p0, v1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$29;-><init>(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;Lcom/keephealth/android/util/ble/HealthSleepDataHandler;)V

    invoke-virtual {v3, p1, v0, v2, v4}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([BLjava/util/UUID;Ljava/util/UUID;Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;)V

    return-void
.end method

.method private getNewHighPrecisionSleepOrHeart()V
    .registers 3

    .line 1815
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/SPHelper;->getDeviceModel(Landroid/content/Context;)Lcom/keephealth/android/model/bean/DeviceModel;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_15

    .line 1816
    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/DeviceModel;->isHighPrecisionSleep()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1817
    invoke-direct {p0, v1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->getHighPrecisionSleep(Z)V

    goto :goto_18

    .line 1819
    :cond_15
    invoke-direct {p0, v1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->syncHeartHistory(Z)V

    :goto_18
    return-void
.end method

.method private getNotice()V
    .registers 6

    .line 1448
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    sget-object v1, Lcom/keephealth/android/util/ble/CmdHelper;->CMD_GET_NOTICE:[B

    sget-object v2, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->SERVICE:Ljava/util/UUID;

    sget-object v3, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->WRITE:Ljava/util/UUID;

    new-instance v4, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$22;

    invoke-direct {v4, p0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$22;-><init>(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([BLjava/util/UUID;Ljava/util/UUID;Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;)V

    return-void
.end method

.method private getPowerData()V
    .registers 4

    .line 623
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getDeviceState-DiscoverServiceUtils.discoverService():"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/keephealth/android/util/DiscoverServiceUtils;->discoverService()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "drer4re"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "AppApplication.comeDial:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Lcom/keephealth/android/app/AppApplication;->comeDial:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    invoke-static {}, Lcom/keephealth/android/util/DiscoverServiceUtils;->discoverService()Z

    move-result v0

    if-eqz v0, :cond_44

    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->comeDial:Z

    if-nez v0, :cond_44

    .line 627
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    sget-object v1, Lcom/keephealth/android/util/ble/CmdHelper;->CMD_GET_CURRENT_POWER:[B

    new-instance v2, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$13;

    invoke-direct {v2, p0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$13;-><init>(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)V

    invoke-virtual {v0, v1, v2}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([BLcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;)V

    :cond_44
    return-void
.end method

.method private getTarget()V
    .registers 6

    const/4 v0, 0x0

    .line 1316
    iput v0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->targatItem:I

    .line 1317
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    sget-object v1, Lcom/keephealth/android/util/ble/CmdHelper;->CMD_GET_TARGE:[B

    sget-object v2, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->SERVICE:Ljava/util/UUID;

    sget-object v3, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->WRITE:Ljava/util/UUID;

    new-instance v4, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$21;

    invoke-direct {v4, p0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$21;-><init>(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([BLjava/util/UUID;Ljava/util/UUID;Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;)V

    return-void
.end method

.method private glucosePower(Lcom/keephealth/android/model/bean/DeviceModel;)V
    .registers 2

    .line 1120
    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/DeviceModel;->isBloodGlucose()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 1121
    invoke-direct {p0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->postBloodGluCoseData()V

    goto :goto_d

    .line 1123
    :cond_a
    invoke-direct {p0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->getPowerData()V

    :goto_d
    return-void
.end method

.method private handleData([B)V
    .registers 18

    move-object/from16 v0, p1

    .line 2504
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u6570\u636ehandleData: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v2, 0xa

    aget-byte v3, v0, v2

    invoke-static {v3}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->Byte2Int(B)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " -- "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v4, 0xb

    aget-byte v5, v0, v4

    invoke-static {v5}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->Byte2Int(B)I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v3, 0xc

    aget-byte v5, v0, v3

    invoke-static {v5}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->Byte2Int(B)I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "\u559d\u6c34\u6570\u636e"

    invoke-static {v5, v1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 2505
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/gen/DaoSession;->getDrinkWaterGoalDao()Lcom/keephealth/android/greendao/gen/DrinkWaterGoalDao;

    move-result-object v1

    .line 2506
    aget-byte v5, v0, v2

    invoke-static {v5}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->Byte2Int(B)I

    move-result v5

    const/16 v10, 0xf

    const/16 v11, 0xd

    const v15, 0x7f10026c

    const v6, 0x7f10026b

    const v12, 0x7f10026a

    const/16 v7, 0xe

    const v13, 0x7f100269

    const v8, 0x7f100268

    const/4 v14, 0x0

    const/16 v9, 0xff

    if-ne v5, v9, :cond_17b

    aget-byte v5, v0, v4

    invoke-static {v5}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->Byte2Int(B)I

    move-result v5

    if-ne v5, v9, :cond_17b

    aget-byte v5, v0, v3

    invoke-static {v5}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->Byte2Int(B)I

    move-result v5

    if-ne v5, v9, :cond_17b

    aget-byte v5, v0, v11

    .line 2507
    invoke-static {v5}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->Byte2Int(B)I

    move-result v5

    if-ne v5, v9, :cond_17b

    aget-byte v5, v0, v7

    invoke-static {v5}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->Byte2Int(B)I

    move-result v5

    if-ne v5, v9, :cond_17b

    aget-byte v5, v0, v10

    invoke-static {v5}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->Byte2Int(B)I

    move-result v5

    if-ne v5, v9, :cond_17b

    .line 2508
    invoke-virtual {v1}, Lcom/keephealth/android/greendao/gen/DrinkWaterGoalDao;->deleteAll()V

    .line 2509
    sput-boolean v14, Lcom/keephealth/android/app/AppApplication;->isDrinkWaterOpen:Z

    const/16 v0, 0x708

    .line 2510
    invoke-static {v0}, Lcom/keephealth/android/util/SPHelper;->saveWaterGoal(I)V

    .line 2511
    new-instance v0, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;

    invoke-direct {v0}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;-><init>()V

    .line 2512
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->setName(Ljava/lang/String;)V

    const/16 v4, 0x8

    .line 2513
    invoke-virtual {v0, v4}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->setHour(I)V

    .line 2514
    invoke-virtual {v0, v14}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->setMinuter(I)V

    .line 2515
    invoke-virtual {v1, v0}, Lcom/keephealth/android/greendao/gen/DrinkWaterGoalDao;->save(Ljava/lang/Object;)V

    .line 2517
    new-instance v0, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;

    invoke-direct {v0}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;-><init>()V

    .line 2518
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->setName(Ljava/lang/String;)V

    .line 2519
    invoke-virtual {v0, v2}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->setHour(I)V

    .line 2520
    invoke-virtual {v0, v14}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->setMinuter(I)V

    .line 2521
    invoke-virtual {v1, v0}, Lcom/keephealth/android/greendao/gen/DrinkWaterGoalDao;->save(Ljava/lang/Object;)V

    .line 2523
    new-instance v0, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;

    invoke-direct {v0}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;-><init>()V

    .line 2524
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->setName(Ljava/lang/String;)V

    .line 2525
    invoke-virtual {v0, v3}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->setHour(I)V

    .line 2526
    invoke-virtual {v0, v14}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->setMinuter(I)V

    .line 2527
    invoke-virtual {v1, v0}, Lcom/keephealth/android/greendao/gen/DrinkWaterGoalDao;->save(Ljava/lang/Object;)V

    .line 2529
    new-instance v0, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;

    invoke-direct {v0}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;-><init>()V

    .line 2530
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->setName(Ljava/lang/String;)V

    .line 2531
    invoke-virtual {v0, v7}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->setHour(I)V

    .line 2532
    invoke-virtual {v0, v14}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->setMinuter(I)V

    .line 2533
    invoke-virtual {v1, v0}, Lcom/keephealth/android/greendao/gen/DrinkWaterGoalDao;->save(Ljava/lang/Object;)V

    .line 2535
    new-instance v0, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;

    invoke-direct {v0}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;-><init>()V

    .line 2536
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->setName(Ljava/lang/String;)V

    const/16 v2, 0x10

    .line 2537
    invoke-virtual {v0, v2}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->setHour(I)V

    .line 2538
    invoke-virtual {v0, v14}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->setMinuter(I)V

    .line 2539
    invoke-virtual {v1, v0}, Lcom/keephealth/android/greendao/gen/DrinkWaterGoalDao;->save(Ljava/lang/Object;)V

    .line 2541
    new-instance v0, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;

    invoke-direct {v0}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;-><init>()V

    .line 2542
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f10026d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->setName(Ljava/lang/String;)V

    const/16 v2, 0x12

    .line 2543
    invoke-virtual {v0, v2}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->setHour(I)V

    .line 2544
    invoke-virtual {v0, v14}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->setMinuter(I)V

    .line 2545
    invoke-virtual {v1, v0}, Lcom/keephealth/android/greendao/gen/DrinkWaterGoalDao;->save(Ljava/lang/Object;)V

    .line 2547
    new-instance v0, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;

    invoke-direct {v0}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;-><init>()V

    .line 2548
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f10026e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->setName(Ljava/lang/String;)V

    const/16 v2, 0x14

    .line 2549
    invoke-virtual {v0, v2}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->setHour(I)V

    .line 2550
    invoke-virtual {v0, v14}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->setMinuter(I)V

    .line 2551
    invoke-virtual {v1, v0}, Lcom/keephealth/android/greendao/gen/DrinkWaterGoalDao;->save(Ljava/lang/Object;)V

    .line 2553
    new-instance v0, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;

    invoke-direct {v0}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;-><init>()V

    .line 2554
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f10026f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->setName(Ljava/lang/String;)V

    const/16 v2, 0x16

    .line 2555
    invoke-virtual {v0, v2}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->setHour(I)V

    .line 2556
    invoke-virtual {v0, v14}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->setMinuter(I)V

    .line 2557
    invoke-virtual {v1, v0}, Lcom/keephealth/android/greendao/gen/DrinkWaterGoalDao;->save(Ljava/lang/Object;)V

    goto/16 :goto_3e6

    :cond_17b
    const/4 v5, 0x4

    .line 2559
    aget-byte v5, v0, v5

    and-int/2addr v5, v9

    const/4 v15, 0x1

    if-ne v5, v9, :cond_184

    move v5, v15

    goto :goto_185

    :cond_184
    move v5, v14

    :goto_185
    sput-boolean v5, Lcom/keephealth/android/app/AppApplication;->isDrinkWaterOpen:Z

    .line 2560
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v9, "\u662f\u5426\u5f00\u542f: "

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v9, Lcom/keephealth/android/app/AppApplication;->isDrinkWaterOpen:Z

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v9, "\u559d\u6c34\u63d0\u9192\u5f00\u5173"

    invoke-static {v9, v5}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x6

    .line 2561
    invoke-static {v0, v5, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v5

    invoke-static {v5}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToInt([B)I

    move-result v5

    invoke-static {v5}, Lcom/keephealth/android/util/SPHelper;->saveWaterGoal(I)V

    .line 2562
    invoke-virtual {v1}, Lcom/keephealth/android/greendao/gen/DrinkWaterGoalDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v5

    sget-object v9, Lcom/keephealth/android/greendao/gen/DrinkWaterGoalDao$Properties;->Name:Lorg/greenrobot/greendao/Property;

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v6

    new-array v9, v14, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v5, v6, v9}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;

    if-nez v5, :cond_1d5

    .line 2564
    invoke-virtual {v1}, Lcom/keephealth/android/greendao/gen/DrinkWaterGoalDao;->deleteAll()V

    .line 2565
    new-instance v5, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;

    invoke-direct {v5}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;-><init>()V

    .line 2567
    :cond_1d5
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->setName(Ljava/lang/String;)V

    .line 2568
    aget-byte v2, v0, v2

    invoke-virtual {v5, v2}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->setHour(I)V

    .line 2569
    aget-byte v2, v0, v4

    invoke-virtual {v5, v2}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->setMinuter(I)V

    .line 2570
    invoke-virtual {v1, v5}, Lcom/keephealth/android/greendao/gen/DrinkWaterGoalDao;->save(Ljava/lang/Object;)V

    .line 2572
    invoke-virtual {v1}, Lcom/keephealth/android/greendao/gen/DrinkWaterGoalDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    sget-object v4, Lcom/keephealth/android/greendao/gen/DrinkWaterGoalDao$Properties;->Name:Lorg/greenrobot/greendao/Property;

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v4

    new-array v5, v14, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v2, v4, v5}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;

    if-nez v2, :cond_216

    .line 2574
    new-instance v2, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;

    invoke-direct {v2}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;-><init>()V

    .line 2576
    :cond_216
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->setName(Ljava/lang/String;)V

    .line 2577
    aget-byte v3, v0, v3

    invoke-virtual {v2, v3}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->setHour(I)V

    .line 2578
    aget-byte v3, v0, v11

    invoke-virtual {v2, v3}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->setMinuter(I)V

    .line 2579
    invoke-virtual {v1, v2}, Lcom/keephealth/android/greendao/gen/DrinkWaterGoalDao;->save(Ljava/lang/Object;)V

    .line 2581
    invoke-virtual {v1}, Lcom/keephealth/android/greendao/gen/DrinkWaterGoalDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    sget-object v3, Lcom/keephealth/android/greendao/gen/DrinkWaterGoalDao$Properties;->Name:Lorg/greenrobot/greendao/Property;

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v3

    new-array v4, v14, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v2, v3, v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;

    if-nez v2, :cond_257

    .line 2583
    new-instance v2, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;

    invoke-direct {v2}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;-><init>()V

    .line 2585
    :cond_257
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->setName(Ljava/lang/String;)V

    .line 2586
    aget-byte v3, v0, v7

    invoke-virtual {v2, v3}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->setHour(I)V

    .line 2587
    aget-byte v3, v0, v10

    invoke-virtual {v2, v3}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->setMinuter(I)V

    .line 2588
    invoke-virtual {v1, v2}, Lcom/keephealth/android/greendao/gen/DrinkWaterGoalDao;->save(Ljava/lang/Object;)V

    .line 2590
    invoke-virtual {v1}, Lcom/keephealth/android/greendao/gen/DrinkWaterGoalDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    sget-object v3, Lcom/keephealth/android/greendao/gen/DrinkWaterGoalDao$Properties;->Name:Lorg/greenrobot/greendao/Property;

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f10026b

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v3

    new-array v4, v14, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v2, v3, v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;

    if-nez v2, :cond_29b

    .line 2592
    new-instance v2, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;

    invoke-direct {v2}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;-><init>()V

    .line 2594
    :cond_29b
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f10026b

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->setName(Ljava/lang/String;)V

    const/16 v3, 0x10

    .line 2595
    aget-byte v3, v0, v3

    invoke-virtual {v2, v3}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->setHour(I)V

    const/16 v3, 0x11

    .line 2596
    aget-byte v3, v0, v3

    invoke-virtual {v2, v3}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->setMinuter(I)V

    .line 2597
    invoke-virtual {v1, v2}, Lcom/keephealth/android/greendao/gen/DrinkWaterGoalDao;->save(Ljava/lang/Object;)V

    .line 2599
    invoke-virtual {v1}, Lcom/keephealth/android/greendao/gen/DrinkWaterGoalDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    sget-object v3, Lcom/keephealth/android/greendao/gen/DrinkWaterGoalDao$Properties;->Name:Lorg/greenrobot/greendao/Property;

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f10026c

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v3

    new-array v4, v14, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v2, v3, v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;

    if-nez v2, :cond_2e6

    .line 2601
    new-instance v2, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;

    invoke-direct {v2}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;-><init>()V

    .line 2603
    :cond_2e6
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f10026c

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->setName(Ljava/lang/String;)V

    const/16 v3, 0x12

    .line 2604
    aget-byte v3, v0, v3

    invoke-virtual {v2, v3}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->setHour(I)V

    const/16 v3, 0x13

    .line 2605
    aget-byte v3, v0, v3

    invoke-virtual {v2, v3}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->setMinuter(I)V

    .line 2606
    invoke-virtual {v1, v2}, Lcom/keephealth/android/greendao/gen/DrinkWaterGoalDao;->save(Ljava/lang/Object;)V

    .line 2608
    invoke-virtual {v1}, Lcom/keephealth/android/greendao/gen/DrinkWaterGoalDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    sget-object v3, Lcom/keephealth/android/greendao/gen/DrinkWaterGoalDao$Properties;->Name:Lorg/greenrobot/greendao/Property;

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f10026d

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v3

    new-array v4, v14, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v2, v3, v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;

    if-nez v2, :cond_331

    .line 2610
    new-instance v2, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;

    invoke-direct {v2}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;-><init>()V

    .line 2612
    :cond_331
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f10026d

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->setName(Ljava/lang/String;)V

    const/16 v3, 0x14

    .line 2613
    aget-byte v3, v0, v3

    invoke-virtual {v2, v3}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->setHour(I)V

    const/16 v3, 0x15

    .line 2614
    aget-byte v3, v0, v3

    invoke-virtual {v2, v3}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->setMinuter(I)V

    .line 2615
    invoke-virtual {v1, v2}, Lcom/keephealth/android/greendao/gen/DrinkWaterGoalDao;->save(Ljava/lang/Object;)V

    .line 2617
    invoke-virtual {v1}, Lcom/keephealth/android/greendao/gen/DrinkWaterGoalDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    sget-object v3, Lcom/keephealth/android/greendao/gen/DrinkWaterGoalDao$Properties;->Name:Lorg/greenrobot/greendao/Property;

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f10026e

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v3

    new-array v4, v14, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v2, v3, v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;

    if-nez v2, :cond_37c

    .line 2619
    new-instance v2, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;

    invoke-direct {v2}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;-><init>()V

    .line 2621
    :cond_37c
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f10026e

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->setName(Ljava/lang/String;)V

    const/16 v3, 0x16

    .line 2622
    aget-byte v3, v0, v3

    invoke-virtual {v2, v3}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->setHour(I)V

    const/16 v3, 0x17

    .line 2623
    aget-byte v3, v0, v3

    invoke-virtual {v2, v3}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->setMinuter(I)V

    .line 2624
    invoke-virtual {v1, v2}, Lcom/keephealth/android/greendao/gen/DrinkWaterGoalDao;->save(Ljava/lang/Object;)V

    .line 2626
    invoke-virtual {v1}, Lcom/keephealth/android/greendao/gen/DrinkWaterGoalDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    sget-object v3, Lcom/keephealth/android/greendao/gen/DrinkWaterGoalDao$Properties;->Name:Lorg/greenrobot/greendao/Property;

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f10026f

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v3

    new-array v4, v14, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v2, v3, v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;

    if-nez v2, :cond_3c7

    .line 2628
    new-instance v2, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;

    invoke-direct {v2}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;-><init>()V

    .line 2630
    :cond_3c7
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f10026f

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->setName(Ljava/lang/String;)V

    const/16 v3, 0x18

    .line 2631
    aget-byte v3, v0, v3

    invoke-virtual {v2, v3}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->setHour(I)V

    const/16 v3, 0x19

    .line 2632
    aget-byte v0, v0, v3

    invoke-virtual {v2, v0}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->setMinuter(I)V

    .line 2633
    invoke-virtual {v1, v2}, Lcom/keephealth/android/greendao/gen/DrinkWaterGoalDao;->save(Ljava/lang/Object;)V

    :goto_3e6
    return-void
.end method

.method private handlerDeviceInfo([B)V
    .registers 11

    .line 503
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x3

    const/16 v2, 0xb

    invoke-static {p1, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 504
    const-string v1, "\u8bbe\u5907\u578b\u53f7:"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "ffr3ddft"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0xd

    .line 505
    invoke-static {p1, v2, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    .line 506
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    .line 507
    aget-byte v5, v2, v4

    and-int/lit16 v5, v5, 0xff

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 508
    const-string v5, "."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x1

    .line 509
    aget-byte v6, v2, v5

    and-int/lit16 v7, v6, 0xff

    const/16 v8, 0xa

    if-ge v7, v8, :cond_45

    .line 510
    const-string v6, "0"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 511
    aget-byte v2, v2, v5

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_4a

    :cond_45
    and-int/lit16 v2, v6, 0xff

    .line 513
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 515
    :goto_4a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v6, 0x13

    .line 516
    invoke-static {p1, v1, v6}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    .line 517
    array-length v1, p1

    :goto_56
    if-ge v4, v1, :cond_6f

    aget-byte v6, p1, v4

    and-int/lit16 v6, v6, 0xff

    .line 518
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 519
    const-string v6, ":"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_56

    .line 521
    :cond_6f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    sub-int/2addr p1, v5

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 523
    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getBindBLEDevice()Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object p1

    if-nez p1, :cond_88

    .line 525
    new-instance p1, Lcom/keephealth/android/model/bean/BLEDevice;

    invoke-direct {p1}, Lcom/keephealth/android/model/bean/BLEDevice;-><init>()V

    .line 526
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceAddress:Ljava/lang/String;

    .line 528
    :cond_88
    iput-object v0, p1, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceProduct:Ljava/lang/String;

    .line 529
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceVersion:Ljava/lang/String;

    .line 530
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "bleName"

    invoke-static {v0, v1}, Lcom/keephealth/android/util/SharePreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 531
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bleAddress"

    invoke-static {v1, v2}, Lcom/keephealth/android/util/SharePreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 532
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_ac

    .line 533
    iput-object v0, p1, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceName:Ljava/lang/String;

    .line 535
    :cond_ac
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b4

    .line 536
    iput-object v1, p1, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceAddress:Ljava/lang/String;

    :cond_b4
    const/4 v0, 0x2

    .line 538
    invoke-static {p1, v0}, Lcom/keephealth/android/util/SPHelper;->saveBLEDevice(Lcom/keephealth/android/model/bean/BLEDevice;I)V

    .line 539
    iget-object v0, p1, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceProduct:Ljava/lang/String;

    .line 540
    const-string v1, "gfe332w"

    const-string v2, "UserHttp.requestByModel..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    new-instance v1, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$11;

    invoke-direct {v1, p0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$11;-><init>(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)V

    invoke-static {v0, v1}, Lcom/keephealth/android/model/net/http/UserHttp;->requestByModel(Ljava/lang/String;Lcom/keephealth/android/model/net/ApiCallback;)V

    .line 591
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sendDeviceInfo_jsonStr+token:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/app/AppApplication;->getUserBean()Lcom/keephealth/android/model/bean/UserBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/model/bean/UserBean;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FF543f3"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->getUserBean()Lcom/keephealth/android/model/bean/UserBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/UserBean;->getToken()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_16a

    .line 594
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "{\"model\":\""

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceProduct:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\",\"mac\":\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p1, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\",\"deviceType\":\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 595
    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/BLEDevice;->getDeviceType()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\",\"version\":\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p1, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceVersion:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\",\"name\":\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p1, p1, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\"}"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->jsonStrs:Ljava/lang/String;

    .line 596
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "sendDeviceInfo_jsonStr:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->jsonStrs:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    const-string p1, "application/json; charset=utf-8"

    invoke-static {p1}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object p1

    iget-object v0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->jsonStrs:Ljava/lang/String;

    invoke-static {p1, v0}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p1

    .line 599
    new-instance v0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$12;

    invoke-direct {v0, p0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$12;-><init>(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)V

    invoke-static {p1, v0}, Lcom/keephealth/android/model/net/http/UserHttp;->sendDeviceInfo(Lokhttp3/RequestBody;Lcom/keephealth/android/model/net/ApiCallback;)V

    :cond_16a
    return-void
.end method

.method private handlerDeviceState([B)V
    .registers 11

    .line 1153
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/keephealth/android/util/SPHelper;->getDeviceConfig(Landroid/content/Context;I)Lcom/keephealth/android/model/bean/DeviceConfig;

    move-result-object v0

    .line 1154
    iget-object v2, v0, Lcom/keephealth/android/model/bean/DeviceConfig;->deviceState:Lcom/keephealth/android/model/bean/DeviceState;

    .line 1155
    aget-byte v1, p1, v1

    const/4 v3, 0x4

    .line 1156
    aget-byte v3, p1, v3

    const/4 v4, 0x5

    .line 1157
    aget-byte v4, p1, v4

    const/16 v5, 0x9

    .line 1161
    aget-byte v5, p1, v5

    const/16 v6, 0xa

    .line 1162
    aget-byte v6, p1, v6

    const/16 v7, 0xb

    .line 1163
    aget-byte v7, p1, v7

    const/16 v8, 0xc

    .line 1164
    aget-byte v8, p1, v8

    iput v8, v2, Lcom/keephealth/android/model/bean/DeviceState;->handHabits:I

    .line 1166
    iput v1, v2, Lcom/keephealth/android/model/bean/DeviceState;->screenLight:I

    .line 1167
    iput v3, v2, Lcom/keephealth/android/model/bean/DeviceState;->screenTime:I

    .line 1168
    iput v4, v2, Lcom/keephealth/android/model/bean/DeviceState;->theme:I

    .line 1172
    iput v5, v2, Lcom/keephealth/android/model/bean/DeviceState;->upHander:I

    const/4 v1, 0x0

    const/4 v3, 0x1

    if-ne v6, v3, :cond_33

    move v4, v3

    goto :goto_34

    :cond_33
    move v4, v1

    .line 1173
    :goto_34
    iput-boolean v4, v0, Lcom/keephealth/android/model/bean/DeviceConfig;->isMusic:Z

    if-ne v7, v3, :cond_39

    move v1, v3

    .line 1174
    :cond_39
    iput-boolean v1, v0, Lcom/keephealth/android/model/bean/DeviceConfig;->isDisturbMode:Z

    const/16 v1, 0x11

    .line 1175
    aget-byte p1, p1, v1

    iput p1, v2, Lcom/keephealth/android/model/bean/DeviceState;->vibrateStrong:I

    .line 1176
    invoke-static {v0}, Lcom/keephealth/android/util/SPHelper;->saveDeviceConfig(Lcom/keephealth/android/model/bean/DeviceConfig;)V

    .line 1178
    sput-boolean v3, Lcom/keephealth/android/app/AppApplication;->isRefresh:Z

    return-void
.end method

.method private handlerPower([B)I
    .registers 6

    const/4 v0, 0x3

    .line 650
    array-length v1, p1

    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    const/4 v0, 0x0

    .line 652
    aget-byte p1, p1, v0

    const/16 v0, 0x64

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 653
    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getBindBLEDevice()Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object v0

    if-nez v0, :cond_1a

    .line 655
    new-instance v0, Lcom/keephealth/android/model/bean/BLEDevice;

    invoke-direct {v0}, Lcom/keephealth/android/model/bean/BLEDevice;-><init>()V

    .line 657
    :cond_1a
    iput p1, v0, Lcom/keephealth/android/model/bean/BLEDevice;->power:I

    .line 658
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bleName"

    invoke-static {v1, v2}, Lcom/keephealth/android/util/SharePreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 659
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "bleAddress"

    invoke-static {v2, v3}, Lcom/keephealth/android/util/SharePreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 660
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_38

    .line 661
    iput-object v1, v0, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceName:Ljava/lang/String;

    .line 663
    :cond_38
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_40

    .line 664
    iput-object v2, v0, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceAddress:Ljava/lang/String;

    :cond_40
    const/16 v1, 0x187

    .line 666
    invoke-static {v0, v1}, Lcom/keephealth/android/util/SPHelper;->saveBLEDevice(Lcom/keephealth/android/model/bean/BLEDevice;I)V

    return p1
.end method

.method private handlerTargeData([B)V
    .registers 10

    .line 1375
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "bs_size:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gtr4"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1376
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/keephealth/android/util/SPHelper;->getDeviceConfig(Landroid/content/Context;I)Lcom/keephealth/android/model/bean/DeviceConfig;

    move-result-object v0

    .line 1377
    new-instance v1, Lcom/keephealth/android/model/bean/Goal;

    invoke-direct {v1}, Lcom/keephealth/android/model/bean/Goal;-><init>()V

    const/4 v2, 0x3

    .line 1380
    new-array v3, v2, [B

    const/4 v4, 0x6

    .line 1381
    aget-byte v4, p1, v4

    const/4 v5, 0x2

    aput-byte v4, v3, v5

    const/4 v4, 0x7

    .line 1382
    aget-byte v4, p1, v4

    const/4 v6, 0x1

    aput-byte v4, v3, v6

    const/16 v4, 0x8

    .line 1383
    aget-byte v4, p1, v4

    const/4 v7, 0x0

    aput-byte v4, v3, v7

    .line 1384
    invoke-static {v3, v7, v2}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->BinToInt([BII)I

    move-result v3

    iput v3, v1, Lcom/keephealth/android/model/bean/Goal;->goalStep:I

    .line 1386
    new-array v3, v2, [B

    const/16 v4, 0xe

    .line 1387
    aget-byte v4, p1, v4

    aput-byte v4, v3, v5

    const/16 v4, 0xf

    .line 1388
    aget-byte v4, p1, v4

    aput-byte v4, v3, v6

    const/16 v4, 0x10

    .line 1389
    aget-byte v4, p1, v4

    aput-byte v4, v3, v7

    .line 1390
    invoke-static {v3, v7, v2}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->BinToInt([BII)I

    move-result v3

    iput v3, v1, Lcom/keephealth/android/model/bean/Goal;->goalDistanceKm:I

    .line 1392
    new-array v3, v2, [B

    const/16 v4, 0xa

    .line 1393
    aget-byte v4, p1, v4

    aput-byte v4, v3, v5

    const/16 v4, 0xb

    .line 1394
    aget-byte v4, p1, v4

    aput-byte v4, v3, v6

    const/16 v4, 0xc

    .line 1395
    aget-byte p1, p1, v4

    aput-byte p1, v3, v7

    .line 1396
    invoke-static {v3, v7, v2}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->BinToInt([BII)I

    move-result p1

    iput p1, v1, Lcom/keephealth/android/model/bean/Goal;->goalCal:I

    .line 1397
    iput-object v1, v0, Lcom/keephealth/android/model/bean/DeviceConfig;->goal:Lcom/keephealth/android/model/bean/Goal;

    .line 1398
    invoke-static {v0}, Lcom/keephealth/android/util/SPHelper;->saveDeviceConfig(Lcom/keephealth/android/model/bean/DeviceConfig;)V

    return-void
.end method

.method private handlerTargeLongData([B)V
    .registers 18

    move-object/from16 v0, p1

    .line 1402
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "bs_size:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "gtr4"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1403
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {v1, v2}, Lcom/keephealth/android/util/SPHelper;->getDeviceConfig(Landroid/content/Context;I)Lcom/keephealth/android/model/bean/DeviceConfig;

    move-result-object v1

    .line 1404
    new-instance v3, Lcom/keephealth/android/model/bean/Goal;

    invoke-direct {v3}, Lcom/keephealth/android/model/bean/Goal;-><init>()V

    const/4 v4, 0x3

    .line 1406
    aget-byte v5, v0, v4

    iput v5, v3, Lcom/keephealth/android/model/bean/Goal;->sleepstate:I

    const/4 v5, 0x4

    .line 1407
    aget-byte v5, v0, v5

    iput v5, v3, Lcom/keephealth/android/model/bean/Goal;->goalSleep:I

    const/4 v5, 0x5

    .line 1409
    aget-byte v5, v0, v5

    iput v5, v3, Lcom/keephealth/android/model/bean/Goal;->stepstate:I

    .line 1410
    new-array v5, v4, [B

    .line 1411
    aget-byte v2, v0, v2

    const/4 v6, 0x2

    aput-byte v2, v5, v6

    const/4 v2, 0x7

    .line 1412
    aget-byte v2, v0, v2

    const/4 v7, 0x1

    aput-byte v2, v5, v7

    const/16 v2, 0x8

    .line 1413
    aget-byte v2, v0, v2

    const/4 v8, 0x0

    aput-byte v2, v5, v8

    .line 1414
    invoke-static {v5, v8, v4}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->BinToInt([BII)I

    move-result v2

    iput v2, v3, Lcom/keephealth/android/model/bean/Goal;->goalStep:I

    const/16 v2, 0xd

    .line 1416
    aget-byte v2, v0, v2

    iput v2, v3, Lcom/keephealth/android/model/bean/Goal;->distancestate:I

    .line 1417
    new-array v2, v4, [B

    const/16 v5, 0xe

    .line 1418
    aget-byte v5, v0, v5

    aput-byte v5, v2, v6

    const/16 v5, 0xf

    .line 1419
    aget-byte v5, v0, v5

    aput-byte v5, v2, v7

    const/16 v5, 0x10

    .line 1420
    aget-byte v5, v0, v5

    aput-byte v5, v2, v8

    .line 1421
    invoke-static {v2, v8, v4}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->BinToInt([BII)I

    move-result v2

    iput v2, v3, Lcom/keephealth/android/model/bean/Goal;->goalDistanceKm:I

    const/16 v2, 0x9

    .line 1423
    aget-byte v2, v0, v2

    iput v2, v3, Lcom/keephealth/android/model/bean/Goal;->calstate:I

    .line 1424
    new-array v2, v4, [B

    const/16 v5, 0xa

    .line 1425
    aget-byte v5, v0, v5

    aput-byte v5, v2, v6

    const/16 v5, 0xb

    .line 1426
    aget-byte v5, v0, v5

    aput-byte v5, v2, v7

    const/16 v5, 0xc

    .line 1427
    aget-byte v5, v0, v5

    aput-byte v5, v2, v8

    .line 1428
    invoke-static {v2, v8, v4}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->BinToInt([BII)I

    move-result v2

    iput v2, v3, Lcom/keephealth/android/model/bean/Goal;->goalCal:I

    const/16 v2, 0x11

    .line 1430
    aget-byte v2, v0, v2

    iput v2, v3, Lcom/keephealth/android/model/bean/Goal;->exercisestate:I

    .line 1431
    new-array v2, v6, [B

    const/16 v4, 0x12

    .line 1432
    aget-byte v4, v0, v4

    aput-byte v4, v2, v7

    const/16 v4, 0x13

    .line 1433
    aget-byte v4, v0, v4

    aput-byte v4, v2, v8

    .line 1434
    invoke-static {v2, v8, v6}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->BinToInt([BII)I

    move-result v2

    iput v2, v3, Lcom/keephealth/android/model/bean/Goal;->goalExervice:I

    const/16 v2, 0x14

    .line 1436
    aget-byte v2, v0, v2

    iput v2, v3, Lcom/keephealth/android/model/bean/Goal;->standstate:I

    .line 1437
    new-array v2, v6, [B

    const/16 v4, 0x15

    .line 1438
    aget-byte v4, v0, v4

    aput-byte v4, v2, v7

    const/16 v4, 0x16

    .line 1439
    aget-byte v0, v0, v4

    aput-byte v0, v2, v8

    .line 1440
    invoke-static {v2, v8, v6}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->BinToInt([BII)I

    move-result v0

    iput v0, v3, Lcom/keephealth/android/model/bean/Goal;->goalStand:I

    .line 1441
    iput-object v3, v1, Lcom/keephealth/android/model/bean/DeviceConfig;->goal:Lcom/keephealth/android/model/bean/Goal;

    .line 1442
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "send_characteristic:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v3, Lcom/keephealth/android/model/bean/Goal;->sleepstate:I

    iget v5, v3, Lcom/keephealth/android/model/bean/Goal;->goalSleep:I

    iget v6, v3, Lcom/keephealth/android/model/bean/Goal;->stepstate:I

    iget v7, v3, Lcom/keephealth/android/model/bean/Goal;->goalStep:I

    iget v8, v3, Lcom/keephealth/android/model/bean/Goal;->calstate:I

    iget v9, v3, Lcom/keephealth/android/model/bean/Goal;->goalCal:I

    iget v10, v3, Lcom/keephealth/android/model/bean/Goal;->distancestate:I

    iget v11, v3, Lcom/keephealth/android/model/bean/Goal;->goalDistanceKm:I

    iget v12, v3, Lcom/keephealth/android/model/bean/Goal;->exercisestate:I

    iget v13, v3, Lcom/keephealth/android/model/bean/Goal;->exercisestate:I

    iget v14, v3, Lcom/keephealth/android/model/bean/Goal;->standstate:I

    iget v15, v3, Lcom/keephealth/android/model/bean/Goal;->goalStand:I

    invoke-static/range {v4 .. v15}, Lcom/keephealth/android/util/ble/CmdHelper;->setTarget(IIIIIIIIIIII)[B

    move-result-object v2

    invoke-static {v2}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    const-string v3, " "

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "\u8bbe\u7f6e\u76ee\u6807"

    invoke-static {v2, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1444
    invoke-static {v1}, Lcom/keephealth/android/util/SPHelper;->saveDeviceConfig(Lcom/keephealth/android/model/bean/DeviceConfig;)V

    return-void
.end method

.method private initMainSet(Lcom/keephealth/android/model/bean/DeviceModel;)V
    .registers 49

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 740
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/keephealth/android/util/SPHelper;->getDeviceConfig(Landroid/content/Context;I)Lcom/keephealth/android/model/bean/DeviceConfig;

    move-result-object v2

    iput-object v2, v0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->config:Lcom/keephealth/android/model/bean/DeviceConfig;

    if-eqz v1, :cond_39

    .line 743
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/keephealth/android/model/bean/DeviceModel;->isCalorieGoal()Z

    move-result v4

    iput-boolean v4, v2, Lcom/keephealth/android/app/AppApplication;->calorieGoal:Z

    .line 744
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/keephealth/android/model/bean/DeviceModel;->isPedometerGoal()Z

    move-result v4

    iput-boolean v4, v2, Lcom/keephealth/android/app/AppApplication;->pedometerGoal:Z

    .line 745
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/keephealth/android/model/bean/DeviceModel;->isExerciseDurationGoal()Z

    move-result v4

    iput-boolean v4, v2, Lcom/keephealth/android/app/AppApplication;->exerciseDurationGoal:Z

    .line 746
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/keephealth/android/model/bean/DeviceModel;->isStandingDurationGoal()Z

    move-result v4

    iput-boolean v4, v2, Lcom/keephealth/android/app/AppApplication;->standingDurationGoal:Z

    .line 750
    :cond_39
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/keephealth/android/util/SPHelper;->saveDeviceModel(Lcom/keephealth/android/model/bean/DeviceModel;Landroid/content/Context;)V

    .line 751
    invoke-virtual/range {p1 .. p1}, Lcom/keephealth/android/model/bean/DeviceModel;->isDeviceLanguage()Z

    move-result v2

    if-nez v2, :cond_83

    .line 752
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/app/AppApplication;->getUserBean()Lcom/keephealth/android/model/bean/UserBean;

    move-result-object v2

    const/4 v4, -0x1

    .line 753
    invoke-virtual {v2, v4}, Lcom/keephealth/android/model/bean/UserBean;->setLanguage(I)V

    .line 754
    invoke-static {v2}, Lcom/keephealth/android/util/SPHelper;->saveUserBean(Lcom/keephealth/android/model/bean/UserBean;)V

    .line 756
    invoke-virtual {v2}, Lcom/keephealth/android/model/bean/UserBean;->getWeight()F

    move-result v4

    invoke-virtual {v2, v4}, Lcom/keephealth/android/model/bean/UserBean;->setWeight(F)V

    .line 757
    invoke-virtual {v2}, Lcom/keephealth/android/model/bean/UserBean;->getWeight()F

    move-result v4

    float-to-int v4, v4

    iput v4, v0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mWeight:I

    const/16 v5, 0x12d

    if-le v4, v5, :cond_78

    .line 759
    div-int/lit8 v4, v4, 0xa

    iput v4, v0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mWeight:I

    int-to-float v4, v4

    .line 760
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {v2, v4}, Lcom/keephealth/android/model/bean/UserBean;->setWeight(F)V

    goto :goto_7c

    :cond_78
    mul-int/lit8 v4, v4, 0xa

    .line 762
    iput v4, v0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mWeight:I

    .line 764
    :goto_7c
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/keephealth/android/app/AppApplication;->setUserBean(Lcom/keephealth/android/model/bean/UserBean;)V

    .line 766
    :cond_83
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/greendao/gen/DaoSession;->getMainMenuSetDao()Lcom/keephealth/android/greendao/gen/MainMenuSetDao;

    move-result-object v2

    .line 767
    invoke-virtual {v2}, Lcom/keephealth/android/greendao/gen/MainMenuSetDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v4

    invoke-virtual {v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v4

    const-wide/16 v9, 0xb

    const-wide/16 v11, 0xa

    const-wide/16 v13, 0x9

    const-wide/16 v15, 0x8

    const-wide/16 v17, 0x7

    const-wide/16 v19, 0x6

    const-wide/16 v21, 0x5

    const-wide/16 v23, 0x4

    const-wide/16 v25, 0x3

    const-wide/16 v27, 0x2

    const-wide/16 v29, 0xe

    const-wide/16 v31, 0x10

    const/4 v5, 0x0

    if-eqz v4, :cond_500

    .line 769
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_ba

    goto/16 :goto_500

    .line 840
    :cond_ba
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "mainMenuSets.get(0).getOrder(): "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/keephealth/android/ui/main/bean/MainMenuSet;

    invoke-virtual {v7}, Lcom/keephealth/android/ui/main/bean/MainMenuSet;->getOrder()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "\u4e3b\u83dc\u5355\u5361\u7247"

    invoke-static {v7, v6}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 842
    invoke-virtual/range {p1 .. p1}, Lcom/keephealth/android/model/bean/DeviceModel;->isClassSchedule()Z

    move-result v6

    if-eqz v6, :cond_116

    .line 843
    invoke-virtual {v2}, Lcom/keephealth/android/greendao/gen/MainMenuSetDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v6

    sget-object v7, Lcom/keephealth/android/greendao/gen/MainMenuSetDao$Properties;->Id:Lorg/greenrobot/greendao/Property;

    invoke-static/range {v31 .. v32}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v7

    new-array v8, v5, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v6, v7, v8}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v6

    invoke-virtual {v6}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/keephealth/android/ui/main/bean/MainMenuSet;

    if-nez v6, :cond_11d

    .line 845
    new-instance v6, Lcom/keephealth/android/ui/main/bean/MainMenuSet;

    invoke-static/range {v31 .. v32}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v34

    const v38, 0x7f100608

    const/16 v39, 0x0

    const/16 v35, 0x1

    const-wide/16 v36, 0x0

    move-object/from16 v33, v6

    invoke-direct/range {v33 .. v39}, Lcom/keephealth/android/ui/main/bean/MainMenuSet;-><init>(Ljava/lang/Long;ZJII)V

    .line 846
    new-array v7, v3, [Lcom/keephealth/android/ui/main/bean/MainMenuSet;

    aput-object v6, v7, v5

    invoke-virtual {v2, v7}, Lcom/keephealth/android/greendao/gen/MainMenuSetDao;->insertInTx([Ljava/lang/Object;)V

    goto :goto_11d

    .line 849
    :cond_116
    invoke-static/range {v31 .. v32}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/keephealth/android/greendao/gen/MainMenuSetDao;->deleteByKey(Ljava/lang/Object;)V

    .line 851
    :cond_11d
    :goto_11d
    invoke-virtual/range {p1 .. p1}, Lcom/keephealth/android/model/bean/DeviceModel;->isTaskAndRewards()Z

    move-result v6

    if-eqz v6, :cond_15b

    .line 852
    invoke-virtual {v2}, Lcom/keephealth/android/greendao/gen/MainMenuSetDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v6

    sget-object v7, Lcom/keephealth/android/greendao/gen/MainMenuSetDao$Properties;->Id:Lorg/greenrobot/greendao/Property;

    invoke-static/range {v29 .. v30}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v7

    new-array v8, v5, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v6, v7, v8}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v6

    invoke-virtual {v6}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/keephealth/android/ui/main/bean/MainMenuSet;

    if-nez v6, :cond_162

    .line 854
    new-instance v6, Lcom/keephealth/android/ui/main/bean/MainMenuSet;

    invoke-static/range {v29 .. v30}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v34

    const v38, 0x7f100736

    const/16 v39, 0x0

    const/16 v35, 0x1

    const-wide/16 v36, 0x0

    move-object/from16 v33, v6

    invoke-direct/range {v33 .. v39}, Lcom/keephealth/android/ui/main/bean/MainMenuSet;-><init>(Ljava/lang/Long;ZJII)V

    .line 855
    new-array v7, v3, [Lcom/keephealth/android/ui/main/bean/MainMenuSet;

    aput-object v6, v7, v5

    invoke-virtual {v2, v7}, Lcom/keephealth/android/greendao/gen/MainMenuSetDao;->insertInTx([Ljava/lang/Object;)V

    goto :goto_162

    .line 858
    :cond_15b
    invoke-static/range {v29 .. v30}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/keephealth/android/greendao/gen/MainMenuSetDao;->deleteByKey(Ljava/lang/Object;)V

    .line 861
    :cond_162
    :goto_162
    invoke-virtual/range {p1 .. p1}, Lcom/keephealth/android/model/bean/DeviceModel;->isTemperature()Z

    move-result v6

    if-eqz v6, :cond_1a8

    .line 862
    invoke-virtual {v2}, Lcom/keephealth/android/greendao/gen/MainMenuSetDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v6

    sget-object v7, Lcom/keephealth/android/greendao/gen/MainMenuSetDao$Properties;->Id:Lorg/greenrobot/greendao/Property;

    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v7

    new-array v8, v5, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v6, v7, v8}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v6

    invoke-virtual {v6}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/keephealth/android/ui/main/bean/MainMenuSet;

    if-nez v6, :cond_1af

    .line 864
    new-instance v6, Lcom/keephealth/android/ui/main/bean/MainMenuSet;

    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v34

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/keephealth/android/ui/main/bean/MainMenuSet;

    invoke-virtual {v7}, Lcom/keephealth/android/ui/main/bean/MainMenuSet;->getOrder()I

    move-result v39

    const/16 v35, 0x1

    const-wide/16 v36, 0x0

    const v38, 0x7f10038f

    move-object/from16 v33, v6

    invoke-direct/range {v33 .. v39}, Lcom/keephealth/android/ui/main/bean/MainMenuSet;-><init>(Ljava/lang/Long;ZJII)V

    .line 865
    new-array v7, v3, [Lcom/keephealth/android/ui/main/bean/MainMenuSet;

    aput-object v6, v7, v5

    invoke-virtual {v2, v7}, Lcom/keephealth/android/greendao/gen/MainMenuSetDao;->insertInTx([Ljava/lang/Object;)V

    goto :goto_1af

    .line 868
    :cond_1a8
    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/keephealth/android/greendao/gen/MainMenuSetDao;->deleteByKey(Ljava/lang/Object;)V

    .line 870
    :cond_1af
    :goto_1af
    invoke-virtual/range {p1 .. p1}, Lcom/keephealth/android/model/bean/DeviceModel;->isHeart()Z

    move-result v6

    if-eqz v6, :cond_1f5

    .line 871
    invoke-virtual {v2}, Lcom/keephealth/android/greendao/gen/MainMenuSetDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v6

    sget-object v7, Lcom/keephealth/android/greendao/gen/MainMenuSetDao$Properties;->Id:Lorg/greenrobot/greendao/Property;

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v7

    new-array v8, v5, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v6, v7, v8}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v6

    invoke-virtual {v6}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/keephealth/android/ui/main/bean/MainMenuSet;

    if-nez v6, :cond_1fc

    .line 873
    new-instance v6, Lcom/keephealth/android/ui/main/bean/MainMenuSet;

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v34

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/keephealth/android/ui/main/bean/MainMenuSet;

    invoke-virtual {v7}, Lcom/keephealth/android/ui/main/bean/MainMenuSet;->getOrder()I

    move-result v39

    const/16 v35, 0x1

    const-wide/16 v36, 0x0

    const v38, 0x7f100321

    move-object/from16 v33, v6

    invoke-direct/range {v33 .. v39}, Lcom/keephealth/android/ui/main/bean/MainMenuSet;-><init>(Ljava/lang/Long;ZJII)V

    .line 874
    new-array v7, v3, [Lcom/keephealth/android/ui/main/bean/MainMenuSet;

    aput-object v6, v7, v5

    invoke-virtual {v2, v7}, Lcom/keephealth/android/greendao/gen/MainMenuSetDao;->insertInTx([Ljava/lang/Object;)V

    goto :goto_1fc

    .line 877
    :cond_1f5
    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/keephealth/android/greendao/gen/MainMenuSetDao;->deleteByKey(Ljava/lang/Object;)V

    .line 879
    :cond_1fc
    :goto_1fc
    invoke-virtual/range {p1 .. p1}, Lcom/keephealth/android/model/bean/DeviceModel;->isSleep()Z

    move-result v6

    if-eqz v6, :cond_242

    .line 880
    invoke-virtual {v2}, Lcom/keephealth/android/greendao/gen/MainMenuSetDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v6

    sget-object v7, Lcom/keephealth/android/greendao/gen/MainMenuSetDao$Properties;->Id:Lorg/greenrobot/greendao/Property;

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v7

    new-array v8, v5, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v6, v7, v8}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v6

    invoke-virtual {v6}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/keephealth/android/ui/main/bean/MainMenuSet;

    if-nez v6, :cond_249

    .line 882
    new-instance v6, Lcom/keephealth/android/ui/main/bean/MainMenuSet;

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/keephealth/android/ui/main/bean/MainMenuSet;

    invoke-virtual {v7}, Lcom/keephealth/android/ui/main/bean/MainMenuSet;->getOrder()I

    move-result v31

    const/16 v27, 0x1

    const-wide/16 v28, 0x0

    const v30, 0x7f1001e4

    move-object/from16 v25, v6

    invoke-direct/range {v25 .. v31}, Lcom/keephealth/android/ui/main/bean/MainMenuSet;-><init>(Ljava/lang/Long;ZJII)V

    .line 883
    new-array v7, v3, [Lcom/keephealth/android/ui/main/bean/MainMenuSet;

    aput-object v6, v7, v5

    invoke-virtual {v2, v7}, Lcom/keephealth/android/greendao/gen/MainMenuSetDao;->insertInTx([Ljava/lang/Object;)V

    goto :goto_249

    .line 886
    :cond_242
    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/keephealth/android/greendao/gen/MainMenuSetDao;->deleteByKey(Ljava/lang/Object;)V

    .line 889
    :cond_249
    :goto_249
    invoke-virtual/range {p1 .. p1}, Lcom/keephealth/android/model/bean/DeviceModel;->isBloodpressure()Z

    move-result v6

    if-eqz v6, :cond_28f

    .line 890
    invoke-virtual {v2}, Lcom/keephealth/android/greendao/gen/MainMenuSetDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v6

    sget-object v7, Lcom/keephealth/android/greendao/gen/MainMenuSetDao$Properties;->Id:Lorg/greenrobot/greendao/Property;

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v7

    new-array v8, v5, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v6, v7, v8}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v6

    invoke-virtual {v6}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/keephealth/android/ui/main/bean/MainMenuSet;

    if-nez v6, :cond_296

    .line 892
    new-instance v6, Lcom/keephealth/android/ui/main/bean/MainMenuSet;

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/keephealth/android/ui/main/bean/MainMenuSet;

    invoke-virtual {v7}, Lcom/keephealth/android/ui/main/bean/MainMenuSet;->getOrder()I

    move-result v29

    const/16 v25, 0x1

    const-wide/16 v26, 0x0

    const v28, 0x7f100178

    move-object/from16 v23, v6

    invoke-direct/range {v23 .. v29}, Lcom/keephealth/android/ui/main/bean/MainMenuSet;-><init>(Ljava/lang/Long;ZJII)V

    .line 893
    new-array v7, v3, [Lcom/keephealth/android/ui/main/bean/MainMenuSet;

    aput-object v6, v7, v5

    invoke-virtual {v2, v7}, Lcom/keephealth/android/greendao/gen/MainMenuSetDao;->insertInTx([Ljava/lang/Object;)V

    goto :goto_296

    .line 896
    :cond_28f
    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/keephealth/android/greendao/gen/MainMenuSetDao;->deleteByKey(Ljava/lang/Object;)V

    .line 898
    :cond_296
    :goto_296
    invoke-virtual/range {p1 .. p1}, Lcom/keephealth/android/model/bean/DeviceModel;->isBloodoxygen()Z

    move-result v6

    if-eqz v6, :cond_2dc

    .line 899
    invoke-virtual {v2}, Lcom/keephealth/android/greendao/gen/MainMenuSetDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v6

    sget-object v7, Lcom/keephealth/android/greendao/gen/MainMenuSetDao$Properties;->Id:Lorg/greenrobot/greendao/Property;

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v7

    new-array v8, v5, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v6, v7, v8}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v6

    invoke-virtual {v6}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/keephealth/android/ui/main/bean/MainMenuSet;

    if-nez v6, :cond_2e3

    .line 901
    new-instance v6, Lcom/keephealth/android/ui/main/bean/MainMenuSet;

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/keephealth/android/ui/main/bean/MainMenuSet;

    invoke-virtual {v7}, Lcom/keephealth/android/ui/main/bean/MainMenuSet;->getOrder()I

    move-result v27

    const/16 v23, 0x1

    const-wide/16 v24, 0x0

    const v26, 0x7f100484

    move-object/from16 v21, v6

    invoke-direct/range {v21 .. v27}, Lcom/keephealth/android/ui/main/bean/MainMenuSet;-><init>(Ljava/lang/Long;ZJII)V

    .line 902
    new-array v7, v3, [Lcom/keephealth/android/ui/main/bean/MainMenuSet;

    aput-object v6, v7, v5

    invoke-virtual {v2, v7}, Lcom/keephealth/android/greendao/gen/MainMenuSetDao;->insertInTx([Ljava/lang/Object;)V

    goto :goto_2e3

    .line 905
    :cond_2dc
    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/keephealth/android/greendao/gen/MainMenuSetDao;->deleteByKey(Ljava/lang/Object;)V

    .line 908
    :cond_2e3
    :goto_2e3
    invoke-virtual/range {p1 .. p1}, Lcom/keephealth/android/model/bean/DeviceModel;->isDrinkingWaterMode()Z

    move-result v6

    if-eqz v6, :cond_329

    .line 909
    invoke-virtual {v2}, Lcom/keephealth/android/greendao/gen/MainMenuSetDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v6

    sget-object v7, Lcom/keephealth/android/greendao/gen/MainMenuSetDao$Properties;->Id:Lorg/greenrobot/greendao/Property;

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v7

    new-array v8, v5, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v6, v7, v8}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v6

    invoke-virtual {v6}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/keephealth/android/ui/main/bean/MainMenuSet;

    if-nez v6, :cond_330

    .line 911
    new-instance v6, Lcom/keephealth/android/ui/main/bean/MainMenuSet;

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/keephealth/android/ui/main/bean/MainMenuSet;

    invoke-virtual {v7}, Lcom/keephealth/android/ui/main/bean/MainMenuSet;->getOrder()I

    move-result v25

    const/16 v21, 0x1

    const-wide/16 v22, 0x0

    const v24, 0x7f100749

    move-object/from16 v19, v6

    invoke-direct/range {v19 .. v25}, Lcom/keephealth/android/ui/main/bean/MainMenuSet;-><init>(Ljava/lang/Long;ZJII)V

    .line 912
    new-array v7, v3, [Lcom/keephealth/android/ui/main/bean/MainMenuSet;

    aput-object v6, v7, v5

    invoke-virtual {v2, v7}, Lcom/keephealth/android/greendao/gen/MainMenuSetDao;->insertInTx([Ljava/lang/Object;)V

    goto :goto_330

    .line 915
    :cond_329
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/keephealth/android/greendao/gen/MainMenuSetDao;->deleteByKey(Ljava/lang/Object;)V

    .line 917
    :cond_330
    :goto_330
    invoke-virtual/range {p1 .. p1}, Lcom/keephealth/android/model/bean/DeviceModel;->isWeightRecord()Z

    move-result v6

    if-eqz v6, :cond_376

    .line 918
    invoke-virtual {v2}, Lcom/keephealth/android/greendao/gen/MainMenuSetDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v6

    sget-object v7, Lcom/keephealth/android/greendao/gen/MainMenuSetDao$Properties;->Id:Lorg/greenrobot/greendao/Property;

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v7

    new-array v8, v5, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v6, v7, v8}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v6

    invoke-virtual {v6}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/keephealth/android/ui/main/bean/MainMenuSet;

    if-nez v6, :cond_37d

    .line 920
    new-instance v6, Lcom/keephealth/android/ui/main/bean/MainMenuSet;

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/keephealth/android/ui/main/bean/MainMenuSet;

    invoke-virtual {v7}, Lcom/keephealth/android/ui/main/bean/MainMenuSet;->getOrder()I

    move-result v23

    const/16 v19, 0x1

    const-wide/16 v20, 0x0

    const v22, 0x7f1007b0

    move-object/from16 v17, v6

    invoke-direct/range {v17 .. v23}, Lcom/keephealth/android/ui/main/bean/MainMenuSet;-><init>(Ljava/lang/Long;ZJII)V

    .line 921
    new-array v7, v3, [Lcom/keephealth/android/ui/main/bean/MainMenuSet;

    aput-object v6, v7, v5

    invoke-virtual {v2, v7}, Lcom/keephealth/android/greendao/gen/MainMenuSetDao;->insertInTx([Ljava/lang/Object;)V

    goto :goto_37d

    .line 924
    :cond_376
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/keephealth/android/greendao/gen/MainMenuSetDao;->deleteByKey(Ljava/lang/Object;)V

    .line 926
    :cond_37d
    :goto_37d
    invoke-virtual/range {p1 .. p1}, Lcom/keephealth/android/model/bean/DeviceModel;->isWomenHealth()Z

    move-result v6

    if-eqz v6, :cond_3c2

    .line 927
    invoke-virtual {v2}, Lcom/keephealth/android/greendao/gen/MainMenuSetDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v6

    sget-object v7, Lcom/keephealth/android/greendao/gen/MainMenuSetDao$Properties;->Id:Lorg/greenrobot/greendao/Property;

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v7

    new-array v8, v5, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v6, v7, v8}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v6

    invoke-virtual {v6}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/keephealth/android/ui/main/bean/MainMenuSet;

    if-nez v6, :cond_3c9

    .line 929
    new-instance v6, Lcom/keephealth/android/ui/main/bean/MainMenuSet;

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/keephealth/android/ui/main/bean/MainMenuSet;

    invoke-virtual {v7}, Lcom/keephealth/android/ui/main/bean/MainMenuSet;->getOrder()I

    move-result v21

    const/16 v17, 0x1

    const-wide/16 v18, 0x0

    const v20, 0x7f10074c

    move-object v15, v6

    invoke-direct/range {v15 .. v21}, Lcom/keephealth/android/ui/main/bean/MainMenuSet;-><init>(Ljava/lang/Long;ZJII)V

    .line 930
    new-array v7, v3, [Lcom/keephealth/android/ui/main/bean/MainMenuSet;

    aput-object v6, v7, v5

    invoke-virtual {v2, v7}, Lcom/keephealth/android/greendao/gen/MainMenuSetDao;->insertInTx([Ljava/lang/Object;)V

    goto :goto_3c9

    .line 933
    :cond_3c2
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/keephealth/android/greendao/gen/MainMenuSetDao;->deleteByKey(Ljava/lang/Object;)V

    .line 935
    :cond_3c9
    :goto_3c9
    invoke-virtual/range {p1 .. p1}, Lcom/keephealth/android/model/bean/DeviceModel;->isFamilyHealth()Z

    move-result v6

    if-eqz v6, :cond_40d

    .line 936
    invoke-virtual {v2}, Lcom/keephealth/android/greendao/gen/MainMenuSetDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v6

    sget-object v7, Lcom/keephealth/android/greendao/gen/MainMenuSetDao$Properties;->Id:Lorg/greenrobot/greendao/Property;

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v7

    new-array v8, v5, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v6, v7, v8}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v6

    invoke-virtual {v6}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/keephealth/android/ui/main/bean/MainMenuSet;

    if-nez v6, :cond_414

    .line 938
    new-instance v6, Lcom/keephealth/android/ui/main/bean/MainMenuSet;

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/keephealth/android/ui/main/bean/MainMenuSet;

    invoke-virtual {v7}, Lcom/keephealth/android/ui/main/bean/MainMenuSet;->getOrder()I

    move-result v19

    const/4 v15, 0x1

    const-wide/16 v16, 0x0

    const v18, 0x7f1002f0

    move-object v13, v6

    invoke-direct/range {v13 .. v19}, Lcom/keephealth/android/ui/main/bean/MainMenuSet;-><init>(Ljava/lang/Long;ZJII)V

    .line 939
    new-array v7, v3, [Lcom/keephealth/android/ui/main/bean/MainMenuSet;

    aput-object v6, v7, v5

    invoke-virtual {v2, v7}, Lcom/keephealth/android/greendao/gen/MainMenuSetDao;->insertInTx([Ljava/lang/Object;)V

    goto :goto_414

    .line 942
    :cond_40d
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/keephealth/android/greendao/gen/MainMenuSetDao;->deleteByKey(Ljava/lang/Object;)V

    .line 944
    :cond_414
    :goto_414
    invoke-virtual/range {p1 .. p1}, Lcom/keephealth/android/model/bean/DeviceModel;->isBloodGlucose()Z

    move-result v6

    if-eqz v6, :cond_458

    .line 945
    invoke-virtual {v2}, Lcom/keephealth/android/greendao/gen/MainMenuSetDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v6

    sget-object v7, Lcom/keephealth/android/greendao/gen/MainMenuSetDao$Properties;->Id:Lorg/greenrobot/greendao/Property;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v7

    new-array v8, v5, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v6, v7, v8}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v6

    invoke-virtual {v6}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/keephealth/android/ui/main/bean/MainMenuSet;

    if-nez v6, :cond_45f

    .line 947
    new-instance v6, Lcom/keephealth/android/ui/main/bean/MainMenuSet;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/keephealth/android/ui/main/bean/MainMenuSet;

    invoke-virtual {v7}, Lcom/keephealth/android/ui/main/bean/MainMenuSet;->getOrder()I

    move-result v17

    const/4 v13, 0x1

    const-wide/16 v14, 0x0

    const v16, 0x7f100179

    move-object v11, v6

    invoke-direct/range {v11 .. v17}, Lcom/keephealth/android/ui/main/bean/MainMenuSet;-><init>(Ljava/lang/Long;ZJII)V

    .line 948
    new-array v7, v3, [Lcom/keephealth/android/ui/main/bean/MainMenuSet;

    aput-object v6, v7, v5

    invoke-virtual {v2, v7}, Lcom/keephealth/android/greendao/gen/MainMenuSetDao;->insertInTx([Ljava/lang/Object;)V

    goto :goto_45f

    .line 951
    :cond_458
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/keephealth/android/greendao/gen/MainMenuSetDao;->deleteByKey(Ljava/lang/Object;)V

    .line 954
    :cond_45f
    :goto_45f
    invoke-virtual/range {p1 .. p1}, Lcom/keephealth/android/model/bean/DeviceModel;->isStress()Z

    move-result v6

    if-eqz v6, :cond_4a5

    .line 955
    invoke-virtual {v2}, Lcom/keephealth/android/greendao/gen/MainMenuSetDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v6

    sget-object v7, Lcom/keephealth/android/greendao/gen/MainMenuSetDao$Properties;->Id:Lorg/greenrobot/greendao/Property;

    const-wide/16 v8, 0xd

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v7, v10}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v7

    new-array v10, v5, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v6, v7, v10}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v6

    invoke-virtual {v6}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/keephealth/android/ui/main/bean/MainMenuSet;

    if-nez v6, :cond_4ae

    .line 957
    new-instance v6, Lcom/keephealth/android/ui/main/bean/MainMenuSet;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/keephealth/android/ui/main/bean/MainMenuSet;

    invoke-virtual {v7}, Lcom/keephealth/android/ui/main/bean/MainMenuSet;->getOrder()I

    move-result v16

    const/4 v12, 0x1

    const-wide/16 v13, 0x0

    const v15, 0x7f100723

    move-object v10, v6

    invoke-direct/range {v10 .. v16}, Lcom/keephealth/android/ui/main/bean/MainMenuSet;-><init>(Ljava/lang/Long;ZJII)V

    .line 958
    new-array v7, v3, [Lcom/keephealth/android/ui/main/bean/MainMenuSet;

    aput-object v6, v7, v5

    invoke-virtual {v2, v7}, Lcom/keephealth/android/greendao/gen/MainMenuSetDao;->insertInTx([Ljava/lang/Object;)V

    goto :goto_4ae

    :cond_4a5
    const-wide/16 v6, 0xd

    .line 961
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/keephealth/android/greendao/gen/MainMenuSetDao;->deleteByKey(Ljava/lang/Object;)V

    .line 964
    :cond_4ae
    :goto_4ae
    invoke-virtual/range {p1 .. p1}, Lcom/keephealth/android/model/bean/DeviceModel;->isHrv()Z

    move-result v6

    if-eqz v6, :cond_4f5

    .line 965
    invoke-virtual {v2}, Lcom/keephealth/android/greendao/gen/MainMenuSetDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v6

    sget-object v7, Lcom/keephealth/android/greendao/gen/MainMenuSetDao$Properties;->Id:Lorg/greenrobot/greendao/Property;

    const-wide/16 v8, 0xf

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v7, v10}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v7

    new-array v10, v5, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v6, v7, v10}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v6

    invoke-virtual {v6}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/keephealth/android/ui/main/bean/MainMenuSet;

    if-nez v6, :cond_713

    .line 967
    new-instance v6, Lcom/keephealth/android/ui/main/bean/MainMenuSet;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keephealth/android/ui/main/bean/MainMenuSet;

    invoke-virtual {v4}, Lcom/keephealth/android/ui/main/bean/MainMenuSet;->getOrder()I

    move-result v16

    const/4 v12, 0x1

    const-wide/16 v13, 0x0

    const v15, 0x7f100669

    move-object v10, v6

    invoke-direct/range {v10 .. v16}, Lcom/keephealth/android/ui/main/bean/MainMenuSet;-><init>(Ljava/lang/Long;ZJII)V

    .line 968
    new-array v3, v3, [Lcom/keephealth/android/ui/main/bean/MainMenuSet;

    aput-object v6, v3, v5

    invoke-virtual {v2, v3}, Lcom/keephealth/android/greendao/gen/MainMenuSetDao;->insertInTx([Ljava/lang/Object;)V

    goto/16 :goto_713

    :cond_4f5
    const-wide/16 v3, 0xf

    .line 971
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/keephealth/android/greendao/gen/MainMenuSetDao;->deleteByKey(Ljava/lang/Object;)V

    goto/16 :goto_713

    .line 771
    :cond_500
    :goto_500
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 772
    invoke-virtual/range {p1 .. p1}, Lcom/keephealth/android/model/bean/DeviceModel;->isClassSchedule()Z

    move-result v4

    const-wide/16 v6, 0x64

    if-eqz v4, :cond_528

    .line 773
    new-instance v4, Lcom/keephealth/android/ui/main/bean/MainMenuSet;

    invoke-static/range {v31 .. v32}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v34

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v31

    sub-long v36, v31, v6

    const v38, 0x7f100608

    const/16 v39, 0x0

    const/16 v35, 0x1

    move-object/from16 v33, v4

    invoke-direct/range {v33 .. v39}, Lcom/keephealth/android/ui/main/bean/MainMenuSet;-><init>(Ljava/lang/Long;ZJII)V

    .line 774
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 776
    :cond_528
    invoke-virtual/range {p1 .. p1}, Lcom/keephealth/android/model/bean/DeviceModel;->isTaskAndRewards()Z

    move-result v4

    if-eqz v4, :cond_549

    .line 777
    new-instance v4, Lcom/keephealth/android/ui/main/bean/MainMenuSet;

    invoke-static/range {v29 .. v30}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v34

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v29

    sub-long v36, v29, v6

    const v38, 0x7f100736

    const/16 v39, 0x0

    const/16 v35, 0x1

    move-object/from16 v33, v4

    invoke-direct/range {v33 .. v39}, Lcom/keephealth/android/ui/main/bean/MainMenuSet;-><init>(Ljava/lang/Long;ZJII)V

    .line 778
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 781
    :cond_549
    new-instance v4, Lcom/keephealth/android/ui/main/bean/MainMenuSet;

    const-wide/16 v29, 0x1

    invoke-static/range {v29 .. v30}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v41

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v29

    sub-long v43, v29, v6

    const v45, 0x7f100573

    const/16 v46, 0x1

    const/16 v42, 0x1

    move-object/from16 v40, v4

    invoke-direct/range {v40 .. v46}, Lcom/keephealth/android/ui/main/bean/MainMenuSet;-><init>(Ljava/lang/Long;ZJII)V

    .line 782
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 783
    invoke-virtual/range {p1 .. p1}, Lcom/keephealth/android/model/bean/DeviceModel;->isTemperature()Z

    move-result v4

    if-eqz v4, :cond_589

    .line 784
    new-instance v4, Lcom/keephealth/android/ui/main/bean/MainMenuSet;

    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v34

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v27, 0xc8

    sub-long v36, v6, v27

    const v38, 0x7f10038f

    const/16 v39, 0x2

    const/16 v35, 0x1

    move-object/from16 v33, v4

    invoke-direct/range {v33 .. v39}, Lcom/keephealth/android/ui/main/bean/MainMenuSet;-><init>(Ljava/lang/Long;ZJII)V

    .line 785
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 787
    :cond_589
    invoke-virtual/range {p1 .. p1}, Lcom/keephealth/android/model/bean/DeviceModel;->isHeart()Z

    move-result v4

    if-eqz v4, :cond_5ac

    .line 788
    new-instance v4, Lcom/keephealth/android/ui/main/bean/MainMenuSet;

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v34

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v25, 0x12c

    sub-long v36, v6, v25

    const v38, 0x7f100321

    const/16 v39, 0x3

    const/16 v35, 0x1

    move-object/from16 v33, v4

    invoke-direct/range {v33 .. v39}, Lcom/keephealth/android/ui/main/bean/MainMenuSet;-><init>(Ljava/lang/Long;ZJII)V

    .line 789
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 791
    :cond_5ac
    invoke-virtual/range {p1 .. p1}, Lcom/keephealth/android/model/bean/DeviceModel;->isSleep()Z

    move-result v4

    if-eqz v4, :cond_5cf

    .line 792
    new-instance v4, Lcom/keephealth/android/ui/main/bean/MainMenuSet;

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v23, 0x190

    sub-long v28, v6, v23

    const v30, 0x7f1001e4

    const/16 v31, 0x4

    const/16 v27, 0x1

    move-object/from16 v25, v4

    invoke-direct/range {v25 .. v31}, Lcom/keephealth/android/ui/main/bean/MainMenuSet;-><init>(Ljava/lang/Long;ZJII)V

    .line 793
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 795
    :cond_5cf
    invoke-virtual/range {p1 .. p1}, Lcom/keephealth/android/model/bean/DeviceModel;->isBloodpressure()Z

    move-result v4

    if-eqz v4, :cond_5f2

    .line 796
    new-instance v4, Lcom/keephealth/android/ui/main/bean/MainMenuSet;

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v21, 0x1f4

    sub-long v26, v6, v21

    const v28, 0x7f100178

    const/16 v29, 0x5

    const/16 v25, 0x1

    move-object/from16 v23, v4

    invoke-direct/range {v23 .. v29}, Lcom/keephealth/android/ui/main/bean/MainMenuSet;-><init>(Ljava/lang/Long;ZJII)V

    .line 797
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 799
    :cond_5f2
    invoke-virtual/range {p1 .. p1}, Lcom/keephealth/android/model/bean/DeviceModel;->isBloodoxygen()Z

    move-result v4

    if-eqz v4, :cond_615

    .line 800
    new-instance v4, Lcom/keephealth/android/ui/main/bean/MainMenuSet;

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v19, 0x258

    sub-long v24, v6, v19

    const v26, 0x7f100484

    const/16 v27, 0x6

    const/16 v23, 0x1

    move-object/from16 v21, v4

    invoke-direct/range {v21 .. v27}, Lcom/keephealth/android/ui/main/bean/MainMenuSet;-><init>(Ljava/lang/Long;ZJII)V

    .line 801
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 803
    :cond_615
    invoke-virtual/range {p1 .. p1}, Lcom/keephealth/android/model/bean/DeviceModel;->isDrinkingWaterMode()Z

    move-result v4

    if-eqz v4, :cond_638

    .line 804
    new-instance v4, Lcom/keephealth/android/ui/main/bean/MainMenuSet;

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v17, 0x2bc

    sub-long v22, v6, v17

    const v24, 0x7f100749

    const/16 v25, 0x7

    const/16 v21, 0x1

    move-object/from16 v19, v4

    invoke-direct/range {v19 .. v25}, Lcom/keephealth/android/ui/main/bean/MainMenuSet;-><init>(Ljava/lang/Long;ZJII)V

    .line 805
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 807
    :cond_638
    invoke-virtual/range {p1 .. p1}, Lcom/keephealth/android/model/bean/DeviceModel;->isWeightRecord()Z

    move-result v4

    if-eqz v4, :cond_65b

    .line 808
    new-instance v4, Lcom/keephealth/android/ui/main/bean/MainMenuSet;

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v15, 0x320

    sub-long v20, v6, v15

    const v22, 0x7f1007b0

    const/16 v23, 0x8

    const/16 v19, 0x1

    move-object/from16 v17, v4

    invoke-direct/range {v17 .. v23}, Lcom/keephealth/android/ui/main/bean/MainMenuSet;-><init>(Ljava/lang/Long;ZJII)V

    .line 809
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 811
    :cond_65b
    invoke-virtual/range {p1 .. p1}, Lcom/keephealth/android/model/bean/DeviceModel;->isWomenHealth()Z

    move-result v4

    if-eqz v4, :cond_67d

    .line 812
    new-instance v4, Lcom/keephealth/android/ui/main/bean/MainMenuSet;

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v13, 0x384

    sub-long v18, v6, v13

    const v20, 0x7f10074c

    const/16 v21, 0x9

    const/16 v17, 0x0

    move-object v15, v4

    invoke-direct/range {v15 .. v21}, Lcom/keephealth/android/ui/main/bean/MainMenuSet;-><init>(Ljava/lang/Long;ZJII)V

    .line 813
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 815
    :cond_67d
    invoke-virtual/range {p1 .. p1}, Lcom/keephealth/android/model/bean/DeviceModel;->isFamilyHealth()Z

    move-result v4

    const-wide/16 v6, 0x3e8

    if-eqz v4, :cond_69e

    .line 816
    new-instance v4, Lcom/keephealth/android/ui/main/bean/MainMenuSet;

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sub-long v16, v11, v6

    const v18, 0x7f1002f0

    const/16 v19, 0xa

    const/4 v15, 0x1

    move-object v13, v4

    invoke-direct/range {v13 .. v19}, Lcom/keephealth/android/ui/main/bean/MainMenuSet;-><init>(Ljava/lang/Long;ZJII)V

    .line 817
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 819
    :cond_69e
    invoke-virtual/range {p1 .. p1}, Lcom/keephealth/android/model/bean/DeviceModel;->isBloodGlucose()Z

    move-result v4

    if-eqz v4, :cond_6bd

    .line 820
    new-instance v4, Lcom/keephealth/android/ui/main/bean/MainMenuSet;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v14, v8, v6

    const v16, 0x7f100179

    const/16 v17, 0xb

    const/4 v13, 0x1

    move-object v11, v4

    invoke-direct/range {v11 .. v17}, Lcom/keephealth/android/ui/main/bean/MainMenuSet;-><init>(Ljava/lang/Long;ZJII)V

    .line 821
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 824
    :cond_6bd
    invoke-virtual/range {p1 .. p1}, Lcom/keephealth/android/model/bean/DeviceModel;->isStress()Z

    move-result v4

    const-string v8, "gt4r"

    if-eqz v4, :cond_6e5

    .line 825
    const-string v4, "\u9ed8\u8ba4\u63d2\u5165\u6570\u636e"

    invoke-static {v8, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    new-instance v4, Lcom/keephealth/android/ui/main/bean/MainMenuSet;

    const-wide/16 v9, 0xd

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sub-long v12, v11, v6

    const v14, 0x7f100723

    const/16 v15, 0xc

    const/4 v11, 0x1

    move-object v9, v4

    invoke-direct/range {v9 .. v15}, Lcom/keephealth/android/ui/main/bean/MainMenuSet;-><init>(Ljava/lang/Long;ZJII)V

    .line 827
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 830
    :cond_6e5
    invoke-virtual/range {p1 .. p1}, Lcom/keephealth/android/model/bean/DeviceModel;->isHrv()Z

    move-result v4

    if-eqz v4, :cond_70d

    .line 831
    const-string v4, "\u9ed8\u8ba4\u63d2\u5165\u6570\u636eisHrv"

    invoke-static {v8, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    new-instance v4, Lcom/keephealth/android/ui/main/bean/MainMenuSet;

    const-wide/16 v6, 0xf

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x44c

    sub-long v12, v6, v8

    const v14, 0x7f100669

    const/16 v15, 0xd

    const/4 v11, 0x1

    move-object v9, v4

    invoke-direct/range {v9 .. v15}, Lcom/keephealth/android/ui/main/bean/MainMenuSet;-><init>(Ljava/lang/Long;ZJII)V

    .line 833
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 837
    :cond_70d
    invoke-virtual {v2}, Lcom/keephealth/android/greendao/gen/MainMenuSetDao;->deleteAll()V

    .line 838
    invoke-virtual {v2, v3}, Lcom/keephealth/android/greendao/gen/MainMenuSetDao;->insertInTx(Ljava/lang/Iterable;)V

    .line 975
    :cond_713
    :goto_713
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "firstUnband"

    invoke-static {v2, v3}, Lcom/keephealth/android/util/SharePreferenceUtils;->getBool(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    .line 976
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "firstUnband:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "drer4re"

    invoke-static {v4, v3}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v2, :cond_734

    goto :goto_792

    .line 980
    :cond_734
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u662f\u5426\u6709\u65e5\u7a0b222:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/keephealth/android/model/bean/DeviceModel;->isCalendarSchedule()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CalenderDataStruct"

    invoke-static {v3, v2}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 981
    invoke-virtual/range {p1 .. p1}, Lcom/keephealth/android/model/bean/DeviceModel;->isCalendarSchedule()Z

    move-result v2

    if-eqz v2, :cond_78f

    .line 984
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "android.permission.READ_CALENDAR"

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const-string v3, "trt5t55"

    if-nez v2, :cond_786

    .line 985
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v4, "openOrCloseSchedule"

    invoke-static {v2, v4}, Lcom/keephealth/android/util/SharePreferenceUtils;->getBool(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    .line 986
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "\u6709\u65e5\u5386\u6743\u9650:"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_782

    .line 989
    invoke-direct {v0, v1, v2}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->openScheduleStatus(Lcom/keephealth/android/model/bean/DeviceModel;Z)V

    goto :goto_792

    .line 991
    :cond_782
    invoke-direct {v0, v1, v5}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->openScheduleStatus(Lcom/keephealth/android/model/bean/DeviceModel;Z)V

    goto :goto_792

    .line 994
    :cond_786
    const-string v2, "\u65e0\u65e5\u5386\u6743\u9650"

    invoke-static {v3, v2}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 995
    invoke-direct {v0, v1, v5}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->openScheduleStatus(Lcom/keephealth/android/model/bean/DeviceModel;Z)V

    goto :goto_792

    .line 998
    :cond_78f
    invoke-direct/range {p0 .. p1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->glucosePower(Lcom/keephealth/android/model/bean/DeviceModel;)V

    :goto_792
    return-void
.end method

.method private openScheduleStatus(Lcom/keephealth/android/model/bean/DeviceModel;Z)V
    .registers 6

    const/4 v0, 0x1

    .line 1005
    iput-boolean v0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->isOpenSchedule:Z

    .line 1006
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "isOpenSchedule1:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->isOpenSchedule:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "trt5t55"

    invoke-static {v1, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1007
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    invoke-static {p2}, Lcom/keephealth/android/util/ble/CmdHelper;->openOrCloseSchedule(Z)[B

    move-result-object v1

    new-instance v2, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$15;

    invoke-direct {v2, p0, p2, p1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$15;-><init>(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;ZLcom/keephealth/android/model/bean/DeviceModel;)V

    const-string p1, "openOrCloseSchedule"

    invoke-virtual {v0, p1, v1, v2}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic(Ljava/lang/Object;[BLcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;)V

    return-void
.end method

.method private postBloodGluCoseData()V
    .registers 5

    .line 460
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    invoke-static {}, Lcom/keephealth/android/util/ble/CmdHelper;->getDatumLine()[B

    move-result-object v1

    new-instance v2, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$10;

    invoke-direct {v2, p0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$10;-><init>(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)V

    const-string v3, "MainFragmentPresenter"

    invoke-virtual {v0, v3, v1, v2}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic(Ljava/lang/Object;[BLcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;)V

    return-void
.end method

.method private sendRequestBlood(Ljava/lang/String;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/keephealth/android/greendao/bean/HealthBlood;",
            ">;)V"
        }
    .end annotation

    .line 4129
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u540c\u6b65\u8840\u538b\u6570\u636e:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FDD3fd22"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4130
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/DaoSession;->getHealthBloodDao()Lcom/keephealth/android/greendao/gen/HealthBloodDao;

    move-result-object v0

    .line 4131
    const-string v1, "application/json; charset=utf-8"

    invoke-static {v1}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v1

    invoke-static {v1, p1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p1

    .line 4132
    new-instance v1, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$46;

    invoke-direct {v1, p0, p2, v0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$46;-><init>(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;Ljava/util/List;Lcom/keephealth/android/greendao/gen/HealthBloodDao;)V

    invoke-static {p1, v1}, Lcom/keephealth/android/model/net/http/UserHttp;->sendBloodInfo(Lokhttp3/RequestBody;Lcom/keephealth/android/model/net/ApiCallback;)V

    return-void
.end method

.method private sendRequestEcg(Ljava/lang/String;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/keephealth/android/greendao/bean/EcgRecordInfo;",
            ">;)V"
        }
    .end annotation

    .line 4031
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/DaoSession;->getEcgRecordInfoDao()Lcom/keephealth/android/greendao/gen/EcgRecordInfoDao;

    move-result-object v0

    .line 4032
    const-string v1, "application/json; charset=utf-8"

    invoke-static {v1}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v1

    invoke-static {v1, p1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p1

    .line 4033
    new-instance v1, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$44;

    invoke-direct {v1, p0, p2, v0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$44;-><init>(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;Ljava/util/List;Lcom/keephealth/android/greendao/gen/EcgRecordInfoDao;)V

    invoke-static {p1, v1}, Lcom/keephealth/android/model/net/http/UserHttp;->sendEcgInfo(Lokhttp3/RequestBody;Lcom/keephealth/android/model/net/ApiCallback;)V

    return-void
.end method

.method private sendRequestHeart(Ljava/lang/String;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/keephealth/android/greendao/bean/HealthHeartRate;",
            ">;)V"
        }
    .end annotation

    .line 4233
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/DaoSession;->getHealthHeartRateDao()Lcom/keephealth/android/greendao/gen/HealthHeartRateDao;

    move-result-object v0

    .line 4234
    const-string v1, "application/json; charset=utf-8"

    invoke-static {v1}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v1

    invoke-static {v1, p1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p1

    .line 4235
    new-instance v1, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$48;

    invoke-direct {v1, p0, p2, v0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$48;-><init>(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;Ljava/util/List;Lcom/keephealth/android/greendao/gen/HealthHeartRateDao;)V

    invoke-static {p1, v1}, Lcom/keephealth/android/model/net/http/UserHttp;->sendHeartInfo(Lokhttp3/RequestBody;Lcom/keephealth/android/model/net/ApiCallback;)V

    return-void
.end method

.method private sendRequestOxygen(Ljava/lang/String;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/keephealth/android/greendao/bean/HealthBlood;",
            ">;)V"
        }
    .end annotation

    .line 4181
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/DaoSession;->getHealthBloodDao()Lcom/keephealth/android/greendao/gen/HealthBloodDao;

    move-result-object v0

    .line 4182
    const-string v1, "application/json; charset=utf-8"

    invoke-static {v1}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v1

    invoke-static {v1, p1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p1

    .line 4183
    new-instance v1, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$47;

    invoke-direct {v1, p0, p2, v0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$47;-><init>(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;Ljava/util/List;Lcom/keephealth/android/greendao/gen/HealthBloodDao;)V

    invoke-static {p1, v1}, Lcom/keephealth/android/model/net/http/UserHttp;->sendOxygenInfo(Lokhttp3/RequestBody;Lcom/keephealth/android/model/net/ApiCallback;)V

    return-void
.end method

.method private sendRequestSleep(Ljava/lang/String;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/keephealth/android/greendao/bean/HealthSleep;",
            ">;)V"
        }
    .end annotation

    .line 4284
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/DaoSession;->getHealthSleepDao()Lcom/keephealth/android/greendao/gen/HealthSleepDao;

    move-result-object v0

    .line 4285
    const-string v1, "application/json; charset=utf-8"

    invoke-static {v1}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v1

    invoke-static {v1, p1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p1

    .line 4286
    new-instance v1, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$49;

    invoke-direct {v1, p0, p2, v0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$49;-><init>(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;Ljava/util/List;Lcom/keephealth/android/greendao/gen/HealthSleepDao;)V

    invoke-static {p1, v1}, Lcom/keephealth/android/model/net/http/UserHttp;->sendSleepInfo(Lokhttp3/RequestBody;Lcom/keephealth/android/model/net/ApiCallback;)V

    return-void
.end method

.method private sendRequestSport(Ljava/lang/String;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/keephealth/android/greendao/bean/HealthActivity;",
            ">;)V"
        }
    .end annotation

    .line 4370
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/DaoSession;->getHealthActivityDao()Lcom/keephealth/android/greendao/gen/HealthActivityDao;

    move-result-object v0

    .line 4371
    const-string v1, "application/json; charset=utf-8"

    invoke-static {v1}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v1

    invoke-static {v1, p1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p1

    .line 4372
    new-instance v1, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$51;

    invoke-direct {v1, p0, p2, v0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$51;-><init>(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;Ljava/util/List;Lcom/keephealth/android/greendao/gen/HealthActivityDao;)V

    invoke-static {p1, v1}, Lcom/keephealth/android/model/net/http/UserHttp;->sendSportInfo(Lokhttp3/RequestBody;Lcom/keephealth/android/model/net/ApiCallback;)V

    return-void
.end method

.method private sendRequestStep(Ljava/lang/String;Ljava/util/List;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/keephealth/android/greendao/bean/HealthSport;",
            ">;I)V"
        }
    .end annotation

    .line 4063
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object p3

    invoke-virtual {p3}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object p3

    invoke-virtual {p3}, Lcom/keephealth/android/greendao/gen/DaoSession;->getHealthSportDao()Lcom/keephealth/android/greendao/gen/HealthSportDao;

    move-result-object p3

    .line 4064
    const-string v0, "application/json; charset=utf-8"

    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    invoke-static {v0, p1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p1

    .line 4065
    new-instance v0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$45;

    invoke-direct {v0, p0, p2, p3}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$45;-><init>(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;Ljava/util/List;Lcom/keephealth/android/greendao/gen/HealthSportDao;)V

    invoke-static {p1, v0}, Lcom/keephealth/android/model/net/http/UserHttp;->sendStepsInfo(Lokhttp3/RequestBody;Lcom/keephealth/android/model/net/ApiCallback;)V

    return-void
.end method

.method private sendRequestTemp(Ljava/lang/String;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/keephealth/android/greendao/bean/TempDayInfo;",
            ">;)V"
        }
    .end annotation

    .line 4335
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/DaoSession;->getTempDayInfoDao()Lcom/keephealth/android/greendao/gen/TempDayInfoDao;

    move-result-object v0

    .line 4336
    const-string v1, "application/json; charset=utf-8"

    invoke-static {v1}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v1

    invoke-static {v1, p1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p1

    .line 4337
    new-instance v1, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$50;

    invoke-direct {v1, p0, p2, v0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$50;-><init>(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;Ljava/util/List;Lcom/keephealth/android/greendao/gen/TempDayInfoDao;)V

    invoke-static {p1, v1}, Lcom/keephealth/android/model/net/http/UserHttp;->sendTempInfo(Lokhttp3/RequestBody;Lcom/keephealth/android/model/net/ApiCallback;)V

    return-void
.end method

.method private setDeviceDate()V
    .registers 6

    .line 1128
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setDeviceData_\u8bbe\u7f6e\u8bbe\u5907\u65f6\u95f4_write:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/keephealth/android/util/ble/CmdHelper;->setDeviceData()[B

    move-result-object v1

    invoke-static {v1}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/keephealth/android/util/FileUtilsTest;->writeTxtToFile(ZLjava/lang/String;)V

    .line 1129
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    invoke-static {}, Lcom/keephealth/android/util/ble/CmdHelper;->setDeviceData()[B

    move-result-object v1

    sget-object v2, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->SERVICE:Ljava/util/UUID;

    sget-object v3, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->WRITE:Ljava/util/UUID;

    new-instance v4, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$17;

    invoke-direct {v4, p0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$17;-><init>(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([BLjava/util/UUID;Ljava/util/UUID;Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;)V

    return-void
.end method

.method private setDeviceState()V
    .registers 18

    move-object/from16 v0, p0

    .line 1184
    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getDeviceState()Lcom/keephealth/android/model/bean/DeviceState;

    move-result-object v1

    .line 1185
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/keephealth/android/util/SPHelper;->getDeviceConfig(Landroid/content/Context;I)Lcom/keephealth/android/model/bean/DeviceConfig;

    move-result-object v2

    .line 1186
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/keephealth/android/app/AppApplication;->getUserBean()Lcom/keephealth/android/model/bean/UserBean;

    move-result-object v3

    .line 1187
    invoke-virtual {v3}, Lcom/keephealth/android/model/bean/UserBean;->getHourMode12()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_2b

    .line 1188
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    iput v4, v1, Lcom/keephealth/android/model/bean/DeviceState;->timeFormat:I

    goto :goto_31

    .line 1190
    :cond_2b
    invoke-virtual {v3}, Lcom/keephealth/android/model/bean/UserBean;->getHourMode12()I

    move-result v4

    iput v4, v1, Lcom/keephealth/android/model/bean/DeviceState;->timeFormat:I

    .line 1192
    :goto_31
    invoke-virtual {v3}, Lcom/keephealth/android/model/bean/UserBean;->getLanguage()I

    move-result v4

    if-ne v4, v5, :cond_42

    .line 1193
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/keephealth/android/util/AppUtil;->getLanguageCode(Landroid/content/Context;)I

    move-result v4

    iput v4, v1, Lcom/keephealth/android/model/bean/DeviceState;->language:I

    goto :goto_48

    .line 1195
    :cond_42
    invoke-virtual {v3}, Lcom/keephealth/android/model/bean/UserBean;->getLanguage()I

    move-result v4

    iput v4, v1, Lcom/keephealth/android/model/bean/DeviceState;->language:I

    .line 1197
    :goto_48
    iget v4, v1, Lcom/keephealth/android/model/bean/DeviceState;->screenLight:I

    .line 1198
    iget v6, v1, Lcom/keephealth/android/model/bean/DeviceState;->screenTime:I

    .line 1199
    iget v7, v1, Lcom/keephealth/android/model/bean/DeviceState;->theme:I

    .line 1200
    invoke-virtual {v3}, Lcom/keephealth/android/model/bean/UserBean;->getUnit()I

    move-result v9

    .line 1201
    iget v10, v1, Lcom/keephealth/android/model/bean/DeviceState;->timeFormat:I

    .line 1202
    iget v11, v1, Lcom/keephealth/android/model/bean/DeviceState;->upHander:I

    .line 1203
    iget-boolean v12, v2, Lcom/keephealth/android/model/bean/DeviceConfig;->isMusic:Z

    .line 1204
    iget-boolean v13, v2, Lcom/keephealth/android/model/bean/DeviceConfig;->isDisturbMode:Z

    .line 1205
    iget v14, v1, Lcom/keephealth/android/model/bean/DeviceState;->handHabits:I

    .line 1206
    invoke-virtual {v3}, Lcom/keephealth/android/model/bean/UserBean;->getTemperatureUnit()I

    move-result v15

    .line 1207
    invoke-static {v1}, Lcom/keephealth/android/util/SPHelper;->saveDeviceState(Lcom/keephealth/android/model/bean/DeviceState;)V

    .line 1208
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "\u8bbe\u7f6e\u4f53\u6e29\u6e29\u5ea6\uff1a"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/keephealth/android/model/bean/UserBean;->getTemperatureUnit()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    if-nez v4, :cond_7d

    const/16 v4, 0xa

    :cond_7d
    move v5, v4

    .line 1213
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v2

    iget v8, v1, Lcom/keephealth/android/model/bean/DeviceState;->language:I

    .line 1214
    invoke-virtual {v3}, Lcom/keephealth/android/model/bean/UserBean;->getWaterUnit()I

    move-result v16

    .line 1213
    invoke-static/range {v5 .. v16}, Lcom/keephealth/android/util/ble/CmdHelper;->setDeviceState(IIIIIIIIIIII)[B

    move-result-object v1

    sget-object v3, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->SERVICE:Ljava/util/UUID;

    sget-object v4, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->WRITE:Ljava/util/UUID;

    new-instance v5, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$18;

    invoke-direct {v5, v0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$18;-><init>(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)V

    invoke-virtual {v2, v1, v3, v4, v5}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([BLjava/util/UUID;Ljava/util/UUID;Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;)V

    .line 1242
    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getBindBLEDevice()Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object v1

    if-nez v1, :cond_9f

    return-void

    .line 1246
    :cond_9f
    iget-object v2, v1, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceProduct:Ljava/lang/String;

    iget-object v3, v1, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceAddress:Ljava/lang/String;

    iget-object v1, v1, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceVersion:Ljava/lang/String;

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/keephealth/android/util/AppUtil;->getLanguageCode(Landroid/content/Context;)I

    move-result v4

    new-instance v5, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$19;

    invoke-direct {v5, v0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$19;-><init>(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)V

    invoke-static {v2, v3, v1, v4, v5}, Lcom/keephealth/android/model/net/http/UserHttp;->updateDevice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/keephealth/android/model/net/ApiCallback;)V

    return-void
.end method

.method private setUserInfo()V
    .registers 8

    .line 1274
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->getUserBean()Lcom/keephealth/android/model/bean/UserBean;

    move-result-object v0

    .line 1275
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u8bbe\u7f6e\u4f53\u91cd:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/UserBean;->getWeight()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "gddde22d"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1276
    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/UserBean;->getWeight()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mWeight:I

    const/16 v3, 0x12d

    if-le v1, v3, :cond_46

    .line 1278
    div-int/lit8 v1, v1, 0xa

    iput v1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mWeight:I

    int-to-float v1, v1

    .line 1279
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/model/bean/UserBean;->setWeight(F)V

    .line 1280
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/keephealth/android/app/AppApplication;->setUserBean(Lcom/keephealth/android/model/bean/UserBean;)V

    .line 1281
    invoke-static {v0}, Lcom/keephealth/android/util/SPHelper;->saveUserBean(Lcom/keephealth/android/model/bean/UserBean;)V

    goto :goto_4a

    :cond_46
    mul-int/lit8 v1, v1, 0xa

    .line 1283
    iput v1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mWeight:I

    .line 1285
    :goto_4a
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "weight3:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mWeight:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1286
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "userInfo:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/UserBean;->getGender()I

    move-result v2

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/UserBean;->getAge()I

    move-result v3

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/UserBean;->getHeight()I

    move-result v4

    iget v5, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mWeight:I

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/UserBean;->getStepDistance()I

    move-result v6

    invoke-static {v2, v3, v4, v5, v6}, Lcom/keephealth/android/util/ble/CmdHelper;->getUserInfo(IIIII)[B

    move-result-object v2

    invoke-static {v2}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexString2([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FF4325"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1287
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v1

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/UserBean;->getGender()I

    move-result v2

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/UserBean;->getAge()I

    move-result v3

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/UserBean;->getHeight()I

    move-result v4

    iget v5, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mWeight:I

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/UserBean;->getStepDistance()I

    move-result v0

    invoke-static {v2, v3, v4, v5, v0}, Lcom/keephealth/android/util/ble/CmdHelper;->getUserInfo(IIIII)[B

    move-result-object v0

    sget-object v2, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->SERVICE:Ljava/util/UUID;

    sget-object v3, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->WRITE:Ljava/util/UUID;

    new-instance v4, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$20;

    invoke-direct {v4, p0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$20;-><init>(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)V

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([BLjava/util/UUID;Ljava/util/UUID;Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;)V

    return-void
.end method

.method private syncHRVHistory(Z)V
    .registers 6

    const/4 v0, 0x0

    .line 2168
    iput v0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->currentIndex:I

    .line 2169
    iget-object v1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    if-eqz v1, :cond_10

    .line 2170
    iget-object v1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    check-cast v1, Lcom/keephealth/android/persenter/main/MainFragmentContract$View;

    const/16 v2, 0x4c

    invoke-interface {v1, v2}, Lcom/keephealth/android/persenter/main/MainFragmentContract$View;->updateProgress(I)V

    :cond_10
    const/4 v1, 0x1

    if-eqz p1, :cond_1d

    .line 2173
    iput-boolean v1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->isHrv:Z

    .line 2174
    iput v0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mIndex:I

    .line 2175
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->calendar:Ljava/util/Calendar;

    .line 2177
    :cond_1d
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->calendar:Ljava/util/Calendar;

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    .line 2178
    iget-object v0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->calendar:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/2addr v0, v1

    .line 2179
    iget-object v1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->calendar:Ljava/util/Calendar;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 2180
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v2

    invoke-static {p1, v0, v1}, Lcom/keephealth/android/util/ble/CmdHelper;->getHistoryHRV(III)[B

    move-result-object p1

    sget-object v0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->SERVICE:Ljava/util/UUID;

    sget-object v1, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->WRITE:Ljava/util/UUID;

    new-instance v3, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$31;

    invoke-direct {v3, p0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$31;-><init>(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)V

    invoke-virtual {v2, p1, v0, v1, v3}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([BLjava/util/UUID;Ljava/util/UUID;Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;)V

    return-void
.end method

.method private syncHeartHistory(Z)V
    .registers 6

    .line 2032
    iget-object v0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    if-eqz v0, :cond_d

    .line 2033
    iget-object v0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    check-cast v0, Lcom/keephealth/android/persenter/main/MainFragmentContract$View;

    const/16 v1, 0x4b

    invoke-interface {v0, v1}, Lcom/keephealth/android/persenter/main/MainFragmentContract$View;->updateProgress(I)V

    :cond_d
    const/4 v0, 0x0

    .line 2035
    iput v0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->currentIndex:I

    if-eqz p1, :cond_1a

    .line 2037
    iput v0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mIndex:I

    .line 2038
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->calendar:Ljava/util/Calendar;

    .line 2040
    :cond_1a
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->calendar:Ljava/util/Calendar;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    .line 2041
    iget-object v1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->calendar:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v1, v0

    .line 2042
    iget-object v2, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->calendar:Ljava/util/Calendar;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 2043
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v3

    invoke-static {v0, p1, v1, v2}, Lcom/keephealth/android/util/ble/CmdHelper;->getHistoryHeartRateData(IIII)[B

    move-result-object p1

    sget-object v0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->SERVICE:Ljava/util/UUID;

    sget-object v1, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->WRITE:Ljava/util/UUID;

    new-instance v2, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$30;

    invoke-direct {v2, p0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$30;-><init>(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)V

    invoke-virtual {v3, p1, v0, v1, v2}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([BLjava/util/UUID;Ljava/util/UUID;Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;)V

    return-void
.end method

.method private syncStepHistory(Z)V
    .registers 6

    .line 1733
    iget-object v0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    if-eqz v0, :cond_d

    .line 1734
    iget-object v0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    check-cast v0, Lcom/keephealth/android/persenter/main/MainFragmentContract$View;

    const/16 v1, 0x3c

    invoke-interface {v0, v1}, Lcom/keephealth/android/persenter/main/MainFragmentContract$View;->updateProgress(I)V

    :cond_d
    const/4 v0, 0x0

    .line 1736
    iput v0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->currentIndex:I

    if-eqz p1, :cond_1a

    .line 1738
    iput v0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mIndex:I

    .line 1739
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->calendar:Ljava/util/Calendar;

    .line 1741
    :cond_1a
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->calendar:Ljava/util/Calendar;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    .line 1742
    iget-object v1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->calendar:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v1, v0

    .line 1743
    iget-object v2, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->calendar:Ljava/util/Calendar;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 1744
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v3

    invoke-static {v0, p1, v1, v2}, Lcom/keephealth/android/util/ble/CmdHelper;->getHistoryData(IIII)[B

    move-result-object p1

    sget-object v0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->SERVICE:Ljava/util/UUID;

    sget-object v1, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->WRITE:Ljava/util/UUID;

    new-instance v2, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$28;

    invoke-direct {v2, p0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$28;-><init>(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)V

    invoke-virtual {v3, p1, v0, v1, v2}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([BLjava/util/UUID;Ljava/util/UUID;Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;)V

    return-void
.end method

.method private syncTempHistory(Z)V
    .registers 6

    const/4 v0, 0x0

    if-eqz p1, :cond_b

    .line 2639
    iput v0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mIndex:I

    .line 2640
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->calendar:Ljava/util/Calendar;

    .line 2642
    :cond_b
    iput v0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->currentIndex:I

    .line 2643
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->calendar:Ljava/util/Calendar;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    .line 2644
    iget-object v1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->calendar:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v1, v0

    .line 2645
    iget-object v0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->calendar:Ljava/util/Calendar;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 2646
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v2

    invoke-static {p1, v1, v0}, Lcom/keephealth/android/util/ble/CmdHelper;->getHistoryTemp(III)[B

    move-result-object p1

    sget-object v0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->SERVICE:Ljava/util/UUID;

    sget-object v1, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->WRITE:Ljava/util/UUID;

    new-instance v3, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$36;

    invoke-direct {v3, p0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$36;-><init>(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)V

    invoke-virtual {v2, p1, v0, v1, v3}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([BLjava/util/UUID;Ljava/util/UUID;Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;)V

    return-void
.end method

.method private syncWater()V
    .registers 7

    const/4 v0, 0x1

    .line 2333
    iput-boolean v0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->isWaterData:Z

    const/4 v1, 0x0

    .line 2334
    iput v1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->index:I

    .line 2335
    iput v1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->lengthWaterData:I

    .line 2336
    iput v1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->waterDataIndex:I

    .line 2337
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/keephealth/android/util/SPHelper;->getDeviceModel(Landroid/content/Context;)Lcom/keephealth/android/model/bean/DeviceModel;

    move-result-object v2

    if-eqz v2, :cond_72

    .line 2338
    invoke-virtual {v2}, Lcom/keephealth/android/model/bean/DeviceModel;->isDrinkWaterRecordSync()Z

    move-result v2

    if-eqz v2, :cond_72

    .line 2339
    iget v2, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->distanDay:I

    invoke-static {v2}, Lcom/keephealth/android/util/ble/CmdHelper;->queryWaterList(I)Ljava/util/List;

    move-result-object v2

    .line 2340
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u67e5\u51e0\u5929: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->distanDay:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " --isWaterData: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->isWaterData:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\u559d\u6c34\u5386\u53f2\u6570\u636e:"

    invoke-static {v4, v3}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 2341
    :goto_42
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_72

    .line 2342
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v0

    if-ne v1, v3, :cond_62

    .line 2343
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v3

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    new-instance v5, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$33;

    invoke-direct {v5, p0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$33;-><init>(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)V

    invoke-virtual {v3, v4, v5}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([BLcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;)V

    goto :goto_6f

    .line 2404
    :cond_62
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v3

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    invoke-virtual {v3, v4}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([B)V

    :goto_6f
    add-int/lit8 v1, v1, 0x1

    goto :goto_42

    :cond_72
    return-void
.end method

.method private synchActiviy()V
    .registers 6

    .line 2706
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->distanDay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u5fc3\u7387\u53d8\u5f02\u6027\u6570\u636e\u65f6\u95f44 "

    invoke-static {v1, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 2707
    iget-object v0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    if-eqz v0, :cond_2d

    .line 2708
    iget-object v0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    check-cast v0, Lcom/keephealth/android/persenter/main/MainFragmentContract$View;

    const/16 v1, 0x55

    invoke-interface {v0, v1}, Lcom/keephealth/android/persenter/main/MainFragmentContract$View;->updateProgress(I)V

    :cond_2d
    const/4 v0, 0x0

    .line 2710
    iput v0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->currentIndex:I

    .line 2711
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    sget-object v1, Lcom/keephealth/android/util/ble/CmdHelper;->CMD_GET_ACTIVITY:[B

    sget-object v2, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->SERVICE:Ljava/util/UUID;

    sget-object v3, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->WRITE:Ljava/util/UUID;

    new-instance v4, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$37;

    invoke-direct {v4, p0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$37;-><init>(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([BLjava/util/UUID;Ljava/util/UUID;Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;)V

    return-void
.end method

.method private synchEcg()V
    .registers 6

    .line 2288
    iget-object v0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    if-eqz v0, :cond_d

    .line 2289
    iget-object v0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    check-cast v0, Lcom/keephealth/android/persenter/main/MainFragmentContract$View;

    const/16 v1, 0x5f

    invoke-interface {v0, v1}, Lcom/keephealth/android/persenter/main/MainFragmentContract$View;->updateProgress(I)V

    :cond_d
    const/4 v0, 0x0

    .line 2291
    iput v0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->currentIndex:I

    .line 2292
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v1}, Lcom/keephealth/android/util/ble/CmdHelper;->setEcg(I)[B

    move-result-object v1

    sget-object v2, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->SERVICE:Ljava/util/UUID;

    sget-object v3, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->WRITE:Ljava/util/UUID;

    new-instance v4, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$32;

    invoke-direct {v4, p0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$32;-><init>(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([BLjava/util/UUID;Ljava/util/UUID;Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;)V

    return-void
.end method

.method private synchWeather()V
    .registers 15

    .line 237
    :try_start_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$3;

    invoke-direct {v1, p0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$3;-><init>(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_11

    .line 246
    :catch_11
    const-string v0, "ghfgr4"

    const-string v1, "synchWeather..."

    invoke-static {v0, v1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/SPHelper;->getDeviceModel(Landroid/content/Context;)Lcom/keephealth/android/model/bean/DeviceModel;

    move-result-object v5

    if-eqz v5, :cond_aa

    .line 249
    invoke-virtual {v5}, Lcom/keephealth/android/model/bean/DeviceModel;->isWeatherForecast()Z

    move-result v0

    if-nez v0, :cond_34

    invoke-virtual {v5}, Lcom/keephealth/android/model/bean/DeviceModel;->isWeatherForecastB()Z

    move-result v0

    if-eqz v0, :cond_2f

    goto :goto_34

    .line 271
    :cond_2f
    invoke-static {}, Lcom/keephealth/android/util/LocationUtil;->stopLocation()V

    goto/16 :goto_ad

    .line 250
    :cond_34
    :goto_34
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "LOCATION_INFO"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/keephealth/android/util/SharePreferenceUtils;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_a6

    .line 251
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a6

    .line 252
    const-class v1, Lcom/keephealth/android/model/bean/LocationBean;

    invoke-static {v0, v1}, Lcom/keephealth/android/util/GsonUtil;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/model/bean/LocationBean;

    .line 254
    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/LocationBean;->getLongitude()D

    move-result-wide v1

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/LocationBean;->getLatitude()D

    move-result-wide v3

    mul-double v6, v1, v1

    mul-double v8, v3, v3

    add-double/2addr v6, v8

    .line 255
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    const-wide v8, 0x404a2e1077c7044eL    # 52.35987755982988

    mul-double v10, v3, v8

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    const-wide v12, 0x3ef4f8b588e368f1L    # 2.0E-5

    mul-double/2addr v10, v12

    add-double/2addr v6, v10

    .line 256
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v3

    mul-double/2addr v1, v8

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    const-wide v8, 0x3ec92a737110e454L    # 3.0E-6

    mul-double/2addr v0, v8

    add-double/2addr v3, v0

    .line 257
    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double/2addr v0, v6

    const-wide v8, 0x3f7a9fbe76c8b439L    # 0.0065

    add-double/2addr v8, v0

    .line 258
    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double/2addr v6, v0

    const-wide v0, 0x3f789374bc6a7efaL    # 0.006

    add-double v1, v6, v0

    .line 259
    new-instance v6, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$4;

    invoke-direct {v6, p0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$4;-><init>(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)V

    move-wide v3, v8

    invoke-static/range {v1 .. v6}, Lcom/keephealth/android/util/LocationUtil;->getWeather(DDLcom/keephealth/android/model/bean/DeviceModel;Lcom/keephealth/android/util/ble/BleCallbackWrapper;)V

    goto :goto_ad

    .line 268
    :cond_a6
    invoke-static {}, Lcom/keephealth/android/util/LocationUtil;->stopLocation()V

    goto :goto_ad

    .line 274
    :cond_aa
    invoke-static {}, Lcom/keephealth/android/util/LocationUtil;->stopLocation()V

    :goto_ad
    return-void
.end method

.method private updateWeather()V
    .registers 15

    .line 1653
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/SPHelper;->getDeviceModel(Landroid/content/Context;)Lcom/keephealth/android/model/bean/DeviceModel;

    move-result-object v5

    .line 1655
    :try_start_8
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$26;

    invoke-direct {v1, p0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$26;-><init>(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_19} :catch_19

    :catch_19
    if-eqz v5, :cond_e0

    .line 1665
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "deviceModel.isWeatherForecast():"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/keephealth/android/model/bean/DeviceModel;->isWeatherForecast()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  deviceModel.isWeatherForecastB():"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v5}, Lcom/keephealth/android/model/bean/DeviceModel;->isWeatherForecastB()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ffr3ddft"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1666
    invoke-virtual {v5}, Lcom/keephealth/android/model/bean/DeviceModel;->isWeatherForecast()Z

    move-result v0

    if-nez v0, :cond_53

    invoke-virtual {v5}, Lcom/keephealth/android/model/bean/DeviceModel;->isWeatherForecastB()Z

    move-result v0

    if-eqz v0, :cond_4e

    goto :goto_53

    .line 1692
    :cond_4e
    invoke-static {}, Lcom/keephealth/android/util/LocationUtil;->stopLocation()V

    goto/16 :goto_e3

    .line 1667
    :cond_53
    :goto_53
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "LOCATION_INFO"

    const-string v3, ""

    invoke-static {v0, v2, v3}, Lcom/keephealth/android/util/SharePreferenceUtils;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1668
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "locationInfo:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_d7

    .line 1669
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d7

    .line 1670
    const-class v1, Lcom/keephealth/android/model/bean/LocationBean;

    invoke-static {v0, v1}, Lcom/keephealth/android/util/GsonUtil;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/model/bean/LocationBean;

    .line 1672
    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/LocationBean;->getLongitude()D

    move-result-wide v1

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/LocationBean;->getLatitude()D

    move-result-wide v3

    mul-double v6, v1, v1

    mul-double v8, v3, v3

    add-double/2addr v6, v8

    .line 1673
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    const-wide v8, 0x404a2e1077c7044eL    # 52.35987755982988

    mul-double v10, v3, v8

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    const-wide v12, 0x3ef4f8b588e368f1L    # 2.0E-5

    mul-double/2addr v10, v12

    add-double/2addr v6, v10

    .line 1674
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v3

    mul-double/2addr v1, v8

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    const-wide v8, 0x3ec92a737110e454L    # 3.0E-6

    mul-double/2addr v0, v8

    add-double/2addr v3, v0

    .line 1675
    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double/2addr v0, v6

    const-wide v8, 0x3f7a9fbe76c8b439L    # 0.0065

    add-double/2addr v8, v0

    .line 1676
    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double/2addr v6, v0

    const-wide v0, 0x3f789374bc6a7efaL    # 0.006

    add-double v1, v6, v0

    .line 1677
    new-instance v6, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$27;

    invoke-direct {v6, p0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$27;-><init>(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)V

    move-wide v3, v8

    invoke-static/range {v1 .. v6}, Lcom/keephealth/android/util/LocationUtil;->getWeather(DDLcom/keephealth/android/model/bean/DeviceModel;Lcom/keephealth/android/util/ble/BleCallbackWrapper;)V

    goto :goto_e3

    .line 1686
    :cond_d7
    const-string v0, "\u5b9a\u4f4d\u4fe1\u606f\u672a\u83b7\u53d6"

    invoke-static {v0}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 1688
    invoke-static {}, Lcom/keephealth/android/util/LocationUtil;->stopLocation()V

    goto :goto_e3

    .line 1696
    :cond_e0
    invoke-static {}, Lcom/keephealth/android/util/LocationUtil;->stopLocation()V

    :goto_e3
    return-void
.end method


# virtual methods
.method public getUserInfo()V
    .registers 2

    .line 3998
    new-instance v0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$43;

    invoke-direct {v0, p0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$43;-><init>(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)V

    invoke-static {v0}, Lcom/keephealth/android/model/net/http/UserHttp;->getUserInfo(Lcom/keephealth/android/model/net/ApiCallback;)V

    return-void
.end method

.method synthetic lambda$synchDate$0$com-keephealth-android-persenter-main-MainFragmentPresenter()V
    .registers 1

    .line 424
    invoke-direct {p0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->getDeviceInfo()V

    return-void
.end method

.method public saveNewData()V
    .registers 20

    move-object/from16 v0, p0

    .line 1915
    iget-object v1, v0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->calendar:Ljava/util/Calendar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 1916
    iget-object v3, v0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->calendar:Ljava/util/Calendar;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/2addr v3, v2

    .line 1917
    iget-object v5, v0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->calendar:Ljava/util/Calendar;

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 1918
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 1919
    invoke-virtual {v7, v2}, Ljava/util/Calendar;->get(I)I

    move-result v8

    if-ne v1, v8, :cond_338

    invoke-virtual {v7, v4}, Ljava/util/Calendar;->get(I)I

    move-result v8

    add-int/2addr v8, v2

    if-ne v3, v8, :cond_338

    invoke-virtual {v7, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    if-eq v5, v6, :cond_31

    goto/16 :goto_338

    .line 1922
    :cond_31
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v6

    invoke-virtual {v6}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v6

    invoke-virtual {v6}, Lcom/keephealth/android/greendao/gen/DaoSession;->getHealthSportItemDao()Lcom/keephealth/android/greendao/gen/HealthSportItemDao;

    move-result-object v6

    .line 1924
    new-instance v7, Lcom/keephealth/android/greendao/bean/HealthSportItem;

    invoke-direct {v7}, Lcom/keephealth/android/greendao/bean/HealthSportItem;-><init>()V

    const/4 v8, 0x0

    move v9, v8

    move v10, v9

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_47
    const/16 v13, 0x18

    if-ge v9, v13, :cond_338

    .line 1932
    new-instance v13, Lcom/keephealth/android/greendao/bean/HealthSportItem;

    invoke-direct {v13}, Lcom/keephealth/android/greendao/bean/HealthSportItem;-><init>()V

    .line 1933
    invoke-virtual {v6}, Lcom/keephealth/android/greendao/gen/HealthSportItemDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v14

    sget-object v15, Lcom/keephealth/android/greendao/gen/HealthSportItemDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    .line 1934
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v15, v7}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v7

    const/4 v15, 0x3

    new-array v4, v15, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v15, Lcom/keephealth/android/greendao/gen/HealthSportItemDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v15, v2}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v2

    aput-object v2, v4, v8

    sget-object v2, Lcom/keephealth/android/greendao/gen/HealthSportItemDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    .line 1935
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v2, v15}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v2

    const/4 v15, 0x1

    aput-object v2, v4, v15

    sget-object v2, Lcom/keephealth/android/greendao/gen/HealthSportItemDao$Properties;->Hour:Lorg/greenrobot/greendao/Property;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v8}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v2

    const/4 v8, 0x2

    aput-object v2, v4, v8

    .line 1934
    invoke-virtual {v14, v7, v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    new-array v4, v15, [Lorg/greenrobot/greendao/Property;

    sget-object v7, Lcom/keephealth/android/greendao/gen/HealthSportItemDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    const/4 v8, 0x0

    aput-object v7, v4, v8

    .line 1936
    invoke-virtual {v2, v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderAsc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v2

    invoke-virtual {v2}, Lorg/greenrobot/greendao/query/Query;->list()Ljava/util/List;

    move-result-object v2

    .line 1937
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_325

    .line 1938
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :cond_ab
    :goto_ab
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_101

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/keephealth/android/greendao/bean/HealthSportItem;

    .line 1939
    invoke-virtual {v13}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getStepCount()I

    move-result v15

    invoke-virtual {v14}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getStepCount()I

    move-result v17

    add-int v15, v15, v17

    invoke-virtual {v13, v15}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->setStepCount(I)V

    .line 1940
    invoke-virtual {v13}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getCalory()F

    move-result v15

    invoke-virtual {v14}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getCalory()F

    move-result v17

    const/high16 v18, 0x41200000    # 10.0f

    mul-float v17, v17, v18

    add-float v15, v15, v17

    invoke-virtual {v13, v15}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->setCalory(F)V

    .line 1941
    invoke-virtual {v13}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getDistance()F

    move-result v15

    invoke-virtual {v14}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getDistance()F

    move-result v17

    add-float v15, v15, v17

    invoke-virtual {v13, v15}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->setDistance(F)V

    .line 1942
    invoke-virtual {v14}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getStepCount()I

    move-result v15

    add-int/2addr v4, v15

    .line 1943
    invoke-virtual {v14}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getCalory()F

    move-result v15

    add-float/2addr v7, v15

    .line 1944
    invoke-virtual {v14}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getDistance()F

    move-result v15

    add-float/2addr v8, v15

    .line 1945
    invoke-virtual {v14}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getStepCount()I

    move-result v14

    if-lez v14, :cond_ab

    .line 1946
    invoke-virtual {v13}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getActiveTime()I

    move-result v14

    add-int/lit8 v14, v14, 0xa

    invoke-virtual {v13, v14}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->setActiveTime(I)V

    goto :goto_ab

    .line 1949
    :cond_101
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v14, "saveNewData: "

    invoke-direct {v2, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v14, "-"

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v15, " --- "

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v13}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getStepCount()I

    move-result v13

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v13, " -- "

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v13, "\u6b65\u6570\u6570\u636e"

    invoke-static {v13, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-float/2addr v11, v7

    add-int/2addr v10, v4

    add-float/2addr v12, v8

    .line 1956
    sget v2, Lcom/keephealth/android/app/AppApplication;->hourNow:I

    if-ne v2, v9, :cond_325

    .line 1958
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v2

    const-string v4, ""

    const-string v7, "HOME_DATA_TIME"

    invoke-static {v2, v7, v4}, Lcom/keephealth/android/util/SharePreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1962
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_313

    .line 1963
    invoke-virtual {v2, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_325

    .line 1964
    array-length v4, v2

    const/4 v8, 0x2

    if-le v4, v8, :cond_325

    const/4 v4, 0x0

    .line 1966
    aget-object v13, v2, v4

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    if-ne v13, v1, :cond_302

    const/4 v13, 0x1

    aget-object v14, v2, v13

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    if-ne v13, v3, :cond_302

    aget-object v2, v2, v8

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v5, :cond_302

    .line 1968
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v2

    const-string v7, "HOME_DATA_CAL"

    invoke-static {v2, v7, v4}, Lcom/keephealth/android/util/SharePreferenceUtils;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    .line 1969
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v7

    const-string v8, "HOME_DATA_STEP"

    invoke-static {v7, v8, v4}, Lcom/keephealth/android/util/SharePreferenceUtils;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v7

    .line 1970
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v4

    const-string v8, "HOME_DATA_DISTANCE"

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    invoke-static {v4, v8, v14}, Lcom/keephealth/android/util/SharePreferenceUtils;->getFloat(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Float;)F

    move-result v4

    .line 1972
    new-instance v8, Lcom/keephealth/android/greendao/bean/HealthSportItem;

    invoke-direct {v8}, Lcom/keephealth/android/greendao/bean/HealthSportItem;-><init>()V

    .line 1974
    invoke-virtual {v6}, Lcom/keephealth/android/greendao/gen/HealthSportItemDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v14

    sget-object v15, Lcom/keephealth/android/greendao/gen/HealthSportItemDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    .line 1975
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v15, v13}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v13

    const/4 v15, 0x4

    new-array v15, v15, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v0, Lcom/keephealth/android/greendao/gen/HealthSportItemDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    move-object/from16 v17, v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v0

    const/4 v6, 0x0

    aput-object v0, v15, v6

    sget-object v0, Lcom/keephealth/android/greendao/gen/HealthSportItemDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    .line 1976
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v0

    const/4 v6, 0x1

    aput-object v0, v15, v6

    sget-object v0, Lcom/keephealth/android/greendao/gen/HealthSportItemDao$Properties;->Hour:Lorg/greenrobot/greendao/Property;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v0

    const/4 v6, 0x2

    aput-object v0, v15, v6

    sget-object v0, Lcom/keephealth/android/greendao/gen/HealthSportItemDao$Properties;->Minute:Lorg/greenrobot/greendao/Property;

    invoke-virtual {v8}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getMinute()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v0

    const/4 v6, 0x3

    aput-object v0, v15, v6

    .line 1975
    invoke-virtual {v14, v13, v15}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    const/4 v6, 0x1

    new-array v8, v6, [Lorg/greenrobot/greendao/Property;

    sget-object v6, Lcom/keephealth/android/greendao/gen/HealthSportItemDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    const/4 v13, 0x0

    aput-object v6, v8, v13

    .line 1977
    invoke-virtual {v0, v8}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderAsc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/Query;->unique()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/greendao/bean/HealthSportItem;

    .line 1979
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v6

    invoke-virtual {v6}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v6

    invoke-virtual {v6}, Lcom/keephealth/android/greendao/gen/DaoSession;->getHealthSportDao()Lcom/keephealth/android/greendao/gen/HealthSportDao;

    move-result-object v6

    .line 1980
    invoke-virtual {v6}, Lcom/keephealth/android/greendao/gen/HealthSportDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v8

    sget-object v13, Lcom/keephealth/android/greendao/gen/HealthSportDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    .line 1981
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v13

    const/4 v14, 0x2

    new-array v15, v14, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v14, Lcom/keephealth/android/greendao/gen/HealthSportDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    move/from16 v16, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v14, v1}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v1

    const/4 v14, 0x0

    aput-object v1, v15, v14

    sget-object v1, Lcom/keephealth/android/greendao/gen/HealthSportDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    .line 1982
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v1, v14}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v1

    const/4 v14, 0x1

    aput-object v1, v15, v14

    .line 1981
    invoke-virtual {v8, v13, v15}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    new-array v8, v14, [Lorg/greenrobot/greendao/Property;

    sget-object v13, Lcom/keephealth/android/greendao/gen/HealthSportDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    const/4 v14, 0x0

    aput-object v13, v8, v14

    .line 1983
    invoke-virtual {v1, v8}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderDesc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v1

    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/Query;->unique()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/greendao/bean/HealthSport;

    .line 1984
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v13, "\u66f4\u6539\u4e4b\u524d\u7684sport:"

    invoke-direct {v8, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v13, Lcom/google/gson/Gson;

    invoke-direct {v13}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v13, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v13, "tr4rrs"

    invoke-static {v13, v8}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    int-to-float v2, v2

    cmpg-float v8, v11, v2

    if-gtz v8, :cond_29a

    .line 1988
    invoke-virtual {v0}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getCalory()F

    move-result v8

    add-float/2addr v8, v2

    sub-float/2addr v8, v11

    invoke-virtual {v0, v8}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->setCalory(F)V

    .line 1989
    invoke-virtual {v1, v2}, Lcom/keephealth/android/greendao/bean/HealthSport;->setTotalCalory(F)V

    goto :goto_2a4

    .line 1991
    :cond_29a
    invoke-virtual {v1, v11}, Lcom/keephealth/android/greendao/bean/HealthSport;->setTotalCalory(F)V

    .line 1992
    invoke-virtual {v0}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getCalory()F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->setCalory(F)V

    :goto_2a4
    if-gt v10, v7, :cond_2b3

    .line 1998
    invoke-virtual {v0}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getStepCount()I

    move-result v2

    add-int/2addr v2, v7

    sub-int/2addr v2, v10

    invoke-virtual {v0, v2}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->setStepCount(I)V

    .line 1999
    invoke-virtual {v1, v7}, Lcom/keephealth/android/greendao/bean/HealthSport;->setTotalStepCount(I)V

    goto :goto_2bd

    .line 2001
    :cond_2b3
    invoke-virtual {v1, v10}, Lcom/keephealth/android/greendao/bean/HealthSport;->setTotalStepCount(I)V

    .line 2002
    invoke-virtual {v0}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getStepCount()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->setStepCount(I)V

    :goto_2bd
    cmpg-float v2, v12, v4

    if-gtz v2, :cond_2ce

    .line 2006
    invoke-virtual {v0}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getDistance()F

    move-result v2

    add-float/2addr v2, v4

    sub-float/2addr v2, v12

    invoke-virtual {v0, v2}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->setDistance(F)V

    .line 2007
    invoke-virtual {v1, v4}, Lcom/keephealth/android/greendao/bean/HealthSport;->setTotalDistance(F)V

    goto :goto_2d8

    .line 2009
    :cond_2ce
    invoke-virtual {v1, v12}, Lcom/keephealth/android/greendao/bean/HealthSport;->setTotalDistance(F)V

    .line 2010
    invoke-virtual {v0}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getDistance()F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->setDistance(F)V

    .line 2013
    :goto_2d8
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "\u66f4\u6539\u4e4b\u540e\u7684sport:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v2, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 2014
    new-array v2, v0, [Lcom/keephealth/android/greendao/bean/HealthSport;

    const/4 v4, 0x0

    aput-object v1, v2, v4

    invoke-virtual {v6, v2}, Lcom/keephealth/android/greendao/gen/HealthSportDao;->updateInTx([Ljava/lang/Object;)V

    .line 2015
    const-string v1, "\u4fee\u6539\u6570\u636e\u540e\u66f4\u65b0\u6570\u636e\u5e93"

    invoke-static {v13, v1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_32b

    :cond_302
    move/from16 v16, v1

    move-object/from16 v17, v6

    const/4 v0, 0x1

    .line 2017
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v1

    invoke-static {}, Lcom/keephealth/android/util/TimeUtil;->timeStampDateNoHMS()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v7, v2}, Lcom/keephealth/android/util/SharePreferenceUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_32b

    :cond_313
    move/from16 v16, v1

    move-object/from16 v17, v6

    const/4 v0, 0x1

    const/4 v4, 0x0

    .line 2021
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v1

    invoke-static {}, Lcom/keephealth/android/util/TimeUtil;->timeStampDateNoHMS()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v7, v2}, Lcom/keephealth/android/util/SharePreferenceUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_32b

    :cond_325
    move/from16 v16, v1

    move-object/from16 v17, v6

    const/4 v0, 0x1

    const/4 v4, 0x0

    :goto_32b
    add-int/lit8 v9, v9, 0x1

    move v2, v0

    move v8, v4

    move/from16 v1, v16

    move-object/from16 v6, v17

    const/4 v4, 0x2

    move-object/from16 v0, p0

    goto/16 :goto_47

    :cond_338
    :goto_338
    return-void
.end method

.method public sendSchedules(Ljava/util/List;Lcom/keephealth/android/model/bean/DeviceModel;Z)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;",
            ">;",
            "Lcom/keephealth/android/model/bean/DeviceModel;",
            "Z)V"
        }
    .end annotation

    .line 1081
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "isClear:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CalenderDataStruc2t"

    invoke-static {v1, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1082
    invoke-static {v0, p1, p3}, Lcom/keephealth/android/util/ble/CmdHelper;->setSchedule(ILjava/util/List;Z)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_8a

    .line 1083
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-lez p3, :cond_8a

    .line 1084
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v2, "list1.size():"

    invoke-direct {p3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v2, "CalenderDataStruct"

    invoke-static {v2, p3}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 1085
    :goto_3a
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge p3, v2, :cond_8a

    .line 1086
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "CalendarEvent-send: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-static {v3}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/keephealth/android/util/log/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 1087
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v0

    if-ne p3, v2, :cond_7a

    .line 1088
    iput-boolean v0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->isSendShedule:Z

    .line 1089
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v2

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    new-instance v4, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$16;

    invoke-direct {v4, p0, p2}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$16;-><init>(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;Lcom/keephealth/android/model/bean/DeviceModel;)V

    const-string v5, "shedule_item"

    invoke-virtual {v2, v5, v3, v4}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic(Ljava/lang/Object;[BLcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;)V

    goto :goto_87

    .line 1113
    :cond_7a
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v2

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-virtual {v2, v3}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([B)V

    :goto_87
    add-int/lit8 p3, p3, 0x1

    goto :goto_3a

    :cond_8a
    return-void
.end method

.method public sendUserToBle(Lcom/keephealth/android/model/bean/UserBean;)V
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 4422
    invoke-virtual/range {p1 .. p1}, Lcom/keephealth/android/model/bean/UserBean;->getWeight()F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mWeight:I

    const/16 v3, 0x12d

    if-le v2, v3, :cond_2a

    .line 4424
    div-int/lit8 v2, v2, 0xa

    iput v2, v0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mWeight:I

    int-to-float v2, v2

    .line 4425
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/keephealth/android/model/bean/UserBean;->setWeight(F)V

    .line 4426
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/keephealth/android/app/AppApplication;->setUserBean(Lcom/keephealth/android/model/bean/UserBean;)V

    .line 4427
    invoke-static/range {p1 .. p1}, Lcom/keephealth/android/util/SPHelper;->saveUserBean(Lcom/keephealth/android/model/bean/UserBean;)V

    goto :goto_2e

    :cond_2a
    mul-int/lit8 v2, v2, 0xa

    .line 4429
    iput v2, v0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mWeight:I

    .line 4431
    :goto_2e
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "USER_TOKEN"

    const-string v4, ""

    invoke-static {v2, v3, v4}, Lcom/keephealth/android/util/SharePreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_27c

    .line 4433
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    .line 4434
    invoke-virtual/range {p1 .. p1}, Lcom/keephealth/android/model/bean/UserBean;->getMedals()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 4435
    invoke-virtual/range {p1 .. p1}, Lcom/keephealth/android/model/bean/UserBean;->getSos()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 4436
    invoke-virtual/range {p1 .. p1}, Lcom/keephealth/android/model/bean/UserBean;->getCountryCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 4438
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/keephealth/android/app/AppApplication;->getaMapLocation()Lcom/keephealth/android/model/bean/LocationBean;

    move-result-object v5

    const-string v6, "}"

    const-string v7, ",\"temperatureUnit\":"

    const-string v8, ",\"countryCode\":"

    const-string v9, ",\"sos\":"

    const-string v10, "\",\"medals\":"

    const-string v11, "\",\"stepSize\":\""

    const-string v12, "\",\"weight\":\""

    const-string v13, "\",\"height\":\""

    const-string v14, "\",\"birthday\":\""

    const-string v15, "\",\"sex\":\""

    const-string v1, "{\"name\":\""

    move-object/from16 v16, v6

    const-string v6, "%02d"

    move-object/from16 v17, v7

    const-string v7, "-"

    if-eqz v5, :cond_184

    .line 4439
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/keephealth/android/app/AppApplication;->getaMapLocation()Lcom/keephealth/android/model/bean/LocationBean;

    move-result-object v5

    move-object/from16 v18, v2

    .line 4440
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/keephealth/android/model/bean/UserBean;->getUserName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/keephealth/android/model/bean/UserBean;->getGender()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4441
    invoke-virtual/range {p1 .. p1}, Lcom/keephealth/android/model/bean/UserBean;->getYear()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual/range {p1 .. p1}, Lcom/keephealth/android/model/bean/UserBean;->getMonth()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    filled-new-array {v14}, [Ljava/lang/Object;

    move-result-object v14

    invoke-static {v2, v6, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual/range {p1 .. p1}, Lcom/keephealth/android/model/bean/UserBean;->getDay()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v2, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/keephealth/android/model/bean/UserBean;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mWeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4442
    invoke-virtual/range {p1 .. p1}, Lcom/keephealth/android/model/bean/UserBean;->getStepDistance()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\",\"appleHealth\":\"false\",\"lat\":\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4443
    invoke-virtual {v5}, Lcom/keephealth/android/model/bean/LocationBean;->getLatitude()D

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\",\"lon\":\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v5}, Lcom/keephealth/android/model/bean/LocationBean;->getLongitude()D

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\",\"country\":\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4444
    invoke-virtual {v5}, Lcom/keephealth/android/model/bean/LocationBean;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\",\"city\":\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v5}, Lcom/keephealth/android/model/bean/LocationBean;->getCity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\",\"unit\":\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/keephealth/android/model/bean/UserBean;->getUnit()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v2, v18

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v5, v17

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/keephealth/android/model/bean/UserBean;->getTemperatureUnit()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v2, v16

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_23f

    :cond_184
    move-object/from16 v19, v16

    .line 4446
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/keephealth/android/model/bean/UserBean;->getUserName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/keephealth/android/model/bean/UserBean;->getGender()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4447
    invoke-virtual/range {p1 .. p1}, Lcom/keephealth/android/model/bean/UserBean;->getYear()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual/range {p1 .. p1}, Lcom/keephealth/android/model/bean/UserBean;->getMonth()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    filled-new-array {v14}, [Ljava/lang/Object;

    move-result-object v14

    invoke-static {v5, v6, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual/range {p1 .. p1}, Lcom/keephealth/android/model/bean/UserBean;->getDay()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/keephealth/android/model/bean/UserBean;->getHeight()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v5, v0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mWeight:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4448
    invoke-virtual/range {p1 .. p1}, Lcom/keephealth/android/model/bean/UserBean;->getStepDistance()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "\",\"appleHealth\":\"false\",\"unit\":\""

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4449
    invoke-virtual/range {p1 .. p1}, Lcom/keephealth/android/model/bean/UserBean;->getUnit()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v2, v17

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/keephealth/android/model/bean/UserBean;->getTemperatureUnit()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v2, v19

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4453
    :goto_23f
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "WEIGHT:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mWeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FFDD221"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4454
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "jsonStr:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4456
    const-string v2, "application/json; charset=utf-8"

    invoke-static {v2}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v2

    invoke-static {v2, v1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v1

    .line 4457
    new-instance v2, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$52;

    move-object/from16 v3, p1

    invoke-direct {v2, v0, v3}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$52;-><init>(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;Lcom/keephealth/android/model/bean/UserBean;)V

    invoke-static {v1, v2}, Lcom/keephealth/android/model/net/http/UserHttp;->setUserInfo(Lokhttp3/RequestBody;Lcom/keephealth/android/model/net/ApiCallback;)V

    goto :goto_2cc

    :cond_27c
    move-object v3, v1

    .line 4505
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getConnected()Z

    move-result v1

    if-eqz v1, :cond_2c0

    .line 4506
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "weight2:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mWeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "gddde22d"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4507
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/keephealth/android/model/bean/UserBean;->getGender()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lcom/keephealth/android/model/bean/UserBean;->getAge()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Lcom/keephealth/android/model/bean/UserBean;->getHeight()I

    move-result v5

    iget v6, v0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mWeight:I

    invoke-virtual/range {p1 .. p1}, Lcom/keephealth/android/model/bean/UserBean;->getStepDistance()I

    move-result v3

    invoke-static {v2, v4, v5, v6, v3}, Lcom/keephealth/android/util/ble/CmdHelper;->getUserInfo(IIIII)[B

    move-result-object v2

    new-instance v3, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$53;

    invoke-direct {v3, v0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$53;-><init>(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)V

    invoke-virtual {v1, v2, v3}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([BLcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;)V

    goto :goto_2cc

    .line 4522
    :cond_2c0
    iget-object v1, v0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    if-eqz v1, :cond_2cc

    .line 4523
    iget-object v1, v0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    check-cast v1, Lcom/keephealth/android/persenter/main/MainFragmentContract$View;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/keephealth/android/persenter/main/MainFragmentContract$View;->saveUserBean(I)V

    :cond_2cc
    :goto_2cc
    return-void
.end method

.method public startFirstTime(I)V
    .registers 4

    .line 1610
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "startFirstTime:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ggf3r2"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public startTime()V
    .registers 1

    return-void
.end method

.method public stopTime()V
    .registers 3

    .line 1617
    iget-object v0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->task:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public stopWeather()V
    .registers 3

    .line 1622
    iget-object v0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->weatherTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synchDate()V
    .registers 5

    .line 415
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u5f00\u59cb\u540c\u6b65\u6570\u636e...50:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/keephealth/android/util/DiscoverServiceUtils;->discoverService()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "yyyt5"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x4

    .line 416
    sput v0, Lcom/keephealth/android/app/AppApplication;->sportItem:I

    const/4 v0, 0x1

    .line 417
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isHomeLoading:Z

    const/4 v0, 0x0

    .line 418
    const-string v1, "\u5f00\u59cb\u540c\u6b65\u6570\u636e..................."

    invoke-static {v0, v1}, Lcom/keephealth/android/util/FileUtilsTest;->writeTxtToFile(ZLjava/lang/String;)V

    .line 419
    iget-object v0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    if-eqz v0, :cond_31

    .line 420
    iget-object v0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    check-cast v0, Lcom/keephealth/android/persenter/main/MainFragmentContract$View;

    const/16 v1, 0x32

    invoke-interface {v0, v1}, Lcom/keephealth/android/persenter/main/MainFragmentContract$View;->updateProgress(I)V

    .line 422
    :cond_31
    invoke-static {}, Lcom/keephealth/android/util/DiscoverServiceUtils;->discoverService()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 423
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->clearQueue()V

    .line 424
    iget-object v0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4a
    return-void
.end method

.method public updateUser(Lcom/keephealth/android/model/bean/UserBean;)V
    .registers 12

    .line 3924
    const-string v0, "%02d"

    const-string v1, "-"

    .line 0
    const-string v2, "setUserInfo_jsonStr:"

    .line 3924
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    .line 3925
    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/UserBean;->getMedals()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 3926
    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/UserBean;->getSos()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 3927
    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/UserBean;->getWeight()F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mWeight:I

    const/16 v6, 0x12d

    if-le v5, v6, :cond_41

    .line 3929
    div-int/lit8 v5, v5, 0xa

    iput v5, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mWeight:I

    int-to-float v5, v5

    .line 3930
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-virtual {p1, v5}, Lcom/keephealth/android/model/bean/UserBean;->setWeight(F)V

    .line 3931
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/keephealth/android/app/AppApplication;->setUserBean(Lcom/keephealth/android/model/bean/UserBean;)V

    .line 3932
    invoke-static {p1}, Lcom/keephealth/android/util/SPHelper;->saveUserBean(Lcom/keephealth/android/model/bean/UserBean;)V

    goto :goto_45

    :cond_41
    mul-int/lit8 v5, v5, 0xa

    .line 3934
    iput v5, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mWeight:I

    .line 3937
    :goto_45
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 3939
    :try_start_4a
    const-string v6, "name"

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/UserBean;->getUserName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3940
    const-string v6, "sex"

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/UserBean;->getGender()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 3941
    const-string v6, "birthday"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/UserBean;->getYear()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/UserBean;->getMonth()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v9

    invoke-static {v8, v0, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/UserBean;->getDay()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    invoke-static {v7, v0, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3942
    const-string v0, "height"

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/UserBean;->getHeight()I

    move-result v1

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 3943
    const-string v0, "weight"

    iget v1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mWeight:I

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 3944
    const-string v0, "stepSize"

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/UserBean;->getStepDistance()I

    move-result v1

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 3945
    const-string v0, "appleHealth"

    const/4 v1, 0x0

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 3946
    const-string v0, "unit"

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/UserBean;->getUnit()I

    move-result v1

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_ce
    .catch Lorg/json/JSONException; {:try_start_4a .. :try_end_ce} :catch_160

    .line 3947
    const-string v0, "null"

    if-eqz v4, :cond_e8

    :try_start_d2
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_e8

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e8

    .line 3948
    const-string v1, "medals"

    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6, v4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_e8
    if-eqz v3, :cond_100

    .line 3950
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_100

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_100

    .line 3951
    const-string v0, "sos"

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3953
    :cond_100
    const-string v0, "temperatureUnit"

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/UserBean;->getTemperatureUnit()I

    move-result p1

    invoke-virtual {v5, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 3955
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/app/AppApplication;->getaMapLocation()Lcom/keephealth/android/model/bean/LocationBean;

    move-result-object p1

    if-eqz p1, :cond_137

    .line 3957
    const-string v0, "lat"

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/LocationBean;->getLatitude()D

    move-result-wide v3

    invoke-virtual {v5, v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 3958
    const-string v0, "lon"

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/LocationBean;->getLongitude()D

    move-result-wide v3

    invoke-virtual {v5, v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 3959
    const-string v0, "country"

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/LocationBean;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3960
    const-string v0, "city"

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/LocationBean;->getCity()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3963
    :cond_137
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3965
    const-string v0, "application/json; charset=utf-8"

    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    invoke-static {v0, p1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v0

    .line 3966
    const-string v1, "FF543f3"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3967
    new-instance p1, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$42;

    invoke-direct {p1, p0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$42;-><init>(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)V

    invoke-static {v0, p1}, Lcom/keephealth/android/model/net/http/UserHttp;->setUserInfo(Lokhttp3/RequestBody;Lcom/keephealth/android/model/net/ApiCallback;)V
    :try_end_15f
    .catch Lorg/json/JSONException; {:try_start_d2 .. :try_end_15f} :catch_160

    return-void

    :catch_160
    move-exception p1

    .line 3988
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public uploadCurrentStep(IIIII)V
    .registers 7

    .line 4531
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    invoke-static {p1, p2, p3, p4, p5}, Lcom/keephealth/android/util/ble/CmdHelper;->getUserInfo(IIIII)[B

    move-result-object p1

    sget-object p2, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->SERVICE:Ljava/util/UUID;

    sget-object p3, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->WRITE:Ljava/util/UUID;

    new-instance p4, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$54;

    invoke-direct {p4, p0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$54;-><init>(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)V

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([BLjava/util/UUID;Ljava/util/UUID;Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;)V

    return-void
.end method

.method public uploadDataHeart()V
    .registers 37

    move-object/from16 v0, p0

    .line 2887
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 2888
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/greendao/gen/DaoSession;->getHealthHeartRateDao()Lcom/keephealth/android/greendao/gen/HealthHeartRateDao;

    move-result-object v2

    .line 2889
    invoke-virtual {v2}, Lcom/keephealth/android/greendao/gen/HealthHeartRateDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    sget-object v3, Lcom/keephealth/android/greendao/gen/HealthHeartRateDao$Properties;->IsUploaded:Lorg/greenrobot/greendao/Property;

    const/4 v4, 0x0

    .line 2890
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v3

    new-array v5, v4, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v2, v3, v5}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    const/4 v3, 0x1

    new-array v5, v3, [Lorg/greenrobot/greendao/Property;

    sget-object v6, Lcom/keephealth/android/greendao/gen/HealthHeartRateDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    aput-object v6, v5, v4

    .line 2891
    invoke-virtual {v2, v5}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderDesc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v2

    invoke-virtual {v2}, Lorg/greenrobot/greendao/query/Query;->list()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_4ad

    .line 2892
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_4ad

    .line 2893
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v5

    invoke-virtual {v5}, Lcom/keephealth/android/greendao/gen/DaoSession;->getHealthHeartRateItemDao()Lcom/keephealth/android/greendao/gen/HealthHeartRateItemDao;

    move-result-object v5

    .line 2894
    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getBindBLEDevice()Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object v6

    if-eqz v6, :cond_75

    .line 2895
    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getBindBLEDevice()Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object v6

    iget-object v6, v6, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceAddress:Ljava/lang/String;

    if-eqz v6, :cond_65

    .line 2896
    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getBindBLEDevice()Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object v6

    iget-object v6, v6, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceAddress:Ljava/lang/String;

    iput-object v6, v0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->address:Ljava/lang/String;

    .line 2898
    :cond_65
    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getBindBLEDevice()Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object v6

    iget-object v6, v6, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceProduct:Ljava/lang/String;

    if-eqz v6, :cond_75

    .line 2899
    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getBindBLEDevice()Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object v6

    iget-object v6, v6, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceProduct:Ljava/lang/String;

    iput-object v6, v0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->product:Ljava/lang/String;

    .line 2902
    :cond_75
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    const-string v7, "|"

    const-string v8, "%1$02d:%2$02d"

    const-string v9, "\",\"duration\":\"1440\",\"uploadStatus\":\"0\"}"

    const-string v10, "\",\"model\":\""

    const-string v11, "\",\"mac\":\""

    const-string v12, "\",\"avg\":\""

    const-string v13, "\",\"min\":\""

    const-string v14, "\",\"max\":\""

    const-string v15, "\",\"dateTime\":\""

    const-string v3, "{\"mid\":\""

    const-string v4, "\u5fc3\u7387json\u6570\u636e\u65e7"

    move-object/from16 v18, v4

    const-string v4, "]"

    move-object/from16 v19, v4

    const-string v4, "["

    move-object/from16 v20, v9

    const-string v9, ","

    const/16 v21, 0x3c

    move-object/from16 v22, v10

    const-string v10, "%1$02d"

    const-string v0, "-"

    move-object/from16 v23, v11

    const/16 v11, 0x1e

    if-gt v6, v11, :cond_265

    .line 2903
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v4, 0x0

    .line 2904
    :goto_ad
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_23b

    .line 2905
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    .line 2906
    invoke-virtual {v5}, Lcom/keephealth/android/greendao/gen/HealthHeartRateItemDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v11

    move-object/from16 v24, v5

    sget-object v5, Lcom/keephealth/android/greendao/gen/HealthHeartRateItemDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    .line 2907
    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getYear()I

    move-result v25

    move/from16 v26, v4

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v4}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v4

    move-object/from16 v25, v2

    const/4 v5, 0x2

    new-array v2, v5, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v5, Lcom/keephealth/android/greendao/gen/HealthHeartRateItemDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getMonth()I

    move-result v27

    move-object/from16 v28, v12

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v5, v12}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v5

    const/4 v12, 0x0

    aput-object v5, v2, v12

    sget-object v5, Lcom/keephealth/android/greendao/gen/HealthHeartRateItemDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    .line 2908
    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getDay()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v5, v12}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v5

    const/4 v12, 0x1

    aput-object v5, v2, v12

    .line 2907
    invoke-virtual {v11, v4, v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    new-array v4, v12, [Lorg/greenrobot/greendao/Property;

    sget-object v5, Lcom/keephealth/android/greendao/gen/HealthHeartRateItemDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    const/4 v11, 0x0

    aput-object v5, v4, v11

    .line 2909
    invoke-virtual {v2, v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderAsc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v2

    invoke-virtual {v2}, Lorg/greenrobot/greendao/query/Query;->list()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_21b

    .line 2910
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_21b

    .line 2911
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/keephealth/android/app/AppApplication;->getUserBean()Lcom/keephealth/android/model/bean/UserBean;

    move-result-object v5

    invoke-virtual {v5}, Lcom/keephealth/android/model/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getYear()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getMonth()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    filled-new-array {v11}, [Ljava/lang/Object;

    move-result-object v11

    invoke-static {v5, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getDay()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    filled-new-array {v11}, [Ljava/lang/Object;

    move-result-object v11

    invoke-static {v5, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "\",\"deviceType\":\"0\",\"details\":\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v4, 0x0

    .line 2912
    :goto_171
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1c6

    .line 2913
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;

    .line 2914
    sget-object v11, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v5}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getOffsetMinute()I

    move-result v12

    div-int v12, v21, v12

    div-int v12, v4, v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v5}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getOffsetMinute()I

    move-result v27

    div-int v27, v21, v27

    rem-int v27, v4, v27

    invoke-virtual {v5}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getOffsetMinute()I

    move-result v29

    mul-int v27, v27, v29

    move-object/from16 v29, v10

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array {v12, v10}, [Ljava/lang/Object;

    move-result-object v10

    invoke-static {v11, v8, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 2915
    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v5}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHeartRaveValue()I

    move-result v5

    invoke-virtual {v10, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 2916
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    const/4 v10, 0x1

    sub-int/2addr v5, v10

    if-eq v4, v5, :cond_1c1

    .line 2917
    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1c1
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v10, v29

    goto :goto_171

    :cond_1c6
    move-object/from16 v29, v10

    .line 2921
    invoke-virtual {v1, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getMaxHr()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getMinHr()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    move-object/from16 v5, v28

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getAvgHr()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    move-object/from16 v6, v23

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    move-object/from16 v10, p0

    iget-object v4, v10, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->address:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    move-object/from16 v12, v22

    invoke-virtual {v2, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v4, v10, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->product:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    move-object/from16 v4, v20

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2922
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v2

    const/4 v11, 0x1

    sub-int/2addr v2, v11

    move/from16 v11, v26

    if-eq v11, v2, :cond_229

    .line 2923
    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_229

    :cond_21b
    move-object/from16 v29, v10

    move-object/from16 v4, v20

    move-object/from16 v12, v22

    move-object/from16 v6, v23

    move/from16 v11, v26

    move-object/from16 v5, v28

    move-object/from16 v10, p0

    :cond_229
    :goto_229
    add-int/lit8 v2, v11, 0x1

    move-object/from16 v20, v4

    move-object/from16 v23, v6

    move-object/from16 v22, v12

    move-object/from16 v10, v29

    move v4, v2

    move-object v12, v5

    move-object/from16 v5, v24

    move-object/from16 v2, v25

    goto/16 :goto_ad

    :cond_23b
    move-object/from16 v10, p0

    move-object/from16 v25, v2

    move-object/from16 v2, v19

    .line 2927
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2928
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v2, v18

    invoke-static {v2, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 2929
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v2, v25

    invoke-direct {v10, v0, v2}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->sendRequestHeart(Ljava/lang/String;Ljava/util/List;)V

    .line 2930
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    :cond_262
    move-object v5, v10

    goto/16 :goto_4ae

    :cond_265
    move-object/from16 v25, v2

    move-object/from16 v24, v5

    move-object/from16 v29, v10

    move-object v5, v12

    move-object/from16 v30, v18

    move-object/from16 v2, v20

    move-object/from16 v12, v22

    move-object/from16 v6, v23

    move-object/from16 v10, p0

    .line 2933
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v18

    rem-int/lit8 v18, v18, 0x1e

    if-nez v18, :cond_285

    .line 2934
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v18

    div-int/lit8 v18, v18, 0x1e

    goto :goto_28e

    .line 2936
    :cond_285
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v18

    div-int/lit8 v18, v18, 0x1e

    const/4 v11, 0x1

    add-int/lit8 v18, v18, 0x1

    :goto_28e
    move-object/from16 v20, v2

    move/from16 v11, v18

    .line 2938
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v22, v12

    const/4 v12, 0x0

    :goto_29a
    if-ge v12, v11, :cond_262

    .line 2940
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 2941
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v18, v12, 0x1

    move-object/from16 v23, v4

    mul-int/lit8 v4, v18, 0x1e

    move/from16 v26, v11

    .line 2943
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v11

    if-le v4, v11, :cond_2b4

    .line 2944
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v4

    :cond_2b4
    mul-int/lit8 v11, v12, 0x1e

    :goto_2b6
    if-ge v11, v4, :cond_466

    move/from16 v27, v4

    move-object/from16 v4, v25

    .line 2949
    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v28, v4

    move-object/from16 v4, v25

    check-cast v4, Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    .line 2950
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v25, v2

    .line 2951
    invoke-virtual/range {v24 .. v24}, Lcom/keephealth/android/greendao/gen/HealthHeartRateItemDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    move/from16 v31, v11

    sget-object v11, Lcom/keephealth/android/greendao/gen/HealthHeartRateItemDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    .line 2952
    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getYear()I

    move-result v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v11, v10}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v10

    move-object/from16 v17, v6

    const/4 v11, 0x2

    new-array v6, v11, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v11, Lcom/keephealth/android/greendao/gen/HealthHeartRateItemDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getMonth()I

    move-result v33

    move-object/from16 v34, v5

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v11, v5}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v5

    const/4 v11, 0x0

    aput-object v5, v6, v11

    sget-object v5, Lcom/keephealth/android/greendao/gen/HealthHeartRateItemDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    .line 2953
    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getDay()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v5, v11}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v5

    const/4 v11, 0x1

    aput-object v5, v6, v11

    .line 2952
    invoke-virtual {v2, v10, v6}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    new-array v5, v11, [Lorg/greenrobot/greendao/Property;

    sget-object v6, Lcom/keephealth/android/greendao/gen/HealthHeartRateItemDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    const/4 v10, 0x0

    aput-object v6, v5, v10

    .line 2954
    invoke-virtual {v2, v5}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderAsc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v2

    invoke-virtual {v2}, Lorg/greenrobot/greendao/query/Query;->list()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_43c

    .line 2955
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_43c

    .line 2956
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v6

    invoke-virtual {v6}, Lcom/keephealth/android/app/AppApplication;->getUserBean()Lcom/keephealth/android/model/bean/UserBean;

    move-result-object v6

    invoke-virtual {v6}, Lcom/keephealth/android/model/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getYear()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getMonth()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v10

    move-object/from16 v11, v29

    invoke-static {v6, v11, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getDay()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v10

    invoke-static {v6, v11, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "\",\"deviceType\":\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "\",\"details\":\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v5, 0x0

    .line 2957
    :goto_38f
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_3e8

    .line 2958
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;

    .line 2959
    sget-object v10, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getOffsetMinute()I

    move-result v29

    div-int v29, v21, v29

    div-int v29, v12, v29

    move-object/from16 v33, v0

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getOffsetMinute()I

    move-result v29

    div-int v29, v21, v29

    rem-int v29, v12, v29

    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getOffsetMinute()I

    move-result v35

    mul-int v29, v29, v35

    move-object/from16 v35, v3

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v10, v8, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2960
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHeartRaveValue()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 2961
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    if-eq v5, v0, :cond_3e1

    .line 2962
    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3e1
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, v33

    move-object/from16 v3, v35

    goto :goto_38f

    :cond_3e8
    move-object/from16 v33, v0

    move-object/from16 v35, v3

    const/4 v3, 0x1

    .line 2965
    invoke-virtual {v1, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getMaxHr()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getMinHr()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    move-object/from16 v2, v34

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getAvgHr()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    move-object/from16 v4, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    move-object/from16 v5, p0

    iget-object v6, v5, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->address:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    move-object/from16 v6, v22

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v10, v5, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->product:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    move-object/from16 v10, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v27, -0x1

    move/from16 v3, v31

    if-eq v3, v0, :cond_44e

    .line 2967
    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_44e

    :cond_43c
    move-object/from16 v5, p0

    move-object/from16 v33, v0

    move-object/from16 v35, v3

    move-object/from16 v4, v17

    move-object/from16 v10, v20

    move-object/from16 v6, v22

    move-object/from16 v11, v29

    move/from16 v3, v31

    move-object/from16 v2, v34

    :cond_44e
    :goto_44e
    add-int/lit8 v0, v3, 0x1

    move-object/from16 v22, v6

    move-object/from16 v20, v10

    move-object/from16 v29, v11

    move-object/from16 v3, v35

    move v11, v0

    move-object v6, v4

    move-object v10, v5

    move/from16 v4, v27

    move-object/from16 v0, v33

    move-object v5, v2

    move-object/from16 v2, v25

    move-object/from16 v25, v28

    goto/16 :goto_2b6

    :cond_466
    move-object/from16 v33, v0

    move-object/from16 v35, v3

    move-object v4, v6

    move-object/from16 v0, v19

    move-object/from16 v6, v22

    move-object/from16 v28, v25

    move-object/from16 v11, v29

    move-object/from16 v25, v2

    move-object v2, v5

    move-object v5, v10

    move-object/from16 v10, v20

    .line 2971
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2972
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v12, v30

    invoke-static {v12, v3}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 2973
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-direct {v5, v3, v0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->sendRequestHeart(Ljava/lang/String;Ljava/util/List;)V

    .line 2974
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v0, 0x0

    invoke-virtual {v1, v0, v3}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    move/from16 v12, v18

    move/from16 v11, v26

    move-object/from16 v0, v33

    move-object/from16 v3, v35

    move-object v6, v4

    move-object v10, v5

    move-object/from16 v4, v23

    move-object v5, v2

    move-object/from16 v2, v25

    move-object/from16 v25, v28

    goto/16 :goto_29a

    :cond_4ad
    move-object v5, v0

    :goto_4ae
    return-void
.end method

.method public uploadDataSleep()V
    .registers 37

    move-object/from16 v0, p0

    .line 3095
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 3096
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/greendao/gen/DaoSession;->getHealthSleepDao()Lcom/keephealth/android/greendao/gen/HealthSleepDao;

    move-result-object v2

    .line 3097
    invoke-virtual {v2}, Lcom/keephealth/android/greendao/gen/HealthSleepDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    sget-object v3, Lcom/keephealth/android/greendao/gen/HealthSleepDao$Properties;->IsUploaded:Lorg/greenrobot/greendao/Property;

    const/4 v4, 0x0

    .line 3109
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 3098
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v3

    new-array v6, v4, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v2, v3, v6}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    const/4 v3, 0x1

    new-array v6, v3, [Lorg/greenrobot/greendao/Property;

    sget-object v7, Lcom/keephealth/android/greendao/gen/HealthSleepDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    aput-object v7, v6, v4

    .line 3099
    invoke-virtual {v2, v6}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderDesc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v2

    invoke-virtual {v2}, Lorg/greenrobot/greendao/query/Query;->list()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_857

    .line 3100
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_857

    .line 3101
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v6

    invoke-virtual {v6}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v6

    invoke-virtual {v6}, Lcom/keephealth/android/greendao/gen/DaoSession;->getHealthSleepItemDao()Lcom/keephealth/android/greendao/gen/HealthSleepItemDao;

    move-result-object v6

    .line 3102
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    const-string v8, "0"

    const-string v9, "\",\"deviceType\":\""

    const-string v10, "\",\"dateTime\":\""

    const-string v11, "{\"mid\":\""

    const-string v12, "["

    const-string v15, "uploadDataSleepHigh: "

    const-string v13, "\u4e0a\u4f20\u7761\u7720\u6570\u636e"

    const-string v14, "%1$02d:%2$02d"

    const-string v3, "%1$02d"

    const-string v4, "-"

    const-string v0, "|"

    move-object/from16 v19, v13

    const-string v13, ","

    move-object/from16 v20, v15

    const/16 v15, 0x1e

    if-gt v7, v15, :cond_450

    const/4 v7, 0x0

    .line 3103
    :goto_78
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v15

    if-ge v7, v15, :cond_413

    .line 3104
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/keephealth/android/greendao/bean/HealthSleep;

    move/from16 v18, v7

    .line 3105
    invoke-virtual {v6}, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v7

    move-object/from16 v21, v2

    sget-object v2, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    .line 3106
    invoke-virtual {v15}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getYear()I

    move-result v22

    move-object/from16 v23, v13

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v2, v13}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v2

    move-object/from16 v22, v0

    const/4 v13, 0x4

    new-array v0, v13, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v13, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    invoke-virtual {v15}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getMonth()I

    move-result v24

    move-object/from16 v25, v14

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v13

    const/4 v14, 0x0

    aput-object v13, v0, v14

    sget-object v13, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    .line 3107
    invoke-virtual {v15}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getDay()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v13

    const/4 v14, 0x1

    aput-object v13, v0, v14

    sget-object v13, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao$Properties;->Hour:Lorg/greenrobot/greendao/Property;

    const/16 v16, 0xb

    .line 3108
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Lorg/greenrobot/greendao/Property;->lt(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v13

    const/4 v14, 0x2

    aput-object v13, v0, v14

    sget-object v13, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao$Properties;->SleepStatus:Lorg/greenrobot/greendao/Property;

    .line 3109
    invoke-virtual {v13, v5}, Lorg/greenrobot/greendao/Property;->notEq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v13

    const/4 v14, 0x3

    aput-object v13, v0, v14

    .line 3106
    invoke-virtual {v7, v2, v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    const/4 v2, 0x1

    new-array v7, v2, [Lorg/greenrobot/greendao/Property;

    sget-object v13, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    const/4 v14, 0x0

    aput-object v13, v7, v14

    .line 3110
    invoke-virtual {v0, v7}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderAsc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/Query;->list()Ljava/util/List;

    move-result-object v0

    .line 3111
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 3112
    invoke-virtual {v15}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getYear()I

    move-result v13

    invoke-virtual {v7, v2, v13}, Ljava/util/Calendar;->set(II)V

    .line 3113
    invoke-virtual {v15}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getMonth()I

    move-result v13

    sub-int/2addr v13, v2

    const/4 v14, 0x2

    invoke-virtual {v7, v14, v13}, Ljava/util/Calendar;->set(II)V

    .line 3114
    invoke-virtual {v15}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getDay()I

    move-result v13

    sub-int/2addr v13, v2

    const/4 v14, 0x5

    invoke-virtual {v7, v14, v13}, Ljava/util/Calendar;->set(II)V

    .line 3115
    invoke-virtual {v7, v2}, Ljava/util/Calendar;->get(I)I

    move-result v13

    const/4 v14, 0x2

    .line 3116
    invoke-virtual {v7, v14}, Ljava/util/Calendar;->get(I)I

    move-result v17

    add-int/lit8 v14, v17, 0x1

    const/4 v2, 0x5

    .line 3117
    invoke-virtual {v7, v2}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 3123
    invoke-virtual {v6}, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    move-object/from16 v24, v6

    sget-object v6, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    .line 3124
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v6, v13}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v6

    move-object/from16 v26, v8

    const/4 v13, 0x4

    new-array v8, v13, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v13, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v13

    const/4 v14, 0x0

    aput-object v13, v8, v14

    sget-object v13, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    .line 3125
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v13, v7}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v7

    const/4 v13, 0x1

    aput-object v7, v8, v13

    sget-object v7, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao$Properties;->Hour:Lorg/greenrobot/greendao/Property;

    const/16 v14, 0x15

    .line 3126
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v7, v13}, Lorg/greenrobot/greendao/Property;->ge(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v7

    const/4 v13, 0x2

    aput-object v7, v8, v13

    sget-object v7, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao$Properties;->SleepStatus:Lorg/greenrobot/greendao/Property;

    .line 3127
    invoke-virtual {v7, v5}, Lorg/greenrobot/greendao/Property;->notEq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v7

    const/4 v13, 0x3

    aput-object v7, v8, v13

    .line 3124
    invoke-virtual {v2, v6, v8}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    const/4 v6, 0x1

    new-array v7, v6, [Lorg/greenrobot/greendao/Property;

    sget-object v6, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    const/4 v8, 0x0

    aput-object v6, v7, v8

    .line 3128
    invoke-virtual {v2, v7}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderAsc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v2

    invoke-virtual {v2}, Lorg/greenrobot/greendao/query/Query;->list()Ljava/util/List;

    move-result-object v2

    if-eqz v0, :cond_3e0

    .line 3129
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_3e0

    .line 3130
    invoke-virtual {v1, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3131
    invoke-virtual {v1, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v7

    invoke-virtual {v7}, Lcom/keephealth/android/app/AppApplication;->getUserBean()Lcom/keephealth/android/model/bean/UserBean;

    move-result-object v7

    invoke-virtual {v7}, Lcom/keephealth/android/model/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v15}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getYear()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v15}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getMonth()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    invoke-static {v7, v3, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v15}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getDay()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    invoke-static {v7, v3, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    move-object/from16 v7, v26

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v8, "\",\"details\":\""

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz v2, :cond_2b3

    .line 3132
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_2b3

    move-object/from16 v27, v5

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v26, 0x0

    .line 3133
    :goto_200
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v6, v5, :cond_2a4

    .line 3134
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    move-object/from16 v28, v2

    .line 3135
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v5}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getHour()I

    move-result v29

    move-object/from16 v30, v7

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getMinuter()I

    move-result v29

    move-object/from16 v31, v9

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    filled-new-array {v7, v9}, [Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v9, v25

    invoke-static {v2, v9, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 3136
    invoke-virtual {v5}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v7

    if-eqz v7, :cond_257

    .line 3137
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    move-object/from16 v7, v22

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    move-object/from16 v22, v3

    invoke-virtual {v5}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "10"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object/from16 v2, v23

    .line 3138
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_25d

    :cond_257
    move-object/from16 v7, v22

    move-object/from16 v2, v23

    move-object/from16 v22, v3

    .line 3140
    :goto_25d
    invoke-virtual {v5}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v3

    move-object/from16 v23, v4

    const/4 v4, 0x1

    if-ne v3, v4, :cond_269

    add-int/lit8 v13, v13, 0xa

    goto :goto_290

    .line 3142
    :cond_269
    invoke-virtual {v5}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_273

    add-int/lit8 v14, v14, 0xa

    goto :goto_290

    .line 3144
    :cond_273
    invoke-virtual {v5}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_27d

    add-int/lit8 v15, v15, 0xa

    goto :goto_290

    .line 3146
    :cond_27d
    invoke-virtual {v5}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_287

    add-int/lit8 v26, v26, 0xa

    goto :goto_290

    .line 3148
    :cond_287
    invoke-virtual {v5}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_290

    add-int/lit8 v8, v8, 0xa

    :cond_290
    :goto_290
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v25, v9

    move-object/from16 v3, v22

    move-object/from16 v4, v23

    move-object/from16 v9, v31

    move-object/from16 v23, v2

    move-object/from16 v22, v7

    move-object/from16 v2, v28

    move-object/from16 v7, v30

    goto/16 :goto_200

    :cond_2a4
    move-object/from16 v30, v7

    move-object/from16 v31, v9

    move-object/from16 v7, v22

    move-object/from16 v2, v23

    move-object/from16 v9, v25

    move-object/from16 v22, v3

    move-object/from16 v23, v4

    goto :goto_2c9

    :cond_2b3
    move-object/from16 v27, v5

    move-object/from16 v30, v7

    move-object/from16 v31, v9

    move-object/from16 v7, v22

    move-object/from16 v2, v23

    move-object/from16 v9, v25

    move-object/from16 v22, v3

    move-object/from16 v23, v4

    const/4 v8, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v26, 0x0

    :goto_2c9
    move/from16 v4, v26

    const/4 v3, 0x0

    .line 3153
    :goto_2cc
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_35c

    .line 3154
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    .line 3155
    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v5}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getHour()I

    move-result v25

    move-object/from16 v26, v10

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v5}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getMinuter()I

    move-result v25

    move-object/from16 v28, v11

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    filled-new-array {v10, v11}, [Ljava/lang/Object;

    move-result-object v10

    invoke-static {v6, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 3156
    invoke-virtual {v5}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v10

    if-eqz v10, :cond_323

    .line 3157
    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v5}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v5}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getOffsetMinute()I

    move-result v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 3158
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    const/4 v10, 0x1

    sub-int/2addr v6, v10

    if-eq v3, v6, :cond_324

    .line 3159
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_324

    :cond_323
    const/4 v10, 0x1

    .line 3162
    :cond_324
    :goto_324
    invoke-virtual {v5}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v6

    if-ne v6, v10, :cond_32d

    add-int/lit8 v13, v13, 0xa

    goto :goto_354

    .line 3164
    :cond_32d
    invoke-virtual {v5}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v6

    const/4 v10, 0x3

    if-ne v6, v10, :cond_337

    add-int/lit8 v14, v14, 0xa

    goto :goto_354

    .line 3166
    :cond_337
    invoke-virtual {v5}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v6

    const/4 v10, 0x2

    if-ne v6, v10, :cond_341

    add-int/lit8 v15, v15, 0xa

    goto :goto_354

    .line 3168
    :cond_341
    invoke-virtual {v5}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v6

    const/4 v10, 0x4

    if-ne v6, v10, :cond_34b

    add-int/lit8 v4, v4, 0xa

    goto :goto_354

    .line 3170
    :cond_34b
    invoke-virtual {v5}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v5

    const/4 v6, 0x5

    if-ne v5, v6, :cond_354

    add-int/lit8 v8, v8, 0xa

    :cond_354
    :goto_354
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v10, v26

    move-object/from16 v11, v28

    goto/16 :goto_2cc

    :cond_35c
    move-object/from16 v26, v10

    move-object/from16 v28, v11

    .line 3174
    const-string v0, "\",\"beginDuration\":\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v3, "\",\"lightDuration\":\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v3, "\",\"deepDuration\":\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v3, "\",\"awakeDuration\":\""

    .line 3175
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v3, "\",\"remDuration\":\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v3, "\",\"mac\":\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getBindBLEDevice()Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object v3

    iget-object v3, v3, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v3, "\",\"model\":\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getBindBLEDevice()Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object v3

    iget-object v3, v3, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceProduct:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v3, "\",\"duration\":\"1440\",\"uploadStatus\":\"0\"}"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3176
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    move/from16 v4, v18

    if-eq v4, v0, :cond_3c4

    .line 3177
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3179
    :cond_3c4
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3da

    .line 3180
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    invoke-virtual {v1, v0, v3}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 3182
    :cond_3da
    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3f6

    :cond_3e0
    move-object/from16 v27, v5

    move-object/from16 v31, v9

    move-object/from16 v28, v11

    move-object/from16 v7, v22

    move-object/from16 v2, v23

    move-object/from16 v9, v25

    move-object/from16 v30, v26

    move-object/from16 v22, v3

    move-object/from16 v23, v4

    move-object/from16 v26, v10

    move/from16 v4, v18

    :goto_3f6
    add-int/lit8 v0, v4, 0x1

    move-object v13, v2

    move-object v14, v9

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    move-object/from16 v4, v23

    move-object/from16 v6, v24

    move-object/from16 v10, v26

    move-object/from16 v5, v27

    move-object/from16 v11, v28

    move-object/from16 v8, v30

    move-object/from16 v9, v31

    move-object/from16 v35, v7

    move v7, v0

    move-object/from16 v0, v35

    goto/16 :goto_78

    :cond_413
    move-object/from16 v21, v2

    .line 3185
    new-instance v0, Ljava/lang/StringBuilder;

    move-object/from16 v3, v20

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v4, v19

    invoke-static {v4, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 3186
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_44c

    .line 3187
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v5, p0

    move-object/from16 v6, v21

    invoke-direct {v5, v0, v6}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->sendRequestSleep(Ljava/lang/String;Ljava/util/List;)V

    .line 3188
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    goto/16 :goto_855

    :cond_44c
    move-object/from16 v8, p0

    goto/16 :goto_858

    :cond_450
    move-object/from16 v5, p0

    move-object v7, v0

    move-object/from16 v22, v3

    move-object/from16 v23, v4

    move-object/from16 v24, v6

    move-object/from16 v30, v8

    move-object/from16 v31, v9

    move-object/from16 v26, v10

    move-object/from16 v28, v11

    move-object v9, v14

    move-object/from16 v4, v19

    move-object/from16 v3, v20

    move-object v6, v2

    move-object v2, v13

    .line 3192
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    const/16 v8, 0x1e

    rem-int/2addr v0, v8

    if-nez v0, :cond_477

    .line 3193
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    div-int/2addr v0, v8

    goto :goto_47e

    .line 3195
    :cond_477
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    div-int/2addr v0, v8

    const/4 v8, 0x1

    add-int/2addr v0, v8

    .line 3197
    :goto_47e
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/4 v10, 0x0

    :goto_484
    if-ge v10, v0, :cond_855

    .line 3199
    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 3200
    invoke-virtual {v1, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v11, v10, 0x1

    mul-int/lit8 v13, v11, 0x1e

    .line 3202
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v14

    if-le v13, v14, :cond_49a

    .line 3203
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v13

    :cond_49a
    mul-int/lit8 v10, v10, 0x1e

    :goto_49c
    if-ge v10, v13, :cond_7e6

    .line 3208
    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/keephealth/android/greendao/bean/HealthSleep;

    .line 3209
    invoke-interface {v8, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3210
    invoke-virtual/range {v24 .. v24}, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v15

    move/from16 v18, v0

    sget-object v0, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    .line 3211
    invoke-virtual {v14}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getYear()I

    move-result v19

    move-object/from16 v21, v6

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v0

    move/from16 v19, v11

    const/4 v6, 0x3

    new-array v11, v6, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v6, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    invoke-virtual {v14}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getMonth()I

    move-result v20

    move-object/from16 v25, v12

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v6, v12}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v6

    const/4 v12, 0x0

    aput-object v6, v11, v12

    sget-object v6, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    .line 3212
    invoke-virtual {v14}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getDay()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v6, v12}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v6

    const/4 v12, 0x1

    aput-object v6, v11, v12

    sget-object v6, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao$Properties;->Hour:Lorg/greenrobot/greendao/Property;

    const/16 v16, 0xb

    .line 3213
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v6, v12}, Lorg/greenrobot/greendao/Property;->lt(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v6

    const/4 v12, 0x2

    aput-object v6, v11, v12

    .line 3211
    invoke-virtual {v15, v0, v11}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    const/4 v6, 0x1

    new-array v11, v6, [Lorg/greenrobot/greendao/Property;

    sget-object v12, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    const/4 v15, 0x0

    aput-object v12, v11, v15

    .line 3214
    invoke-virtual {v0, v11}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderAsc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/Query;->list()Ljava/util/List;

    move-result-object v0

    .line 3215
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v11

    .line 3216
    invoke-virtual {v14}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getYear()I

    move-result v12

    invoke-virtual {v11, v6, v12}, Ljava/util/Calendar;->set(II)V

    .line 3217
    invoke-virtual {v14}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getMonth()I

    move-result v12

    sub-int/2addr v12, v6

    const/4 v15, 0x2

    invoke-virtual {v11, v15, v12}, Ljava/util/Calendar;->set(II)V

    .line 3218
    invoke-virtual {v14}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getDay()I

    move-result v12

    sub-int/2addr v12, v6

    const/4 v15, 0x5

    invoke-virtual {v11, v15, v12}, Ljava/util/Calendar;->set(II)V

    .line 3219
    invoke-virtual {v11, v6}, Ljava/util/Calendar;->get(I)I

    move-result v12

    const/4 v15, 0x2

    .line 3220
    invoke-virtual {v11, v15}, Ljava/util/Calendar;->get(I)I

    move-result v17

    add-int/lit8 v15, v17, 0x1

    const/4 v6, 0x5

    .line 3221
    invoke-virtual {v11, v6}, Ljava/util/Calendar;->get(I)I

    move-result v11

    .line 3227
    invoke-virtual/range {v24 .. v24}, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v6

    sget-object v5, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    .line 3228
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v5, v12}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v5

    move-object/from16 v20, v8

    const/4 v12, 0x3

    new-array v8, v12, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v12, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v12, v15}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v12

    const/4 v15, 0x0

    aput-object v12, v8, v15

    sget-object v12, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    .line 3229
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v12, v11}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v11

    const/4 v12, 0x1

    aput-object v11, v8, v12

    sget-object v11, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao$Properties;->Hour:Lorg/greenrobot/greendao/Property;

    const/16 v15, 0x15

    .line 3230
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/greenrobot/greendao/Property;->ge(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v11

    const/4 v12, 0x2

    aput-object v11, v8, v12

    .line 3228
    invoke-virtual {v6, v5, v8}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v5

    const/4 v6, 0x1

    new-array v8, v6, [Lorg/greenrobot/greendao/Property;

    sget-object v6, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    const/4 v11, 0x0

    aput-object v6, v8, v11

    .line 3231
    invoke-virtual {v5, v8}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderAsc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v5

    invoke-virtual {v5}, Lorg/greenrobot/greendao/query/Query;->list()Ljava/util/List;

    move-result-object v5

    move-object/from16 v6, v28

    .line 3232
    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v11

    invoke-virtual {v11}, Lcom/keephealth/android/app/AppApplication;->getUserBean()Lcom/keephealth/android/model/bean/UserBean;

    move-result-object v11

    invoke-virtual {v11}, Lcom/keephealth/android/model/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    move-object/from16 v11, v26

    invoke-virtual {v8, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v14}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getYear()I

    move-result v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v8

    move-object/from16 v12, v23

    invoke-virtual {v8, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    sget-object v15, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v14}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getMonth()I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    filled-new-array/range {v23 .. v23}, [Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v11, v22

    invoke-static {v15, v11, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    sget-object v8, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v14}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getDay()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    filled-new-array {v14}, [Ljava/lang/Object;

    move-result-object v14

    invoke-static {v8, v11, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    move-object/from16 v8, v31

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    move-object/from16 v14, v30

    invoke-virtual {v6, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v15, "\",\"details\":\""

    invoke-virtual {v6, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz v5, :cond_69f

    .line 3233
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_69f

    move-object/from16 v31, v8

    const/4 v6, 0x0

    const/4 v15, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v27, 0x0

    const/16 v29, 0x0

    .line 3234
    :goto_60f
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-ge v6, v8, :cond_69a

    .line 3235
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    move-object/from16 v30, v5

    .line 3236
    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v8}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getHour()I

    move-result v32

    move-object/from16 v33, v11

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v8}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getMinuter()I

    move-result v32

    move-object/from16 v34, v12

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    filled-new-array {v11, v12}, [Ljava/lang/Object;

    move-result-object v11

    invoke-static {v5, v9, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 3237
    invoke-virtual {v8}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v11

    if-eqz v11, :cond_65f

    .line 3238
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v8}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v8}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getOffsetMinute()I

    move-result v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 3239
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3241
    :cond_65f
    invoke-virtual {v8}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v5

    const/4 v11, 0x1

    if-ne v5, v11, :cond_669

    add-int/lit8 v15, v15, 0xa

    goto :goto_690

    .line 3243
    :cond_669
    invoke-virtual {v8}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v5

    const/4 v11, 0x3

    if-ne v5, v11, :cond_673

    add-int/lit8 v22, v22, 0xa

    goto :goto_690

    .line 3245
    :cond_673
    invoke-virtual {v8}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v5

    const/4 v11, 0x2

    if-ne v5, v11, :cond_67d

    add-int/lit8 v23, v23, 0xa

    goto :goto_690

    .line 3247
    :cond_67d
    invoke-virtual {v8}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v5

    const/4 v11, 0x4

    if-ne v5, v11, :cond_687

    add-int/lit8 v27, v27, 0xa

    goto :goto_690

    .line 3249
    :cond_687
    invoke-virtual {v8}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v5

    const/4 v8, 0x5

    if-ne v5, v8, :cond_690

    add-int/lit8 v29, v29, 0xa

    :cond_690
    :goto_690
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v5, v30

    move-object/from16 v11, v33

    move-object/from16 v12, v34

    goto/16 :goto_60f

    :cond_69a
    move-object/from16 v33, v11

    move-object/from16 v34, v12

    goto :goto_6ae

    :cond_69f
    move-object/from16 v31, v8

    move-object/from16 v33, v11

    move-object/from16 v34, v12

    const/4 v15, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v27, 0x0

    const/16 v29, 0x0

    :goto_6ae
    if-eqz v0, :cond_7c3

    .line 3254
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_7c3

    move-object/from16 v30, v14

    move/from16 v6, v22

    move/from16 v8, v23

    move/from16 v11, v27

    move/from16 v12, v29

    const/4 v5, 0x0

    .line 3255
    :goto_6c1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v14

    if-ge v5, v14, :cond_759

    .line 3256
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    move-object/from16 v22, v4

    .line 3257
    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v14}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getHour()I

    move-result v23

    move-object/from16 v27, v3

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v14}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getMinuter()I

    move-result v23

    move/from16 v29, v10

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array {v3, v10}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v4, v9, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 3258
    invoke-virtual {v14}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v4

    if-eqz v4, :cond_71a

    .line 3259
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v14}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v14}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getOffsetMinute()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 3260
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    if-eq v5, v3, :cond_71b

    .line 3261
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_71b

    :cond_71a
    const/4 v4, 0x1

    .line 3264
    :cond_71b
    :goto_71b
    invoke-virtual {v14}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v3

    if-ne v3, v4, :cond_727

    add-int/lit8 v15, v15, 0xa

    :goto_723
    const/4 v4, 0x4

    const/4 v10, 0x2

    :goto_725
    const/4 v14, 0x5

    goto :goto_74f

    .line 3266
    :cond_727
    invoke-virtual {v14}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_731

    add-int/lit8 v6, v6, 0xa

    goto :goto_723

    .line 3268
    :cond_731
    invoke-virtual {v14}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v3

    const/4 v10, 0x2

    if-ne v3, v10, :cond_73c

    add-int/lit8 v8, v8, 0xa

    const/4 v4, 0x4

    goto :goto_725

    .line 3270
    :cond_73c
    invoke-virtual {v14}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_746

    add-int/lit8 v11, v11, 0xa

    goto :goto_725

    .line 3272
    :cond_746
    invoke-virtual {v14}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v3

    const/4 v14, 0x5

    if-ne v3, v14, :cond_74f

    add-int/lit8 v12, v12, 0xa

    :cond_74f
    :goto_74f
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v4, v22

    move-object/from16 v3, v27

    move/from16 v10, v29

    goto/16 :goto_6c1

    :cond_759
    move-object/from16 v27, v3

    move-object/from16 v22, v4

    move/from16 v29, v10

    const/4 v4, 0x4

    const/4 v10, 0x2

    const/4 v14, 0x5

    .line 3276
    const-string v0, "\",\"beginDuration\":\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v3, "\",\"lightDuration\":\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v3, "\",\"deepDuration\":\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v3, "\",\"awakeDuration\":\""

    .line 3277
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v3, "\",\"remDuration\":\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v3, "\",\"mac\":\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getBindBLEDevice()Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object v3

    iget-object v3, v3, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v3, "\",\"model\":\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getBindBLEDevice()Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object v3

    iget-object v3, v3, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceProduct:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v3, "\",\"duration\":\"1440\",\"uploadStatus\":\"0\"}"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v13, -0x1

    move/from16 v3, v29

    if-eq v3, v0, :cond_7cd

    .line 3279
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_7cd

    :cond_7c3
    move-object/from16 v27, v3

    move-object/from16 v22, v4

    move v3, v10

    move-object/from16 v30, v14

    const/4 v4, 0x4

    const/4 v10, 0x2

    const/4 v14, 0x5

    :cond_7cd
    :goto_7cd
    add-int/lit8 v0, v3, 0x1

    move-object/from16 v5, p0

    move v10, v0

    move/from16 v0, v18

    move/from16 v11, v19

    move-object/from16 v8, v20

    move-object/from16 v6, v21

    move-object/from16 v4, v22

    move-object/from16 v12, v25

    move-object/from16 v3, v27

    move-object/from16 v22, v33

    move-object/from16 v23, v34

    goto/16 :goto_49c

    :cond_7e6
    move/from16 v18, v0

    move-object/from16 v27, v3

    move-object/from16 v21, v6

    move-object/from16 v20, v8

    move/from16 v19, v11

    move-object/from16 v25, v12

    move-object/from16 v33, v22

    move-object/from16 v34, v23

    const/4 v10, 0x2

    const/4 v14, 0x5

    const/16 v16, 0xb

    move-object/from16 v22, v4

    const/4 v4, 0x4

    .line 3283
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_812

    .line 3284
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v0}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    goto :goto_813

    :cond_812
    const/4 v3, 0x1

    .line 3286
    :goto_813
    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3287
    new-instance v0, Ljava/lang/StringBuilder;

    move-object/from16 v5, v27

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v6, v22

    invoke-static {v6, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 3288
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v8, p0

    move-object/from16 v11, v20

    invoke-direct {v8, v0, v11}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->sendRequestSleep(Ljava/lang/String;Ljava/util/List;)V

    .line 3289
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v12, 0x0

    invoke-virtual {v1, v12, v0}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    move-object v3, v5

    move-object v4, v6

    move-object v5, v8

    move-object v8, v11

    move/from16 v0, v18

    move/from16 v10, v19

    move-object/from16 v6, v21

    move-object/from16 v12, v25

    move-object/from16 v22, v33

    move-object/from16 v23, v34

    goto/16 :goto_484

    :cond_855
    :goto_855
    move-object v8, v5

    goto :goto_858

    :cond_857
    move-object v8, v0

    :goto_858
    return-void
.end method

.method public uploadDataSleepHigh()V
    .registers 38

    move-object/from16 v0, p0

    .line 3296
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 3297
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/greendao/gen/DaoSession;->getHealthSleepDao()Lcom/keephealth/android/greendao/gen/HealthSleepDao;

    move-result-object v2

    .line 3298
    invoke-virtual {v2}, Lcom/keephealth/android/greendao/gen/HealthSleepDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    sget-object v3, Lcom/keephealth/android/greendao/gen/HealthSleepDao$Properties;->IsUploaded:Lorg/greenrobot/greendao/Property;

    const/4 v4, 0x0

    .line 3310
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 3299
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v3

    new-array v6, v4, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v2, v3, v6}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    const/4 v3, 0x1

    new-array v6, v3, [Lorg/greenrobot/greendao/Property;

    sget-object v7, Lcom/keephealth/android/greendao/gen/HealthSleepDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    aput-object v7, v6, v4

    .line 3300
    invoke-virtual {v2, v6}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderDesc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v2

    invoke-virtual {v2}, Lorg/greenrobot/greendao/query/Query;->list()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_8bc

    .line 3301
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_8bc

    .line 3302
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v6

    invoke-virtual {v6}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v6

    invoke-virtual {v6}, Lcom/keephealth/android/greendao/gen/DaoSession;->getHealthSleepItemDao()Lcom/keephealth/android/greendao/gen/HealthSleepItemDao;

    move-result-object v6

    .line 3303
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    const-string v8, "\",\"deepDuration\":\""

    const-string v9, "\",\"lightDuration\":\""

    const-string v10, "\",\"beginDuration\":\""

    const-string v11, "\",\"details\":\""

    const-string v12, "0"

    const-string v13, "\",\"deviceType\":\""

    const-string v14, "\",\"dateTime\":\""

    const-string v15, "{\"mid\":\""

    const-string v3, "["

    const-string v4, "%1$02d:%2$02d"

    const-string v0, "%1$02d"

    move-object/from16 v17, v8

    const-string v8, "-"

    const/16 v18, 0x14

    move-object/from16 v19, v9

    const-string v9, "|"

    move-object/from16 v21, v10

    const-string v10, ","

    move-object/from16 v22, v10

    const/16 v10, 0x1e

    if-gt v7, v10, :cond_48d

    const/4 v7, 0x0

    .line 3304
    :goto_82
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v10

    if-ge v7, v10, :cond_464

    .line 3305
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/keephealth/android/greendao/bean/HealthSleep;

    move/from16 v20, v7

    .line 3306
    invoke-virtual {v6}, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v7

    move-object/from16 v23, v2

    sget-object v2, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    .line 3307
    invoke-virtual {v10}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getYear()I

    move-result v24

    move-object/from16 v25, v9

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v9}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v2

    move-object/from16 v24, v4

    const/4 v9, 0x4

    new-array v4, v9, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v9, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    invoke-virtual {v10}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getMonth()I

    move-result v26

    move-object/from16 v27, v11

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v11}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v9

    const/4 v11, 0x0

    aput-object v9, v4, v11

    sget-object v9, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    .line 3308
    invoke-virtual {v10}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getDay()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v11}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v9

    const/4 v11, 0x1

    aput-object v9, v4, v11

    sget-object v9, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao$Properties;->Hour:Lorg/greenrobot/greendao/Property;

    .line 3309
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v11}, Lorg/greenrobot/greendao/Property;->lt(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v9

    const/4 v11, 0x2

    aput-object v9, v4, v11

    sget-object v9, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao$Properties;->SleepStatus:Lorg/greenrobot/greendao/Property;

    .line 3310
    invoke-virtual {v9, v5}, Lorg/greenrobot/greendao/Property;->notEq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v9

    const/4 v11, 0x3

    aput-object v9, v4, v11

    .line 3307
    invoke-virtual {v7, v2, v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    const/4 v4, 0x1

    new-array v7, v4, [Lorg/greenrobot/greendao/Property;

    sget-object v9, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    const/4 v11, 0x0

    aput-object v9, v7, v11

    .line 3311
    invoke-virtual {v2, v7}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderAsc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v2

    invoke-virtual {v2}, Lorg/greenrobot/greendao/query/Query;->list()Ljava/util/List;

    move-result-object v2

    .line 3312
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 3313
    invoke-virtual {v10}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getYear()I

    move-result v9

    invoke-virtual {v7, v4, v9}, Ljava/util/Calendar;->set(II)V

    .line 3314
    invoke-virtual {v10}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getMonth()I

    move-result v9

    sub-int/2addr v9, v4

    const/4 v11, 0x2

    invoke-virtual {v7, v11, v9}, Ljava/util/Calendar;->set(II)V

    .line 3315
    invoke-virtual {v10}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getDay()I

    move-result v9

    sub-int/2addr v9, v4

    const/4 v11, 0x5

    invoke-virtual {v7, v11, v9}, Ljava/util/Calendar;->set(II)V

    .line 3316
    invoke-virtual {v7, v4}, Ljava/util/Calendar;->get(I)I

    move-result v9

    const/4 v11, 0x2

    .line 3317
    invoke-virtual {v7, v11}, Ljava/util/Calendar;->get(I)I

    move-result v16

    add-int/lit8 v11, v16, 0x1

    const/4 v4, 0x5

    .line 3318
    invoke-virtual {v7, v4}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 3324
    invoke-virtual {v6}, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v4

    move-object/from16 v26, v6

    sget-object v6, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    .line 3325
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v9}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v6

    move-object/from16 v28, v12

    const/4 v9, 0x4

    new-array v12, v9, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v9, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v11}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v9

    const/4 v11, 0x0

    aput-object v9, v12, v11

    sget-object v9, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    .line 3326
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v9, v7}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v7

    const/4 v9, 0x1

    aput-object v7, v12, v9

    sget-object v7, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao$Properties;->Hour:Lorg/greenrobot/greendao/Property;

    .line 3327
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v7, v11}, Lorg/greenrobot/greendao/Property;->ge(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v7

    const/4 v11, 0x2

    aput-object v7, v12, v11

    sget-object v7, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao$Properties;->SleepStatus:Lorg/greenrobot/greendao/Property;

    .line 3328
    invoke-virtual {v7, v5}, Lorg/greenrobot/greendao/Property;->notEq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v7

    const/4 v11, 0x3

    aput-object v7, v12, v11

    .line 3325
    invoke-virtual {v4, v6, v12}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v4

    new-array v6, v9, [Lorg/greenrobot/greendao/Property;

    sget-object v7, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    const/4 v9, 0x0

    aput-object v7, v6, v9

    .line 3329
    invoke-virtual {v4, v6}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderAsc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v4

    invoke-virtual {v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v4

    invoke-virtual {v4}, Lorg/greenrobot/greendao/query/Query;->list()Ljava/util/List;

    move-result-object v4

    if-eqz v2, :cond_423

    .line 3330
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_423

    .line 3331
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3332
    invoke-virtual {v1, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v7

    invoke-virtual {v7}, Lcom/keephealth/android/app/AppApplication;->getUserBean()Lcom/keephealth/android/model/bean/UserBean;

    move-result-object v7

    invoke-virtual {v7}, Lcom/keephealth/android/model/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v10}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getYear()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v10}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getMonth()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v9

    invoke-static {v7, v0, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v10}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getDay()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v9

    invoke-static {v7, v0, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    move-object/from16 v7, v28

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    move-object/from16 v9, v27

    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz v4, :cond_2ca

    .line 3333
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_2ca

    move-object/from16 v29, v5

    const/4 v6, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    .line 3334
    :goto_206
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ge v6, v5, :cond_2bb

    .line 3335
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    move-object/from16 v30, v4

    .line 3336
    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v5}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getHour()I

    move-result v31

    move-object/from16 v32, v9

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getMinuter()I

    move-result v31

    move-object/from16 v33, v7

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v9, v7}, [Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v9, v24

    invoke-static {v4, v9, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 3337
    invoke-virtual {v5}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v7

    if-eqz v7, :cond_25d

    .line 3338
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    move-object/from16 v7, v25

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    move-object/from16 v24, v13

    invoke-virtual {v5}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v13

    invoke-virtual {v4, v13}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v13, "10"

    invoke-virtual {v4, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object/from16 v4, v22

    .line 3339
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_263

    :cond_25d
    move-object/from16 v24, v13

    move-object/from16 v4, v22

    move-object/from16 v7, v25

    .line 3341
    :goto_263
    invoke-virtual {v5}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v13

    move-object/from16 v22, v0

    const/4 v0, 0x1

    if-ne v13, v0, :cond_272

    .line 3342
    invoke-virtual {v5}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getOffsetMinute()I

    move-result v0

    add-int/2addr v11, v0

    goto :goto_2a7

    .line 3343
    :cond_272
    invoke-virtual {v5}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v0

    const/4 v13, 0x3

    if-ne v0, v13, :cond_27f

    .line 3344
    invoke-virtual {v5}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getOffsetMinute()I

    move-result v0

    add-int/2addr v12, v0

    goto :goto_2a7

    .line 3345
    :cond_27f
    invoke-virtual {v5}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v0

    const/4 v13, 0x2

    if-ne v0, v13, :cond_28d

    .line 3346
    invoke-virtual {v5}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getOffsetMinute()I

    move-result v0

    add-int v27, v27, v0

    goto :goto_2a7

    .line 3347
    :cond_28d
    invoke-virtual {v5}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v0

    const/4 v13, 0x4

    if-ne v0, v13, :cond_29b

    .line 3348
    invoke-virtual {v5}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getOffsetMinute()I

    move-result v0

    add-int v28, v28, v0

    goto :goto_2a7

    .line 3349
    :cond_29b
    invoke-virtual {v5}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v0

    const/4 v13, 0x5

    if-ne v0, v13, :cond_2a7

    .line 3350
    invoke-virtual {v5}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getOffsetMinute()I

    move-result v0

    add-int/2addr v10, v0

    :cond_2a7
    :goto_2a7
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v25, v7

    move-object/from16 v0, v22

    move-object/from16 v13, v24

    move-object/from16 v7, v33

    move-object/from16 v22, v4

    move-object/from16 v24, v9

    move-object/from16 v4, v30

    move-object/from16 v9, v32

    goto/16 :goto_206

    :cond_2bb
    move-object/from16 v33, v7

    move-object/from16 v32, v9

    move-object/from16 v4, v22

    move-object/from16 v9, v24

    move-object/from16 v7, v25

    move-object/from16 v22, v0

    move-object/from16 v24, v13

    goto :goto_2e1

    :cond_2ca
    move-object/from16 v29, v5

    move-object/from16 v33, v7

    move-object/from16 v32, v9

    move-object/from16 v4, v22

    move-object/from16 v9, v24

    move-object/from16 v7, v25

    move-object/from16 v22, v0

    move-object/from16 v24, v13

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    :goto_2e1
    move/from16 v5, v27

    move/from16 v6, v28

    const/4 v0, 0x0

    .line 3354
    :goto_2e6
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v13

    if-ge v0, v13, :cond_389

    .line 3355
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    move-object/from16 v25, v8

    .line 3356
    sget-object v8, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v13}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getHour()I

    move-result v27

    move-object/from16 v28, v14

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getMinuter()I

    move-result v27

    move-object/from16 v30, v15

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    filled-new-array {v14, v15}, [Ljava/lang/Object;

    move-result-object v14

    invoke-static {v8, v9, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 3357
    invoke-virtual {v13}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v14

    if-eqz v14, :cond_33f

    .line 3358
    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v13}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v14

    invoke-virtual {v8, v14}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v13}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getOffsetMinute()I

    move-result v14

    invoke-virtual {v8, v14}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 3359
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    const/4 v14, 0x1

    sub-int/2addr v8, v14

    if-eq v0, v8, :cond_340

    .line 3360
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_340

    :cond_33f
    const/4 v14, 0x1

    .line 3363
    :cond_340
    :goto_340
    invoke-virtual {v13}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v8

    if-ne v8, v14, :cond_34c

    .line 3364
    invoke-virtual {v13}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getOffsetMinute()I

    move-result v8

    add-int/2addr v11, v8

    goto :goto_37f

    .line 3365
    :cond_34c
    invoke-virtual {v13}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v8

    const/4 v14, 0x3

    if-ne v8, v14, :cond_359

    .line 3366
    invoke-virtual {v13}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getOffsetMinute()I

    move-result v8

    add-int/2addr v12, v8

    goto :goto_37f

    .line 3367
    :cond_359
    invoke-virtual {v13}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v8

    const/4 v14, 0x2

    if-ne v8, v14, :cond_366

    .line 3368
    invoke-virtual {v13}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getOffsetMinute()I

    move-result v8

    add-int/2addr v5, v8

    goto :goto_37f

    .line 3369
    :cond_366
    invoke-virtual {v13}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v8

    const/4 v14, 0x4

    if-ne v8, v14, :cond_373

    .line 3370
    invoke-virtual {v13}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getOffsetMinute()I

    move-result v8

    add-int/2addr v6, v8

    goto :goto_37f

    .line 3371
    :cond_373
    invoke-virtual {v13}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v8

    const/4 v14, 0x5

    if-ne v8, v14, :cond_37f

    .line 3372
    invoke-virtual {v13}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getOffsetMinute()I

    move-result v8

    add-int/2addr v10, v8

    :cond_37f
    :goto_37f
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v8, v25

    move-object/from16 v14, v28

    move-object/from16 v15, v30

    goto/16 :goto_2e6

    :cond_389
    move-object/from16 v25, v8

    move-object/from16 v28, v14

    move-object/from16 v30, v15

    move-object/from16 v0, v21

    .line 3375
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    move-object/from16 v8, v19

    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    move-object/from16 v5, v17

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v11, "\",\"awakeDuration\":\""

    .line 3376
    invoke-virtual {v2, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v6, "\",\"remDuration\":\""

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v6, "\",\"mac\":\""

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getBindBLEDevice()Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object v6

    iget-object v6, v6, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v6, "\",\"model\":\""

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getBindBLEDevice()Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object v6

    iget-object v6, v6, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceProduct:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v6, "\",\"duration\":\"1440\",\"uploadStatus\":\"0\"}"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3377
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v2

    const/4 v6, 0x1

    sub-int/2addr v2, v6

    move/from16 v10, v20

    if-eq v10, v2, :cond_3f3

    .line 3378
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3380
    :cond_3f3
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_409

    .line 3381
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    sub-int/2addr v2, v6

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    invoke-virtual {v1, v2, v6}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 3383
    :cond_409
    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3384
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "uploadDataSleepHigh: "

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v6, "\u4e0a\u4f20\u9ad8\u7cbe\u5ea6\u7761\u7720\u6570\u636e"

    invoke-static {v6, v2}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_441

    :cond_423
    move-object/from16 v29, v5

    move-object/from16 v30, v15

    move-object/from16 v5, v17

    move/from16 v10, v20

    move-object/from16 v4, v22

    move-object/from16 v9, v24

    move-object/from16 v7, v25

    move-object/from16 v32, v27

    move-object/from16 v33, v28

    move-object/from16 v22, v0

    move-object/from16 v25, v8

    move-object/from16 v24, v13

    move-object/from16 v28, v14

    move-object/from16 v8, v19

    move-object/from16 v0, v21

    :goto_441
    add-int/lit8 v2, v10, 0x1

    move-object/from16 v21, v0

    move-object/from16 v17, v5

    move-object/from16 v19, v8

    move-object/from16 v0, v22

    move-object/from16 v13, v24

    move-object/from16 v8, v25

    move-object/from16 v6, v26

    move-object/from16 v14, v28

    move-object/from16 v5, v29

    move-object/from16 v15, v30

    move-object/from16 v11, v32

    move-object/from16 v12, v33

    move-object/from16 v22, v4

    move-object v4, v9

    move-object v9, v7

    move v7, v2

    move-object/from16 v2, v23

    goto/16 :goto_82

    :cond_464
    move-object/from16 v23, v2

    .line 3387
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_489

    .line 3388
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v2, p0

    move-object/from16 v6, v23

    invoke-direct {v2, v0, v6}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->sendRequestSleep(Ljava/lang/String;Ljava/util/List;)V

    .line 3389
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v0}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    goto/16 :goto_8ba

    :cond_489
    move-object/from16 v10, p0

    goto/16 :goto_8bd

    :cond_48d
    move-object/from16 v26, v6

    move-object/from16 v25, v8

    move-object v7, v9

    move-object/from16 v32, v11

    move-object/from16 v33, v12

    move-object/from16 v24, v13

    move-object/from16 v28, v14

    move-object/from16 v30, v15

    move-object/from16 v5, v17

    move-object/from16 v8, v19

    move-object v6, v2

    move-object v9, v4

    move-object/from16 v4, v22

    move-object/from16 v2, p0

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    .line 3393
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    const/16 v11, 0x1e

    rem-int/2addr v10, v11

    if-nez v10, :cond_4b9

    .line 3394
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    div-int/2addr v10, v11

    goto :goto_4c0

    .line 3396
    :cond_4b9
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    div-int/2addr v10, v11

    const/4 v11, 0x1

    add-int/2addr v10, v11

    .line 3398
    :goto_4c0
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    const/4 v12, 0x0

    :goto_4c6
    if-ge v12, v10, :cond_8ba

    .line 3400
    invoke-interface {v11}, Ljava/util/List;->clear()V

    .line 3401
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v13, v12, 0x1

    mul-int/lit8 v14, v13, 0x1e

    .line 3403
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v15

    if-le v14, v15, :cond_4dc

    .line 3404
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v14

    :cond_4dc
    mul-int/lit8 v12, v12, 0x1e

    :goto_4de
    if-ge v12, v14, :cond_84b

    .line 3409
    invoke-interface {v6, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/keephealth/android/greendao/bean/HealthSleep;

    .line 3410
    invoke-interface {v11, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v17, v3

    .line 3411
    invoke-virtual/range {v26 .. v26}, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v3

    move-object/from16 v23, v6

    sget-object v6, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    .line 3412
    invoke-virtual {v15}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getYear()I

    move-result v19

    move/from16 v20, v10

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v10}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v6

    move/from16 v19, v13

    const/4 v10, 0x3

    new-array v13, v10, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v10, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    invoke-virtual {v15}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getMonth()I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v10, v2}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v2

    const/4 v10, 0x0

    aput-object v2, v13, v10

    sget-object v2, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    .line 3413
    invoke-virtual {v15}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getDay()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v10}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v2

    const/4 v10, 0x1

    aput-object v2, v13, v10

    sget-object v2, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao$Properties;->Hour:Lorg/greenrobot/greendao/Property;

    .line 3414
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v10}, Lorg/greenrobot/greendao/Property;->lt(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v2

    const/4 v10, 0x2

    aput-object v2, v13, v10

    .line 3412
    invoke-virtual {v3, v6, v13}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    const/4 v3, 0x1

    new-array v6, v3, [Lorg/greenrobot/greendao/Property;

    sget-object v10, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    const/4 v13, 0x0

    aput-object v10, v6, v13

    .line 3415
    invoke-virtual {v2, v6}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderAsc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v2

    invoke-virtual {v2}, Lorg/greenrobot/greendao/query/Query;->list()Ljava/util/List;

    move-result-object v2

    .line 3416
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 3417
    invoke-virtual {v15}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getYear()I

    move-result v10

    invoke-virtual {v6, v3, v10}, Ljava/util/Calendar;->set(II)V

    .line 3418
    invoke-virtual {v15}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getMonth()I

    move-result v10

    sub-int/2addr v10, v3

    const/4 v13, 0x2

    invoke-virtual {v6, v13, v10}, Ljava/util/Calendar;->set(II)V

    .line 3419
    invoke-virtual {v15}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getDay()I

    move-result v10

    sub-int/2addr v10, v3

    const/4 v13, 0x5

    invoke-virtual {v6, v13, v10}, Ljava/util/Calendar;->set(II)V

    .line 3420
    invoke-virtual {v6, v3}, Ljava/util/Calendar;->get(I)I

    move-result v10

    const/4 v13, 0x2

    .line 3421
    invoke-virtual {v6, v13}, Ljava/util/Calendar;->get(I)I

    move-result v16

    add-int/lit8 v13, v16, 0x1

    const/4 v3, 0x5

    .line 3422
    invoke-virtual {v6, v3}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 3428
    invoke-virtual/range {v26 .. v26}, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v3

    move-object/from16 v21, v11

    sget-object v11, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    .line 3429
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v11, v10}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v10

    move/from16 v27, v12

    const/4 v11, 0x3

    new-array v12, v11, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v11, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v13}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v11

    const/4 v13, 0x0

    aput-object v11, v12, v13

    sget-object v11, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    .line 3430
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v11, v6}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v6

    const/4 v11, 0x1

    aput-object v6, v12, v11

    sget-object v6, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao$Properties;->Hour:Lorg/greenrobot/greendao/Property;

    .line 3431
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v6, v13}, Lorg/greenrobot/greendao/Property;->ge(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v6

    const/4 v13, 0x2

    aput-object v6, v12, v13

    .line 3429
    invoke-virtual {v3, v10, v12}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v3

    new-array v6, v11, [Lorg/greenrobot/greendao/Property;

    sget-object v10, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    const/4 v11, 0x0

    aput-object v10, v6, v11

    .line 3432
    invoke-virtual {v3, v6}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderAsc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v3

    invoke-virtual {v3}, Lorg/greenrobot/greendao/query/Query;->list()Ljava/util/List;

    move-result-object v3

    move-object/from16 v6, v30

    .line 3433
    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v11

    invoke-virtual {v11}, Lcom/keephealth/android/app/AppApplication;->getUserBean()Lcom/keephealth/android/model/bean/UserBean;

    move-result-object v11

    invoke-virtual {v11}, Lcom/keephealth/android/model/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    move-object/from16 v11, v28

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v15}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getYear()I

    move-result v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v10

    move-object/from16 v12, v25

    invoke-virtual {v10, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    sget-object v13, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v15}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getMonth()I

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    filled-new-array/range {v25 .. v25}, [Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v11, v22

    invoke-static {v13, v11, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    sget-object v10, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v15}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getDay()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    filled-new-array {v13}, [Ljava/lang/Object;

    move-result-object v13

    invoke-static {v10, v11, v13}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    move-object/from16 v10, v24

    invoke-virtual {v6, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    move-object/from16 v13, v33

    invoke-virtual {v6, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    move-object/from16 v15, v32

    invoke-virtual {v6, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz v3, :cond_6f3

    .line 3434
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_6f3

    move-object/from16 v32, v10

    const/4 v6, 0x0

    const/16 v22, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v29, 0x0

    const/16 v31, 0x0

    .line 3435
    :goto_64f
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    if-ge v6, v10, :cond_6ee

    .line 3436
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    move-object/from16 v33, v3

    .line 3437
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v10}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getHour()I

    move-result v34

    move-object/from16 v35, v11

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getMinuter()I

    move-result v34

    move-object/from16 v36, v12

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    filled-new-array {v11, v12}, [Ljava/lang/Object;

    move-result-object v11

    invoke-static {v3, v9, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 3438
    invoke-virtual {v10}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v11

    if-eqz v11, :cond_69f

    .line 3439
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v10}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v11

    invoke-virtual {v3, v11}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v10}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getOffsetMinute()I

    move-result v11

    invoke-virtual {v3, v11}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 3440
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3442
    :cond_69f
    invoke-virtual {v10}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v3

    const/4 v11, 0x1

    if-ne v3, v11, :cond_6ad

    .line 3443
    invoke-virtual {v10}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getOffsetMinute()I

    move-result v3

    add-int v22, v22, v3

    goto :goto_6e4

    .line 3444
    :cond_6ad
    invoke-virtual {v10}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v3

    const/4 v11, 0x3

    if-ne v3, v11, :cond_6bb

    .line 3445
    invoke-virtual {v10}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getOffsetMinute()I

    move-result v3

    add-int v24, v24, v3

    goto :goto_6e4

    .line 3446
    :cond_6bb
    invoke-virtual {v10}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v3

    const/4 v11, 0x2

    if-ne v3, v11, :cond_6c9

    .line 3447
    invoke-virtual {v10}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getOffsetMinute()I

    move-result v3

    add-int v25, v25, v3

    goto :goto_6e4

    .line 3448
    :cond_6c9
    invoke-virtual {v10}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v3

    const/4 v11, 0x4

    if-ne v3, v11, :cond_6d7

    .line 3449
    invoke-virtual {v10}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getOffsetMinute()I

    move-result v3

    add-int v29, v29, v3

    goto :goto_6e4

    .line 3450
    :cond_6d7
    invoke-virtual {v10}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v3

    const/4 v11, 0x5

    if-ne v3, v11, :cond_6e4

    .line 3451
    invoke-virtual {v10}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getOffsetMinute()I

    move-result v3

    add-int v31, v31, v3

    :cond_6e4
    :goto_6e4
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v3, v33

    move-object/from16 v11, v35

    move-object/from16 v12, v36

    goto/16 :goto_64f

    :cond_6ee
    move-object/from16 v35, v11

    move-object/from16 v36, v12

    goto :goto_703

    :cond_6f3
    move-object/from16 v32, v10

    move-object/from16 v35, v11

    move-object/from16 v36, v12

    const/16 v22, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v29, 0x0

    const/16 v31, 0x0

    :goto_703
    if-eqz v2, :cond_825

    .line 3455
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_825

    move-object/from16 v33, v13

    move/from16 v6, v22

    move/from16 v10, v24

    move/from16 v11, v25

    move/from16 v12, v29

    move/from16 v13, v31

    const/4 v3, 0x0

    move-object/from16 v22, v15

    .line 3456
    :goto_71a
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v15

    if-ge v3, v15, :cond_7c0

    .line 3457
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    move/from16 v24, v14

    .line 3458
    sget-object v14, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v15}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getHour()I

    move-result v25

    move-object/from16 v29, v5

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v15}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getMinuter()I

    move-result v25

    move-object/from16 v31, v8

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v5, v8}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v14, v9, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 3459
    invoke-virtual {v15}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v8

    if-eqz v8, :cond_773

    .line 3460
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v15}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v15}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getOffsetMinute()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 3461
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    const/4 v8, 0x1

    sub-int/2addr v5, v8

    if-eq v3, v5, :cond_774

    .line 3462
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_774

    :cond_773
    const/4 v8, 0x1

    .line 3465
    :cond_774
    :goto_774
    invoke-virtual {v15}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v5

    if-ne v5, v8, :cond_782

    .line 3466
    invoke-virtual {v15}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getOffsetMinute()I

    move-result v5

    add-int/2addr v6, v5

    :goto_77f
    const/4 v8, 0x5

    const/4 v14, 0x2

    goto :goto_7b6

    .line 3467
    :cond_782
    invoke-virtual {v15}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v5

    const/4 v8, 0x3

    if-ne v5, v8, :cond_78f

    .line 3468
    invoke-virtual {v15}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getOffsetMinute()I

    move-result v5

    add-int/2addr v10, v5

    goto :goto_77f

    .line 3469
    :cond_78f
    invoke-virtual {v15}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v5

    const/4 v14, 0x2

    if-ne v5, v14, :cond_79d

    .line 3470
    invoke-virtual {v15}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getOffsetMinute()I

    move-result v5

    add-int/2addr v11, v5

    :goto_79b
    const/4 v8, 0x5

    goto :goto_7b6

    .line 3471
    :cond_79d
    invoke-virtual {v15}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v5

    const/4 v8, 0x4

    if-ne v5, v8, :cond_7aa

    .line 3472
    invoke-virtual {v15}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getOffsetMinute()I

    move-result v5

    add-int/2addr v12, v5

    goto :goto_79b

    .line 3473
    :cond_7aa
    invoke-virtual {v15}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v5

    const/4 v8, 0x5

    if-ne v5, v8, :cond_7b6

    .line 3474
    invoke-virtual {v15}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getOffsetMinute()I

    move-result v5

    add-int/2addr v13, v5

    :cond_7b6
    :goto_7b6
    add-int/lit8 v3, v3, 0x1

    move/from16 v14, v24

    move-object/from16 v5, v29

    move-object/from16 v8, v31

    goto/16 :goto_71a

    :cond_7c0
    move-object/from16 v29, v5

    move-object/from16 v31, v8

    move/from16 v24, v14

    const/4 v8, 0x5

    const/4 v14, 0x2

    .line 3477
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    move-object/from16 v3, v31

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v6, "\",\"awakeDuration\":\""

    .line 3478
    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v6, "\",\"remDuration\":\""

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v6, "\",\"mac\":\""

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getBindBLEDevice()Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object v6

    iget-object v6, v6, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v6, "\",\"model\":\""

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getBindBLEDevice()Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object v6

    iget-object v6, v6, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceProduct:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v6, "\",\"duration\":\"1440\",\"uploadStatus\":\"0\"}"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v24, -0x1

    move/from16 v12, v27

    if-eq v12, v2, :cond_830

    .line 3480
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_830

    :cond_825
    move-object v3, v8

    move-object/from16 v33, v13

    move/from16 v24, v14

    move-object/from16 v22, v15

    move/from16 v12, v27

    const/4 v8, 0x5

    const/4 v14, 0x2

    :cond_830
    :goto_830
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v2, p0

    move-object v8, v3

    move-object/from16 v3, v17

    move/from16 v13, v19

    move/from16 v10, v20

    move-object/from16 v11, v21

    move-object/from16 v6, v23

    move/from16 v14, v24

    move-object/from16 v24, v32

    move-object/from16 v25, v36

    move-object/from16 v32, v22

    move-object/from16 v22, v35

    goto/16 :goto_4de

    :cond_84b
    move-object/from16 v17, v3

    move-object/from16 v23, v6

    move-object v3, v8

    move/from16 v20, v10

    move-object/from16 v21, v11

    move/from16 v19, v13

    move-object/from16 v35, v22

    move-object/from16 v36, v25

    move-object/from16 v22, v32

    const/4 v8, 0x5

    const/4 v14, 0x2

    move-object/from16 v32, v24

    .line 3484
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_875

    .line 3485
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    const/4 v6, 0x1

    sub-int/2addr v2, v6

    const/4 v10, 0x0

    invoke-virtual {v1, v10, v2}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    goto :goto_876

    :cond_875
    const/4 v6, 0x1

    .line 3487
    :goto_876
    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3488
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v10, "uploadDataSleepHigh: "

    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v10, "\u4e0a\u4f20\u9ad8\u7cbe\u5ea6\u7761\u7720\u6570\u636e"

    invoke-static {v10, v2}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 3489
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v10, p0

    move-object/from16 v11, v21

    invoke-direct {v10, v2, v11}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->sendRequestSleep(Ljava/lang/String;Ljava/util/List;)V

    .line 3490
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v12, 0x0

    invoke-virtual {v1, v12, v2}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    move-object v8, v3

    move-object v2, v10

    move-object/from16 v3, v17

    move/from16 v12, v19

    move/from16 v10, v20

    move-object/from16 v6, v23

    move-object/from16 v24, v32

    move-object/from16 v25, v36

    move-object/from16 v32, v22

    move-object/from16 v22, v35

    goto/16 :goto_4c6

    :cond_8ba
    :goto_8ba
    move-object v10, v2

    goto :goto_8bd

    :cond_8bc
    move-object v10, v0

    :goto_8bd
    return-void
.end method

.method public uploadDataSport()V
    .registers 40

    move-object/from16 v1, p0

    .line 3610
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 3611
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/DaoSession;->getHealthActivityDao()Lcom/keephealth/android/greendao/gen/HealthActivityDao;

    move-result-object v0

    .line 3612
    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/HealthActivityDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    sget-object v3, Lcom/keephealth/android/greendao/gen/HealthActivityDao$Properties;->IsUploaded:Lorg/greenrobot/greendao/Property;

    const/4 v4, 0x0

    .line 3613
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v3

    new-array v5, v4, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v0, v3, v5}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    const/4 v3, 0x1

    new-array v5, v3, [Lorg/greenrobot/greendao/Property;

    sget-object v6, Lcom/keephealth/android/greendao/gen/HealthActivityDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    aput-object v6, v5, v4

    .line 3614
    invoke-virtual {v0, v5}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderDesc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/Query;->list()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_730

    .line 3615
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_730

    .line 3616
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    const-string v6, "\",\"mac\":\""

    const-string v7, "\",\"pace\":\""

    const-string v8, "\",\"interval\":\""

    const-string v10, "\",\"deviceType\":\""

    const-string v11, "\",\"dateTime\":\""

    const-string v12, "\",\"distance\":\""

    const-string v13, "\",\"calories\":\""

    const-string v14, "\",\"heartRate\":\""

    const-string v15, "\",\"step\":\""

    const-string v4, "\",\"duration\":\""

    const-string v3, "{\"sportType\":\""

    const-string v9, "]"

    move-object/from16 v17, v9

    const-string v9, "["

    move-object/from16 v18, v6

    const-string v6, "\",\"paceArr\":\""

    move-object/from16 v19, v7

    const-string v7, "\""

    move-object/from16 v20, v7

    const/16 v7, 0x1e

    move-object/from16 v21, v6

    const-string v6, "\'"

    move-object/from16 v22, v6

    const-string v6, ","

    if-gt v0, v7, :cond_3a6

    .line 3617
    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v7, 0x0

    .line 3618
    :goto_7d
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v7, v0, :cond_38c

    .line 3619
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/keephealth/android/greendao/bean/HealthActivity;

    .line 3620
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    move-object/from16 v23, v3

    invoke-virtual {v9}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getType()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 3621
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v9}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getDurations()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 3622
    invoke-virtual {v2, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v9}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getStep()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 3623
    invoke-virtual {v2, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v9}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getAvg_hr_value()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 3624
    invoke-virtual {v2, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v9}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getCalories()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 3625
    invoke-virtual {v2, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v9}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getDistance()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 3626
    invoke-virtual {v2, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    sget-object v3, Lcom/keephealth/android/util/DateUtil;->simpleDateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v9}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getDate()J

    move-result-wide v24

    move-object/from16 v26, v11

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3627
    invoke-virtual {v2, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v9}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getDataFrom()I

    move-result v3

    const/4 v11, 0x2

    if-ne v3, v11, :cond_f2

    const/4 v3, 0x0

    goto :goto_f3

    :cond_f2
    const/4 v3, 0x1

    :goto_f3
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 3628
    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v9}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getHr_data_interval_minute()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 3629
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    .line 3632
    :try_start_106
    invoke-virtual {v9}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getHr_data_vlaue_json()Ljava/lang/String;

    move-result-object v0

    new-instance v11, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$38;

    invoke-direct {v11, v1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$38;-><init>(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)V

    .line 3633
    invoke-virtual {v11}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$38;->getType()Ljava/lang/reflect/Type;

    move-result-object v11

    .line 3632
    invoke-virtual {v3, v0, v11}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_119
    .catch Ljava/lang/Exception; {:try_start_106 .. :try_end_119} :catch_11a

    goto :goto_123

    :catch_11a
    move-exception v0

    .line 3635
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3636
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_123
    move-object v11, v0

    .line 3638
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v24, v8

    .line 3639
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v25, v10

    .line 3640
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    if-eqz v11, :cond_1e9

    .line 3641
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v27

    if-eqz v27, :cond_1e9

    move-object/from16 v27, v12

    move-object/from16 v31, v13

    const/4 v12, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x1

    .line 3645
    :goto_14a
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v13

    if-ge v12, v13, :cond_1ae

    .line 3646
    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/keephealth/android/model/bean/ActivityItem;

    iget v13, v13, Lcom/keephealth/android/model/bean/ActivityItem;->step:I

    invoke-virtual {v0, v13}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 3647
    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/keephealth/android/model/bean/ActivityItem;

    iget v13, v13, Lcom/keephealth/android/model/bean/ActivityItem;->hr:I

    invoke-virtual {v8, v13}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 3648
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v13

    invoke-virtual {v13}, Lcom/keephealth/android/app/AppApplication;->getUserBean()Lcom/keephealth/android/model/bean/UserBean;

    move-result-object v13

    invoke-virtual {v13}, Lcom/keephealth/android/model/bean/UserBean;->getStepDistance()I

    move-result v13

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v32

    move-object/from16 v33, v14

    move-object/from16 v14, v32

    check-cast v14, Lcom/keephealth/android/model/bean/ActivityItem;

    iget v14, v14, Lcom/keephealth/android/model/bean/ActivityItem;->step:I

    mul-int/2addr v13, v14

    add-int v13, v28, v13

    const v14, 0x186a0

    mul-int v14, v14, v30

    if-lt v13, v14, :cond_196

    mul-int/lit8 v14, v29, 0x5

    .line 3651
    invoke-virtual {v10, v14}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 3653
    invoke-virtual {v10, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v30, v30, 0x1

    const/4 v14, 0x1

    const/16 v29, 0x0

    goto :goto_197

    :cond_196
    const/4 v14, 0x1

    :goto_197
    add-int/lit8 v29, v29, 0x1

    .line 3657
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v16

    move/from16 v28, v13

    add-int/lit8 v13, v16, -0x1

    if-eq v12, v13, :cond_1a9

    .line 3658
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3659
    invoke-virtual {v8, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1a9
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v14, v33

    goto :goto_14a

    :cond_1ae
    move-object/from16 v33, v14

    .line 3662
    const-string v12, "\",\"stepArr\":\""

    invoke-virtual {v2, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 3663
    const-string v0, "\",\"heartRateArr\":\""

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 3664
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    move-object/from16 v8, v21

    if-nez v0, :cond_1f1

    .line 3665
    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v13, 0x1

    sub-int/2addr v10, v13

    const/4 v13, 0x0

    invoke-virtual {v12, v13, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1f2

    :cond_1e9
    move-object/from16 v27, v12

    move-object/from16 v31, v13

    move-object/from16 v33, v14

    move-object/from16 v8, v21

    :cond_1f1
    const/4 v13, 0x0

    .line 3668
    :goto_1f2
    invoke-virtual {v9}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getAvgSpeed()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getAvgSpeed()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v12, v22

    invoke-virtual {v10, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v0, v13, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 3669
    invoke-virtual {v9}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getAvgSpeed()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getAvgSpeed()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    const/4 v14, 0x1

    add-int/2addr v13, v14

    invoke-virtual {v9}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getAvgSpeed()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v21, v15

    move-object/from16 v15, v20

    invoke-virtual {v14, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v10, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    move-object/from16 v13, v19

    .line 3670
    invoke-virtual {v2, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    mul-int/lit8 v0, v0, 0x3c

    add-int/2addr v0, v10

    invoke-virtual {v14, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 3671
    invoke-virtual {v9}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getDataFrom()I

    move-result v0

    const/4 v10, 0x1

    if-ne v0, v10, :cond_33c

    .line 3674
    :try_start_23d
    invoke-virtual {v9}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getAvgSpeed()Ljava/lang/String;

    move-result-object v0

    new-instance v10, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$39;

    invoke-direct {v10, v1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$39;-><init>(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)V

    .line 3675
    invoke-virtual {v10}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$39;->getType()Ljava/lang/reflect/Type;

    move-result-object v10

    .line 3674
    invoke-virtual {v3, v0, v10}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_250
    .catch Ljava/lang/Exception; {:try_start_23d .. :try_end_250} :catch_251

    goto :goto_25a

    :catch_251
    move-exception v0

    .line 3677
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3678
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_25a
    if-eqz v0, :cond_2c3

    .line 3680
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2c3

    .line 3681
    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v3, 0x0

    .line 3682
    :goto_266
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    if-ge v3, v10, :cond_2c3

    .line 3683
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/keephealth/android/ui/sport/bean/SpeedItem;

    .line 3684
    invoke-virtual {v10}, Lcom/keephealth/android/ui/sport/bean/SpeedItem;->getSpeeds()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v19, v0

    invoke-virtual {v10}, Lcom/keephealth/android/ui/sport/bean/SpeedItem;->getSpeeds()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    move-object/from16 v20, v13

    const/4 v13, 0x0

    invoke-virtual {v14, v13, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 3685
    invoke-virtual {v10}, Lcom/keephealth/android/ui/sport/bean/SpeedItem;->getSpeeds()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10}, Lcom/keephealth/android/ui/sport/bean/SpeedItem;->getSpeeds()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    const/16 v16, 0x1

    add-int/lit8 v14, v14, 0x1

    invoke-virtual {v10}, Lcom/keephealth/android/ui/sport/bean/SpeedItem;->getSpeeds()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v13, v14, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    mul-int/lit8 v0, v0, 0x3c

    add-int/2addr v0, v10

    .line 3686
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 3687
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-eq v3, v0, :cond_2bc

    .line 3688
    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2bc
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, v19

    move-object/from16 v13, v20

    goto :goto_266

    :cond_2c3
    move-object/from16 v20, v13

    .line 3692
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/DaoSession;->getHealthGpsItemDao()Lcom/keephealth/android/greendao/gen/HealthGpsItemDao;

    move-result-object v0

    .line 3693
    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/HealthGpsItemDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    sget-object v3, Lcom/keephealth/android/greendao/gen/HealthGpsItemDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    .line 3694
    invoke-virtual {v9}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getDate()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v3, v9}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v3

    const/4 v9, 0x0

    new-array v10, v9, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v0, v3, v10}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    const/4 v3, 0x1

    new-array v10, v3, [Lorg/greenrobot/greendao/Property;

    sget-object v3, Lcom/keephealth/android/greendao/gen/HealthGpsItemDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    aput-object v3, v10, v9

    .line 3695
    invoke-virtual {v0, v10}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderDesc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    .line 3696
    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/Query;->list()Ljava/util/List;

    move-result-object v0

    .line 3697
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_33e

    .line 3698
    const-string v3, "\",\"coordinateArr\":\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v3, 0x0

    .line 3699
    :goto_309
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    if-ge v3, v9, :cond_33e

    .line 3700
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/keephealth/android/greendao/bean/HealthGpsItem;

    invoke-virtual {v9}, Lcom/keephealth/android/greendao/bean/HealthGpsItem;->getLatitude()Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 3701
    const-string v9, "|"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3702
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/keephealth/android/greendao/bean/HealthGpsItem;

    invoke-virtual {v9}, Lcom/keephealth/android/greendao/bean/HealthGpsItem;->getLongitude()Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 3703
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    if-eq v3, v9, :cond_339

    .line 3704
    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_339
    add-int/lit8 v3, v3, 0x1

    goto :goto_309

    :cond_33c
    move-object/from16 v20, v13

    :cond_33e
    move-object/from16 v3, v18

    .line 3709
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getBindBLEDevice()Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object v9

    iget-object v9, v9, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v9, "\",\"model\":\""

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getBindBLEDevice()Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object v9

    iget-object v9, v9, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceProduct:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v9, "\",\"uploadStatus\":\"0\"}"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3710
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    const/4 v9, 0x1

    sub-int/2addr v0, v9

    if-eq v7, v0, :cond_36e

    .line 3711
    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_36e
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v18, v3

    move-object/from16 v22, v12

    move-object/from16 v19, v20

    move-object/from16 v3, v23

    move-object/from16 v10, v25

    move-object/from16 v11, v26

    move-object/from16 v12, v27

    move-object/from16 v13, v31

    move-object/from16 v14, v33

    move-object/from16 v20, v15

    move-object/from16 v15, v21

    move-object/from16 v21, v8

    move-object/from16 v8, v24

    goto/16 :goto_7d

    :cond_38c
    move-object/from16 v10, v17

    .line 3714
    invoke-virtual {v2, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3715
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, v5}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->sendRequestSport(Ljava/lang/String;Ljava/util/List;)V

    .line 3716
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    goto/16 :goto_730

    :cond_3a6
    move-object/from16 v23, v3

    move-object/from16 v24, v8

    move-object/from16 v25, v10

    move-object/from16 v26, v11

    move-object/from16 v27, v12

    move-object/from16 v31, v13

    move-object/from16 v33, v14

    move-object/from16 v10, v17

    move-object/from16 v3, v18

    move-object/from16 v8, v21

    move-object/from16 v12, v22

    move-object/from16 v21, v15

    move-object/from16 v15, v20

    move-object/from16 v20, v19

    .line 3719
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    rem-int/2addr v0, v7

    if-nez v0, :cond_3cf

    .line 3720
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    div-int/2addr v0, v7

    goto :goto_3d6

    .line 3722
    :cond_3cf
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    div-int/2addr v0, v7

    const/4 v7, 0x1

    add-int/2addr v0, v7

    :goto_3d6
    move v7, v0

    .line 3724
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_3dd
    if-ge v0, v7, :cond_730

    .line 3726
    invoke-interface {v11}, Ljava/util/List;->clear()V

    .line 3727
    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v13, v0, 0x1

    mul-int/lit8 v14, v13, 0x1e

    move/from16 v17, v7

    .line 3729
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-le v14, v7, :cond_3f5

    .line 3730
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v14

    :cond_3f5
    mul-int/lit8 v0, v0, 0x1e

    :goto_3f7
    move v7, v0

    if-ge v7, v14, :cond_6fa

    .line 3735
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Lcom/keephealth/android/greendao/bean/HealthActivity;

    move-object/from16 v19, v9

    move-object/from16 v9, v23

    .line 3736
    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual/range {v18 .. v18}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getType()I

    move-result v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 3737
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual/range {v18 .. v18}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getDurations()I

    move-result v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-object/from16 v9, v21

    .line 3738
    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    move-object/from16 v21, v4

    invoke-virtual/range {v18 .. v18}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getStep()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-object/from16 v4, v33

    .line 3739
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual/range {v18 .. v18}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getAvg_hr_value()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-object/from16 v4, v31

    .line 3740
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual/range {v18 .. v18}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getCalories()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-object/from16 v4, v27

    .line 3741
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual/range {v18 .. v18}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getDistance()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-object/from16 v4, v26

    .line 3742
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    sget-object v4, Lcom/keephealth/android/util/DateUtil;->simpleDateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual/range {v18 .. v18}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getDate()J

    move-result-wide v28

    move-object/from16 v22, v9

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object/from16 v4, v25

    .line 3743
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual/range {v18 .. v18}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getDataFrom()I

    move-result v9

    const/4 v4, 0x2

    if-ne v9, v4, :cond_47a

    const/4 v9, 0x0

    goto :goto_47b

    :cond_47a
    const/4 v9, 0x1

    :goto_47b
    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-object/from16 v9, v24

    .line 3744
    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual/range {v18 .. v18}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getHr_data_interval_minute()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 3745
    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    .line 3748
    :try_start_490
    invoke-virtual/range {v18 .. v18}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getHr_data_vlaue_json()Ljava/lang/String;

    move-result-object v0
    :try_end_494
    .catch Ljava/lang/Exception; {:try_start_490 .. :try_end_494} :catch_4a8

    move-object/from16 v24, v9

    :try_start_496
    new-instance v9, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$40;

    invoke-direct {v9, v1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$40;-><init>(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)V

    .line 3749
    invoke-virtual {v9}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$40;->getType()Ljava/lang/reflect/Type;

    move-result-object v9

    .line 3748
    invoke-virtual {v4, v0, v9}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_4a5
    .catch Ljava/lang/Exception; {:try_start_496 .. :try_end_4a5} :catch_4a6

    goto :goto_4b3

    :catch_4a6
    move-exception v0

    goto :goto_4ab

    :catch_4a8
    move-exception v0

    move-object/from16 v24, v9

    .line 3751
    :goto_4ab
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3752
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_4b3
    move-object v9, v0

    .line 3754
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v28, v11

    .line 3755
    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    move/from16 v29, v13

    .line 3756
    new-instance v13, Ljava/lang/StringBuffer;

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    if-eqz v9, :cond_577

    .line 3757
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v30

    if-eqz v30, :cond_577

    move-object/from16 v30, v5

    move-object/from16 v36, v10

    const/4 v5, 0x0

    const/16 v32, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x1

    .line 3761
    :goto_4da
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    if-ge v5, v10, :cond_53e

    .line 3762
    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/keephealth/android/model/bean/ActivityItem;

    iget v10, v10, Lcom/keephealth/android/model/bean/ActivityItem;->step:I

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 3763
    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/keephealth/android/model/bean/ActivityItem;

    iget v10, v10, Lcom/keephealth/android/model/bean/ActivityItem;->hr:I

    invoke-virtual {v11, v10}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 3764
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v10

    invoke-virtual {v10}, Lcom/keephealth/android/app/AppApplication;->getUserBean()Lcom/keephealth/android/model/bean/UserBean;

    move-result-object v10

    invoke-virtual {v10}, Lcom/keephealth/android/model/bean/UserBean;->getStepDistance()I

    move-result v10

    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v37

    move/from16 v38, v7

    move-object/from16 v7, v37

    check-cast v7, Lcom/keephealth/android/model/bean/ActivityItem;

    iget v7, v7, Lcom/keephealth/android/model/bean/ActivityItem;->step:I

    mul-int/2addr v10, v7

    add-int v7, v32, v10

    const v10, 0x186a0

    mul-int v10, v10, v35

    if-lt v7, v10, :cond_526

    mul-int/lit8 v10, v34, 0x5

    .line 3767
    invoke-virtual {v13, v10}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 3769
    invoke-virtual {v13, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v35, v35, 0x1

    const/4 v10, 0x1

    const/16 v34, 0x0

    goto :goto_527

    :cond_526
    const/4 v10, 0x1

    :goto_527
    add-int/lit8 v34, v34, 0x1

    .line 3773
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v16

    move/from16 v32, v7

    add-int/lit8 v7, v16, -0x1

    if-eq v5, v7, :cond_539

    .line 3774
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3775
    invoke-virtual {v11, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_539
    add-int/lit8 v5, v5, 0x1

    move/from16 v7, v38

    goto :goto_4da

    :cond_53e
    move/from16 v38, v7

    .line 3778
    const-string v5, "\",\"stepArr\":\""

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 3779
    const-string v0, "\",\"heartRateArr\":\""

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 3780
    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_57d

    .line 3781
    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v10, 0x1

    sub-int/2addr v7, v10

    const/4 v10, 0x0

    invoke-virtual {v5, v10, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_57e

    :cond_577
    move-object/from16 v30, v5

    move/from16 v38, v7

    move-object/from16 v36, v10

    :cond_57d
    const/4 v10, 0x0

    .line 3784
    :goto_57e
    invoke-virtual/range {v18 .. v18}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getAvgSpeed()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {v18 .. v18}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getAvgSpeed()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v10, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 3785
    invoke-virtual/range {v18 .. v18}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getAvgSpeed()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v18 .. v18}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getAvgSpeed()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    const/4 v10, 0x1

    add-int/2addr v7, v10

    invoke-virtual/range {v18 .. v18}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getAvgSpeed()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v5, v7, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v7, v20

    .line 3786
    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    mul-int/lit8 v0, v0, 0x3c

    add-int/2addr v0, v5

    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 3787
    invoke-virtual/range {v18 .. v18}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getDataFrom()I

    move-result v0

    if-ne v0, v10, :cond_6b9

    .line 3790
    :try_start_5c2
    invoke-virtual/range {v18 .. v18}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getAvgSpeed()Ljava/lang/String;

    move-result-object v0

    new-instance v5, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$41;

    invoke-direct {v5, v1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$41;-><init>(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)V

    .line 3791
    invoke-virtual {v5}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$41;->getType()Ljava/lang/reflect/Type;

    move-result-object v5

    .line 3790
    invoke-virtual {v4, v0, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_5d5
    .catch Ljava/lang/Exception; {:try_start_5c2 .. :try_end_5d5} :catch_5d6

    goto :goto_5df

    :catch_5d6
    move-exception v0

    .line 3793
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3794
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_5df
    if-eqz v0, :cond_640

    .line 3796
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_640

    .line 3797
    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v4, 0x0

    .line 3798
    :goto_5eb
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_640

    .line 3799
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/keephealth/android/ui/sport/bean/SpeedItem;

    .line 3800
    invoke-virtual {v5}, Lcom/keephealth/android/ui/sport/bean/SpeedItem;->getSpeeds()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5}, Lcom/keephealth/android/ui/sport/bean/SpeedItem;->getSpeeds()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    const/4 v13, 0x0

    invoke-virtual {v10, v13, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 3801
    invoke-virtual {v5}, Lcom/keephealth/android/ui/sport/bean/SpeedItem;->getSpeeds()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5}, Lcom/keephealth/android/ui/sport/bean/SpeedItem;->getSpeeds()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    const/16 v16, 0x1

    add-int/lit8 v13, v13, 0x1

    invoke-virtual {v5}, Lcom/keephealth/android/ui/sport/bean/SpeedItem;->getSpeeds()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v11, v13, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    mul-int/lit8 v10, v10, 0x3c

    add-int/2addr v10, v5

    .line 3802
    invoke-virtual {v2, v10}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 3803
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-eq v4, v5, :cond_63d

    .line 3804
    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_63d
    add-int/lit8 v4, v4, 0x1

    goto :goto_5eb

    .line 3808
    :cond_640
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/DaoSession;->getHealthGpsItemDao()Lcom/keephealth/android/greendao/gen/HealthGpsItemDao;

    move-result-object v0

    .line 3809
    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/HealthGpsItemDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    sget-object v4, Lcom/keephealth/android/greendao/gen/HealthGpsItemDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    .line 3810
    invoke-virtual/range {v18 .. v18}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getDate()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v4

    const/4 v5, 0x0

    new-array v9, v5, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v0, v4, v9}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    const/4 v4, 0x1

    new-array v9, v4, [Lorg/greenrobot/greendao/Property;

    sget-object v4, Lcom/keephealth/android/greendao/gen/HealthGpsItemDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    aput-object v4, v9, v5

    .line 3811
    invoke-virtual {v0, v9}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderDesc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    .line 3812
    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/Query;->list()Ljava/util/List;

    move-result-object v0

    .line 3813
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_6b7

    .line 3814
    const-string v4, "\",\"coordinateArr\":\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v13, 0x0

    .line 3815
    :goto_684
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v13, v4, :cond_6b7

    .line 3816
    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keephealth/android/greendao/bean/HealthGpsItem;

    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/HealthGpsItem;->getLatitude()Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 3817
    const-string v4, "|"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3818
    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keephealth/android/greendao/bean/HealthGpsItem;

    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/HealthGpsItem;->getLongitude()Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 3819
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    if-eq v13, v4, :cond_6b4

    .line 3820
    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_6b4
    add-int/lit8 v13, v13, 0x1

    goto :goto_684

    :cond_6b7
    const/4 v5, 0x1

    goto :goto_6ba

    :cond_6b9
    move v5, v10

    .line 3825
    :goto_6ba
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getBindBLEDevice()Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object v4

    iget-object v4, v4, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v4, "\",\"model\":\""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getBindBLEDevice()Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object v4

    iget-object v4, v4, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceProduct:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v4, "\",\"uploadStatus\":\"0\"}"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v14, -0x1

    move/from16 v4, v38

    if-eq v4, v0, :cond_6e6

    .line 3827
    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_6e6
    add-int/lit8 v0, v4, 0x1

    move-object/from16 v20, v7

    move-object/from16 v9, v19

    move-object/from16 v4, v21

    move-object/from16 v21, v22

    move-object/from16 v11, v28

    move/from16 v13, v29

    move-object/from16 v5, v30

    move-object/from16 v10, v36

    goto/16 :goto_3f7

    :cond_6fa
    move-object/from16 v30, v5

    move-object/from16 v19, v9

    move-object/from16 v28, v11

    move/from16 v29, v13

    move-object/from16 v7, v20

    move-object/from16 v22, v21

    const/4 v5, 0x1

    move-object/from16 v21, v4

    move-object v4, v10

    .line 3830
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3831
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v9, v30

    invoke-direct {v1, v0, v9}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->sendRequestSport(Ljava/lang/String;Ljava/util/List;)V

    .line 3832
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v10, 0x0

    invoke-virtual {v2, v10, v0}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    move-object v10, v4

    move-object v5, v9

    move/from16 v7, v17

    move-object/from16 v9, v19

    move-object/from16 v4, v21

    move-object/from16 v21, v22

    move/from16 v0, v29

    goto/16 :goto_3dd

    :cond_730
    :goto_730
    return-void
.end method

.method public uploadDataStep()V
    .registers 34

    move-object/from16 v0, p0

    .line 2761
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 2762
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/greendao/gen/DaoSession;->getHealthSportDao()Lcom/keephealth/android/greendao/gen/HealthSportDao;

    move-result-object v2

    .line 2763
    invoke-virtual {v2}, Lcom/keephealth/android/greendao/gen/HealthSportDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    sget-object v3, Lcom/keephealth/android/greendao/gen/HealthSportDao$Properties;->IsUploaded:Lorg/greenrobot/greendao/Property;

    const/4 v4, 0x0

    .line 2764
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v3

    new-array v5, v4, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v2, v3, v5}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    const/4 v3, 0x1

    new-array v5, v3, [Lorg/greenrobot/greendao/Property;

    sget-object v6, Lcom/keephealth/android/greendao/gen/HealthSportDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    aput-object v6, v5, v4

    .line 2765
    invoke-virtual {v2, v5}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderDesc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v2

    invoke-virtual {v2}, Lorg/greenrobot/greendao/query/Query;->list()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_5a2

    .line 2766
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_5a2

    .line 2767
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "sports.size():"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "tftr5"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2768
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v5

    invoke-virtual {v5}, Lcom/keephealth/android/greendao/gen/DaoSession;->getHealthSportItemDao()Lcom/keephealth/android/greendao/gen/HealthSportItemDao;

    move-result-object v5

    .line 2769
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    const-string v7, "\",\"calories\":\""

    const-string v8, "\",\"distance\":\""

    const-string v9, "\",\"step\":\""

    const-string v10, "%1$02d:%2$02d"

    const-string v11, "\",\"dateTime\":\""

    const-string v12, "{\"mid\":\""

    const-string v13, "]"

    const-string v14, "["

    const-string v15, "0"

    const-string v4, "|"

    const-string v3, ","

    move-object/from16 v17, v15

    const-string v15, "%1$02d"

    const-string v0, "-"

    move-object/from16 v18, v13

    const/16 v13, 0x1e

    if-gt v6, v13, :cond_32e

    .line 2770
    invoke-virtual {v1, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v6, 0x0

    .line 2771
    :goto_91
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v13

    if-ge v6, v13, :cond_2f8

    .line 2776
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/keephealth/android/greendao/bean/HealthSport;

    .line 2777
    invoke-virtual {v5}, Lcom/keephealth/android/greendao/gen/HealthSportItemDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v14

    move-object/from16 v19, v5

    sget-object v5, Lcom/keephealth/android/greendao/gen/HealthSportItemDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    .line 2778
    invoke-virtual {v13}, Lcom/keephealth/android/greendao/bean/HealthSport;->getYear()I

    move-result v20

    move/from16 v21, v6

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v5

    move-object/from16 v20, v2

    const/4 v6, 0x2

    new-array v2, v6, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v6, Lcom/keephealth/android/greendao/gen/HealthSportItemDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    invoke-virtual {v13}, Lcom/keephealth/android/greendao/bean/HealthSport;->getMonth()I

    move-result v22

    move-object/from16 v23, v7

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v2, v7

    sget-object v6, Lcom/keephealth/android/greendao/gen/HealthSportItemDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    .line 2779
    invoke-virtual {v13}, Lcom/keephealth/android/greendao/bean/HealthSport;->getDay()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v2, v7

    .line 2778
    invoke-virtual {v14, v5, v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    new-array v5, v7, [Lorg/greenrobot/greendao/Property;

    sget-object v6, Lcom/keephealth/android/greendao/gen/HealthSportItemDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 2780
    invoke-virtual {v2, v5}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderAsc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v2

    invoke-virtual {v2}, Lorg/greenrobot/greendao/query/Query;->list()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2d2

    .line 2781
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_2d2

    .line 2782
    invoke-virtual {v1, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v6

    invoke-virtual {v6}, Lcom/keephealth/android/app/AppApplication;->getUserBean()Lcom/keephealth/android/model/bean/UserBean;

    move-result-object v6

    invoke-virtual {v6}, Lcom/keephealth/android/model/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v13}, Lcom/keephealth/android/greendao/bean/HealthSport;->getYear()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v13}, Lcom/keephealth/android/greendao/bean/HealthSport;->getMonth()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v6, v15, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v13}, Lcom/keephealth/android/greendao/bean/HealthSport;->getDay()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v6, v15, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "\",\"deviceType\":\"0\",\"details\":\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object/from16 v22, v15

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 2783
    :goto_15b
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v15

    if-ge v5, v15, :cond_24e

    .line 2784
    new-instance v15, Ljava/lang/StringBuilder;

    move-object/from16 v24, v0

    const-string v0, "\u4eceHealthSportItem\u6570\u636e\u5e93\u53d6\u7684\u6570\u636e:"

    invoke-direct {v15, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    move-object/from16 v25, v11

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v0, v11}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v11, 0x0

    invoke-static {v11, v0}, Lcom/keephealth/android/util/FileUtilsTest;->writeTxtToFile(ZLjava/lang/String;)V

    .line 2785
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/greendao/bean/HealthSportItem;

    .line 2786
    sget-object v11, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    div-int/lit8 v15, v5, 0x6

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    rem-int/lit8 v26, v5, 0x6

    mul-int/lit8 v26, v26, 0xa

    move-object/from16 v27, v12

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    filled-new-array {v15, v12}, [Ljava/lang/Object;

    move-result-object v12

    invoke-static {v11, v10, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 2787
    new-instance v12, Ljava/text/DecimalFormat;

    const-string v15, "#.00"

    invoke-direct {v12, v15}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    move-object/from16 v26, v10

    .line 2788
    invoke-virtual {v0}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getCalory()F

    move-result v10

    move-object/from16 v28, v8

    move-object/from16 v29, v9

    float-to-double v8, v10

    invoke-virtual {v12, v8, v9}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v8

    .line 2789
    invoke-virtual {v0}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getCalory()F

    move-result v9

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    const-wide/16 v30, 0x0

    if-eqz v9, :cond_1d2

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getCalory()F

    move-result v9

    move-object/from16 v32, v11

    float-to-double v10, v9

    cmpl-double v9, v10, v30

    if-nez v9, :cond_1d6

    goto :goto_1d4

    :cond_1d2
    move-object/from16 v32, v11

    :goto_1d4
    move-object/from16 v8, v17

    .line 2793
    :cond_1d6
    new-instance v9, Ljava/text/DecimalFormat;

    invoke-direct {v9, v15}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 2794
    invoke-virtual {v0}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getDistance()F

    move-result v9

    float-to-double v9, v9

    invoke-virtual {v12, v9, v10}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v9

    .line 2795
    invoke-virtual {v0}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getDistance()F

    move-result v10

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-eqz v10, :cond_1f6

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getDistance()F

    move-result v10

    float-to-double v10, v10

    cmpl-double v10, v10, v30

    if-nez v10, :cond_1f8

    :cond_1f6
    move-object/from16 v9, v17

    :cond_1f8
    move-object/from16 v10, v32

    .line 2798
    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string v11, "|0|"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getStepCount()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2799
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    if-eq v5, v8, :cond_226

    .line 2800
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2802
    :cond_226
    invoke-virtual {v0}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getStepCount()I

    move-result v8

    add-int/2addr v6, v8

    int-to-float v7, v7

    .line 2803
    invoke-virtual {v0}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getDistance()F

    move-result v8

    add-float/2addr v7, v8

    float-to-int v7, v7

    int-to-float v8, v13

    .line 2804
    invoke-virtual {v0}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getCalory()F

    move-result v9

    add-float/2addr v8, v9

    float-to-int v13, v8

    .line 2805
    invoke-virtual {v0}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getActiveTime()I

    move-result v0

    add-int/2addr v14, v0

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, v24

    move-object/from16 v11, v25

    move-object/from16 v10, v26

    move-object/from16 v12, v27

    move-object/from16 v8, v28

    move-object/from16 v9, v29

    goto/16 :goto_15b

    :cond_24e
    move-object/from16 v24, v0

    move-object/from16 v28, v8

    move-object/from16 v29, v9

    move-object/from16 v26, v10

    move-object/from16 v25, v11

    move-object/from16 v27, v12

    .line 2808
    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getBindBLEDevice()Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object v0

    if-nez v0, :cond_261

    return-void

    .line 2811
    :cond_261
    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getBindBLEDevice()Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object v0

    iget-object v0, v0, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceAddress:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_26e

    return-void

    :cond_26e
    move-object/from16 v0, v29

    .line 2816
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    move-object/from16 v5, v28

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    move-object/from16 v6, v23

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v7, "\",\"mac\":\""

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getBindBLEDevice()Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object v7

    iget-object v7, v7, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v7, "\",\"model\":\""

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getBindBLEDevice()Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object v7

    iget-object v7, v7, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceProduct:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "\",\"duration\":\""

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v7, "\",\"uploadStatus\":\"0\"}"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2817
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v2

    const/4 v7, 0x1

    sub-int/2addr v2, v7

    move/from16 v7, v21

    if-eq v7, v2, :cond_2e2

    .line 2818
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2e2

    :cond_2d2
    move-object/from16 v24, v0

    move-object v5, v8

    move-object v0, v9

    move-object/from16 v26, v10

    move-object/from16 v25, v11

    move-object/from16 v27, v12

    move-object/from16 v22, v15

    move/from16 v7, v21

    move-object/from16 v6, v23

    :cond_2e2
    :goto_2e2
    add-int/lit8 v2, v7, 0x1

    move-object v9, v0

    move-object v8, v5

    move-object v7, v6

    move-object/from16 v5, v19

    move-object/from16 v15, v22

    move-object/from16 v0, v24

    move-object/from16 v11, v25

    move-object/from16 v10, v26

    move-object/from16 v12, v27

    move v6, v2

    move-object/from16 v2, v20

    goto/16 :goto_91

    :cond_2f8
    move-object/from16 v20, v2

    .line 2822
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "jsonStr:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "yty6t"

    invoke-static {v2, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v2, v18

    .line 2823
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2824
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    move-object/from16 v7, p0

    move-object/from16 v8, v20

    invoke-direct {v7, v0, v8, v2}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->sendRequestStep(Ljava/lang/String;Ljava/util/List;I)V

    .line 2825
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    :cond_32b
    move-object v8, v7

    goto/16 :goto_5a3

    :cond_32e
    move-object/from16 v24, v0

    move-object/from16 v19, v5

    move-object v6, v7

    move-object v5, v8

    move-object v0, v9

    move-object/from16 v26, v10

    move-object/from16 v25, v11

    move-object/from16 v27, v12

    move-object/from16 v22, v15

    move-object/from16 v7, p0

    move-object v8, v2

    move-object/from16 v2, v18

    .line 2828
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    rem-int/2addr v9, v13

    if-nez v9, :cond_34f

    .line 2829
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    div-int/2addr v9, v13

    goto :goto_356

    .line 2831
    :cond_34f
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    div-int/2addr v9, v13

    const/4 v10, 0x1

    add-int/2addr v9, v10

    .line 2833
    :goto_356
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const/4 v11, 0x0

    :goto_35c
    if-ge v11, v9, :cond_32b

    .line 2835
    invoke-interface {v10}, Ljava/util/List;->clear()V

    .line 2836
    invoke-virtual {v1, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v12, v11, 0x1

    mul-int/lit8 v13, v12, 0x1e

    .line 2838
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v15

    if-le v13, v15, :cond_372

    .line 2839
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v13

    :cond_372
    mul-int/lit8 v11, v11, 0x1e

    :goto_374
    if-ge v11, v13, :cond_56c

    .line 2848
    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/keephealth/android/greendao/bean/HealthSport;

    .line 2849
    invoke-interface {v10, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v20, v8

    .line 2850
    invoke-virtual/range {v19 .. v19}, Lcom/keephealth/android/greendao/gen/HealthSportItemDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v8

    move/from16 v18, v9

    sget-object v9, Lcom/keephealth/android/greendao/gen/HealthSportItemDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    .line 2851
    invoke-virtual {v15}, Lcom/keephealth/android/greendao/bean/HealthSport;->getYear()I

    move-result v21

    move/from16 v23, v12

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v9, v12}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v9

    move-object/from16 v21, v14

    const/4 v12, 0x2

    new-array v14, v12, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v12, Lcom/keephealth/android/greendao/gen/HealthSportItemDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    invoke-virtual {v15}, Lcom/keephealth/android/greendao/bean/HealthSport;->getMonth()I

    move-result v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v12, v7}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v7

    const/4 v12, 0x0

    aput-object v7, v14, v12

    sget-object v7, Lcom/keephealth/android/greendao/gen/HealthSportItemDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    .line 2852
    invoke-virtual {v15}, Lcom/keephealth/android/greendao/bean/HealthSport;->getDay()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v7, v12}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v7

    const/4 v12, 0x1

    aput-object v7, v14, v12

    .line 2851
    invoke-virtual {v8, v9, v14}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v7

    new-array v8, v12, [Lorg/greenrobot/greendao/Property;

    sget-object v9, Lcom/keephealth/android/greendao/gen/HealthSportItemDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    const/4 v12, 0x0

    aput-object v9, v8, v12

    .line 2853
    invoke-virtual {v7, v8}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderAsc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v7

    invoke-virtual {v7}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v7

    invoke-virtual {v7}, Lorg/greenrobot/greendao/query/Query;->list()Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_547

    .line 2854
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_547

    move-object/from16 v8, v27

    .line 2855
    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v12

    invoke-virtual {v12}, Lcom/keephealth/android/app/AppApplication;->getUserBean()Lcom/keephealth/android/model/bean/UserBean;

    move-result-object v12

    invoke-virtual {v12}, Lcom/keephealth/android/model/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    move-object/from16 v12, v25

    invoke-virtual {v9, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v15}, Lcom/keephealth/android/greendao/bean/HealthSport;->getYear()I

    move-result v14

    invoke-virtual {v9, v14}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v9

    move-object/from16 v14, v24

    invoke-virtual {v9, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    sget-object v8, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v15}, Lcom/keephealth/android/greendao/bean/HealthSport;->getMonth()I

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    filled-new-array/range {v24 .. v24}, [Ljava/lang/Object;

    move-result-object v12

    move-object/from16 v24, v10

    move-object/from16 v10, v22

    invoke-static {v8, v10, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    sget-object v9, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v15}, Lcom/keephealth/android/greendao/bean/HealthSport;->getDay()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    filled-new-array {v12}, [Ljava/lang/Object;

    move-result-object v12

    invoke-static {v9, v10, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, "\",\"deviceType\":\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    move-object/from16 v9, v17

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v12, "\",\"details\":\""

    invoke-virtual {v8, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object/from16 v28, v14

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x0

    .line 2856
    :goto_453
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v14

    if-ge v8, v14, :cond_4e4

    .line 2857
    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/keephealth/android/greendao/bean/HealthSportItem;

    move-object/from16 v29, v2

    .line 2858
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    div-int/lit8 v30, v8, 0x6

    move/from16 v31, v11

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    rem-int/lit8 v30, v8, 0x6

    mul-int/lit8 v30, v30, 0xa

    move/from16 v32, v13

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    filled-new-array {v11, v13}, [Ljava/lang/Object;

    move-result-object v11

    move-object/from16 v13, v26

    invoke-static {v2, v13, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 2859
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v11, "|0|"

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v14}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getStepCount()I

    move-result v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v14}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getDistance()F

    move-result v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v14}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getCalory()F

    move-result v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2860
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    const/4 v11, 0x1

    sub-int/2addr v2, v11

    if-eq v8, v2, :cond_4c0

    .line 2861
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2863
    :cond_4c0
    invoke-virtual {v14}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getStepCount()I

    move-result v2

    add-int/2addr v12, v2

    int-to-float v2, v15

    .line 2864
    invoke-virtual {v14}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getDistance()F

    move-result v15

    add-float/2addr v2, v15

    float-to-int v15, v2

    int-to-float v2, v9

    .line 2865
    invoke-virtual {v14}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getCalory()F

    move-result v9

    add-float/2addr v2, v9

    float-to-int v9, v2

    .line 2866
    invoke-virtual {v14}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getActiveTime()I

    move-result v2

    add-int/2addr v10, v2

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v26, v13

    move-object/from16 v2, v29

    move/from16 v11, v31

    move/from16 v13, v32

    goto/16 :goto_453

    :cond_4e4
    move-object/from16 v29, v2

    move/from16 v31, v11

    move/from16 v32, v13

    move-object/from16 v13, v26

    const/4 v11, 0x1

    .line 2869
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v7, "\",\"mac\":\""

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getBindBLEDevice()Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object v7

    iget-object v7, v7, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v7, "\",\"model\":\""

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getBindBLEDevice()Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object v7

    iget-object v7, v7, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceProduct:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "\",\"duration\":\""

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v7, "\",\"uploadStatus\":\"0\"}"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v32, -0x1

    move/from16 v7, v31

    if-eq v7, v2, :cond_553

    .line 2871
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_553

    :cond_547
    move-object/from16 v29, v2

    move v7, v11

    move/from16 v32, v13

    move-object/from16 v28, v24

    move-object/from16 v13, v26

    const/4 v11, 0x1

    move-object/from16 v24, v10

    :cond_553
    :goto_553
    add-int/lit8 v2, v7, 0x1

    move-object/from16 v7, p0

    move v11, v2

    move-object/from16 v26, v13

    move/from16 v9, v18

    move-object/from16 v8, v20

    move-object/from16 v14, v21

    move/from16 v12, v23

    move-object/from16 v10, v24

    move-object/from16 v24, v28

    move-object/from16 v2, v29

    move/from16 v13, v32

    goto/16 :goto_374

    :cond_56c
    move-object/from16 v20, v8

    move/from16 v18, v9

    move/from16 v23, v12

    move-object/from16 v21, v14

    move-object/from16 v28, v24

    move-object/from16 v13, v26

    const/4 v11, 0x1

    move-object/from16 v24, v10

    .line 2875
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2876
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v10, 0x2

    move-object/from16 v8, p0

    move-object/from16 v9, v24

    invoke-direct {v8, v7, v9, v10}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->sendRequestStep(Ljava/lang/String;Ljava/util/List;I)V

    .line 2877
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v12, 0x0

    invoke-virtual {v1, v12, v7}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    move-object v7, v8

    move-object v10, v9

    move/from16 v9, v18

    move-object/from16 v8, v20

    move/from16 v11, v23

    move-object/from16 v24, v28

    goto/16 :goto_35c

    :cond_5a2
    move-object v8, v0

    :goto_5a3
    return-void
.end method

.method public uploadDataTemp()V
    .registers 44

    move-object/from16 v0, p0

    .line 3498
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 3499
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/greendao/gen/DaoSession;->getTempDayInfoDao()Lcom/keephealth/android/greendao/gen/TempDayInfoDao;

    move-result-object v2

    .line 3500
    invoke-virtual {v2}, Lcom/keephealth/android/greendao/gen/TempDayInfoDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    sget-object v3, Lcom/keephealth/android/greendao/gen/TempDayInfoDao$Properties;->IsUploaded:Lorg/greenrobot/greendao/Property;

    const/4 v4, 0x0

    .line 3501
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v3

    new-array v5, v4, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v2, v3, v5}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    const/4 v3, 0x1

    new-array v5, v3, [Lorg/greenrobot/greendao/Property;

    sget-object v6, Lcom/keephealth/android/greendao/gen/TempDayInfoDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    aput-object v6, v5, v4

    .line 3502
    invoke-virtual {v2, v5}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderDesc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v2

    invoke-virtual {v2}, Lorg/greenrobot/greendao/query/Query;->list()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_509

    .line 3503
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_509

    .line 3504
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v5

    invoke-virtual {v5}, Lcom/keephealth/android/greendao/gen/DaoSession;->getTempInfoDao()Lcom/keephealth/android/greendao/gen/TempInfoDao;

    move-result-object v5

    .line 3505
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    const-string v7, "%1$02d:%2$02d"

    const-string v8, "\",\"duration\":\"1440\",\"uploadStatus\":\"0\"}"

    const-string v9, "\",\"model\":\""

    const-string v10, "\",\"mac\":\""

    const-string v11, "\",\"avg\":\""

    const-string v12, "\",\"min\":\""

    const-string v13, "\",\"max\":\""

    const-string v14, "\",\"dateTime\":\""

    const-string v15, "{\"mid\":\""

    const-string v4, "]"

    const-string v3, "["

    const-string v0, "|"

    const/16 v18, 0x3c

    move-object/from16 v19, v4

    const-string v4, ","

    move-object/from16 v20, v8

    const-string v8, "%1$02d"

    move-object/from16 v21, v9

    const-string v9, "-"

    move-object/from16 v22, v10

    const/16 v10, 0x1e

    const-wide/16 v23, 0x0

    const-wide/high16 v25, 0x4059000000000000L    # 100.0

    if-gt v6, v10, :cond_28a

    .line 3506
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v3, 0x0

    .line 3507
    :goto_87
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_269

    .line 3508
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/keephealth/android/greendao/bean/TempDayInfo;

    .line 3509
    invoke-virtual {v5}, Lcom/keephealth/android/greendao/gen/TempInfoDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v10

    move-object/from16 v27, v5

    sget-object v5, Lcom/keephealth/android/greendao/gen/TempInfoDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    .line 3510
    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/TempDayInfo;->getYear()I

    move-result v28

    move/from16 v29, v3

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v3}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v3

    move-object/from16 v28, v2

    const/4 v5, 0x2

    new-array v2, v5, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v5, Lcom/keephealth/android/greendao/gen/TempInfoDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/TempDayInfo;->getMonth()I

    move-result v30

    move-object/from16 v31, v11

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v5, v11}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v5

    const/4 v11, 0x0

    aput-object v5, v2, v11

    sget-object v5, Lcom/keephealth/android/greendao/gen/TempInfoDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    .line 3511
    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/TempDayInfo;->getDay()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v5, v11}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v5

    const/4 v11, 0x1

    aput-object v5, v2, v11

    .line 3510
    invoke-virtual {v10, v3, v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    new-array v3, v11, [Lorg/greenrobot/greendao/Property;

    sget-object v5, Lcom/keephealth/android/greendao/gen/TempInfoDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    const/4 v10, 0x0

    aput-object v5, v3, v10

    .line 3512
    invoke-virtual {v2, v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderAsc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v2

    invoke-virtual {v2}, Lorg/greenrobot/greendao/query/Query;->list()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_24c

    .line 3513
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_24c

    .line 3514
    invoke-virtual {v1, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/keephealth/android/app/AppApplication;->getUserBean()Lcom/keephealth/android/model/bean/UserBean;

    move-result-object v5

    invoke-virtual {v5}, Lcom/keephealth/android/model/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/TempDayInfo;->getYear()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/TempDayInfo;->getMonth()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v10

    invoke-static {v5, v8, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/TempDayInfo;->getDay()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v10

    invoke-static {v5, v8, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v5, "\",\"deviceType\":\"0\",\"details\":\""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-wide/from16 v10, v23

    move-wide/from16 v32, v10

    const/4 v3, 0x0

    .line 3517
    :goto_14f
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_1f0

    .line 3518
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/keephealth/android/greendao/bean/TempInfo;

    .line 3519
    invoke-virtual {v5}, Lcom/keephealth/android/greendao/bean/TempInfo;->getTmpHandler()D

    move-result-wide v34

    const-wide/high16 v36, 0x4040000000000000L    # 32.0

    cmpl-double v30, v34, v36

    if-ltz v30, :cond_190

    invoke-virtual {v5}, Lcom/keephealth/android/greendao/bean/TempInfo;->getTmpHandler()D

    move-result-wide v34

    const-wide/high16 v36, 0x4045000000000000L    # 42.0

    cmpg-double v30, v34, v36

    if-gtz v30, :cond_190

    .line 3520
    invoke-virtual {v5}, Lcom/keephealth/android/greendao/bean/TempInfo;->getTmpHandler()D

    move-result-wide v34

    cmpl-double v30, v34, v10

    if-lez v30, :cond_17b

    .line 3521
    invoke-virtual {v5}, Lcom/keephealth/android/greendao/bean/TempInfo;->getTmpHandler()D

    move-result-wide v10

    :cond_17b
    cmpl-double v30, v32, v23

    if-nez v30, :cond_184

    .line 3524
    invoke-virtual {v5}, Lcom/keephealth/android/greendao/bean/TempInfo;->getTmpHandler()D

    move-result-wide v32

    goto :goto_190

    .line 3526
    :cond_184
    invoke-virtual {v5}, Lcom/keephealth/android/greendao/bean/TempInfo;->getTmpHandler()D

    move-result-wide v34

    cmpg-double v30, v34, v32

    if-gez v30, :cond_190

    .line 3527
    invoke-virtual {v5}, Lcom/keephealth/android/greendao/bean/TempInfo;->getTmpHandler()D

    move-result-wide v32

    :cond_190
    :goto_190
    move-wide/from16 v34, v10

    .line 3531
    sget-object v10, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v5}, Lcom/keephealth/android/greendao/bean/TempInfo;->getOffTime()I

    move-result v11

    div-int v11, v18, v11

    div-int v11, v3, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v5}, Lcom/keephealth/android/greendao/bean/TempInfo;->getOffTime()I

    move-result v30

    div-int v30, v18, v30

    rem-int v30, v3, v30

    invoke-virtual {v5}, Lcom/keephealth/android/greendao/bean/TempInfo;->getOffTime()I

    move-result v36

    mul-int v30, v30, v36

    move-object/from16 v36, v8

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v11, v8}, [Ljava/lang/Object;

    move-result-object v8

    invoke-static {v10, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 3532
    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v5}, Lcom/keephealth/android/greendao/bean/TempInfo;->getTmpHandler()D

    move-result-wide v10

    mul-double v10, v10, v25

    double-to-int v10, v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v5}, Lcom/keephealth/android/greendao/bean/TempInfo;->getTmpForehead()D

    move-result-wide v10

    mul-double v10, v10, v25

    double-to-int v5, v10

    invoke-virtual {v8, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 3533
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    const/4 v8, 0x1

    sub-int/2addr v5, v8

    if-eq v3, v5, :cond_1e8

    .line 3534
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1e8
    add-int/lit8 v3, v3, 0x1

    move-wide/from16 v10, v34

    move-object/from16 v8, v36

    goto/16 :goto_14f

    :cond_1f0
    move-object/from16 v36, v8

    .line 3537
    invoke-virtual {v1, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    mul-double v10, v10, v25

    double-to-int v3, v10

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    mul-double v10, v32, v25

    double-to-int v3, v10

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    move-object/from16 v5, v31

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/TempDayInfo;->getAvgTemp()D

    move-result-wide v10

    mul-double v10, v10, v25

    double-to-int v3, v10

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    move-object/from16 v6, v22

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getBindBLEDevice()Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object v3

    iget-object v3, v3, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    move-object/from16 v8, v21

    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getBindBLEDevice()Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object v3

    iget-object v3, v3, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceProduct:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    move-object/from16 v11, v20

    invoke-virtual {v2, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3538
    invoke-interface/range {v28 .. v28}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    move/from16 v3, v29

    if-eq v3, v2, :cond_258

    .line 3539
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_258

    :cond_24c
    move-object/from16 v36, v8

    move-object/from16 v11, v20

    move-object/from16 v8, v21

    move-object/from16 v6, v22

    move/from16 v3, v29

    move-object/from16 v5, v31

    :cond_258
    :goto_258
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v22, v6

    move-object/from16 v21, v8

    move-object/from16 v20, v11

    move-object/from16 v2, v28

    move-object/from16 v8, v36

    move-object v11, v5

    move-object/from16 v5, v27

    goto/16 :goto_87

    :cond_269
    move-object/from16 v28, v2

    move-object/from16 v2, v19

    .line 3543
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3544
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v2, p0

    move-object/from16 v3, v28

    invoke-direct {v2, v0, v3}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->sendRequestTemp(Ljava/lang/String;Ljava/util/List;)V

    .line 3545
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v0}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    move-object v11, v2

    goto/16 :goto_50a

    :cond_28a
    move-object/from16 v28, v2

    move-object/from16 v27, v5

    move-object/from16 v36, v8

    move-object v5, v11

    move-object/from16 v2, v19

    move-object/from16 v11, v20

    move-object/from16 v8, v21

    move-object/from16 v6, v22

    .line 3548
    invoke-interface/range {v28 .. v28}, Ljava/util/List;->size()I

    move-result v19

    rem-int/lit8 v19, v19, 0x1e

    if-nez v19, :cond_2a8

    .line 3549
    invoke-interface/range {v28 .. v28}, Ljava/util/List;->size()I

    move-result v19

    div-int/lit8 v19, v19, 0x1e

    goto :goto_2b1

    .line 3551
    :cond_2a8
    invoke-interface/range {v28 .. v28}, Ljava/util/List;->size()I

    move-result v19

    div-int/lit8 v19, v19, 0x1e

    const/4 v10, 0x1

    add-int/lit8 v19, v19, 0x1

    :goto_2b1
    move/from16 v10, v19

    move-object/from16 v19, v2

    .line 3553
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v20, v11

    const/4 v11, 0x0

    :goto_2bd
    if-ge v11, v10, :cond_506

    .line 3555
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 3556
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v21, v11, 0x1

    move-object/from16 v22, v3

    mul-int/lit8 v3, v21, 0x1e

    move/from16 v29, v10

    .line 3558
    invoke-interface/range {v28 .. v28}, Ljava/util/List;->size()I

    move-result v10

    if-le v3, v10, :cond_2d7

    .line 3559
    invoke-interface/range {v28 .. v28}, Ljava/util/List;->size()I

    move-result v3

    :cond_2d7
    mul-int/lit8 v10, v11, 0x1e

    :goto_2d9
    if-ge v10, v3, :cond_4c9

    move/from16 v30, v3

    move-object/from16 v3, v28

    .line 3564
    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v28

    move-object/from16 v31, v3

    move-object/from16 v3, v28

    check-cast v3, Lcom/keephealth/android/greendao/bean/TempDayInfo;

    .line 3565
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v28, v2

    .line 3566
    invoke-virtual/range {v27 .. v27}, Lcom/keephealth/android/greendao/gen/TempInfoDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    move/from16 v32, v10

    sget-object v10, Lcom/keephealth/android/greendao/gen/TempInfoDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    .line 3567
    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/TempDayInfo;->getYear()I

    move-result v33

    move-object/from16 v34, v8

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v10, v8}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v8

    move-object/from16 v17, v6

    const/4 v10, 0x2

    new-array v6, v10, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v10, Lcom/keephealth/android/greendao/gen/TempInfoDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/TempDayInfo;->getMonth()I

    move-result v35

    move-object/from16 v37, v5

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v10, v5}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v5

    const/4 v10, 0x0

    aput-object v5, v6, v10

    sget-object v5, Lcom/keephealth/android/greendao/gen/TempInfoDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    .line 3568
    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/TempDayInfo;->getDay()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v5, v10}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v5

    const/4 v10, 0x1

    aput-object v5, v6, v10

    .line 3567
    invoke-virtual {v2, v8, v6}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    new-array v5, v10, [Lorg/greenrobot/greendao/Property;

    sget-object v6, Lcom/keephealth/android/greendao/gen/TempInfoDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    const/4 v8, 0x0

    aput-object v6, v5, v8

    .line 3569
    invoke-virtual {v2, v5}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderAsc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v2

    invoke-virtual {v2}, Lorg/greenrobot/greendao/query/Query;->list()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_4a8

    .line 3570
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_4a8

    .line 3571
    invoke-virtual {v1, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v6

    invoke-virtual {v6}, Lcom/keephealth/android/app/AppApplication;->getUserBean()Lcom/keephealth/android/model/bean/UserBean;

    move-result-object v6

    invoke-virtual {v6}, Lcom/keephealth/android/model/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/TempDayInfo;->getYear()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/TempDayInfo;->getMonth()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v10, v36

    invoke-static {v6, v10, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/TempDayInfo;->getDay()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    invoke-static {v6, v10, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "\",\"deviceType\":\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "\",\"details\":\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-wide/from16 v35, v23

    move-wide/from16 v38, v35

    const/4 v5, 0x0

    .line 3574
    :goto_3b8
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_44d

    .line 3575
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/keephealth/android/greendao/bean/TempInfo;

    .line 3576
    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/TempInfo;->getTmpHandler()D

    move-result-wide v40

    cmpl-double v8, v40, v23

    if-lez v8, :cond_3ed

    .line 3577
    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/TempInfo;->getTmpHandler()D

    move-result-wide v40

    cmpl-double v8, v40, v35

    if-lez v8, :cond_3d8

    .line 3578
    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/TempInfo;->getTmpHandler()D

    move-result-wide v35

    :cond_3d8
    cmpl-double v8, v38, v23

    if-nez v8, :cond_3e1

    .line 3581
    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/TempInfo;->getTmpHandler()D

    move-result-wide v38

    goto :goto_3ed

    .line 3583
    :cond_3e1
    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/TempInfo;->getTmpHandler()D

    move-result-wide v40

    cmpg-double v8, v40, v38

    if-gez v8, :cond_3ed

    .line 3584
    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/TempInfo;->getTmpHandler()D

    move-result-wide v38

    .line 3588
    :cond_3ed
    :goto_3ed
    sget-object v8, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/TempInfo;->getOffTime()I

    move-result v40

    div-int v40, v18, v40

    div-int v40, v11, v40

    move-object/from16 v41, v9

    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/TempInfo;->getOffTime()I

    move-result v40

    div-int v40, v18, v40

    rem-int v40, v11, v40

    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/TempInfo;->getOffTime()I

    move-result v42

    mul-int v40, v40, v42

    move-object/from16 v42, v10

    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array {v9, v10}, [Ljava/lang/Object;

    move-result-object v9

    invoke-static {v8, v7, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 3589
    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/TempInfo;->getTmpHandler()D

    move-result-wide v9

    mul-double v9, v9, v25

    double-to-int v9, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/TempInfo;->getTmpForehead()D

    move-result-wide v9

    mul-double v9, v9, v25

    double-to-int v6, v9

    invoke-virtual {v8, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 3590
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    const/4 v8, 0x1

    sub-int/2addr v6, v8

    if-eq v5, v6, :cond_445

    .line 3591
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_445
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v9, v41

    move-object/from16 v10, v42

    goto/16 :goto_3b8

    :cond_44d
    move-object/from16 v41, v9

    move-object/from16 v42, v10

    const/4 v8, 0x1

    .line 3594
    invoke-virtual {v1, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    mul-double v5, v35, v25

    double-to-int v5, v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    mul-double v5, v38, v25

    double-to-int v5, v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    move-object/from16 v5, v37

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/TempDayInfo;->getAvgTemp()D

    move-result-wide v9

    mul-double v9, v9, v25

    double-to-int v3, v9

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    move-object/from16 v3, v17

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getBindBLEDevice()Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object v6

    iget-object v6, v6, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    move-object/from16 v6, v34

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getBindBLEDevice()Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object v9

    iget-object v9, v9, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceProduct:Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    move-object/from16 v9, v20

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v30, -0x1

    move/from16 v10, v32

    if-eq v10, v2, :cond_4b7

    .line 3596
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4b7

    :cond_4a8
    move-object/from16 v41, v9

    move-object/from16 v3, v17

    move-object/from16 v9, v20

    move/from16 v10, v32

    move-object/from16 v6, v34

    move-object/from16 v42, v36

    move-object/from16 v5, v37

    const/4 v8, 0x1

    :cond_4b7
    :goto_4b7
    add-int/lit8 v10, v10, 0x1

    move-object v8, v6

    move-object/from16 v20, v9

    move-object/from16 v2, v28

    move-object/from16 v28, v31

    move-object/from16 v9, v41

    move-object/from16 v36, v42

    move-object v6, v3

    move/from16 v3, v30

    goto/16 :goto_2d9

    :cond_4c9
    move-object v3, v6

    move-object v6, v8

    move-object/from16 v41, v9

    move-object/from16 v9, v20

    move-object/from16 v31, v28

    move-object/from16 v42, v36

    const/4 v8, 0x1

    move-object/from16 v28, v2

    move-object/from16 v2, v19

    .line 3600
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3601
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v11, p0

    move-object/from16 v8, v31

    invoke-direct {v11, v10, v8}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->sendRequestTemp(Ljava/lang/String;Ljava/util/List;)V

    .line 3602
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    move-object/from16 v17, v0

    const/4 v0, 0x0

    invoke-virtual {v1, v0, v10}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    move-object/from16 v0, v17

    move/from16 v11, v21

    move-object/from16 v2, v28

    move/from16 v10, v29

    move-object/from16 v9, v41

    move-object/from16 v28, v8

    move-object v8, v6

    move-object v6, v3

    move-object/from16 v3, v22

    goto/16 :goto_2bd

    :cond_506
    move-object/from16 v11, p0

    goto :goto_50a

    :cond_509
    move-object v11, v0

    :goto_50a
    return-void
.end method

.method public uploadDatatBlood()V
    .registers 39

    move-object/from16 v0, p0

    .line 2984
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 2985
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 2986
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v3

    invoke-virtual {v3}, Lcom/keephealth/android/greendao/gen/DaoSession;->getHealthBloodDao()Lcom/keephealth/android/greendao/gen/HealthBloodDao;

    move-result-object v3

    .line 2987
    invoke-virtual {v3}, Lcom/keephealth/android/greendao/gen/HealthBloodDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v3

    sget-object v4, Lcom/keephealth/android/greendao/gen/HealthBloodDao$Properties;->IsUploaded:Lorg/greenrobot/greendao/Property;

    const/4 v5, 0x0

    .line 2988
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v4

    const/4 v6, 0x1

    new-array v7, v6, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v8, Lcom/keephealth/android/greendao/gen/HealthBloodDao$Properties;->AvgBlood:Lorg/greenrobot/greendao/Property;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/greenrobot/greendao/Property;->gt(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-virtual {v3, v4, v7}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v3

    new-array v4, v6, [Lorg/greenrobot/greendao/Property;

    sget-object v7, Lcom/keephealth/android/greendao/gen/HealthBloodDao$Properties;->Data:Lorg/greenrobot/greendao/Property;

    aput-object v7, v4, v5

    .line 2989
    invoke-virtual {v3, v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderDesc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v3

    invoke-virtual {v3}, Lorg/greenrobot/greendao/query/Query;->list()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_6e4

    .line 2990
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_6e4

    .line 2991
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v4

    invoke-virtual {v4}, Lcom/keephealth/android/greendao/gen/DaoSession;->getHealthBloodItemDao()Lcom/keephealth/android/greendao/gen/HealthBloodItemDao;

    move-result-object v4

    .line 2992
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    const-string v8, "\",\"maxSBP\":\""

    const-string v9, "\",\"avgDBP\":\""

    const-string v10, "\",\"minDBP\":\""

    const-string v11, "\",\"maxDBP\":\""

    const-string v12, "}]"

    const-string v14, "[{"

    const-string v15, "\",\"duration\":\"1440\",\"uploadStatus\":\"0\"}"

    const-string v6, "\",\"model\":\""

    const-string v5, "\",\"mac\":\""

    const-string v13, "\",\"dateTime\":\""

    const-string v0, "{\"mid\":\""

    move-object/from16 v19, v12

    const-string v12, "]"

    move-object/from16 v20, v14

    const-string v14, "["

    move-object/from16 v21, v12

    const-string v12, "|"

    move-object/from16 v22, v15

    const-string v15, ","

    move-object/from16 v24, v6

    const-string v6, "%1$02d"

    move-object/from16 v25, v5

    const-string v5, "-"

    move-object/from16 v26, v8

    const/16 v8, 0x1e

    if-gt v7, v8, :cond_360

    .line 2993
    invoke-virtual {v1, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2994
    invoke-virtual {v2, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v7, 0x0

    .line 2995
    :goto_9f
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_310

    .line 2996
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/keephealth/android/greendao/bean/HealthBlood;

    .line 2997
    invoke-virtual {v4}, Lcom/keephealth/android/greendao/gen/HealthBloodItemDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v14

    move-object/from16 v27, v4

    sget-object v4, Lcom/keephealth/android/greendao/gen/HealthBloodItemDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    .line 2998
    invoke-virtual {v8}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getYear()I

    move-result v23

    move/from16 v28, v7

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v4

    move-object/from16 v29, v3

    const/4 v7, 0x2

    new-array v3, v7, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v7, Lcom/keephealth/android/greendao/gen/HealthBloodItemDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    invoke-virtual {v8}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getMonth()I

    move-result v23

    move-object/from16 v30, v9

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v7

    const/4 v9, 0x0

    aput-object v7, v3, v9

    sget-object v7, Lcom/keephealth/android/greendao/gen/HealthBloodItemDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    .line 2999
    invoke-virtual {v8}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getDay()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v7

    const/4 v9, 0x1

    aput-object v7, v3, v9

    .line 2998
    invoke-virtual {v14, v4, v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v3

    new-array v4, v9, [Lorg/greenrobot/greendao/Property;

    sget-object v7, Lcom/keephealth/android/greendao/gen/HealthBloodItemDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    const/4 v9, 0x0

    aput-object v7, v4, v9

    .line 3000
    invoke-virtual {v3, v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderAsc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v3

    invoke-virtual {v3}, Lorg/greenrobot/greendao/query/Query;->list()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_2f2

    .line 3001
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2f2

    .line 3002
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v7

    invoke-virtual {v7}, Lcom/keephealth/android/app/AppApplication;->getUserBean()Lcom/keephealth/android/model/bean/UserBean;

    move-result-object v7

    invoke-virtual {v7}, Lcom/keephealth/android/model/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v8}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getYear()I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v8}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getMonth()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v9

    invoke-static {v7, v6, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v8}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getDay()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v9

    invoke-static {v7, v6, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v7, "\",\"deviceType\":\"0\",\"details\":\""

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3003
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v9

    invoke-virtual {v9}, Lcom/keephealth/android/app/AppApplication;->getUserBean()Lcom/keephealth/android/model/bean/UserBean;

    move-result-object v9

    invoke-virtual {v9}, Lcom/keephealth/android/model/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v8}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getYear()I

    move-result v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    sget-object v9, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v8}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getMonth()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    filled-new-array {v14}, [Ljava/lang/Object;

    move-result-object v14

    invoke-static {v9, v6, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    sget-object v9, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v8}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getDay()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    filled-new-array {v14}, [Ljava/lang/Object;

    move-result-object v14

    invoke-static {v9, v6, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v4, 0x0

    .line 3004
    :goto_1ba
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-ge v4, v7, :cond_221

    .line 3005
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/keephealth/android/greendao/bean/HealthBloodItem;

    .line 3006
    sget-object v9, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v7}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->getHour()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v7}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->getMinute()I

    move-result v23

    move-object/from16 v31, v6

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v14, v6}, [Ljava/lang/Object;

    move-result-object v6

    const-string v14, "%1$02d:%2$02d"

    invoke-static {v9, v14, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 3007
    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v7}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->getFzValue()I

    move-result v14

    invoke-virtual {v9, v14}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v7}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->getSsValue()I

    move-result v14

    invoke-virtual {v9, v14}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 3008
    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v7}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->getOxygenValue()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 3009
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    if-eq v4, v6, :cond_21c

    .line 3010
    invoke-virtual {v1, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3011
    invoke-virtual {v2, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_21c
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v6, v31

    goto :goto_1ba

    :cond_221
    move-object/from16 v31, v6

    .line 3014
    invoke-virtual {v1, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v8}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getMaxBloodFz()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v8}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getMinBloodFz()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    move-object/from16 v4, v30

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v8}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getAvgBloodFz()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    move-object/from16 v6, v26

    .line 3015
    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v8}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getMaxBloodSs()I

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v7, "\",\"minSBP\":\""

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v8}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getMinBloodSs()I

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v7, "\",\"avgSBP\":\""

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v8}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getAvgBloodSs()I

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    move-object/from16 v7, v25

    .line 3016
    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getBindBLEDevice()Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object v9

    iget-object v9, v9, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    move-object/from16 v9, v24

    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getBindBLEDevice()Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object v14

    iget-object v14, v14, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceProduct:Ljava/lang/String;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    move-object/from16 v14, v22

    invoke-virtual {v3, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3017
    const-string v3, "\",\"max\":\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v8}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getMaxOxygen()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v6, "\",\"min\":\""

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v8}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getMinOxygen()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v6, "\",\"avg\":\""

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v8}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getAvgOxygen()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getBindBLEDevice()Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object v6

    iget-object v6, v6, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getBindBLEDevice()Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object v6

    iget-object v6, v6, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceProduct:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3018
    invoke-interface/range {v29 .. v29}, Ljava/util/List;->size()I

    move-result v3

    const/4 v6, 0x1

    sub-int/2addr v3, v6

    move/from16 v6, v28

    if-eq v6, v3, :cond_2fe

    .line 3019
    invoke-virtual {v1, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3020
    invoke-virtual {v2, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2fe

    :cond_2f2
    move-object/from16 v31, v6

    move-object/from16 v14, v22

    move-object/from16 v9, v24

    move-object/from16 v7, v25

    move/from16 v6, v28

    move-object/from16 v4, v30

    :cond_2fe
    :goto_2fe
    add-int/lit8 v3, v6, 0x1

    move-object/from16 v25, v7

    move-object/from16 v24, v9

    move-object/from16 v22, v14

    move-object/from16 v6, v31

    move v7, v3

    move-object v9, v4

    move-object/from16 v4, v27

    move-object/from16 v3, v29

    goto/16 :goto_9f

    :cond_310
    move-object/from16 v29, v3

    move-object/from16 v3, v21

    .line 3024
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3025
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3026
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v6, v20

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_345

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v8, v19

    invoke-virtual {v0, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_345

    .line 3027
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v3, p0

    move-object/from16 v4, v29

    invoke-direct {v3, v0, v4}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->sendRequestBlood(Ljava/lang/String;Ljava/util/List;)V

    .line 3028
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, v4}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->sendRequestOxygen(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_347

    :cond_345
    move-object/from16 v3, p0

    .line 3030
    :goto_347
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v0}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 3031
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v2, v4, v0}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    goto/16 :goto_6e4

    :cond_360
    move-object/from16 v29, v3

    move-object/from16 v27, v4

    move-object/from16 v31, v6

    move-object v4, v9

    move-object/from16 v6, v20

    move-object/from16 v3, v21

    move-object/from16 v8, v22

    move-object/from16 v9, v24

    move-object/from16 v7, v25

    .line 3034
    invoke-interface/range {v29 .. v29}, Ljava/util/List;->size()I

    move-result v20

    const/16 v21, 0x1e

    rem-int/lit8 v20, v20, 0x1e

    if-nez v20, :cond_382

    .line 3035
    invoke-interface/range {v29 .. v29}, Ljava/util/List;->size()I

    move-result v20

    div-int/lit8 v20, v20, 0x1e

    goto :goto_38c

    .line 3037
    :cond_382
    invoke-interface/range {v29 .. v29}, Ljava/util/List;->size()I

    move-result v20

    div-int/lit8 v20, v20, 0x1e

    const/16 v16, 0x1

    add-int/lit8 v20, v20, 0x1

    :goto_38c
    move-object/from16 v21, v6

    move/from16 v6, v20

    move-object/from16 v20, v3

    .line 3039
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v22, v8

    const/4 v8, 0x0

    :goto_39a
    if-ge v8, v6, :cond_6e4

    .line 3041
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 3042
    invoke-virtual {v1, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3043
    invoke-virtual {v2, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v23, v8, 0x1

    move/from16 v24, v6

    mul-int/lit8 v6, v23, 0x1e

    move-object/from16 v25, v14

    .line 3045
    invoke-interface/range {v29 .. v29}, Ljava/util/List;->size()I

    move-result v14

    if-le v6, v14, :cond_3b7

    .line 3046
    invoke-interface/range {v29 .. v29}, Ljava/util/List;->size()I

    move-result v6

    :cond_3b7
    mul-int/lit8 v14, v8, 0x1e

    :goto_3b9
    if-ge v14, v6, :cond_65b

    move/from16 v28, v6

    move-object/from16 v6, v29

    .line 3051
    invoke-interface {v6, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v29

    move-object/from16 v30, v6

    move-object/from16 v6, v29

    check-cast v6, Lcom/keephealth/android/greendao/bean/HealthBlood;

    .line 3052
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v29, v3

    .line 3053
    invoke-virtual/range {v27 .. v27}, Lcom/keephealth/android/greendao/gen/HealthBloodItemDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v3

    move/from16 v32, v14

    sget-object v14, Lcom/keephealth/android/greendao/gen/HealthBloodItemDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    .line 3054
    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getYear()I

    move-result v33

    move-object/from16 v34, v9

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v14, v9}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v9

    move-object/from16 v18, v7

    const/4 v14, 0x2

    new-array v7, v14, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v14, Lcom/keephealth/android/greendao/gen/HealthBloodItemDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getMonth()I

    move-result v35

    move-object/from16 v36, v4

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v14, v4}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v4

    const/4 v14, 0x0

    aput-object v4, v7, v14

    sget-object v4, Lcom/keephealth/android/greendao/gen/HealthBloodItemDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    .line 3055
    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getDay()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v4, v14}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v4

    const/4 v14, 0x1

    aput-object v4, v7, v14

    .line 3054
    invoke-virtual {v3, v9, v7}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v3

    new-array v4, v14, [Lorg/greenrobot/greendao/Property;

    sget-object v7, Lcom/keephealth/android/greendao/gen/HealthBloodItemDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    const/4 v9, 0x0

    aput-object v7, v4, v9

    .line 3056
    invoke-virtual {v3, v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderAsc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v3

    invoke-virtual {v3}, Lorg/greenrobot/greendao/query/Query;->list()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_634

    .line 3057
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_634

    .line 3058
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v7

    invoke-virtual {v7}, Lcom/keephealth/android/app/AppApplication;->getUserBean()Lcom/keephealth/android/model/bean/UserBean;

    move-result-object v7

    invoke-virtual {v7}, Lcom/keephealth/android/model/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getYear()I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getMonth()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v9

    move-object/from16 v14, v31

    invoke-static {v7, v14, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getDay()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v9

    invoke-static {v7, v14, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v7, "\",\"deviceType\":\""

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v7, "0"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v7, "\",\"details\":\""

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3059
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v7

    invoke-virtual {v7}, Lcom/keephealth/android/app/AppApplication;->getUserBean()Lcom/keephealth/android/model/bean/UserBean;

    move-result-object v7

    invoke-virtual {v7}, Lcom/keephealth/android/model/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getYear()I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getMonth()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v9

    invoke-static {v7, v14, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getDay()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v9

    invoke-static {v7, v14, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v7, "\",\"deviceType\":\""

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v7, "0"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v7, "\",\"details\":\""

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v9, 0x0

    .line 3060
    :goto_4f9
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v9, v4, :cond_564

    .line 3061
    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keephealth/android/greendao/bean/HealthBloodItem;

    .line 3062
    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->getHour()I

    move-result v31

    move-object/from16 v35, v0

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->getMinute()I

    move-result v31

    move-object/from16 v37, v5

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v0, v5}, [Ljava/lang/Object;

    move-result-object v0

    const-string v5, "%1$02d:%2$02d"

    invoke-static {v7, v5, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 3063
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->getFzValue()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->getSsValue()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 3064
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->getOxygenValue()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 3065
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    const/4 v4, 0x1

    sub-int/2addr v0, v4

    if-eq v8, v0, :cond_55d

    .line 3066
    invoke-virtual {v1, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3067
    invoke-virtual {v2, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_55d
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, v35

    move-object/from16 v5, v37

    goto :goto_4f9

    :cond_564
    move-object/from16 v35, v0

    move-object/from16 v37, v5

    const/4 v4, 0x1

    .line 3070
    invoke-virtual {v1, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getMaxBloodFz()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getMinBloodFz()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    move-object/from16 v3, v36

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getAvgBloodFz()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    move-object/from16 v5, v26

    .line 3071
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getMaxBloodSs()I

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v7, "\",\"minSBP\":\""

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getMinBloodSs()I

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v7, "\",\"avgSBP\":\""

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getAvgBloodSs()I

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    move-object/from16 v7, v18

    .line 3072
    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getBindBLEDevice()Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object v9

    iget-object v9, v9, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    move-object/from16 v9, v34

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getBindBLEDevice()Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object v4

    iget-object v4, v4, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceProduct:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    move-object/from16 v4, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3073
    const-string v0, "\",\"max\":\""

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getMaxOxygen()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v3, "\",\"min\":\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getMinOxygen()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v3, "\",\"avg\":\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getAvgOxygen()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getBindBLEDevice()Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object v3

    iget-object v3, v3, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getBindBLEDevice()Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object v3

    iget-object v3, v3, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceProduct:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v6, v28, -0x1

    move/from16 v0, v32

    if-eq v0, v6, :cond_644

    .line 3075
    invoke-virtual {v1, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3076
    invoke-virtual {v2, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_644

    :cond_634
    move-object/from16 v35, v0

    move-object/from16 v37, v5

    move-object/from16 v7, v18

    move-object/from16 v4, v22

    move-object/from16 v5, v26

    move-object/from16 v14, v31

    move/from16 v0, v32

    move-object/from16 v9, v34

    :cond_644
    :goto_644
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v22, v4

    move-object/from16 v26, v5

    move-object/from16 v31, v14

    move/from16 v6, v28

    move-object/from16 v3, v29

    move-object/from16 v29, v30

    move-object/from16 v4, v36

    move-object/from16 v5, v37

    move v14, v0

    move-object/from16 v0, v35

    goto/16 :goto_3b9

    :cond_65b
    move-object/from16 v35, v0

    move-object/from16 v36, v4

    move-object/from16 v37, v5

    move-object/from16 v0, v20

    move-object/from16 v4, v22

    move-object/from16 v5, v26

    move-object/from16 v30, v29

    move-object/from16 v14, v31

    move-object/from16 v29, v3

    .line 3080
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3081
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3082
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v6, v21

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6a7

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v8, v19

    invoke-virtual {v3, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6a2

    .line 3083
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v21, v0

    move-object/from16 v22, v4

    move-object/from16 v4, v30

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->sendRequestBlood(Ljava/lang/String;Ljava/util/List;)V

    .line 3084
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, v4}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->sendRequestOxygen(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_6b1

    :cond_6a2
    move-object/from16 v21, v0

    move-object/from16 v22, v4

    goto :goto_6ad

    :cond_6a7
    move-object/from16 v21, v0

    move-object/from16 v22, v4

    move-object/from16 v8, v19

    :goto_6ad
    move-object/from16 v4, v30

    move-object/from16 v0, p0

    .line 3086
    :goto_6b1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v0, 0x0

    invoke-virtual {v1, v0, v3}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 3087
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    move-object/from16 v26, v5

    move-object/from16 v19, v8

    move-object/from16 v31, v14

    move-object/from16 v20, v21

    move/from16 v8, v23

    move-object/from16 v14, v25

    move-object/from16 v3, v29

    move-object/from16 v0, v35

    move-object/from16 v5, v37

    move-object/from16 v29, v4

    move-object/from16 v21, v6

    move/from16 v6, v24

    move-object/from16 v4, v36

    goto/16 :goto_39a

    :cond_6e4
    :goto_6e4
    return-void
.end method

.method public uploadDatatEcg()V
    .registers 28

    move-object/from16 v0, p0

    .line 3840
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 3841
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/greendao/gen/DaoSession;->getEcgRecordInfoDao()Lcom/keephealth/android/greendao/gen/EcgRecordInfoDao;

    move-result-object v2

    .line 3842
    invoke-virtual {v2}, Lcom/keephealth/android/greendao/gen/EcgRecordInfoDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    sget-object v3, Lcom/keephealth/android/greendao/gen/EcgRecordInfoDao$Properties;->IsUploaded:Lorg/greenrobot/greendao/Property;

    const/4 v4, 0x0

    .line 3843
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v3

    new-array v5, v4, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v2, v3, v5}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    const/4 v3, 0x1

    new-array v5, v3, [Lorg/greenrobot/greendao/Property;

    sget-object v6, Lcom/keephealth/android/greendao/gen/EcgRecordInfoDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    aput-object v6, v5, v4

    .line 3844
    invoke-virtual {v2, v5}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderDesc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v2

    invoke-virtual {v2}, Lorg/greenrobot/greendao/query/Query;->list()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_322

    .line 3845
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_322

    .line 3846
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v5

    invoke-virtual {v5}, Lcom/keephealth/android/greendao/gen/DaoSession;->getECGItemInfoDao()Lcom/keephealth/android/greendao/gen/ECGItemInfoDao;

    move-result-object v5

    .line 3847
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    const-string v7, "\",\"duration\":\"1440\",\"uploadStatus\":\"0\"}"

    const-string v8, "\",\"model\":\""

    const-string v9, "\",\"mac\":\""

    const-string v10, "\",\"hr\":\""

    const-string v11, "\",\"dateTime\":\""

    const-string v12, "{\"mid\":\""

    const-string v14, "]"

    const-string v15, "["

    const-string v3, ","

    const/16 v4, 0x1e

    if-gt v6, v4, :cond_18e

    .line 3848
    invoke-virtual {v1, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v4, 0x0

    .line 3849
    :goto_6d
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_172

    .line 3850
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/keephealth/android/greendao/bean/EcgRecordInfo;

    .line 3851
    invoke-virtual {v5}, Lcom/keephealth/android/greendao/gen/ECGItemInfoDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v15

    sget-object v13, Lcom/keephealth/android/greendao/gen/ECGItemInfoDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    .line 3852
    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/EcgRecordInfo;->getYear()I

    move-result v17

    move-object/from16 v18, v5

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v13, v5}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v5

    const/4 v13, 0x2

    new-array v0, v13, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v13, Lcom/keephealth/android/greendao/gen/ECGItemInfoDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/EcgRecordInfo;->getMonth()I

    move-result v17

    move-object/from16 v19, v14

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v13

    const/4 v14, 0x0

    aput-object v13, v0, v14

    sget-object v13, Lcom/keephealth/android/greendao/gen/ECGItemInfoDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    .line 3853
    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/EcgRecordInfo;->getDay()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v13

    const/4 v14, 0x1

    aput-object v13, v0, v14

    .line 3852
    invoke-virtual {v15, v5, v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    new-array v5, v14, [Lorg/greenrobot/greendao/Property;

    sget-object v13, Lcom/keephealth/android/greendao/gen/ECGItemInfoDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    const/4 v14, 0x0

    aput-object v13, v5, v14

    .line 3854
    invoke-virtual {v0, v5}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderAsc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/Query;->list()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_168

    .line 3855
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_168

    .line 3856
    invoke-virtual {v1, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v13

    invoke-virtual {v13}, Lcom/keephealth/android/app/AppApplication;->getUserBean()Lcom/keephealth/android/model/bean/UserBean;

    move-result-object v13

    invoke-virtual {v13}, Lcom/keephealth/android/model/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    sget-object v13, Lcom/keephealth/android/util/DateUtil;->simpleDateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/EcgRecordInfo;->getDate()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v13, "\",\"deviceType\":\"0\",\"ecgValues\":\""

    invoke-virtual {v5, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v5, 0x0

    .line 3857
    :goto_103
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v13

    if-ge v5, v13, :cond_124

    .line 3858
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/keephealth/android/greendao/bean/ECGItemInfo;

    .line 3859
    invoke-virtual {v13}, Lcom/keephealth/android/greendao/bean/ECGItemInfo;->getHr()F

    move-result v13

    invoke-virtual {v1, v13}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    .line 3860
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v13

    const/4 v14, 0x1

    sub-int/2addr v13, v14

    if-eq v5, v13, :cond_121

    .line 3861
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_121
    add-int/lit8 v5, v5, 0x1

    goto :goto_103

    .line 3864
    :cond_124
    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/EcgRecordInfo;->getAvgHeart()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v5, "\",\"gain\":\"10\",\"speed\":\"25\",\"results\":\""

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/EcgRecordInfo;->getDesc()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getBindBLEDevice()Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object v5

    iget-object v5, v5, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getBindBLEDevice()Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object v5

    iget-object v5, v5, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceProduct:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3865
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v5, 0x1

    sub-int/2addr v0, v5

    if-eq v4, v0, :cond_168

    .line 3866
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_168
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v5, v18

    move-object/from16 v14, v19

    goto/16 :goto_6d

    :cond_172
    move-object v0, v14

    .line 3870
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3871
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v5, p0

    invoke-direct {v5, v0, v2}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->sendRequestEcg(Ljava/lang/String;Ljava/util/List;)V

    .line 3872
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    :cond_18b
    move-object v4, v5

    goto/16 :goto_323

    :cond_18e
    move-object/from16 v18, v5

    move-object v5, v0

    move-object v0, v14

    .line 3875
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    rem-int/2addr v6, v4

    if-nez v6, :cond_19f

    .line 3876
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    div-int/2addr v6, v4

    goto :goto_1a6

    .line 3878
    :cond_19f
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    div-int/2addr v6, v4

    const/4 v4, 0x1

    add-int/2addr v6, v4

    .line 3880
    :goto_1a6
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v13, 0x0

    :goto_1ac
    if-ge v13, v6, :cond_18b

    .line 3882
    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 3883
    invoke-virtual {v1, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v14, v13, 0x1

    move/from16 v17, v6

    mul-int/lit8 v6, v14, 0x1e

    move/from16 v19, v14

    .line 3885
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v14

    if-le v6, v14, :cond_1c6

    .line 3886
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    :cond_1c6
    mul-int/lit8 v13, v13, 0x1e

    :goto_1c8
    if-ge v13, v6, :cond_2f7

    .line 3891
    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/keephealth/android/greendao/bean/EcgRecordInfo;

    .line 3892
    invoke-interface {v4, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v20, v4

    .line 3893
    invoke-virtual/range {v18 .. v18}, Lcom/keephealth/android/greendao/gen/ECGItemInfoDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v4

    move-object/from16 v21, v15

    sget-object v15, Lcom/keephealth/android/greendao/gen/ECGItemInfoDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    .line 3894
    invoke-virtual {v14}, Lcom/keephealth/android/greendao/bean/EcgRecordInfo;->getYear()I

    move-result v22

    move-object/from16 v23, v2

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v15, v2}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v2

    const/4 v15, 0x2

    new-array v5, v15, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v15, Lcom/keephealth/android/greendao/gen/ECGItemInfoDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    invoke-virtual {v14}, Lcom/keephealth/android/greendao/bean/EcgRecordInfo;->getMonth()I

    move-result v22

    move-object/from16 v24, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v15, v0}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v0

    const/4 v15, 0x0

    aput-object v0, v5, v15

    sget-object v0, Lcom/keephealth/android/greendao/gen/ECGItemInfoDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    .line 3895
    invoke-virtual {v14}, Lcom/keephealth/android/greendao/bean/EcgRecordInfo;->getDay()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v0, v15}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v0

    const/4 v15, 0x1

    aput-object v0, v5, v15

    .line 3894
    invoke-virtual {v4, v2, v5}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    new-array v2, v15, [Lorg/greenrobot/greendao/Property;

    sget-object v4, Lcom/keephealth/android/greendao/gen/ECGItemInfoDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    const/4 v5, 0x0

    aput-object v4, v2, v5

    .line 3896
    invoke-virtual {v0, v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderAsc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/Query;->list()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2e8

    .line 3897
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2e8

    .line 3898
    invoke-virtual {v1, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/keephealth/android/app/AppApplication;->getUserBean()Lcom/keephealth/android/model/bean/UserBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/keephealth/android/model/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    sget-object v4, Lcom/keephealth/android/util/DateUtil;->simpleDateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v14}, Lcom/keephealth/android/greendao/bean/EcgRecordInfo;->getDate()J

    move-result-wide v25

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v4, "\",\"deviceType\":\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v4, "0"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v4, "\",\"ecgValues\":\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    .line 3899
    :goto_26d
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_28e

    .line 3900
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keephealth/android/greendao/bean/ECGItemInfo;

    .line 3901
    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/ECGItemInfo;->getHr()F

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    .line 3902
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    if-eq v2, v4, :cond_28b

    .line 3903
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_28b
    add-int/lit8 v2, v2, 0x1

    goto :goto_26d

    :cond_28e
    const/4 v5, 0x1

    .line 3906
    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v14}, Lcom/keephealth/android/greendao/bean/EcgRecordInfo;->getAvgHeart()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "\",\"gain\":\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "\",\"speed\":\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v2, 0x19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "\",\"results\":\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v14}, Lcom/keephealth/android/greendao/bean/EcgRecordInfo;->getDesc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getBindBLEDevice()Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object v2

    iget-object v2, v2, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getBindBLEDevice()Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object v2

    iget-object v2, v2, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceProduct:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v6, -0x1

    if-eq v13, v0, :cond_2e9

    .line 3908
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2e9

    :cond_2e8
    const/4 v5, 0x1

    :cond_2e9
    :goto_2e9
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v5, p0

    move-object/from16 v4, v20

    move-object/from16 v15, v21

    move-object/from16 v2, v23

    move-object/from16 v0, v24

    goto/16 :goto_1c8

    :cond_2f7
    move-object/from16 v23, v2

    move-object/from16 v20, v4

    move-object/from16 v21, v15

    const/4 v5, 0x1

    .line 3912
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3913
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v4, p0

    move-object/from16 v6, v23

    invoke-direct {v4, v2, v6}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->sendRequestEcg(Ljava/lang/String;Ljava/util/List;)V

    .line 3914
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v13, 0x0

    invoke-virtual {v1, v13, v2}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    move-object v5, v4

    move-object v2, v6

    move/from16 v6, v17

    move/from16 v13, v19

    move-object/from16 v4, v20

    goto/16 :goto_1ac

    :cond_322
    move-object v4, v0

    :goto_323
    return-void
.end method
