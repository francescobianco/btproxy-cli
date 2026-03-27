.class public final synthetic Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 0
    check-cast p1, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;

    check-cast p2, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;

    invoke-static {p1, p2}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->lambda$reBackDayData$3(Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;)I

    move-result p1

    return p1
.end method
