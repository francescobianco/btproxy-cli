.class Lcom/keephealth/android/views/WeekDayCheckAlarm$1;
.super Ljava/lang/Object;
.source "WeekDayCheckAlarm.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/views/WeekDayCheckAlarm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/views/WeekDayCheckAlarm;


# direct methods
.method constructor <init>(Lcom/keephealth/android/views/WeekDayCheckAlarm;)V
    .registers 2

    .line 65
    iput-object p1, p0, Lcom/keephealth/android/views/WeekDayCheckAlarm$1;->this$0:Lcom/keephealth/android/views/WeekDayCheckAlarm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 69
    move-object v0, p1

    check-cast v0, Lcom/keephealth/android/views/ValueStateTextView;

    .line 70
    invoke-virtual {v0}, Lcom/keephealth/android/views/ValueStateTextView;->isOpen()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/ValueStateTextView;->setOpen(Z)V

    .line 71
    iget-object v1, p0, Lcom/keephealth/android/views/WeekDayCheckAlarm$1;->this$0:Lcom/keephealth/android/views/WeekDayCheckAlarm;

    # getter for: Lcom/keephealth/android/views/WeekDayCheckAlarm;->repetitions:[Z
    invoke-static {v1}, Lcom/keephealth/android/views/WeekDayCheckAlarm;->access$000(Lcom/keephealth/android/views/WeekDayCheckAlarm;)[Z

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0}, Lcom/keephealth/android/views/ValueStateTextView;->isOpen()Z

    move-result v0

    aput-boolean v0, v1, p1

    .line 72
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "repetitions:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/keephealth/android/views/WeekDayCheckAlarm$1;->this$0:Lcom/keephealth/android/views/WeekDayCheckAlarm;

    # getter for: Lcom/keephealth/android/views/WeekDayCheckAlarm;->repetitions:[Z
    invoke-static {v0}, Lcom/keephealth/android/views/WeekDayCheckAlarm;->access$000(Lcom/keephealth/android/views/WeekDayCheckAlarm;)[Z

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/log/DebugLog;->i(Ljava/lang/String;)V

    .line 73
    iget-object p1, p0, Lcom/keephealth/android/views/WeekDayCheckAlarm$1;->this$0:Lcom/keephealth/android/views/WeekDayCheckAlarm;

    # getter for: Lcom/keephealth/android/views/WeekDayCheckAlarm;->onChange:Lcom/keephealth/android/views/WeekDayCheckAlarm$OnWeekCheckedChange;
    invoke-static {p1}, Lcom/keephealth/android/views/WeekDayCheckAlarm;->access$100(Lcom/keephealth/android/views/WeekDayCheckAlarm;)Lcom/keephealth/android/views/WeekDayCheckAlarm$OnWeekCheckedChange;

    move-result-object p1

    if-eqz p1, :cond_55

    .line 74
    iget-object p1, p0, Lcom/keephealth/android/views/WeekDayCheckAlarm$1;->this$0:Lcom/keephealth/android/views/WeekDayCheckAlarm;

    # getter for: Lcom/keephealth/android/views/WeekDayCheckAlarm;->onChange:Lcom/keephealth/android/views/WeekDayCheckAlarm$OnWeekCheckedChange;
    invoke-static {p1}, Lcom/keephealth/android/views/WeekDayCheckAlarm;->access$100(Lcom/keephealth/android/views/WeekDayCheckAlarm;)Lcom/keephealth/android/views/WeekDayCheckAlarm$OnWeekCheckedChange;

    move-result-object p1

    iget-object v0, p0, Lcom/keephealth/android/views/WeekDayCheckAlarm$1;->this$0:Lcom/keephealth/android/views/WeekDayCheckAlarm;

    # getter for: Lcom/keephealth/android/views/WeekDayCheckAlarm;->repetitions:[Z
    invoke-static {v0}, Lcom/keephealth/android/views/WeekDayCheckAlarm;->access$000(Lcom/keephealth/android/views/WeekDayCheckAlarm;)[Z

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/keephealth/android/views/WeekDayCheckAlarm$OnWeekCheckedChange;->onChange([Z)V

    :cond_55
    return-void
.end method
