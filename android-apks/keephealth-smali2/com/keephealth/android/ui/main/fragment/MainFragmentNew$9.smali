.class Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$9;
.super Ljava/lang/Object;
.source "MainFragmentNew.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->updateSportVaule(Lcom/keephealth/android/greendao/bean/HealthSport;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;

.field final synthetic val$sport:Lcom/keephealth/android/greendao/bean/HealthSport;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;Lcom/keephealth/android/greendao/bean/HealthSport;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2534
    iput-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$9;->this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;

    iput-object p2, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$9;->val$sport:Lcom/keephealth/android/greendao/bean/HealthSport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 2537
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$9;->this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$9;->val$sport:Lcom/keephealth/android/greendao/bean/HealthSport;

    iput-object v1, v0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->sportBackground:Lcom/keephealth/android/greendao/bean/HealthSport;

    return-void
.end method
