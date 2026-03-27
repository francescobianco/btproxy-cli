.class Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$8;
.super Ljava/lang/Object;
.source "WomenHealthActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;)V
    .registers 2

    .line 1163
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$8;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$onClick$0(Landroid/content/DialogInterface;I)V
    .registers 2

    return-void
.end method

.method static synthetic lambda$onClick$1(Landroid/content/DialogInterface;I)V
    .registers 2

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 22

    move-object/from16 v0, p0

    .line 1168
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    const/16 v9, 0xb

    const/4 v10, 0x0

    .line 1169
    invoke-virtual {v8, v9, v10}, Ljava/util/Calendar;->set(II)V

    const/16 v11, 0xc

    .line 1170
    invoke-virtual {v8, v11, v10}, Ljava/util/Calendar;->set(II)V

    const/16 v12, 0xd

    .line 1171
    invoke-virtual {v8, v12, v10}, Ljava/util/Calendar;->set(II)V

    .line 1172
    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$8;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollYear:I
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->access$1300(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;)I

    move-result v1

    const/4 v13, 0x1

    invoke-virtual {v8, v13, v1}, Ljava/util/Calendar;->set(II)V

    .line 1173
    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$8;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollMonth:I
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->access$1400(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;)I

    move-result v1

    sub-int/2addr v1, v13

    const/4 v14, 0x2

    invoke-virtual {v8, v14, v1}, Ljava/util/Calendar;->set(II)V

    .line 1174
    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$8;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollDay:I
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->access$1200(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;)I

    move-result v1

    const/4 v15, 0x5

    invoke-virtual {v8, v15, v1}, Ljava/util/Calendar;->set(II)V

    .line 1175
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "scrollDay:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$8;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollDay:I
    invoke-static {v2}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->access$1200(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v7, "6t6tyg"

    invoke-static {v7, v1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1176
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "WomenHealthActivity.this.onlyOneMunalData():"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$8;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    # invokes: Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->onlyOneMunalData()Z
    invoke-static {v2}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->access$1800(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1177
    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$8;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    # invokes: Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->onlyOneMunalData()Z
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->access$1800(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;)Z

    move-result v1

    const/16 v4, 0x8

    const-string v5, "\u8ba1\u7b97\u9884\u6d4b\u7ecf\u671f\u7684\u524d\u9762\u7b2c\u4e00\u4e2a\u5b55\u671f\u65f6\u95f4:"

    const-string v12, "rtrert46r"

    const-string v11, "-"

    const-string v9, "\u6253\u5f00\u2014\u2014-----551   2:"

    if-eqz v1, :cond_257

    .line 1178
    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$8;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->nextMunalDayBetween:I
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->access$1000(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;)I

    move-result v1

    iget-object v6, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$8;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollYear:I
    invoke-static {v6}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->access$1300(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;)I

    move-result v6

    iget-object v2, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$8;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollMonth:I
    invoke-static {v2}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->access$1400(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;)I

    move-result v2

    iget-object v3, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$8;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollDay:I
    invoke-static {v3}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->access$1200(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;)I

    move-result v3

    invoke-static {v1, v6, v2, v3}, Lcom/keephealth/android/util/WomenHealthUtil;->calNextMuntralAndOldEnd(IIII)Ljava/util/Calendar;

    move-result-object v1

    .line 1179
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 1180
    iget-object v3, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$8;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollYear:I
    invoke-static {v3}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->access$1300(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;)I

    move-result v3

    invoke-virtual {v2, v13, v3}, Ljava/util/Calendar;->set(II)V

    .line 1181
    iget-object v3, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$8;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollMonth:I
    invoke-static {v3}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->access$1400(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;)I

    move-result v3

    sub-int/2addr v3, v13

    invoke-virtual {v2, v14, v3}, Ljava/util/Calendar;->set(II)V

    .line 1182
    iget-object v3, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$8;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollDay:I
    invoke-static {v3}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->access$1200(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;)I

    move-result v3

    invoke-virtual {v2, v15, v3}, Ljava/util/Calendar;->set(II)V

    .line 1183
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Lcom/keephealth/android/util/DateUtil;->timestampToDate(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Lcom/keephealth/android/util/DateUtil;->timestampToDate(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1184
    invoke-static {v1, v2}, Lcom/keephealth/android/util/DateUtil;->getDaysBetween(Ljava/util/Calendar;Ljava/util/Calendar;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget-object v2, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$8;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;
    invoke-static {v2}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->access$000(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;)Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getMenstrualCycle()I

    move-result v2

    if-le v1, v2, :cond_134

    .line 1185
    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$8;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    iget-object v1, v1, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->llMenstrual:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1186
    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$8;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    iget-object v1, v1, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->itMen:Lcom/keephealth/android/views/ItemToggleLayout;

    invoke-virtual {v1, v10}, Lcom/keephealth/android/views/ItemToggleLayout;->setOpen(Z)V

    .line 1187
    new-instance v1, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    iget-object v2, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$8;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    invoke-direct {v1, v2}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$8;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    .line 1188
    invoke-virtual {v2}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100689

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setMessage(Ljava/lang/String;)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$8$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$8$$ExternalSyntheticLambda0;-><init>()V

    const v3, 0x7f100257

    .line 1189
    invoke-virtual {v1, v3, v2}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setRightButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object v1

    .line 1190
    invoke-virtual {v1}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->create()Lcom/keephealth/android/views/dialog/CommonDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/views/dialog/CommonDialog;->show()V

    goto/16 :goto_3d9

    .line 1192
    :cond_134
    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$8;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    const/4 v2, 0x3

    # invokes: Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->updateOpenNext(I)V
    invoke-static {v1, v2}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->access$2500(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;I)V

    .line 1193
    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$8;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollYear:I
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->access$1300(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;)I

    move-result v6

    iget-object v2, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$8;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollMonth:I
    invoke-static {v2}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->access$1400(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;)I

    move-result v9

    iget-object v2, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$8;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollDay:I
    invoke-static {v2}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->access$1200(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;)I

    move-result v11

    const/4 v2, 0x0

    const/16 v3, 0xa

    const-string v4, "open"

    move-object/from16 v18, v5

    move v5, v6

    move v6, v9

    move-object v9, v7

    move v7, v11

    # invokes: Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->measuDataAfter(ZILjava/lang/String;IIILjava/util/Calendar;)V
    invoke-static/range {v1 .. v8}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->access$400(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;ZILjava/lang/String;IIILjava/util/Calendar;)V

    .line 1195
    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$8;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollYear:I
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->access$1300(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;)I

    move-result v2

    iget-object v3, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$8;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollMonth:I
    invoke-static {v3}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->access$1400(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;)I

    move-result v3

    iget-object v4, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$8;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollDay:I
    invoke-static {v4}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->access$1200(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;)I

    move-result v4

    # invokes: Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->clearPrePregnancy(III)V
    invoke-static {v1, v2, v3, v4}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->access$3100(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;III)V

    .line 1196
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/16 v2, 0xb

    .line 1197
    invoke-virtual {v1, v2, v10}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xc

    .line 1198
    invoke-virtual {v1, v2, v10}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xd

    .line 1199
    invoke-virtual {v1, v2, v10}, Ljava/util/Calendar;->set(II)V

    .line 1200
    iget-object v2, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$8;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollYear:I
    invoke-static {v2}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->access$1300(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;)I

    move-result v2

    invoke-virtual {v1, v13, v2}, Ljava/util/Calendar;->set(II)V

    .line 1201
    iget-object v2, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$8;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollMonth:I
    invoke-static {v2}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->access$1400(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;)I

    move-result v2

    sub-int/2addr v2, v13

    invoke-virtual {v1, v14, v2}, Ljava/util/Calendar;->set(II)V

    .line 1202
    iget-object v2, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$8;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollDay:I
    invoke-static {v2}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->access$1200(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;)I

    move-result v2

    invoke-virtual {v1, v15, v2}, Ljava/util/Calendar;->set(II)V

    .line 1203
    iget-object v2, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$8;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;
    invoke-static {v2}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->access$000(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;)Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getMenstrualCycle()I

    move-result v2

    invoke-virtual {v1, v15, v2}, Ljava/util/Calendar;->add(II)V

    .line 1204
    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v3, v18

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/keephealth/android/util/DateUtil;->timestampToDate(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1205
    iget-object v2, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$8;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    const/16 v3, 0x9

    # invokes: Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->reCalPrePregnancyData(ILjava/util/Calendar;)V
    invoke-static {v2, v3, v1}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->access$3000(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;ILjava/util/Calendar;)V

    .line 1206
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/16 v2, 0xb

    .line 1207
    invoke-virtual {v1, v2, v10}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xc

    .line 1208
    invoke-virtual {v1, v2, v10}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xd

    .line 1209
    invoke-virtual {v1, v2, v10}, Ljava/util/Calendar;->set(II)V

    .line 1210
    iget-object v2, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$8;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollYear:I
    invoke-static {v2}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->access$1300(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;)I

    move-result v2

    invoke-virtual {v1, v13, v2}, Ljava/util/Calendar;->set(II)V

    .line 1211
    iget-object v2, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$8;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollMonth:I
    invoke-static {v2}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->access$1400(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;)I

    move-result v2

    sub-int/2addr v2, v13

    invoke-virtual {v1, v14, v2}, Ljava/util/Calendar;->set(II)V

    .line 1212
    iget-object v2, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$8;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollDay:I
    invoke-static {v2}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->access$1200(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;)I

    move-result v2

    invoke-virtual {v1, v15, v2}, Ljava/util/Calendar;->set(II)V

    .line 1213
    iget-object v2, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$8;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollYear:I
    invoke-static {v2}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->access$1300(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;)I

    move-result v3

    iget-object v4, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$8;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollMonth:I
    invoke-static {v4}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->access$1400(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;)I

    move-result v4

    iget-object v5, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$8;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollDay:I
    invoke-static {v5}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->access$1200(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;)I

    move-result v5

    # invokes: Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->clearPrePregnancy(III)V
    invoke-static {v2, v3, v4, v5}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->access$3100(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;III)V

    .line 1214
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "10 calendar3:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/keephealth/android/util/DateUtil;->timestampToDate(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1215
    iget-object v2, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$8;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    const/16 v3, 0xc

    # invokes: Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->reCalPrePregnancyData(ILjava/util/Calendar;)V
    invoke-static {v2, v3, v1}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->access$3000(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;ILjava/util/Calendar;)V

    .line 1216
    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$8;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollYear:I
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->access$1300(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;)I

    move-result v2

    iget-object v3, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$8;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollMonth:I
    invoke-static {v3}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->access$1400(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;)I

    move-result v3

    iget-object v4, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$8;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollDay:I
    invoke-static {v4}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->access$1200(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;)I

    move-result v4

    const/16 v5, 0x10

    # invokes: Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->notifyMonthView(IIII)V
    invoke-static {v1, v5, v2, v3, v4}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->access$300(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;IIII)V

    .line 1217
    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$8;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    invoke-virtual {v1}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->calPreAndNextLength()V

    goto/16 :goto_3d9

    :cond_257
    move-object v3, v5

    const/16 v5, 0x10

    .line 1220
    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$8;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->nextMunalDayBetween:I
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->access$1000(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;)I

    move-result v1

    iget-object v2, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$8;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollYear:I
    invoke-static {v2}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->access$1300(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;)I

    move-result v2

    iget-object v6, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$8;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollMonth:I
    invoke-static {v6}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->access$1400(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;)I

    move-result v6

    iget-object v7, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$8;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollDay:I
    invoke-static {v7}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->access$1200(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;)I

    move-result v7

    invoke-static {v1, v2, v6, v7}, Lcom/keephealth/android/util/WomenHealthUtil;->calNextMuntralAndOldEnd(IIII)Ljava/util/Calendar;

    move-result-object v1

    .line 1221
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 1222
    iget-object v6, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$8;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollYear:I
    invoke-static {v6}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->access$1300(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;)I

    move-result v6

    invoke-virtual {v2, v13, v6}, Ljava/util/Calendar;->set(II)V

    .line 1223
    iget-object v6, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$8;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollMonth:I
    invoke-static {v6}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->access$1400(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;)I

    move-result v6

    sub-int/2addr v6, v13

    invoke-virtual {v2, v14, v6}, Ljava/util/Calendar;->set(II)V

    .line 1224
    iget-object v6, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$8;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollDay:I
    invoke-static {v6}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->access$1200(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;)I

    move-result v6

    invoke-virtual {v2, v15, v6}, Ljava/util/Calendar;->set(II)V

    .line 1225
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/keephealth/android/util/DateUtil;->timestampToDate(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/keephealth/android/util/DateUtil;->timestampToDate(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "6t6ty6g"

    invoke-static {v7, v6}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1226
    invoke-static {v1, v2}, Lcom/keephealth/android/util/DateUtil;->getDaysBetween(Ljava/util/Calendar;Ljava/util/Calendar;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget-object v2, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$8;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;
    invoke-static {v2}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->access$000(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;)Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getMenstrualCycle()I

    move-result v2

    if-le v1, v2, :cond_317

    .line 1227
    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$8;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    iget-object v1, v1, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->llMenstrual:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1228
    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$8;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    iget-object v1, v1, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->itMen:Lcom/keephealth/android/views/ItemToggleLayout;

    invoke-virtual {v1, v10}, Lcom/keephealth/android/views/ItemToggleLayout;->setOpen(Z)V

    .line 1229
    new-instance v1, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    iget-object v2, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$8;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    invoke-direct {v1, v2}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$8;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    .line 1230
    invoke-virtual {v2}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100689

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setMessage(Ljava/lang/String;)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$8$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$8$$ExternalSyntheticLambda1;-><init>()V

    const v3, 0x7f100257

    .line 1231
    invoke-virtual {v1, v3, v2}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setRightButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object v1

    .line 1232
    invoke-virtual {v1}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->create()Lcom/keephealth/android/views/dialog/CommonDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/views/dialog/CommonDialog;->show()V

    goto/16 :goto_3d9

    .line 1234
    :cond_317
    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$8;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    const/4 v2, 0x3

    # invokes: Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->updateOpenNext(I)V
    invoke-static {v1, v2}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->access$2500(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;I)V

    .line 1236
    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$8;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollYear:I
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->access$1300(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;)I

    move-result v2

    iget-object v4, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$8;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollMonth:I
    invoke-static {v4}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->access$1400(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;)I

    move-result v4

    iget-object v6, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$8;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollDay:I
    invoke-static {v6}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->access$1200(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;)I

    move-result v6

    # invokes: Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->clearPrePregnancy(III)V
    invoke-static {v1, v2, v4, v6}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->access$3100(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;III)V

    .line 1237
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/16 v2, 0xb

    .line 1238
    invoke-virtual {v1, v2, v10}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xc

    .line 1239
    invoke-virtual {v1, v2, v10}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xd

    .line 1240
    invoke-virtual {v1, v2, v10}, Ljava/util/Calendar;->set(II)V

    .line 1241
    iget-object v2, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$8;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollYear:I
    invoke-static {v2}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->access$1300(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;)I

    move-result v2

    invoke-virtual {v1, v13, v2}, Ljava/util/Calendar;->set(II)V

    .line 1242
    iget-object v2, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$8;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollMonth:I
    invoke-static {v2}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->access$1400(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;)I

    move-result v2

    sub-int/2addr v2, v13

    invoke-virtual {v1, v14, v2}, Ljava/util/Calendar;->set(II)V

    .line 1243
    iget-object v2, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$8;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollDay:I
    invoke-static {v2}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->access$1200(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;)I

    move-result v2

    invoke-virtual {v1, v15, v2}, Ljava/util/Calendar;->set(II)V

    .line 1244
    iget-object v2, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$8;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;
    invoke-static {v2}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->access$000(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;)Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getMenstrualCycle()I

    move-result v2

    invoke-virtual {v1, v15, v2}, Ljava/util/Calendar;->add(II)V

    .line 1245
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/keephealth/android/util/DateUtil;->timestampToDate(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1247
    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$8;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollYear:I
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->access$1300(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;)I

    move-result v2

    iget-object v3, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$8;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollMonth:I
    invoke-static {v3}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->access$1400(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;)I

    move-result v3

    iget-object v4, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$8;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollDay:I
    invoke-static {v4}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->access$1200(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;)I

    move-result v4

    # invokes: Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->notifyMonthView(IIII)V
    invoke-static {v1, v5, v2, v3, v4}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->access$300(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;IIII)V

    .line 1248
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/16 v2, 0xb

    .line 1249
    invoke-virtual {v1, v2, v10}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xc

    .line 1250
    invoke-virtual {v1, v2, v10}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xd

    .line 1251
    invoke-virtual {v1, v2, v10}, Ljava/util/Calendar;->set(II)V

    .line 1252
    iget-object v2, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$8;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollYear:I
    invoke-static {v2}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->access$1300(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;)I

    move-result v2

    invoke-virtual {v1, v13, v2}, Ljava/util/Calendar;->set(II)V

    .line 1253
    iget-object v2, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$8;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollMonth:I
    invoke-static {v2}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->access$1400(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;)I

    move-result v2

    invoke-virtual {v1, v14, v2}, Ljava/util/Calendar;->set(II)V

    .line 1254
    iget-object v2, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$8;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollDay:I
    invoke-static {v2}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->access$1200(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;)I

    move-result v2

    invoke-virtual {v1, v15, v2}, Ljava/util/Calendar;->set(II)V

    .line 1255
    iget-object v2, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$8;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    const/16 v3, 0xa

    # invokes: Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->reCalPrePregnancyData(ILjava/util/Calendar;)V
    invoke-static {v2, v3, v1}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->access$3000(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;ILjava/util/Calendar;)V

    .line 1256
    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$8;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    invoke-virtual {v1}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->calPreAndNextLength()V

    .line 1259
    :goto_3d9
    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$8;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    const/4 v2, 0x6

    # invokes: Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->sendWomenHealthData(I)V
    invoke-static {v1, v2}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->access$100(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;I)V

    return-void
.end method
