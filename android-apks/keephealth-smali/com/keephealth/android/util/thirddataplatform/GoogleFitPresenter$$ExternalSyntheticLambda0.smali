.class public final synthetic Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# instance fields
.field public final synthetic f$0:Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter;

.field public final synthetic f$1:I

.field public final synthetic f$2:J

.field public final synthetic f$3:J

.field public final synthetic f$4:F

.field public final synthetic f$5:F

.field public final synthetic f$6:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;


# direct methods
.method public synthetic constructor <init>(Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter;IJJFFLcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V
    .registers 10

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter$$ExternalSyntheticLambda0;->f$0:Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter;

    iput p2, p0, Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter$$ExternalSyntheticLambda0;->f$1:I

    iput-wide p3, p0, Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter$$ExternalSyntheticLambda0;->f$2:J

    iput-wide p5, p0, Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter$$ExternalSyntheticLambda0;->f$3:J

    iput p7, p0, Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter$$ExternalSyntheticLambda0;->f$4:F

    iput p8, p0, Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter$$ExternalSyntheticLambda0;->f$5:F

    iput-object p9, p0, Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter$$ExternalSyntheticLambda0;->f$6:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .registers 12

    .line 0
    iget-object v0, p0, Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter$$ExternalSyntheticLambda0;->f$0:Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter;

    iget v1, p0, Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter$$ExternalSyntheticLambda0;->f$1:I

    iget-wide v2, p0, Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter$$ExternalSyntheticLambda0;->f$2:J

    iget-wide v4, p0, Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter$$ExternalSyntheticLambda0;->f$3:J

    iget v6, p0, Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter$$ExternalSyntheticLambda0;->f$4:F

    iget v7, p0, Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter$$ExternalSyntheticLambda0;->f$5:F

    iget-object v8, p0, Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter$$ExternalSyntheticLambda0;->f$6:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-object v9, p1

    check-cast v9, Ljava/util/List;

    invoke-virtual/range {v0 .. v9}, Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter;->lambda$uploadStep$8$com-keephealth-android-util-thirddataplatform-GoogleFitPresenter(IJJFFLcom/google/android/gms/auth/api/signin/GoogleSignInAccount;Ljava/util/List;)V

    return-void
.end method
