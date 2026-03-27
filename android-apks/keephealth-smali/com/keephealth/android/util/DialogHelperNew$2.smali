.class Lcom/keephealth/android/util/DialogHelperNew$2;
.super Ljava/lang/Object;
.source "DialogHelperNew.java"

# interfaces
.implements Lcom/keephealth/android/views/wheel/OnWheelChangedNewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/util/DialogHelperNew;->initTimePicker(Landroid/content/Context;[ILcom/keephealth/android/views/wheel/NewWheelView;Lcom/keephealth/android/views/wheel/NewWheelView;Lcom/keephealth/android/views/wheel/NewWheelView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$bigDays:[Ljava/lang/String;

.field final synthetic val$list_big:Ljava/util/List;

.field final synthetic val$list_little:Ljava/util/List;

.field final synthetic val$nrDays:[Ljava/lang/String;

.field final synthetic val$rDays:[Ljava/lang/String;

.field final synthetic val$smallDays:[Ljava/lang/String;

.field final synthetic val$wv_day:Lcom/keephealth/android/views/wheel/NewWheelView;

.field final synthetic val$wv_month:Lcom/keephealth/android/views/wheel/NewWheelView;


# direct methods
.method constructor <init>(Lcom/keephealth/android/views/wheel/NewWheelView;Ljava/util/List;Lcom/keephealth/android/views/wheel/NewWheelView;[Ljava/lang/String;Ljava/util/List;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 946
    iput-object p1, p0, Lcom/keephealth/android/util/DialogHelperNew$2;->val$wv_month:Lcom/keephealth/android/views/wheel/NewWheelView;

    iput-object p2, p0, Lcom/keephealth/android/util/DialogHelperNew$2;->val$list_big:Ljava/util/List;

    iput-object p3, p0, Lcom/keephealth/android/util/DialogHelperNew$2;->val$wv_day:Lcom/keephealth/android/views/wheel/NewWheelView;

    iput-object p4, p0, Lcom/keephealth/android/util/DialogHelperNew$2;->val$bigDays:[Ljava/lang/String;

    iput-object p5, p0, Lcom/keephealth/android/util/DialogHelperNew$2;->val$list_little:Ljava/util/List;

    iput-object p6, p0, Lcom/keephealth/android/util/DialogHelperNew$2;->val$smallDays:[Ljava/lang/String;

    iput-object p7, p0, Lcom/keephealth/android/util/DialogHelperNew$2;->val$rDays:[Ljava/lang/String;

    iput-object p8, p0, Lcom/keephealth/android/util/DialogHelperNew$2;->val$nrDays:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Lcom/keephealth/android/views/wheel/NewWheelView;II)V
    .registers 5

    .line 948
    # getter for: Lcom/keephealth/android/util/DialogHelperNew;->START_YEAR:I
    invoke-static {}, Lcom/keephealth/android/util/DialogHelperNew;->access$000()I

    move-result p1

    add-int/2addr p3, p1

    .line 950
    iget-object p1, p0, Lcom/keephealth/android/util/DialogHelperNew$2;->val$wv_month:Lcom/keephealth/android/views/wheel/NewWheelView;

    # invokes: Lcom/keephealth/android/util/DialogHelperNew;->setYearsMonth(ILcom/keephealth/android/views/wheel/NewWheelView;)V
    invoke-static {p3, p1}, Lcom/keephealth/android/util/DialogHelperNew;->access$100(ILcom/keephealth/android/views/wheel/NewWheelView;)V

    .line 951
    # setter for: Lcom/keephealth/android/util/DialogHelperNew;->mCurrentYear:I
    invoke-static {p3}, Lcom/keephealth/android/util/DialogHelperNew;->access$202(I)I

    .line 952
    iget-object p1, p0, Lcom/keephealth/android/util/DialogHelperNew$2;->val$list_big:Ljava/util/List;

    iget-object p2, p0, Lcom/keephealth/android/util/DialogHelperNew$2;->val$wv_month:Lcom/keephealth/android/views/wheel/NewWheelView;

    invoke-virtual {p2}, Lcom/keephealth/android/views/wheel/NewWheelView;->getCurrentItem()I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    const/16 p2, 0x19

    if-eqz p1, :cond_30

    .line 954
    iget-object p1, p0, Lcom/keephealth/android/util/DialogHelperNew$2;->val$wv_day:Lcom/keephealth/android/views/wheel/NewWheelView;

    new-instance p3, Lcom/keephealth/android/views/wheel/ArrayWheelAdapter;

    iget-object v0, p0, Lcom/keephealth/android/util/DialogHelperNew$2;->val$bigDays:[Ljava/lang/String;

    invoke-direct {p3, v0, p2}, Lcom/keephealth/android/views/wheel/ArrayWheelAdapter;-><init>([Ljava/lang/Object;I)V

    invoke-virtual {p1, p3}, Lcom/keephealth/android/views/wheel/NewWheelView;->setAdapter(Lcom/keephealth/android/views/wheel/WheelAdapter;)V

    goto :goto_76

    .line 956
    :cond_30
    iget-object p1, p0, Lcom/keephealth/android/util/DialogHelperNew$2;->val$list_little:Ljava/util/List;

    iget-object v0, p0, Lcom/keephealth/android/util/DialogHelperNew$2;->val$wv_month:Lcom/keephealth/android/views/wheel/NewWheelView;

    invoke-virtual {v0}, Lcom/keephealth/android/views/wheel/NewWheelView;->getCurrentItem()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_51

    .line 957
    iget-object p1, p0, Lcom/keephealth/android/util/DialogHelperNew$2;->val$wv_day:Lcom/keephealth/android/views/wheel/NewWheelView;

    new-instance p3, Lcom/keephealth/android/views/wheel/ArrayWheelAdapter;

    iget-object v0, p0, Lcom/keephealth/android/util/DialogHelperNew$2;->val$smallDays:[Ljava/lang/String;

    invoke-direct {p3, v0, p2}, Lcom/keephealth/android/views/wheel/ArrayWheelAdapter;-><init>([Ljava/lang/Object;I)V

    invoke-virtual {p1, p3}, Lcom/keephealth/android/views/wheel/NewWheelView;->setAdapter(Lcom/keephealth/android/views/wheel/WheelAdapter;)V

    goto :goto_76

    .line 960
    :cond_51
    rem-int/lit8 p1, p3, 0x4

    if-nez p1, :cond_59

    rem-int/lit8 p1, p3, 0x64

    if-nez p1, :cond_5d

    :cond_59
    rem-int/lit16 p3, p3, 0x190

    if-nez p3, :cond_6a

    .line 961
    :cond_5d
    iget-object p1, p0, Lcom/keephealth/android/util/DialogHelperNew$2;->val$wv_day:Lcom/keephealth/android/views/wheel/NewWheelView;

    new-instance p3, Lcom/keephealth/android/views/wheel/ArrayWheelAdapter;

    iget-object v0, p0, Lcom/keephealth/android/util/DialogHelperNew$2;->val$rDays:[Ljava/lang/String;

    invoke-direct {p3, v0, p2}, Lcom/keephealth/android/views/wheel/ArrayWheelAdapter;-><init>([Ljava/lang/Object;I)V

    invoke-virtual {p1, p3}, Lcom/keephealth/android/views/wheel/NewWheelView;->setAdapter(Lcom/keephealth/android/views/wheel/WheelAdapter;)V

    goto :goto_76

    .line 964
    :cond_6a
    iget-object p1, p0, Lcom/keephealth/android/util/DialogHelperNew$2;->val$wv_day:Lcom/keephealth/android/views/wheel/NewWheelView;

    new-instance p3, Lcom/keephealth/android/views/wheel/ArrayWheelAdapter;

    iget-object v0, p0, Lcom/keephealth/android/util/DialogHelperNew$2;->val$nrDays:[Ljava/lang/String;

    invoke-direct {p3, v0, p2}, Lcom/keephealth/android/views/wheel/ArrayWheelAdapter;-><init>([Ljava/lang/Object;I)V

    invoke-virtual {p1, p3}, Lcom/keephealth/android/views/wheel/NewWheelView;->setAdapter(Lcom/keephealth/android/views/wheel/WheelAdapter;)V

    :goto_76
    return-void
.end method
