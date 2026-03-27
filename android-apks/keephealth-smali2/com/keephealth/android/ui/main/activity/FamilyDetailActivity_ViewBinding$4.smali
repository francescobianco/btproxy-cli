.class Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity_ViewBinding$4;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "FamilyDetailActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity_ViewBinding;-><init>(Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity_ViewBinding;

.field final synthetic val$target:Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity_ViewBinding;Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;)V
    .registers 3

    .line 76
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity_ViewBinding$4;->this$0:Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity_ViewBinding;

    iput-object p2, p0, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity_ViewBinding$4;->val$target:Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .registers 2

    .line 79
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity_ViewBinding$4;->val$target:Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;->selectData()V

    return-void
.end method
