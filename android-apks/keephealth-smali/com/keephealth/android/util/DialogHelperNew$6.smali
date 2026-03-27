.class Lcom/keephealth/android/util/DialogHelperNew$6;
.super Ljava/lang/Object;
.source "DialogHelperNew.java"

# interfaces
.implements Lcom/keephealth/android/views/wheel/OnWheelChangedNewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/util/DialogHelperNew;->showXueTangDialog(Landroid/content/Context;Lcom/keephealth/android/views/dialog/WheelViewCanDialog$OnSelectClick;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$wv_back:Lcom/keephealth/android/views/wheel/NewWheelView;


# direct methods
.method constructor <init>(Lcom/keephealth/android/views/wheel/NewWheelView;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1797
    iput-object p1, p0, Lcom/keephealth/android/util/DialogHelperNew$6;->val$wv_back:Lcom/keephealth/android/views/wheel/NewWheelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Lcom/keephealth/android/views/wheel/NewWheelView;II)V
    .registers 8

    .line 1800
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, " \u9910\u524d\u5f53\u524d\u503c_newValue:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-double v0, p3

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    add-double/2addr v2, v0

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "fr33e"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1801
    sput-wide v2, Lcom/keephealth/android/util/DialogHelperNew;->beforeCan:D

    .line 1802
    iget-object p1, p0, Lcom/keephealth/android/util/DialogHelperNew$6;->val$wv_back:Lcom/keephealth/android/views/wheel/NewWheelView;

    new-instance p2, Lcom/keephealth/android/views/wheel/XueTangNumericWheelAdapter;

    add-int/lit8 p3, p3, 0x28

    const/16 v2, 0xc8

    invoke-direct {p2, p3, v2}, Lcom/keephealth/android/views/wheel/XueTangNumericWheelAdapter;-><init>(II)V

    invoke-virtual {p1, p2}, Lcom/keephealth/android/views/wheel/NewWheelView;->setAdapter(Lcom/keephealth/android/views/wheel/WheelAdapter;)V

    .line 1803
    iget-object p1, p0, Lcom/keephealth/android/util/DialogHelperNew$6;->val$wv_back:Lcom/keephealth/android/views/wheel/NewWheelView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/keephealth/android/views/wheel/NewWheelView;->setCurrentItem(I)V

    .line 1804
    sput p3, Lcom/keephealth/android/util/DialogHelperNew;->month_start:I

    const-wide/high16 p1, 0x4010000000000000L    # 4.0

    add-double/2addr v0, p1

    .line 1805
    sput-wide v0, Lcom/keephealth/android/util/DialogHelperNew;->backCan:D

    .line 1806
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-wide v0, Lcom/keephealth/android/util/DialogHelperNew;->beforeCan:D

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, ""

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "canBefore"

    invoke-static {p1, v0, p2}, Lcom/keephealth/android/util/SharePreferenceUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1807
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-wide v0, Lcom/keephealth/android/util/DialogHelperNew;->backCan:D

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "canBack"

    invoke-static {p1, p3, p2}, Lcom/keephealth/android/util/SharePreferenceUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
