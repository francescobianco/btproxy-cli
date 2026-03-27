.class public final synthetic Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;

.field public final synthetic f$1:Lcom/keephealth/android/model/bean/DialDetailB;

.field public final synthetic f$2:Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter$ViewHolder;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;Lcom/keephealth/android/model/bean/DialDetailB;Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter$ViewHolder;I)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;

    iput-object p2, p0, Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter$$ExternalSyntheticLambda0;->f$1:Lcom/keephealth/android/model/bean/DialDetailB;

    iput-object p3, p0, Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter$$ExternalSyntheticLambda0;->f$2:Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter$ViewHolder;

    iput p4, p0, Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter$$ExternalSyntheticLambda0;->f$3:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 6

    .line 0
    iget-object v0, p0, Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter$$ExternalSyntheticLambda0;->f$1:Lcom/keephealth/android/model/bean/DialDetailB;

    iget-object v2, p0, Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter$$ExternalSyntheticLambda0;->f$2:Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter$ViewHolder;

    iget v3, p0, Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter$$ExternalSyntheticLambda0;->f$3:I

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;->lambda$onNormalBindViewHolder$0$com-keephealth-android-ui-device-adapter-RecommendItemAdapter(Lcom/keephealth/android/model/bean/DialDetailB;Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter$ViewHolder;ILandroid/view/View;)V

    return-void
.end method
