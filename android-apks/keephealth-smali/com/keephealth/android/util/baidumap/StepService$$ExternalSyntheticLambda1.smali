.class public final synthetic Lcom/keephealth/android/util/baidumap/StepService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/keephealth/android/util/baidumap/StepValuePassListener;


# instance fields
.field public final synthetic f$0:Lcom/keephealth/android/util/baidumap/StepService;


# direct methods
.method public synthetic constructor <init>(Lcom/keephealth/android/util/baidumap/StepService;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/keephealth/android/util/baidumap/StepService$$ExternalSyntheticLambda1;->f$0:Lcom/keephealth/android/util/baidumap/StepService;

    return-void
.end method


# virtual methods
.method public final stepChanged(I)V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/keephealth/android/util/baidumap/StepService$$ExternalSyntheticLambda1;->f$0:Lcom/keephealth/android/util/baidumap/StepService;

    invoke-virtual {v0, p1}, Lcom/keephealth/android/util/baidumap/StepService;->lambda$addBasePedometerListener$1$com-keephealth-android-util-baidumap-StepService(I)V

    return-void
.end method
