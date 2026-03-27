.class public interface abstract Lcom/keephealth/android/persenter/main/BloodPressHistoryContract$View;
.super Ljava/lang/Object;
.source "BloodPressHistoryContract.java"

# interfaces
.implements Lcom/keephealth/android/base/IBaseView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/persenter/main/BloodPressHistoryContract;
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

.method public abstract reBackMonthData(Ljava/util/List;IIIILjava/util/Date;Ljava/util/Date;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/keephealth/android/greendao/bean/HealthBlood;",
            ">;IIII",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            ")V"
        }
    .end annotation
.end method
