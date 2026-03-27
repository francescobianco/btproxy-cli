.class public final synthetic Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BinaryOperator;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lcom/keephealth/android/model/bean/WomenHealthDeviceBean;

    check-cast p2, Lcom/keephealth/android/model/bean/WomenHealthDeviceBean;

    invoke-static {p1, p2}, Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;->lambda$sendData$1(Lcom/keephealth/android/model/bean/WomenHealthDeviceBean;Lcom/keephealth/android/model/bean/WomenHealthDeviceBean;)Lcom/keephealth/android/model/bean/WomenHealthDeviceBean;

    move-result-object p1

    return-object p1
.end method
