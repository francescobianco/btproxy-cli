.class Lfreemarker/core/BuiltInsForNumbers$longBI;
.super Lfreemarker/core/BuiltIn;
.source "BuiltInsForNumbers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/BuiltInsForNumbers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "longBI"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 219
    invoke-direct {p0}, Lfreemarker/core/BuiltIn;-><init>()V

    return-void
.end method


# virtual methods
.method _eval(Lfreemarker/core/Environment;)Lfreemarker/template/TemplateModel;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 223
    iget-object v0, p0, Lfreemarker/core/BuiltInsForNumbers$longBI;->target:Lfreemarker/core/Expression;

    invoke-virtual {v0, p1}, Lfreemarker/core/Expression;->eval(Lfreemarker/core/Environment;)Lfreemarker/template/TemplateModel;

    move-result-object v0

    .line 224
    instance-of v1, v0, Lfreemarker/template/TemplateNumberModel;

    if-nez v1, :cond_20

    instance-of v1, v0, Lfreemarker/template/TemplateDateModel;

    if-eqz v1, :cond_20

    .line 226
    check-cast v0, Lfreemarker/template/TemplateDateModel;

    iget-object p1, p0, Lfreemarker/core/BuiltInsForNumbers$longBI;->target:Lfreemarker/core/Expression;

    invoke-static {v0, p1}, Lfreemarker/core/EvalUtil;->modelToDate(Lfreemarker/template/TemplateDateModel;Lfreemarker/core/Expression;)Ljava/util/Date;

    move-result-object p1

    .line 227
    new-instance v0, Lfreemarker/template/SimpleNumber;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lfreemarker/template/SimpleNumber;-><init>(J)V

    return-object v0

    .line 229
    :cond_20
    iget-object v1, p0, Lfreemarker/core/BuiltInsForNumbers$longBI;->target:Lfreemarker/core/Expression;

    invoke-virtual {v1, v0, p1}, Lfreemarker/core/Expression;->modelToNumber(Lfreemarker/template/TemplateModel;Lfreemarker/core/Environment;)Ljava/lang/Number;

    move-result-object p1

    .line 230
    instance-of v1, p1, Ljava/lang/Long;

    if-eqz v1, :cond_2b

    return-object v0

    .line 233
    :cond_2b
    new-instance v0, Lfreemarker/template/SimpleNumber;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lfreemarker/template/SimpleNumber;-><init>(J)V

    return-object v0
.end method
