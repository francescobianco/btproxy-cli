.class Lcom/keephealth/android/ui/device/adapter/CourseAdapter$4;
.super Ljava/lang/Object;
.source "CourseAdapter.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/adapter/CourseAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/device/adapter/CourseAdapter;

.field final synthetic val$position:I

.field final synthetic val$viewHolder:Lcom/keephealth/android/ui/device/adapter/CourseAdapter$ViewHolder;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/adapter/CourseAdapter;Lcom/keephealth/android/ui/device/adapter/CourseAdapter$ViewHolder;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 204
    iput-object p1, p0, Lcom/keephealth/android/ui/device/adapter/CourseAdapter$4;->this$0:Lcom/keephealth/android/ui/device/adapter/CourseAdapter;

    iput-object p2, p0, Lcom/keephealth/android/ui/device/adapter/CourseAdapter$4;->val$viewHolder:Lcom/keephealth/android/ui/device/adapter/CourseAdapter$ViewHolder;

    iput p3, p0, Lcom/keephealth/android/ui/device/adapter/CourseAdapter$4;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 6

    .line 259
    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->isCanUpdate:Z

    if-nez v0, :cond_5

    return-void

    .line 262
    :cond_5
    iget-object v0, p0, Lcom/keephealth/android/ui/device/adapter/CourseAdapter$4;->this$0:Lcom/keephealth/android/ui/device/adapter/CourseAdapter;

    # getter for: Lcom/keephealth/android/ui/device/adapter/CourseAdapter;->isHandlingInput:Z
    invoke-static {v0}, Lcom/keephealth/android/ui/device/adapter/CourseAdapter;->access$900(Lcom/keephealth/android/ui/device/adapter/CourseAdapter;)Z

    move-result v0

    if-nez v0, :cond_b1

    .line 263
    iget-object v0, p0, Lcom/keephealth/android/ui/device/adapter/CourseAdapter$4;->this$0:Lcom/keephealth/android/ui/device/adapter/CourseAdapter;

    const/4 v1, 0x1

    # setter for: Lcom/keephealth/android/ui/device/adapter/CourseAdapter;->isHandlingInput:Z
    invoke-static {v0, v1}, Lcom/keephealth/android/ui/device/adapter/CourseAdapter;->access$902(Lcom/keephealth/android/ui/device/adapter/CourseAdapter;Z)Z

    .line 264
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_30

    .line 265
    iget-object v0, p0, Lcom/keephealth/android/ui/device/adapter/CourseAdapter$4;->this$0:Lcom/keephealth/android/ui/device/adapter/CourseAdapter;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    iput-object v2, v0, Lcom/keephealth/android/ui/device/adapter/CourseAdapter;->bytes:[B

    .line 266
    iget-object v0, p0, Lcom/keephealth/android/ui/device/adapter/CourseAdapter$4;->this$0:Lcom/keephealth/android/ui/device/adapter/CourseAdapter;

    iget-object v2, v0, Lcom/keephealth/android/ui/device/adapter/CourseAdapter;->bytes:[B

    array-length v2, v2

    iput v2, v0, Lcom/keephealth/android/ui/device/adapter/CourseAdapter;->maxLengths:I

    goto :goto_34

    .line 268
    :cond_30
    iget-object v0, p0, Lcom/keephealth/android/ui/device/adapter/CourseAdapter$4;->this$0:Lcom/keephealth/android/ui/device/adapter/CourseAdapter;

    iput v1, v0, Lcom/keephealth/android/ui/device/adapter/CourseAdapter;->maxLengths:I

    .line 271
    :goto_34
    iget-object v0, p0, Lcom/keephealth/android/ui/device/adapter/CourseAdapter$4;->this$0:Lcom/keephealth/android/ui/device/adapter/CourseAdapter;

    iget v0, v0, Lcom/keephealth/android/ui/device/adapter/CourseAdapter;->maxLengths:I

    const/16 v2, 0x14

    if-le v0, v2, :cond_73

    .line 272
    iget-object p1, p0, Lcom/keephealth/android/ui/device/adapter/CourseAdapter$4;->val$viewHolder:Lcom/keephealth/android/ui/device/adapter/CourseAdapter$ViewHolder;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/adapter/CourseAdapter$ViewHolder;->et_course_item:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/keephealth/android/ui/device/adapter/CourseAdapter$4;->this$0:Lcom/keephealth/android/ui/device/adapter/CourseAdapter;

    # getter for: Lcom/keephealth/android/ui/device/adapter/CourseAdapter;->textName:Ljava/lang/String;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/adapter/CourseAdapter;->access$1000(Lcom/keephealth/android/ui/device/adapter/CourseAdapter;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 273
    iget-object p1, p0, Lcom/keephealth/android/ui/device/adapter/CourseAdapter$4;->this$0:Lcom/keephealth/android/ui/device/adapter/CourseAdapter;

    # getter for: Lcom/keephealth/android/ui/device/adapter/CourseAdapter;->textName:Ljava/lang/String;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/adapter/CourseAdapter;->access$1000(Lcom/keephealth/android/ui/device/adapter/CourseAdapter;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_ac

    .line 274
    iget-object p1, p0, Lcom/keephealth/android/ui/device/adapter/CourseAdapter$4;->this$0:Lcom/keephealth/android/ui/device/adapter/CourseAdapter;

    # getter for: Lcom/keephealth/android/ui/device/adapter/CourseAdapter;->textName:Ljava/lang/String;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/adapter/CourseAdapter;->access$1000(Lcom/keephealth/android/ui/device/adapter/CourseAdapter;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_ac

    .line 275
    iget-object p1, p0, Lcom/keephealth/android/ui/device/adapter/CourseAdapter$4;->val$viewHolder:Lcom/keephealth/android/ui/device/adapter/CourseAdapter$ViewHolder;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/adapter/CourseAdapter$ViewHolder;->et_course_item:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/keephealth/android/ui/device/adapter/CourseAdapter$4;->this$0:Lcom/keephealth/android/ui/device/adapter/CourseAdapter;

    # getter for: Lcom/keephealth/android/ui/device/adapter/CourseAdapter;->textName:Ljava/lang/String;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/adapter/CourseAdapter;->access$1000(Lcom/keephealth/android/ui/device/adapter/CourseAdapter;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_ac

    .line 279
    :cond_73
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_ac

    .line 280
    iget-object v0, p0, Lcom/keephealth/android/ui/device/adapter/CourseAdapter$4;->this$0:Lcom/keephealth/android/ui/device/adapter/CourseAdapter;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    # setter for: Lcom/keephealth/android/ui/device/adapter/CourseAdapter;->textName:Ljava/lang/String;
    invoke-static {v0, v2}, Lcom/keephealth/android/ui/device/adapter/CourseAdapter;->access$1002(Lcom/keephealth/android/ui/device/adapter/CourseAdapter;Ljava/lang/String;)Ljava/lang/String;

    .line 281
    iget-object v0, p0, Lcom/keephealth/android/ui/device/adapter/CourseAdapter$4;->this$0:Lcom/keephealth/android/ui/device/adapter/CourseAdapter;

    # getter for: Lcom/keephealth/android/ui/device/adapter/CourseAdapter;->textName:Ljava/lang/String;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/adapter/CourseAdapter;->access$1000(Lcom/keephealth/android/ui/device/adapter/CourseAdapter;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9b

    .line 282
    iget-object v0, p0, Lcom/keephealth/android/ui/device/adapter/CourseAdapter$4;->val$viewHolder:Lcom/keephealth/android/ui/device/adapter/CourseAdapter$ViewHolder;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/adapter/CourseAdapter$ViewHolder;->et_course_item:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/keephealth/android/ui/device/adapter/CourseAdapter$4;->this$0:Lcom/keephealth/android/ui/device/adapter/CourseAdapter;

    # getter for: Lcom/keephealth/android/ui/device/adapter/CourseAdapter;->textName:Ljava/lang/String;
    invoke-static {v2}, Lcom/keephealth/android/ui/device/adapter/CourseAdapter;->access$1000(Lcom/keephealth/android/ui/device/adapter/CourseAdapter;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 285
    :cond_9b
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_ac

    .line 286
    iget-object v0, p0, Lcom/keephealth/android/ui/device/adapter/CourseAdapter$4;->val$viewHolder:Lcom/keephealth/android/ui/device/adapter/CourseAdapter$ViewHolder;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/adapter/CourseAdapter$ViewHolder;->et_course_item:Landroid/widget/EditText;

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setSelection(I)V

    .line 290
    :cond_ac
    :goto_ac
    iget-object p1, p0, Lcom/keephealth/android/ui/device/adapter/CourseAdapter$4;->this$0:Lcom/keephealth/android/ui/device/adapter/CourseAdapter;

    # setter for: Lcom/keephealth/android/ui/device/adapter/CourseAdapter;->isHandlingInput:Z
    invoke-static {p1, v1}, Lcom/keephealth/android/ui/device/adapter/CourseAdapter;->access$902(Lcom/keephealth/android/ui/device/adapter/CourseAdapter;Z)Z

    :cond_b1
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    .line 207
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "before:"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "courseviewmode58l"

    invoke-static {p3, p2}, Lcom/keephealth/android/util/log/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    iget-object p2, p0, Lcom/keephealth/android/ui/device/adapter/CourseAdapter$4;->this$0:Lcom/keephealth/android/ui/device/adapter/CourseAdapter;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, ""

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    # setter for: Lcom/keephealth/android/ui/device/adapter/CourseAdapter;->before:Ljava/lang/String;
    invoke-static {p2, p1}, Lcom/keephealth/android/ui/device/adapter/CourseAdapter;->access$102(Lcom/keephealth/android/ui/device/adapter/CourseAdapter;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 7

    .line 213
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "back:"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "courseviewmode58l"

    invoke-static {p3, p2}, Lcom/keephealth/android/util/log/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    sget-boolean p2, Lcom/keephealth/android/app/AppApplication;->isCanUpdate:Z

    if-nez p2, :cond_1d

    return-void

    .line 217
    :cond_1d
    iget-object p2, p0, Lcom/keephealth/android/ui/device/adapter/CourseAdapter$4;->this$0:Lcom/keephealth/android/ui/device/adapter/CourseAdapter;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, ""

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    # setter for: Lcom/keephealth/android/ui/device/adapter/CourseAdapter;->back:Ljava/lang/String;
    invoke-static {p2, p1}, Lcom/keephealth/android/ui/device/adapter/CourseAdapter;->access$202(Lcom/keephealth/android/ui/device/adapter/CourseAdapter;Ljava/lang/String;)Ljava/lang/String;

    .line 218
    iget-object p1, p0, Lcom/keephealth/android/ui/device/adapter/CourseAdapter$4;->this$0:Lcom/keephealth/android/ui/device/adapter/CourseAdapter;

    # getter for: Lcom/keephealth/android/ui/device/adapter/CourseAdapter;->isHandlingInputText:Z
    invoke-static {p1}, Lcom/keephealth/android/ui/device/adapter/CourseAdapter;->access$300(Lcom/keephealth/android/ui/device/adapter/CourseAdapter;)Z

    move-result p1

    if-nez p1, :cond_135

    .line 219
    iget-object p1, p0, Lcom/keephealth/android/ui/device/adapter/CourseAdapter$4;->this$0:Lcom/keephealth/android/ui/device/adapter/CourseAdapter;

    const/4 p2, 0x1

    # setter for: Lcom/keephealth/android/ui/device/adapter/CourseAdapter;->isHandlingInputText:Z
    invoke-static {p1, p2}, Lcom/keephealth/android/ui/device/adapter/CourseAdapter;->access$302(Lcom/keephealth/android/ui/device/adapter/CourseAdapter;Z)Z

    .line 220
    iget-object p1, p0, Lcom/keephealth/android/ui/device/adapter/CourseAdapter$4;->this$0:Lcom/keephealth/android/ui/device/adapter/CourseAdapter;

    # getter for: Lcom/keephealth/android/ui/device/adapter/CourseAdapter;->isChangeText:Z
    invoke-static {p1}, Lcom/keephealth/android/ui/device/adapter/CourseAdapter;->access$400(Lcom/keephealth/android/ui/device/adapter/CourseAdapter;)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_53

    .line 221
    iget-object p1, p0, Lcom/keephealth/android/ui/device/adapter/CourseAdapter$4;->this$0:Lcom/keephealth/android/ui/device/adapter/CourseAdapter;

    # setter for: Lcom/keephealth/android/ui/device/adapter/CourseAdapter;->isChangeText:Z
    invoke-static {p1, p2}, Lcom/keephealth/android/ui/device/adapter/CourseAdapter;->access$402(Lcom/keephealth/android/ui/device/adapter/CourseAdapter;Z)Z

    goto/16 :goto_130

    .line 223
    :cond_53
    iget-object p1, p0, Lcom/keephealth/android/ui/device/adapter/CourseAdapter$4;->this$0:Lcom/keephealth/android/ui/device/adapter/CourseAdapter;

    # getter for: Lcom/keephealth/android/ui/device/adapter/CourseAdapter;->isEdit:Z
    invoke-static {p1}, Lcom/keephealth/android/ui/device/adapter/CourseAdapter;->access$500(Lcom/keephealth/android/ui/device/adapter/CourseAdapter;)Z

    move-result p1

    if-eqz p1, :cond_130

    .line 224
    iget-object p1, p0, Lcom/keephealth/android/ui/device/adapter/CourseAdapter$4;->this$0:Lcom/keephealth/android/ui/device/adapter/CourseAdapter;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/adapter/CourseAdapter;->mList:Ljava/util/List;

    if-eqz p1, :cond_130

    iget-object p1, p0, Lcom/keephealth/android/ui/device/adapter/CourseAdapter$4;->this$0:Lcom/keephealth/android/ui/device/adapter/CourseAdapter;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/adapter/CourseAdapter;->mList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_130

    move p1, p2

    .line 225
    :goto_6c
    iget-object p4, p0, Lcom/keephealth/android/ui/device/adapter/CourseAdapter$4;->this$0:Lcom/keephealth/android/ui/device/adapter/CourseAdapter;

    iget-object p4, p4, Lcom/keephealth/android/ui/device/adapter/CourseAdapter;->mList:Ljava/util/List;

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p4

    if-ge p1, p4, :cond_b0

    .line 226
    iget-object p4, p0, Lcom/keephealth/android/ui/device/adapter/CourseAdapter$4;->val$viewHolder:Lcom/keephealth/android/ui/device/adapter/CourseAdapter$ViewHolder;

    invoke-virtual {p4}, Lcom/keephealth/android/ui/device/adapter/CourseAdapter$ViewHolder;->getLayoutPosition()I

    move-result p4

    if-ne p4, p1, :cond_ad

    .line 227
    iget-object p4, p0, Lcom/keephealth/android/ui/device/adapter/CourseAdapter$4;->this$0:Lcom/keephealth/android/ui/device/adapter/CourseAdapter;

    # setter for: Lcom/keephealth/android/ui/device/adapter/CourseAdapter;->editPosition:I
    invoke-static {p4, p1}, Lcom/keephealth/android/ui/device/adapter/CourseAdapter;->access$602(Lcom/keephealth/android/ui/device/adapter/CourseAdapter;I)I

    .line 228
    iget-object p4, p0, Lcom/keephealth/android/ui/device/adapter/CourseAdapter$4;->this$0:Lcom/keephealth/android/ui/device/adapter/CourseAdapter;

    iget-object p4, p4, Lcom/keephealth/android/ui/device/adapter/CourseAdapter;->mList:Ljava/util/List;

    invoke-interface {p4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/keephealth/android/childmodule/bean/SendCourseBean$SingleCourse;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/keephealth/android/ui/device/adapter/CourseAdapter$4;->val$viewHolder:Lcom/keephealth/android/ui/device/adapter/CourseAdapter$ViewHolder;

    iget-object v1, v1, Lcom/keephealth/android/ui/device/adapter/CourseAdapter$ViewHolder;->et_course_item:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/keephealth/android/childmodule/bean/SendCourseBean$SingleCourse;->setCourseName(Ljava/lang/String;)V

    :cond_ad
    add-int/lit8 p1, p1, 0x1

    goto :goto_6c

    .line 231
    :cond_b0
    iget-object p1, p0, Lcom/keephealth/android/ui/device/adapter/CourseAdapter$4;->this$0:Lcom/keephealth/android/ui/device/adapter/CourseAdapter;

    # getter for: Lcom/keephealth/android/ui/device/adapter/CourseAdapter;->editPosition:I
    invoke-static {p1}, Lcom/keephealth/android/ui/device/adapter/CourseAdapter;->access$600(Lcom/keephealth/android/ui/device/adapter/CourseAdapter;)I

    move-result p1

    iget p3, p0, Lcom/keephealth/android/ui/device/adapter/CourseAdapter$4;->val$position:I

    if-ne p1, p3, :cond_130

    .line 232
    iget-object p1, p0, Lcom/keephealth/android/ui/device/adapter/CourseAdapter$4;->this$0:Lcom/keephealth/android/ui/device/adapter/CourseAdapter;

    # getter for: Lcom/keephealth/android/ui/device/adapter/CourseAdapter;->morOraft:Ljava/lang/String;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/adapter/CourseAdapter;->access$700(Lcom/keephealth/android/ui/device/adapter/CourseAdapter;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_130

    .line 233
    iget-object p1, p0, Lcom/keephealth/android/ui/device/adapter/CourseAdapter$4;->this$0:Lcom/keephealth/android/ui/device/adapter/CourseAdapter;

    # getter for: Lcom/keephealth/android/ui/device/adapter/CourseAdapter;->morOraft:Ljava/lang/String;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/adapter/CourseAdapter;->access$700(Lcom/keephealth/android/ui/device/adapter/CourseAdapter;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "mor"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string p3, "tty5rt"

    if-eqz p1, :cond_fc

    .line 235
    :try_start_d6
    iget-object p1, p0, Lcom/keephealth/android/ui/device/adapter/CourseAdapter$4;->this$0:Lcom/keephealth/android/ui/device/adapter/CourseAdapter;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/adapter/CourseAdapter;->mCourseViewModel:Lcom/keephealth/android/persenter/device/CourseViewModel;

    iget-object p4, p0, Lcom/keephealth/android/ui/device/adapter/CourseAdapter$4;->this$0:Lcom/keephealth/android/ui/device/adapter/CourseAdapter;

    # getter for: Lcom/keephealth/android/ui/device/adapter/CourseAdapter;->type:I
    invoke-static {p4}, Lcom/keephealth/android/ui/device/adapter/CourseAdapter;->access$800(Lcom/keephealth/android/ui/device/adapter/CourseAdapter;)I

    move-result p4

    iget-object v0, p0, Lcom/keephealth/android/ui/device/adapter/CourseAdapter$4;->this$0:Lcom/keephealth/android/ui/device/adapter/CourseAdapter;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/adapter/CourseAdapter;->mList:Ljava/util/List;

    invoke-virtual {p1, p4, p2, v0}, Lcom/keephealth/android/persenter/device/CourseViewModel;->updateCurrentCourse(IILjava/util/List;)V
    :try_end_e7
    .catch Ljava/lang/Exception; {:try_start_d6 .. :try_end_e7} :catch_e8

    goto :goto_130

    :catch_e8
    move-exception p1

    .line 237
    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, "mor_e:"

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/keephealth/android/util/log/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_130

    .line 239
    :cond_fc
    iget-object p1, p0, Lcom/keephealth/android/ui/device/adapter/CourseAdapter$4;->this$0:Lcom/keephealth/android/ui/device/adapter/CourseAdapter;

    # getter for: Lcom/keephealth/android/ui/device/adapter/CourseAdapter;->morOraft:Ljava/lang/String;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/adapter/CourseAdapter;->access$700(Lcom/keephealth/android/ui/device/adapter/CourseAdapter;)Ljava/lang/String;

    move-result-object p1

    const-string p4, "aft"

    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_130

    .line 241
    :try_start_10a
    iget-object p1, p0, Lcom/keephealth/android/ui/device/adapter/CourseAdapter$4;->this$0:Lcom/keephealth/android/ui/device/adapter/CourseAdapter;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/adapter/CourseAdapter;->mCourseViewModel:Lcom/keephealth/android/persenter/device/CourseViewModel;

    iget-object p4, p0, Lcom/keephealth/android/ui/device/adapter/CourseAdapter$4;->this$0:Lcom/keephealth/android/ui/device/adapter/CourseAdapter;

    # getter for: Lcom/keephealth/android/ui/device/adapter/CourseAdapter;->type:I
    invoke-static {p4}, Lcom/keephealth/android/ui/device/adapter/CourseAdapter;->access$800(Lcom/keephealth/android/ui/device/adapter/CourseAdapter;)I

    move-result p4

    iget-object v0, p0, Lcom/keephealth/android/ui/device/adapter/CourseAdapter$4;->this$0:Lcom/keephealth/android/ui/device/adapter/CourseAdapter;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/adapter/CourseAdapter;->mList:Ljava/util/List;

    const/4 v1, 0x2

    invoke-virtual {p1, p4, v1, v0}, Lcom/keephealth/android/persenter/device/CourseViewModel;->updateCurrentCourse(IILjava/util/List;)V
    :try_end_11c
    .catch Ljava/lang/Exception; {:try_start_10a .. :try_end_11c} :catch_11d

    goto :goto_130

    :catch_11d
    move-exception p1

    .line 243
    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, "aft_e:"

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/keephealth/android/util/log/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    :cond_130
    :goto_130
    iget-object p1, p0, Lcom/keephealth/android/ui/device/adapter/CourseAdapter$4;->this$0:Lcom/keephealth/android/ui/device/adapter/CourseAdapter;

    # setter for: Lcom/keephealth/android/ui/device/adapter/CourseAdapter;->isHandlingInputText:Z
    invoke-static {p1, p2}, Lcom/keephealth/android/ui/device/adapter/CourseAdapter;->access$302(Lcom/keephealth/android/ui/device/adapter/CourseAdapter;Z)Z

    :cond_135
    return-void
.end method
