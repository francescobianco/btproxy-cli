.class Lcom/keephealth/android/util/DialogHelperNew$7;
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


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1811
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Lcom/keephealth/android/views/wheel/NewWheelView;II)V
    .registers 10

    .line 1814
    sget p1, Lcom/keephealth/android/util/DialogHelperNew;->month_start:I

    const-string p2, "fr33e"

    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    if-nez p1, :cond_2d

    .line 1815
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, " \u9910\u540e\u5f53\u524d\u503c_newValue:"

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-double v2, p3

    div-double/2addr v2, v0

    sget p3, Lcom/keephealth/android/util/DialogHelperNew;->shareBefore:I

    add-int/lit8 p3, p3, 0xa

    int-to-double v4, p3

    div-double/2addr v4, v0

    add-double/2addr v4, v2

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1816
    sget p1, Lcom/keephealth/android/util/DialogHelperNew;->shareBefore:I

    add-int/lit8 p1, p1, 0xa

    int-to-double p1, p1

    div-double/2addr p1, v0

    add-double/2addr v2, p1

    sput-wide v2, Lcom/keephealth/android/util/DialogHelperNew;->backCan:D

    goto :goto_52

    .line 1818
    :cond_2d
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "  month_start:"

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/keephealth/android/util/DialogHelperNew;->month_start:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "  newValue\uff1a"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1819
    sget p1, Lcom/keephealth/android/util/DialogHelperNew;->month_start:I

    add-int/2addr p3, p1

    int-to-double p1, p3

    div-double/2addr p1, v0

    sput-wide p1, Lcom/keephealth/android/util/DialogHelperNew;->backCan:D

    .line 1821
    :goto_52
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-wide v0, Lcom/keephealth/android/util/DialogHelperNew;->backCan:D

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, ""

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "canBack"

    invoke-static {p1, p3, p2}, Lcom/keephealth/android/util/SharePreferenceUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
