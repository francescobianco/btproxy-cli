.class Lfreemarker/core/BuiltInsForMultipleTypes$dateBI$DateParser;
.super Ljava/lang/Object;
.source "BuiltInsForMultipleTypes.java"

# interfaces
.implements Lfreemarker/template/TemplateDateModel;
.implements Lfreemarker/template/TemplateMethodModel;
.implements Lfreemarker/template/TemplateHashModel;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/BuiltInsForMultipleTypes$dateBI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DateParser"
.end annotation


# instance fields
.field private cachedValue:Lfreemarker/template/TemplateDateModel;

.field private final defaultFormat:Lfreemarker/core/TemplateDateFormat;

.field private final env:Lfreemarker/core/Environment;

.field private final text:Ljava/lang/String;

.field final synthetic this$0:Lfreemarker/core/BuiltInsForMultipleTypes$dateBI;


# direct methods
.method constructor <init>(Lfreemarker/core/BuiltInsForMultipleTypes$dateBI;Ljava/lang/String;Lfreemarker/core/Environment;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 150
    iput-object p1, p0, Lfreemarker/core/BuiltInsForMultipleTypes$dateBI$DateParser;->this$0:Lfreemarker/core/BuiltInsForMultipleTypes$dateBI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    iput-object p2, p0, Lfreemarker/core/BuiltInsForMultipleTypes$dateBI$DateParser;->text:Ljava/lang/String;

    .line 152
    iput-object p3, p0, Lfreemarker/core/BuiltInsForMultipleTypes$dateBI$DateParser;->env:Lfreemarker/core/Environment;

    .line 153
    # getter for: Lfreemarker/core/BuiltInsForMultipleTypes$dateBI;->dateType:I
    invoke-static {p1}, Lfreemarker/core/BuiltInsForMultipleTypes$dateBI;->access$000(Lfreemarker/core/BuiltInsForMultipleTypes$dateBI;)I

    move-result p2

    const-class v0, Ljava/util/Date;

    iget-object p1, p1, Lfreemarker/core/BuiltInsForMultipleTypes$dateBI;->target:Lfreemarker/core/Expression;

    const/4 v1, 0x0

    invoke-virtual {p3, p2, v0, p1, v1}, Lfreemarker/core/Environment;->getTemplateDateFormat(ILjava/lang/Class;Lfreemarker/core/Expression;Z)Lfreemarker/core/TemplateDateFormat;

    move-result-object p1

    iput-object p1, p0, Lfreemarker/core/BuiltInsForMultipleTypes$dateBI$DateParser;->defaultFormat:Lfreemarker/core/TemplateDateFormat;

    return-void
.end method

.method private getAsDateModel()Lfreemarker/template/TemplateDateModel;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 185
    iget-object v0, p0, Lfreemarker/core/BuiltInsForMultipleTypes$dateBI$DateParser;->cachedValue:Lfreemarker/template/TemplateDateModel;

    if-nez v0, :cond_10

    .line 186
    iget-object v0, p0, Lfreemarker/core/BuiltInsForMultipleTypes$dateBI$DateParser;->defaultFormat:Lfreemarker/core/TemplateDateFormat;

    invoke-direct {p0, v0}, Lfreemarker/core/BuiltInsForMultipleTypes$dateBI$DateParser;->parse(Lfreemarker/core/TemplateDateFormat;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lfreemarker/core/BuiltInsForMultipleTypes$dateBI$DateParser;->toTemplateDateModel(Ljava/lang/Object;)Lfreemarker/template/TemplateDateModel;

    move-result-object v0

    iput-object v0, p0, Lfreemarker/core/BuiltInsForMultipleTypes$dateBI$DateParser;->cachedValue:Lfreemarker/template/TemplateDateModel;

    .line 188
    :cond_10
    iget-object v0, p0, Lfreemarker/core/BuiltInsForMultipleTypes$dateBI$DateParser;->cachedValue:Lfreemarker/template/TemplateDateModel;

    return-object v0
.end method

.method private parse(Lfreemarker/core/TemplateDateFormat;)Ljava/lang/Object;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 206
    :try_start_0
    iget-object v0, p0, Lfreemarker/core/BuiltInsForMultipleTypes$dateBI$DateParser;->text:Ljava/lang/String;

    iget-object v1, p0, Lfreemarker/core/BuiltInsForMultipleTypes$dateBI$DateParser;->this$0:Lfreemarker/core/BuiltInsForMultipleTypes$dateBI;

    # getter for: Lfreemarker/core/BuiltInsForMultipleTypes$dateBI;->dateType:I
    invoke-static {v1}, Lfreemarker/core/BuiltInsForMultipleTypes$dateBI;->access$000(Lfreemarker/core/BuiltInsForMultipleTypes$dateBI;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lfreemarker/core/TemplateDateFormat;->parse(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p1
    :try_end_c
    .catch Lfreemarker/core/TemplateValueFormatException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception v0

    .line 208
    new-instance v1, Lfreemarker/core/_TemplateModelException;

    new-instance v3, Lfreemarker/core/_DelayedJQuote;

    iget-object v2, p0, Lfreemarker/core/BuiltInsForMultipleTypes$dateBI$DateParser;->text:Ljava/lang/String;

    invoke-direct {v3, v2}, Lfreemarker/core/_DelayedJQuote;-><init>(Ljava/lang/Object;)V

    new-instance v6, Lfreemarker/core/_DelayedJQuote;

    .line 211
    invoke-virtual {p1}, Lfreemarker/core/TemplateDateFormat;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v6, p1}, Lfreemarker/core/_DelayedJQuote;-><init>(Ljava/lang/Object;)V

    .line 212
    invoke-virtual {v0}, Lfreemarker/core/TemplateValueFormatException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v2, ""

    if-eqz p1, :cond_2c

    const-string p1, "\nThe nested reason given follows:\n"

    move-object v8, p1

    goto :goto_2d

    :cond_2c
    move-object v8, v2

    .line 213
    :goto_2d
    invoke-virtual {v0}, Lfreemarker/core/TemplateValueFormatException;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_39

    invoke-virtual {v0}, Lfreemarker/core/TemplateValueFormatException;->getMessage()Ljava/lang/String;

    move-result-object p1

    move-object v9, p1

    goto :goto_3a

    :cond_39
    move-object v9, v2

    :goto_3a
    const-string v2, "The string doesn\'t match the expected date/time/date-time format. The string to parse was: "

    const-string v4, ". "

    const-string v5, "The expected format was: "

    const-string v7, "."

    filled-new-array/range {v2 .. v9}, [Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Lfreemarker/core/_TemplateModelException;-><init>(Ljava/lang/Throwable;[Ljava/lang/Object;)V

    throw v1
.end method

.method private toTemplateDateModel(Ljava/lang/Object;)Lfreemarker/template/TemplateDateModel;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/_TemplateModelException;
        }
    .end annotation

    .line 173
    instance-of v0, p1, Ljava/util/Date;

    if-eqz v0, :cond_12

    .line 174
    new-instance v0, Lfreemarker/template/SimpleDate;

    check-cast p1, Ljava/util/Date;

    iget-object v1, p0, Lfreemarker/core/BuiltInsForMultipleTypes$dateBI$DateParser;->this$0:Lfreemarker/core/BuiltInsForMultipleTypes$dateBI;

    # getter for: Lfreemarker/core/BuiltInsForMultipleTypes$dateBI;->dateType:I
    invoke-static {v1}, Lfreemarker/core/BuiltInsForMultipleTypes$dateBI;->access$000(Lfreemarker/core/BuiltInsForMultipleTypes$dateBI;)I

    move-result v1

    invoke-direct {v0, p1, v1}, Lfreemarker/template/SimpleDate;-><init>(Ljava/util/Date;I)V

    return-object v0

    .line 176
    :cond_12
    check-cast p1, Lfreemarker/template/TemplateDateModel;

    .line 177
    invoke-interface {p1}, Lfreemarker/template/TemplateDateModel;->getDateType()I

    move-result v0

    iget-object v1, p0, Lfreemarker/core/BuiltInsForMultipleTypes$dateBI$DateParser;->this$0:Lfreemarker/core/BuiltInsForMultipleTypes$dateBI;

    # getter for: Lfreemarker/core/BuiltInsForMultipleTypes$dateBI;->dateType:I
    invoke-static {v1}, Lfreemarker/core/BuiltInsForMultipleTypes$dateBI;->access$000(Lfreemarker/core/BuiltInsForMultipleTypes$dateBI;)I

    move-result v1

    if-ne v0, v1, :cond_21

    return-object p1

    .line 178
    :cond_21
    new-instance p1, Lfreemarker/core/_TemplateModelException;

    const-string v0, "The result of the parsing was of the wrong date type."

    invoke-direct {p1, v0}, Lfreemarker/core/_TemplateModelException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public exec(Ljava/util/List;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 157
    iget-object v0, p0, Lfreemarker/core/BuiltInsForMultipleTypes$dateBI$DateParser;->this$0:Lfreemarker/core/BuiltInsForMultipleTypes$dateBI;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Lfreemarker/core/BuiltInsForMultipleTypes$dateBI;->checkMethodArgCount(Ljava/util/List;II)V

    .line 158
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_12

    invoke-direct {p0}, Lfreemarker/core/BuiltInsForMultipleTypes$dateBI$DateParser;->getAsDateModel()Lfreemarker/template/TemplateDateModel;

    move-result-object p1

    goto :goto_1c

    :cond_12
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lfreemarker/core/BuiltInsForMultipleTypes$dateBI$DateParser;->get(Ljava/lang/String;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    :goto_1c
    return-object p1
.end method

.method public get(Ljava/lang/String;)Lfreemarker/template/TemplateModel;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 164
    :try_start_0
    iget-object v0, p0, Lfreemarker/core/BuiltInsForMultipleTypes$dateBI$DateParser;->env:Lfreemarker/core/Environment;

    iget-object v1, p0, Lfreemarker/core/BuiltInsForMultipleTypes$dateBI$DateParser;->this$0:Lfreemarker/core/BuiltInsForMultipleTypes$dateBI;

    # getter for: Lfreemarker/core/BuiltInsForMultipleTypes$dateBI;->dateType:I
    invoke-static {v1}, Lfreemarker/core/BuiltInsForMultipleTypes$dateBI;->access$000(Lfreemarker/core/BuiltInsForMultipleTypes$dateBI;)I

    move-result v2

    const-class v3, Ljava/util/Date;

    iget-object v1, p0, Lfreemarker/core/BuiltInsForMultipleTypes$dateBI$DateParser;->this$0:Lfreemarker/core/BuiltInsForMultipleTypes$dateBI;

    iget-object v4, v1, Lfreemarker/core/BuiltInsForMultipleTypes$dateBI;->target:Lfreemarker/core/Expression;

    iget-object v5, p0, Lfreemarker/core/BuiltInsForMultipleTypes$dateBI$DateParser;->this$0:Lfreemarker/core/BuiltInsForMultipleTypes$dateBI;

    const/4 v6, 0x1

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lfreemarker/core/Environment;->getTemplateDateFormat(Ljava/lang/String;ILjava/lang/Class;Lfreemarker/core/Expression;Lfreemarker/core/Expression;Z)Lfreemarker/core/TemplateDateFormat;

    move-result-object p1
    :try_end_16
    .catch Lfreemarker/template/TemplateException; {:try_start_0 .. :try_end_16} :catch_1f

    .line 169
    invoke-direct {p0, p1}, Lfreemarker/core/BuiltInsForMultipleTypes$dateBI$DateParser;->parse(Lfreemarker/core/TemplateDateFormat;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, Lfreemarker/core/BuiltInsForMultipleTypes$dateBI$DateParser;->toTemplateDateModel(Ljava/lang/Object;)Lfreemarker/template/TemplateDateModel;

    move-result-object p1

    return-object p1

    :catch_1f
    move-exception p1

    .line 167
    const-string v0, "Failed to get format"

    invoke-static {v0, p1}, Lfreemarker/core/_CoreAPI;->ensureIsTemplateModelException(Ljava/lang/String;Lfreemarker/template/TemplateException;)Lfreemarker/template/TemplateModelException;

    move-result-object p1

    throw p1
.end method

.method public getAsDate()Ljava/util/Date;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 192
    invoke-direct {p0}, Lfreemarker/core/BuiltInsForMultipleTypes$dateBI$DateParser;->getAsDateModel()Lfreemarker/template/TemplateDateModel;

    move-result-object v0

    invoke-interface {v0}, Lfreemarker/template/TemplateDateModel;->getAsDate()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getDateType()I
    .registers 2

    .line 196
    iget-object v0, p0, Lfreemarker/core/BuiltInsForMultipleTypes$dateBI$DateParser;->this$0:Lfreemarker/core/BuiltInsForMultipleTypes$dateBI;

    # getter for: Lfreemarker/core/BuiltInsForMultipleTypes$dateBI;->dateType:I
    invoke-static {v0}, Lfreemarker/core/BuiltInsForMultipleTypes$dateBI;->access$000(Lfreemarker/core/BuiltInsForMultipleTypes$dateBI;)I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
