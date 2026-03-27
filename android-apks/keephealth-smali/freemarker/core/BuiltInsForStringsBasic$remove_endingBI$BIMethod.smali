.class Lfreemarker/core/BuiltInsForStringsBasic$remove_endingBI$BIMethod;
.super Ljava/lang/Object;
.source "BuiltInsForStringsBasic.java"

# interfaces
.implements Lfreemarker/template/TemplateMethodModelEx;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/BuiltInsForStringsBasic$remove_endingBI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BIMethod"
.end annotation


# instance fields
.field private s:Ljava/lang/String;

.field final synthetic this$0:Lfreemarker/core/BuiltInsForStringsBasic$remove_endingBI;


# direct methods
.method private constructor <init>(Lfreemarker/core/BuiltInsForStringsBasic$remove_endingBI;Ljava/lang/String;)V
    .registers 3

    .line 507
    iput-object p1, p0, Lfreemarker/core/BuiltInsForStringsBasic$remove_endingBI$BIMethod;->this$0:Lfreemarker/core/BuiltInsForStringsBasic$remove_endingBI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 508
    iput-object p2, p0, Lfreemarker/core/BuiltInsForStringsBasic$remove_endingBI$BIMethod;->s:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lfreemarker/core/BuiltInsForStringsBasic$remove_endingBI;Ljava/lang/String;Lfreemarker/core/BuiltInsForStringsBasic$1;)V
    .registers 4

    .line 504
    invoke-direct {p0, p1, p2}, Lfreemarker/core/BuiltInsForStringsBasic$remove_endingBI$BIMethod;-><init>(Lfreemarker/core/BuiltInsForStringsBasic$remove_endingBI;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public exec(Ljava/util/List;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 512
    iget-object v0, p0, Lfreemarker/core/BuiltInsForStringsBasic$remove_endingBI$BIMethod;->this$0:Lfreemarker/core/BuiltInsForStringsBasic$remove_endingBI;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lfreemarker/core/BuiltInsForStringsBasic$remove_endingBI;->checkMethodArgCount(Ljava/util/List;I)V

    .line 513
    iget-object v0, p0, Lfreemarker/core/BuiltInsForStringsBasic$remove_endingBI$BIMethod;->this$0:Lfreemarker/core/BuiltInsForStringsBasic$remove_endingBI;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lfreemarker/core/BuiltInsForStringsBasic$remove_endingBI;->getStringMethodArg(Ljava/util/List;I)Ljava/lang/String;

    move-result-object p1

    .line 514
    new-instance v0, Lfreemarker/template/SimpleScalar;

    iget-object v2, p0, Lfreemarker/core/BuiltInsForStringsBasic$remove_endingBI$BIMethod;->s:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_27

    iget-object v2, p0, Lfreemarker/core/BuiltInsForStringsBasic$remove_endingBI$BIMethod;->s:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    sub-int/2addr v3, p1

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_29

    :cond_27
    iget-object p1, p0, Lfreemarker/core/BuiltInsForStringsBasic$remove_endingBI$BIMethod;->s:Ljava/lang/String;

    :goto_29
    invoke-direct {v0, p1}, Lfreemarker/template/SimpleScalar;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
