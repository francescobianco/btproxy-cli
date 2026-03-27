.class Lfreemarker/template/utility/HtmlEscape$1;
.super Ljava/io/Writer;
.source "HtmlEscape.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfreemarker/template/utility/HtmlEscape;->getWriter(Ljava/io/Writer;Ljava/util/Map;)Ljava/io/Writer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lfreemarker/template/utility/HtmlEscape;

.field final synthetic val$out:Ljava/io/Writer;


# direct methods
.method constructor <init>(Lfreemarker/template/utility/HtmlEscape;Ljava/io/Writer;)V
    .registers 3

    .line 64
    iput-object p1, p0, Lfreemarker/template/utility/HtmlEscape$1;->this$0:Lfreemarker/template/utility/HtmlEscape;

    iput-object p2, p0, Lfreemarker/template/utility/HtmlEscape$1;->val$out:Ljava/io/Writer;

    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 1

    return-void
.end method

.method public flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lfreemarker/template/utility/HtmlEscape$1;->val$out:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    return-void
.end method

.method public write(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x22

    const/4 v1, 0x0

    if-eq p1, v0, :cond_37

    const/16 v0, 0x26

    if-eq p1, v0, :cond_2c

    const/16 v0, 0x3c

    const/4 v2, 0x4

    if-eq p1, v0, :cond_22

    const/16 v0, 0x3e

    if-eq p1, v0, :cond_18

    .line 74
    iget-object v0, p0, Lfreemarker/template/utility/HtmlEscape$1;->val$out:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(I)V

    goto :goto_41

    .line 71
    :cond_18
    iget-object p1, p0, Lfreemarker/template/utility/HtmlEscape$1;->val$out:Ljava/io/Writer;

    # getter for: Lfreemarker/template/utility/HtmlEscape;->GT:[C
    invoke-static {}, Lfreemarker/template/utility/HtmlEscape;->access$100()[C

    move-result-object v0

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/Writer;->write([CII)V

    goto :goto_41

    .line 70
    :cond_22
    iget-object p1, p0, Lfreemarker/template/utility/HtmlEscape$1;->val$out:Ljava/io/Writer;

    # getter for: Lfreemarker/template/utility/HtmlEscape;->LT:[C
    invoke-static {}, Lfreemarker/template/utility/HtmlEscape;->access$000()[C

    move-result-object v0

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/Writer;->write([CII)V

    goto :goto_41

    .line 72
    :cond_2c
    iget-object p1, p0, Lfreemarker/template/utility/HtmlEscape$1;->val$out:Ljava/io/Writer;

    # getter for: Lfreemarker/template/utility/HtmlEscape;->AMP:[C
    invoke-static {}, Lfreemarker/template/utility/HtmlEscape;->access$200()[C

    move-result-object v0

    const/4 v2, 0x5

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/Writer;->write([CII)V

    goto :goto_41

    .line 73
    :cond_37
    iget-object p1, p0, Lfreemarker/template/utility/HtmlEscape$1;->val$out:Ljava/io/Writer;

    # getter for: Lfreemarker/template/utility/HtmlEscape;->QUOT:[C
    invoke-static {}, Lfreemarker/template/utility/HtmlEscape;->access$300()[C

    move-result-object v0

    const/4 v2, 0x6

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/Writer;->write([CII)V

    :goto_41
    return-void
.end method

.method public write([CII)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    add-int/2addr p3, p2

    move v0, p2

    :goto_2
    if-ge p2, p3, :cond_63

    .line 84
    aget-char v1, p1, p2

    const/16 v2, 0x22

    const/4 v3, 0x0

    if-eq v1, v2, :cond_4d

    const/16 v2, 0x26

    if-eq v1, v2, :cond_3b

    const/16 v2, 0x3c

    const/4 v4, 0x4

    if-eq v1, v2, :cond_2a

    const/16 v2, 0x3e

    if-eq v1, v2, :cond_19

    goto :goto_60

    .line 87
    :cond_19
    iget-object v1, p0, Lfreemarker/template/utility/HtmlEscape$1;->val$out:Ljava/io/Writer;

    sub-int v2, p2, v0

    invoke-virtual {v1, p1, v0, v2}, Ljava/io/Writer;->write([CII)V

    iget-object v0, p0, Lfreemarker/template/utility/HtmlEscape$1;->val$out:Ljava/io/Writer;

    # getter for: Lfreemarker/template/utility/HtmlEscape;->GT:[C
    invoke-static {}, Lfreemarker/template/utility/HtmlEscape;->access$100()[C

    move-result-object v1

    invoke-virtual {v0, v1, v3, v4}, Ljava/io/Writer;->write([CII)V

    goto :goto_5e

    .line 86
    :cond_2a
    iget-object v1, p0, Lfreemarker/template/utility/HtmlEscape$1;->val$out:Ljava/io/Writer;

    sub-int v2, p2, v0

    invoke-virtual {v1, p1, v0, v2}, Ljava/io/Writer;->write([CII)V

    iget-object v0, p0, Lfreemarker/template/utility/HtmlEscape$1;->val$out:Ljava/io/Writer;

    # getter for: Lfreemarker/template/utility/HtmlEscape;->LT:[C
    invoke-static {}, Lfreemarker/template/utility/HtmlEscape;->access$000()[C

    move-result-object v1

    invoke-virtual {v0, v1, v3, v4}, Ljava/io/Writer;->write([CII)V

    goto :goto_5e

    .line 88
    :cond_3b
    iget-object v1, p0, Lfreemarker/template/utility/HtmlEscape$1;->val$out:Ljava/io/Writer;

    sub-int v2, p2, v0

    invoke-virtual {v1, p1, v0, v2}, Ljava/io/Writer;->write([CII)V

    iget-object v0, p0, Lfreemarker/template/utility/HtmlEscape$1;->val$out:Ljava/io/Writer;

    # getter for: Lfreemarker/template/utility/HtmlEscape;->AMP:[C
    invoke-static {}, Lfreemarker/template/utility/HtmlEscape;->access$200()[C

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/Writer;->write([CII)V

    goto :goto_5e

    .line 89
    :cond_4d
    iget-object v1, p0, Lfreemarker/template/utility/HtmlEscape$1;->val$out:Ljava/io/Writer;

    sub-int v2, p2, v0

    invoke-virtual {v1, p1, v0, v2}, Ljava/io/Writer;->write([CII)V

    iget-object v0, p0, Lfreemarker/template/utility/HtmlEscape$1;->val$out:Ljava/io/Writer;

    # getter for: Lfreemarker/template/utility/HtmlEscape;->QUOT:[C
    invoke-static {}, Lfreemarker/template/utility/HtmlEscape;->access$300()[C

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/Writer;->write([CII)V

    :goto_5e
    add-int/lit8 v0, p2, 0x1

    :goto_60
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_63
    sub-int/2addr p3, v0

    if-lez p3, :cond_6b

    .line 94
    iget-object p2, p0, Lfreemarker/template/utility/HtmlEscape$1;->val$out:Ljava/io/Writer;

    invoke-virtual {p2, p1, v0, p3}, Ljava/io/Writer;->write([CII)V

    :cond_6b
    return-void
.end method
