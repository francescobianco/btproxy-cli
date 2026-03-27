.class public interface abstract Lcom/keephealth/android/persenter/main/DrinkWaterHistoryContract$View;
.super Ljava/lang/Object;
.source "DrinkWaterHistoryContract.java"

# interfaces
.implements Lcom/keephealth/android/base/IBaseView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/persenter/main/DrinkWaterHistoryContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "View"
.end annotation


# virtual methods
.method public abstract reBackDayData(Ljava/util/List;Ljava/util/List;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;",
            ">;",
            "Ljava/util/List<",
            "Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;",
            ">;I)V"
        }
    .end annotation
.end method

.method public abstract reBackMonthData(Ljava/util/List;IILjava/util/Date;Ljava/util/Date;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;",
            ">;II",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            ")V"
        }
    .end annotation
.end method
