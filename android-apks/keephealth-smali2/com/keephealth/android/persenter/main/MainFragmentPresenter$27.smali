.class Lcom/keephealth/android/persenter/main/MainFragmentPresenter$27;
.super Lcom/keephealth/android/util/ble/BleCallbackWrapper;
.source "MainFragmentPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->updateWeather()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;


# direct methods
.method constructor <init>(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)V
    .registers 2

    .line 1678
    iput-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$27;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    invoke-direct {p0}, Lcom/keephealth/android/util/ble/BleCallbackWrapper;-><init>()V

    return-void
.end method


# virtual methods
.method public setSuccess()V
    .registers 1

    .line 1682
    invoke-static {}, Lcom/keephealth/android/util/LocationUtil;->stopLocation()V

    return-void
.end method
