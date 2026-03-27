.class public final synthetic Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$$ExternalSyntheticLambda48;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;

.field public final synthetic f$1:Lcom/keephealth/android/greendao/bean/HealthSport;


# direct methods
.method public synthetic constructor <init>(Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;Lcom/keephealth/android/greendao/bean/HealthSport;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$$ExternalSyntheticLambda48;->f$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;

    iput-object p2, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$$ExternalSyntheticLambda48;->f$1:Lcom/keephealth/android/greendao/bean/HealthSport;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$$ExternalSyntheticLambda48;->f$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$$ExternalSyntheticLambda48;->f$1:Lcom/keephealth/android/greendao/bean/HealthSport;

    invoke-virtual {v0, v1}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->lambda$updateSportVaule2$43$com-keephealth-android-ui-main-fragment-MainFragmentNew(Lcom/keephealth/android/greendao/bean/HealthSport;)V

    return-void
.end method
