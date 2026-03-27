.class Lcom/keephealth/android/persenter/main/MainFragmentPresenter$15;
.super Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;
.source "MainFragmentPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->openScheduleStatus(Lcom/keephealth/android/model/bean/DeviceModel;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

.field final synthetic val$deviceModel:Lcom/keephealth/android/model/bean/DeviceModel;

.field final synthetic val$isOpen:Z


# direct methods
.method constructor <init>(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;ZLcom/keephealth/android/model/bean/DeviceModel;)V
    .registers 4

    .line 1007
    iput-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$15;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    iput-boolean p2, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$15;->val$isOpen:Z

    iput-object p3, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$15;->val$deviceModel:Lcom/keephealth/android/model/bean/DeviceModel;

    invoke-direct {p0}, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onSuccess$0$com-keephealth-android-persenter-main-MainFragmentPresenter$15(ZLandroid/bluetooth/BluetoothGattCharacteristic;Lcom/keephealth/android/model/bean/DeviceModel;)V
    .registers 9

    .line 1011
    iget-object v0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$15;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # getter for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->isOpenSchedule:Z
    invoke-static {v0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$3000(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Z

    move-result v0

    if-eqz v0, :cond_98

    .line 1013
    iget-object v0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$15;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    const/4 v1, 0x0

    # setter for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->isOpenSchedule:Z
    invoke-static {v0, v1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$3002(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;Z)Z

    .line 1014
    iget-object v0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$15;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # getter for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mView:Lcom/keephealth/android/base/IBaseView;
    invoke-static {v0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$3100(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Lcom/keephealth/android/base/IBaseView;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/persenter/main/MainFragmentContract$View;

    invoke-interface {v0, p1}, Lcom/keephealth/android/persenter/main/MainFragmentContract$View;->requestCalander(Z)V

    if-eqz p1, :cond_93

    if-eqz p2, :cond_98

    .line 1017
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p1

    if-eqz p1, :cond_98

    .line 1018
    array-length p2, p1

    const/4 v0, 0x5

    if-ne p2, v0, :cond_98

    .line 1019
    aget-byte p2, p1, v1

    const/16 v0, -0x10

    if-ne p2, v0, :cond_98

    const/4 p2, 0x1

    aget-byte v0, p1, p2

    if-ne v0, p2, :cond_98

    const/4 v0, 0x3

    aget-byte p1, p1, v0

    if-nez p1, :cond_98

    .line 1021
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1023
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/CalendarEventsRetriever;->getEventsFromInstancesTable(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_8d

    .line 1024
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_8d

    .line 1025
    new-instance v2, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$15$1;

    invoke-direct {v2, p0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$15$1;-><init>(Lcom/keephealth/android/persenter/main/MainFragmentPresenter$15;)V

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1043
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 1044
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0x14

    if-le v2, v3, :cond_6e

    move v2, v1

    :goto_60
    if-ge v2, v3, :cond_71

    .line 1046
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_60

    .line 1049
    :cond_6e
    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1051
    :cond_71
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "android.permission.READ_CALENDAR"

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_83

    .line 1052
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$15;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # invokes: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->glucosePower(Lcom/keephealth/android/model/bean/DeviceModel;)V
    invoke-static {p1, p3}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$3200(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;Lcom/keephealth/android/model/bean/DeviceModel;)V

    goto :goto_98

    .line 1054
    :cond_83
    iget-object v0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$15;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    iput-boolean p2, v0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->isDeleteSchedule:Z

    .line 1055
    iget-object p2, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$15;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    invoke-virtual {p2, p1, p3, v1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->sendSchedules(Ljava/util/List;Lcom/keephealth/android/model/bean/DeviceModel;Z)V

    goto :goto_98

    .line 1058
    :cond_8d
    iget-object v0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$15;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    invoke-virtual {v0, p1, p3, p2}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->sendSchedules(Ljava/util/List;Lcom/keephealth/android/model/bean/DeviceModel;Z)V

    goto :goto_98

    .line 1064
    :cond_93
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$15;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # invokes: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->glucosePower(Lcom/keephealth/android/model/bean/DeviceModel;)V
    invoke-static {p1, p3}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$3200(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;Lcom/keephealth/android/model/bean/DeviceModel;)V

    :cond_98
    :goto_98
    return-void
.end method

.method public onFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;)V
    .registers 2

    .line 1072
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$15;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # getter for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mView:Lcom/keephealth/android/base/IBaseView;
    invoke-static {p1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$2800(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Lcom/keephealth/android/base/IBaseView;

    move-result-object p1

    if-eqz p1, :cond_13

    .line 1073
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$15;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # getter for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mView:Lcom/keephealth/android/base/IBaseView;
    invoke-static {p1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$2900(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Lcom/keephealth/android/base/IBaseView;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/persenter/main/MainFragmentContract$View;

    invoke-interface {p1}, Lcom/keephealth/android/persenter/main/MainFragmentContract$View;->requestFaild()V

    :cond_13
    return-void
.end method

.method public onSuccess(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 5

    .line 1010
    iget-boolean v0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$15;->val$isOpen:Z

    iget-object v1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$15;->val$deviceModel:Lcom/keephealth/android/model/bean/DeviceModel;

    new-instance v2, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$15$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0, p1, v1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$15$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/persenter/main/MainFragmentPresenter$15;ZLandroid/bluetooth/BluetoothGattCharacteristic;Lcom/keephealth/android/model/bean/DeviceModel;)V

    invoke-static {v2}, Lcom/keephealth/android/util/ThreadUtil;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method
