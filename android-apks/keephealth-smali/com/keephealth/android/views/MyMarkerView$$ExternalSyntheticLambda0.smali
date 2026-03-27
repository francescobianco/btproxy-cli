.class public final synthetic Lcom/keephealth/android/views/MyMarkerView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/keephealth/android/views/MyMarkerView;

.field public final synthetic f$1:Lcom/keephealth/android/greendao/bean/HealthBlood;


# direct methods
.method public synthetic constructor <init>(Lcom/keephealth/android/views/MyMarkerView;Lcom/keephealth/android/greendao/bean/HealthBlood;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/keephealth/android/views/MyMarkerView$$ExternalSyntheticLambda0;->f$0:Lcom/keephealth/android/views/MyMarkerView;

    iput-object p2, p0, Lcom/keephealth/android/views/MyMarkerView$$ExternalSyntheticLambda0;->f$1:Lcom/keephealth/android/greendao/bean/HealthBlood;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/keephealth/android/views/MyMarkerView$$ExternalSyntheticLambda0;->f$0:Lcom/keephealth/android/views/MyMarkerView;

    iget-object v1, p0, Lcom/keephealth/android/views/MyMarkerView$$ExternalSyntheticLambda0;->f$1:Lcom/keephealth/android/greendao/bean/HealthBlood;

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/MyMarkerView;->lambda$refreshContent$0$com-keephealth-android-views-MyMarkerView(Lcom/keephealth/android/greendao/bean/HealthBlood;)V

    return-void
.end method
