.class public final Lkotlin/concurrent/ThreadsKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(ZZLjava/lang/ClassLoader;Ljava/lang/String;ILkotlin/jvm/functions/Function0;)Ljava/lang/Thread;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/String;",
            "I",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Thread;"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    new-instance v0, Lkotlin/concurrent/ThreadsKt$thread$thread$1;

    invoke-direct {v0, p5}, Lkotlin/concurrent/ThreadsKt$thread$thread$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 34
    invoke-virtual {v0, p1}, Lkotlin/concurrent/ThreadsKt$thread$thread$1;->setDaemon(Z)V

    :cond_0
    if-lez p4, :cond_1

    .line 36
    invoke-virtual {v0, p4}, Lkotlin/concurrent/ThreadsKt$thread$thread$1;->setPriority(I)V

    :cond_1
    if-eqz p3, :cond_2

    .line 38
    invoke-virtual {v0, p3}, Lkotlin/concurrent/ThreadsKt$thread$thread$1;->setName(Ljava/lang/String;)V

    :cond_2
    if-eqz p2, :cond_3

    .line 40
    invoke-virtual {v0, p2}, Lkotlin/concurrent/ThreadsKt$thread$thread$1;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    :cond_3
    if-eqz p0, :cond_4

    .line 42
    invoke-virtual {v0}, Lkotlin/concurrent/ThreadsKt$thread$thread$1;->start()V

    .line 43
    :cond_4
    check-cast v0, Ljava/lang/Thread;

    return-object v0
.end method

.method public static synthetic a(ZZLjava/lang/ClassLoader;Ljava/lang/String;ILkotlin/jvm/functions/Function0;ILjava/lang/Object;)Ljava/lang/Thread;
    .locals 6

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    const/4 p0, 0x1

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, p0

    :goto_0
    and-int/lit8 p0, p6, 0x2

    if-eqz p0, :cond_1

    const/4 p1, 0x0

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    move v1, p1

    :goto_1
    and-int/lit8 p0, p6, 0x4

    const/4 p1, 0x0

    if-eqz p0, :cond_2

    .line 23
    move-object p2, p1

    check-cast p2, Ljava/lang/ClassLoader;

    :cond_2
    move-object v2, p2

    and-int/lit8 p0, p6, 0x8

    if-eqz p0, :cond_3

    .line 24
    move-object p3, p1

    check-cast p3, Ljava/lang/String;

    :cond_3
    move-object v3, p3

    and-int/lit8 p0, p6, 0x10

    if-eqz p0, :cond_4

    const/4 p4, -0x1

    const/4 v4, -0x1

    goto :goto_2

    :cond_4
    move v4, p4

    :goto_2
    move-object v5, p5

    .line 25
    invoke-static/range {v0 .. v5}, Lkotlin/concurrent/ThreadsKt;->a(ZZLjava/lang/ClassLoader;Ljava/lang/String;ILkotlin/jvm/functions/Function0;)Ljava/lang/Thread;

    move-result-object p0

    return-object p0
.end method
