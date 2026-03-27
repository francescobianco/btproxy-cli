.class public final synthetic Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter;

.field public final synthetic f$1:Lcom/keephealth/android/ui/main/bean/ChildEntity;

.field public final synthetic f$2:Landroid/view/ViewGroup;

.field public final synthetic f$3:Landroid/view/View;

.field public final synthetic f$4:I

.field public final synthetic f$5:I


# direct methods
.method public synthetic constructor <init>(Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter;Lcom/keephealth/android/ui/main/bean/ChildEntity;Landroid/view/ViewGroup;Landroid/view/View;II)V
    .registers 7

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter;

    iput-object p2, p0, Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter$$ExternalSyntheticLambda0;->f$1:Lcom/keephealth/android/ui/main/bean/ChildEntity;

    iput-object p3, p0, Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter$$ExternalSyntheticLambda0;->f$2:Landroid/view/ViewGroup;

    iput-object p4, p0, Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter$$ExternalSyntheticLambda0;->f$3:Landroid/view/View;

    iput p5, p0, Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter$$ExternalSyntheticLambda0;->f$4:I

    iput p6, p0, Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter$$ExternalSyntheticLambda0;->f$5:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 9

    .line 0
    iget-object v0, p0, Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter$$ExternalSyntheticLambda0;->f$1:Lcom/keephealth/android/ui/main/bean/ChildEntity;

    iget-object v2, p0, Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter$$ExternalSyntheticLambda0;->f$2:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter$$ExternalSyntheticLambda0;->f$3:Landroid/view/View;

    iget v4, p0, Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter$$ExternalSyntheticLambda0;->f$4:I

    iget v5, p0, Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter$$ExternalSyntheticLambda0;->f$5:I

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter;->lambda$render$0$com-keephealth-android-ui-main-adapter-WeightRecordAdapter(Lcom/keephealth/android/ui/main/bean/ChildEntity;Landroid/view/ViewGroup;Landroid/view/View;IILandroid/view/View;)V

    return-void
.end method
