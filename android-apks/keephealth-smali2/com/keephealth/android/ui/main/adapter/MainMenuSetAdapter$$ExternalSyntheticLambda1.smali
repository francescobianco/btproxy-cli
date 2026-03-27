.class public final synthetic Lcom/keephealth/android/ui/main/adapter/MainMenuSetAdapter$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/keephealth/android/ui/main/adapter/MainMenuSetAdapter;

.field public final synthetic f$1:Lcom/keephealth/android/ui/main/adapter/MainMenuSetAdapter$ViewHolder;

.field public final synthetic f$2:I

.field public final synthetic f$3:Lcom/keephealth/android/ui/main/bean/MainMenuSet;


# direct methods
.method public synthetic constructor <init>(Lcom/keephealth/android/ui/main/adapter/MainMenuSetAdapter;Lcom/keephealth/android/ui/main/adapter/MainMenuSetAdapter$ViewHolder;ILcom/keephealth/android/ui/main/bean/MainMenuSet;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/keephealth/android/ui/main/adapter/MainMenuSetAdapter$$ExternalSyntheticLambda1;->f$0:Lcom/keephealth/android/ui/main/adapter/MainMenuSetAdapter;

    iput-object p2, p0, Lcom/keephealth/android/ui/main/adapter/MainMenuSetAdapter$$ExternalSyntheticLambda1;->f$1:Lcom/keephealth/android/ui/main/adapter/MainMenuSetAdapter$ViewHolder;

    iput p3, p0, Lcom/keephealth/android/ui/main/adapter/MainMenuSetAdapter$$ExternalSyntheticLambda1;->f$2:I

    iput-object p4, p0, Lcom/keephealth/android/ui/main/adapter/MainMenuSetAdapter$$ExternalSyntheticLambda1;->f$3:Lcom/keephealth/android/ui/main/bean/MainMenuSet;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 6

    .line 0
    iget-object v0, p0, Lcom/keephealth/android/ui/main/adapter/MainMenuSetAdapter$$ExternalSyntheticLambda1;->f$0:Lcom/keephealth/android/ui/main/adapter/MainMenuSetAdapter;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/adapter/MainMenuSetAdapter$$ExternalSyntheticLambda1;->f$1:Lcom/keephealth/android/ui/main/adapter/MainMenuSetAdapter$ViewHolder;

    iget v2, p0, Lcom/keephealth/android/ui/main/adapter/MainMenuSetAdapter$$ExternalSyntheticLambda1;->f$2:I

    iget-object v3, p0, Lcom/keephealth/android/ui/main/adapter/MainMenuSetAdapter$$ExternalSyntheticLambda1;->f$3:Lcom/keephealth/android/ui/main/bean/MainMenuSet;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/keephealth/android/ui/main/adapter/MainMenuSetAdapter;->lambda$onNormalBindViewHolder$1$com-keephealth-android-ui-main-adapter-MainMenuSetAdapter(Lcom/keephealth/android/ui/main/adapter/MainMenuSetAdapter$ViewHolder;ILcom/keephealth/android/ui/main/bean/MainMenuSet;Landroid/view/View;)V

    return-void
.end method
