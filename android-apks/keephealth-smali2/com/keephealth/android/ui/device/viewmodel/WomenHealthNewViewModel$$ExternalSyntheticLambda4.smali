.class public final synthetic Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 0
    check-cast p1, Ljava/util/Map;

    invoke-static {p1}, Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;->lambda$sendData$2(Ljava/util/Map;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method
