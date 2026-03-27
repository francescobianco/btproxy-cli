.class Lfreemarker/core/BuiltInsForStringsBasic$ensure_ends_withBI$BIMethod;
.super Ljava/lang/Object;
.source "BuiltInsForStringsBasic.java"

# interfaces
.implements Lfreemarker/template/TemplateMethodModelEx;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/BuiltInsForStringsBasic$ensure_ends_withBI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BIMethod"
.end annotation


# instance fields
.field private s:Ljava/lang/String;

.field final synthetic this$0:Lfreemarker/core/BuiltInsForStringsBasic$ensure_ends_withBI;


# direct methods
.method private constructor <init>(Lfreemarker/core/BuiltInsForStringsBasic$ensure_ends_withBI;Ljava/lang/String;)V
    .registers 3

    .line 124
    iput-object p1, p0, Lfreemarker/core/BuiltInsForStringsBasic$ensure_ends_withBI$BIMethod;->this$0:Lfreemarker/core/BuiltInsForStringsBasic$ensure_ends_withBI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    iput-object p2, p0, Lfreemarker/core/BuiltInsForStringsBasic$ensure_ends_withBI$BIMethod;->s:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lfreemarker/core/BuiltInsForStringsBasic$ensure_ends_withBI;Ljava/lang/String;Lfreemarker/core/BuiltInsForStringsBasic$1;)V
    .registers 4

    .line 121
    invoke-direct {p0, p1, p2}, Lfreemarker/core/BuiltInsForStringsBasic$ensure_ends_withBI$BIMethod;-><init>(Lfreemarker/core/BuiltInsForStringsBasic$ensure_ends_withBI;Ljava/lang/String;)V

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

    .line 129
    iget-object v0, p0, Lfreemarker/core/BuiltInsForStringsBasic$ensure_ends_withBI$BIMethod;->this$0:Lfreemarker/core/BuiltInsForStringsBasic$ensure_ends_withBI;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lfreemarker/core/BuiltInsForStringsBasic$ensure_ends_withBI;->checkMethodArgCount(Ljava/util/List;I)V

    .line 130
    iget-object v0, p0, Lfreemarker/core/BuiltInsForStringsBasic$ensure_ends_withBI$BIMethod;->this$0:Lfreemarker/core/BuiltInsForStringsBasic$ensure_ends_withBI;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lfreemarker/core/BuiltInsForStringsBasic$ensure_ends_withBI;->getStringMethodArg(Ljava/util/List;I)Ljava/lang/String;

    move-result-object p1

    .line 131
    new-instance v0, Lfreemarker/template/SimpleScalar;

    iget-object v1, p0, Lfreemarker/core/BuiltInsForStringsBasic$ensure_ends_withBI$BIMethod;->s:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    iget-object p1, p0, Lfreemarker/core/BuiltInsForStringsBasic$ensure_ends_withBI$BIMethod;->s:Ljava/lang/String;

    goto :goto_2d

    :cond_1a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lfreemarker/core/BuiltInsForStringsBasic$ensure_ends_withBI$BIMethod;->s:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_2d
    invoke-direct {v0, p1}, Lfreemarker/template/SimpleScalar;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
