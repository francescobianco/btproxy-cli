.class public Lcom/keephealth/android/viewmodel/main/bean/DrinkWaterBean;
.super Ljava/lang/Object;
.source "DrinkWaterBean.java"


# instance fields
.field drinkWaterDayItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;",
            ">;"
        }
    .end annotation
.end field

.field drinkWaterHourItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;",
            ">;"
        }
    .end annotation
.end field

.field totalWater:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDrinkWaterDayItems()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;",
            ">;"
        }
    .end annotation

    .line 13
    iget-object v0, p0, Lcom/keephealth/android/viewmodel/main/bean/DrinkWaterBean;->drinkWaterDayItems:Ljava/util/List;

    return-object v0
.end method

.method public getDrinkWaterHourItems()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;",
            ">;"
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/keephealth/android/viewmodel/main/bean/DrinkWaterBean;->drinkWaterHourItems:Ljava/util/List;

    return-object v0
.end method

.method public getTotalWater()I
    .registers 2

    .line 29
    iget v0, p0, Lcom/keephealth/android/viewmodel/main/bean/DrinkWaterBean;->totalWater:I

    return v0
.end method

.method public setDrinkWaterDayItems(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;",
            ">;)V"
        }
    .end annotation

    .line 17
    iput-object p1, p0, Lcom/keephealth/android/viewmodel/main/bean/DrinkWaterBean;->drinkWaterDayItems:Ljava/util/List;

    return-void
.end method

.method public setDrinkWaterHourItems(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;",
            ">;)V"
        }
    .end annotation

    .line 25
    iput-object p1, p0, Lcom/keephealth/android/viewmodel/main/bean/DrinkWaterBean;->drinkWaterHourItems:Ljava/util/List;

    return-void
.end method

.method public setTotalWater(I)V
    .registers 2

    .line 33
    iput p1, p0, Lcom/keephealth/android/viewmodel/main/bean/DrinkWaterBean;->totalWater:I

    return-void
.end method
