.class public Lbolts/AggregateException;
.super Ljava/lang/Exception;
.source "SourceFile"


# static fields
.field private static final DEFAULT_MESSAGE:Ljava/lang/String; = "There were multiple errors."

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private innerThrowables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 55
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 57
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lbolts/AggregateException;->innerThrowables:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/Throwable;)V
    .locals 0

    .line 41
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lbolts/AggregateException;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    const-string v0, "There were multiple errors."

    .line 68
    invoke-direct {p0, v0, p1}, Lbolts/AggregateException;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public getCauses()[Ljava/lang/Throwable;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 134
    iget-object v0, p0, Lbolts/AggregateException;->innerThrowables:Ljava/util/List;

    iget-object v1, p0, Lbolts/AggregateException;->innerThrowables:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/Throwable;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Throwable;

    return-object v0
.end method

.method public getErrors()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Exception;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 115
    iget-object v1, p0, Lbolts/AggregateException;->innerThrowables:Ljava/util/List;

    if-nez v1, :cond_0

    return-object v0

    .line 119
    :cond_0
    iget-object v1, p0, Lbolts/AggregateException;->innerThrowables:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Throwable;

    .line 120
    instance-of v3, v2, Ljava/lang/Exception;

    if-eqz v3, :cond_1

    .line 121
    check-cast v2, Ljava/lang/Exception;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 123
    :cond_1
    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public getInnerThrowables()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lbolts/AggregateException;->innerThrowables:Ljava/util/List;

    return-object v0
.end method

.method public printStackTrace(Ljava/io/PrintStream;)V
    .locals 4

    .line 81
    invoke-super {p0, p1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    .line 84
    iget-object v0, p0, Lbolts/AggregateException;->innerThrowables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, -0x1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Throwable;

    const-string v3, "\n"

    .line 85
    invoke-virtual {p1, v3}, Ljava/io/PrintStream;->append(Ljava/lang/CharSequence;)Ljava/io/PrintStream;

    const-string v3, "  Inner throwable #"

    .line 86
    invoke-virtual {p1, v3}, Ljava/io/PrintStream;->append(Ljava/lang/CharSequence;)Ljava/io/PrintStream;

    add-int/lit8 v1, v1, 0x1

    .line 87
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintStream;->append(Ljava/lang/CharSequence;)Ljava/io/PrintStream;

    const-string v3, ": "

    .line 88
    invoke-virtual {p1, v3}, Ljava/io/PrintStream;->append(Ljava/lang/CharSequence;)Ljava/io/PrintStream;

    .line 89
    invoke-virtual {v2, p1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    const-string v2, "\n"

    .line 90
    invoke-virtual {p1, v2}, Ljava/io/PrintStream;->append(Ljava/lang/CharSequence;)Ljava/io/PrintStream;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public printStackTrace(Ljava/io/PrintWriter;)V
    .locals 4

    .line 96
    invoke-super {p0, p1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 99
    iget-object v0, p0, Lbolts/AggregateException;->innerThrowables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, -0x1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Throwable;

    const-string v3, "\n"

    .line 100
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    const-string v3, "  Inner throwable #"

    .line 101
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    add-int/lit8 v1, v1, 0x1

    .line 102
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    const-string v3, ": "

    .line 103
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 104
    invoke-virtual {v2, p1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    const-string v2, "\n"

    .line 105
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    goto :goto_0

    :cond_0
    return-void
.end method
