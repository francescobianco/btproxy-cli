.class public interface abstract Lcom/keephealth/android/persenter/main/TempHistoryContract$View;
.super Ljava/lang/Object;
.source "TempHistoryContract.java"

# interfaces
.implements Lcom/keephealth/android/base/IBaseView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/persenter/main/TempHistoryContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "View"
.end annotation


# virtual methods
.method public abstract reBackDayData(Ljava/util/List;DDD)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/keephealth/android/greendao/bean/TempInfo;",
            ">;DDD)V"
        }
    .end annotation
.end method

.method public abstract reBackMonthData(Ljava/util/List;Ljava/util/Date;Ljava/util/Date;DDD)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/keephealth/android/greendao/bean/TempDayInfo;",
            ">;",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            "DDD)V"
        }
    .end annotation
.end method
