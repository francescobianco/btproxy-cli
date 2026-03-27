.class public interface abstract Lcom/keephealth/android/persenter/main/BloodOxygenHistoryContract$View;
.super Ljava/lang/Object;
.source "BloodOxygenHistoryContract.java"

# interfaces
.implements Lcom/keephealth/android/base/IBaseView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/persenter/main/BloodOxygenHistoryContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "View"
.end annotation


# virtual methods
.method public abstract reBackDayData(Ljava/util/List;Lcom/keephealth/android/greendao/bean/HealthBlood;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/keephealth/android/greendao/bean/HealthBloodItem;",
            ">;",
            "Lcom/keephealth/android/greendao/bean/HealthBlood;",
            ")V"
        }
    .end annotation
.end method

.method public abstract reBackMonthData(Ljava/util/List;IIILjava/util/Date;Ljava/util/Date;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/keephealth/android/greendao/bean/HealthBlood;",
            ">;III",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            ")V"
        }
    .end annotation
.end method
