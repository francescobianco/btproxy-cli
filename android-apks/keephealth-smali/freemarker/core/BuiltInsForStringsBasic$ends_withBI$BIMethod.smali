.class Lfreemarker/core/BuiltInsForStringsBasic$ends_withBI$BIMethod;
.super Ljava/lang/Object;
.source "BuiltInsForStringsBasic.java"

# interfaces
.implements Lfreemarker/template/TemplateMethodModelEx;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/BuiltInsForStringsBasic$ends_withBI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BIMethod"
.end annotation


# instance fields
.field private s:Ljava/lang/String;

.field final synthetic this$0:Lfreemarker/core/BuiltInsForStringsBasic$ends_withBI;


# direct methods
.method private constructor <init>(Lfreemarker/core/BuiltInsForStringsBasic$ends_withBI;Ljava/lang/String;)V
    .registers 3

    .line 102
    iput-object p1, p0, Lfreemarker/core/BuiltInsForStringsBasic$ends_withBI$BIMethod;->this$0:Lfreemarker/core/BuiltInsForStringsBasic$ends_withBI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object p2, p0, Lfreemarker/core/BuiltInsForStringsBasic$ends_withBI$BIMethod;->s:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lfreemarker/core/BuiltInsForStringsBasic$ends_withBI;Ljava/lang/String;Lfreemarker/core/BuiltInsForStringsBasic$1;)V
    .registers 4

    .line 99
    invoke-direct {p0, p1, p2}, Lfreemarker/core/BuiltInsForStringsBasic$ends_withBI$BIMethod;-><init>(Lfreemarker/core/BuiltInsForStringsBasic$ends_withBI;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public exec(Ljava/util/List;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lfreemarker/core/BuiltInsForStringsBasic$ends_withBI$BIMethod;->this$0:Lfreemarker/core/BuiltInsForStringsBasic$ends_withBI;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lfreemarker/core/BuiltInsForStringsBasic$ends_withBI;->checkMethodArgCount(Ljava/util/List;I)V

    .line 108
    iget-object v0, p0, Lfreemarker/core/BuiltInsForStringsBasic$ends_withBI$BIMethod;->s:Ljava/lang/String;

    iget-object v1, p0, Lfreemarker/core/BuiltInsForStringsBasic$ends_withBI$BIMethod;->this$0:Lfreemarker/core/BuiltInsForStringsBasic$ends_withBI;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lfreemarker/core/BuiltInsForStringsBasic$ends_withBI;->getStringMethodArg(Ljava/util/List;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_18

    sget-object p1, Lfreemarker/template/TemplateBooleanModel;->TRUE:Lfreemarker/template/TemplateBooleanModel;

    goto :goto_1a

    :cond_18
    sget-object p1, Lfreemarker/template/TemplateBooleanModel;->FALSE:Lfreemarker/template/TemplateBooleanModel;

    :goto_1a
    return-object p1
.end method
