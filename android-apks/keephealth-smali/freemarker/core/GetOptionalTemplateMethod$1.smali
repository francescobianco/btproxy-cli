.class Lfreemarker/core/GetOptionalTemplateMethod$1;
.super Ljava/lang/Object;
.source "GetOptionalTemplateMethod.java"

# interfaces
.implements Lfreemarker/template/TemplateDirectiveModel;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfreemarker/core/GetOptionalTemplateMethod;->exec(Ljava/util/List;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lfreemarker/core/GetOptionalTemplateMethod;

.field final synthetic val$template:Lfreemarker/template/Template;


# direct methods
.method constructor <init>(Lfreemarker/core/GetOptionalTemplateMethod;Lfreemarker/template/Template;)V
    .registers 3

    .line 150
    iput-object p1, p0, Lfreemarker/core/GetOptionalTemplateMethod$1;->this$0:Lfreemarker/core/GetOptionalTemplateMethod;

    iput-object p2, p0, Lfreemarker/core/GetOptionalTemplateMethod$1;->val$template:Lfreemarker/template/Template;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lfreemarker/core/Environment;Ljava/util/Map;[Lfreemarker/template/TemplateModel;Lfreemarker/template/TemplateDirectiveBody;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 153
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_21

    .line 156
    array-length p2, p3

    if-nez p2, :cond_19

    if-nez p4, :cond_11

    .line 163
    iget-object p2, p0, Lfreemarker/core/GetOptionalTemplateMethod$1;->val$template:Lfreemarker/template/Template;

    invoke-virtual {p1, p2}, Lfreemarker/core/Environment;->include(Lfreemarker/template/Template;)V

    return-void

    .line 160
    :cond_11
    new-instance p2, Lfreemarker/template/TemplateException;

    const-string p3, "This directive supports no nested content."

    invoke-direct {p2, p3, p1}, Lfreemarker/template/TemplateException;-><init>(Ljava/lang/String;Lfreemarker/core/Environment;)V

    throw p2

    .line 157
    :cond_19
    new-instance p2, Lfreemarker/template/TemplateException;

    const-string p3, "This directive supports no loop variables."

    invoke-direct {p2, p3, p1}, Lfreemarker/template/TemplateException;-><init>(Ljava/lang/String;Lfreemarker/core/Environment;)V

    throw p2

    .line 154
    :cond_21
    new-instance p2, Lfreemarker/template/TemplateException;

    const-string p3, "This directive supports no parameters."

    invoke-direct {p2, p3, p1}, Lfreemarker/template/TemplateException;-><init>(Ljava/lang/String;Lfreemarker/core/Environment;)V

    throw p2
.end method
