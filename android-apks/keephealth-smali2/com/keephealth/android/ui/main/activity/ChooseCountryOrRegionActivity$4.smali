.class Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity$4;
.super Ljava/lang/Object;
.source "ChooseCountryOrRegionActivity.java"

# interfaces
.implements Lcom/keephealth/android/views/SideBar$OnTouchingLetterChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;)V
    .registers 2

    .line 304
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity$4;->this$0:Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouchingLetterChanged(Ljava/lang/String;)V
    .registers 3

    .line 308
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity$4;->this$0:Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;

    # invokes: Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;->dealSideBarItemSelected(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;->access$600(Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;Ljava/lang/String;)V

    return-void
.end method
