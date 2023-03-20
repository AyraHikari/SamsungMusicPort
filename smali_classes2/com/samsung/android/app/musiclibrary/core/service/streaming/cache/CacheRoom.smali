.class public final Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom;
.super Ljava/lang/Object;
.source "CacheRoom.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$b;,
        Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$a;,
        Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$AppDatabase;
    }
.end annotation


# static fields
.field public static volatile a:Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$AppDatabase;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;JJ)V
    .locals 5

    .line 1
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom;->e(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$AppDatabase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$AppDatabase;->b()Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$b;

    move-result-object p0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$b;->f(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$a;

    int-to-long v3, v1

    .line 4
    iget-wide v1, v2, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$a;->f:J

    add-long/2addr v3, v1

    long-to-int v1, v3

    goto :goto_0

    :cond_0
    int-to-long v0, v1

    sub-long/2addr v0, p2

    .line 5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Cache exceed : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom;->g(Ljava/lang/String;)V

    const-wide/16 p2, 0x0

    cmp-long v2, v0, p2

    if-lez v2, :cond_5

    add-long/2addr v0, p4

    const/4 p4, 0x0

    .line 6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$a;

    .line 7
    new-instance v2, Ljava/io/File;

    iget-object v3, p5, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$a;->c:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 9
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "deleteFile. File remove error !!"

    .line 10
    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom;->f(Ljava/lang/String;)V

    .line 11
    :cond_2
    iget-wide v2, p5, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$a;->f:J

    sub-long/2addr v0, v2

    if-nez p4, :cond_3

    .line 12
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    .line 13
    :cond_3
    invoke-interface {p4, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    cmp-long p5, v0, p2

    if-gez p5, :cond_1

    :cond_4
    if-eqz p4, :cond_5

    .line 14
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$a;

    invoke-interface {p4, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$a;

    invoke-interface {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$b;->g([Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$a;)I

    :cond_5
    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom;->e(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$AppDatabase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$AppDatabase;->b()Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$b;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$b;->c()I

    return-void
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom;->e(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$AppDatabase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$AppDatabase;->b()Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$b;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$b;->e(Ljava/lang/String;)I

    return-void
.end method

.method public static d(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/streaming/d;)Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/b$b;
    .locals 11

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom;->e(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$AppDatabase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$AppDatabase;->b()Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$b;

    move-result-object p0

    .line 2
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/d;->g:Lcom/samsung/android/app/musiclibrary/core/service/streaming/d$a;

    iget-boolean v0, v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/d$a;->a:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/d;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/d;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/d;->a:Ljava/lang/String;

    .line 4
    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/d;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-interface {p0, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$b;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/d;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/d;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/d;->a:Ljava/lang/String;

    .line 7
    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/d;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 8
    invoke-interface {p0, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 9
    :goto_0
    iget-object p1, p1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/d;->a:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/d;->k(Ljava/lang/String;)I

    move-result p1

    .line 10
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$a;

    .line 11
    iget v1, v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$a;->i:I

    if-ne p1, v1, :cond_2

    .line 12
    new-instance p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/b$b;

    iget-object v3, v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$a;->c:Ljava/lang/String;

    iget-wide v4, v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$a;->f:J

    iget-wide v6, v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$a;->g:J

    iget-object v8, v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$a;->e:Ljava/lang/String;

    iget v9, v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$a;->j:I

    const/4 v10, 0x1

    move-object v2, p0

    invoke-direct/range {v2 .. v10}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/b$b;-><init>(Ljava/lang/String;JJLjava/lang/String;IZ)V

    return-object p0

    :cond_2
    if-ge p1, v1, :cond_3

    .line 13
    iget-wide v2, v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$a;->f:J

    iget-wide v4, v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$a;->g:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 14
    new-instance p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/b$b;

    iget-object v1, v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$a;->c:Ljava/lang/String;

    iget-object v6, v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$a;->e:Ljava/lang/String;

    iget v7, v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$a;->j:I

    const/4 v8, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/b$b;-><init>(Ljava/lang/String;JJLjava/lang/String;IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p0

    .line 15
    throw p0
.end method

.method public static e(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$AppDatabase;
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom;->a:Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$AppDatabase;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom;->a:Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$AppDatabase;

    if-nez v1, :cond_0

    .line 4
    const-class v1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$AppDatabase;

    const-string v2, "streaming_cache"

    invoke-static {p0, v1, v2}, Landroidx/room/i;->a(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroidx/room/j$a;

    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroidx/room/j$a;->c()Landroidx/room/j;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$AppDatabase;

    sput-object p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom;->a:Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$AppDatabase;

    .line 6
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 7
    :cond_1
    :goto_0
    sget-object p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom;->a:Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$AppDatabase;

    return-object p0
.end method

.method public static f(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cache> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SMUSIC-SV-PlayerServer"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static g(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cache> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SMUSIC-SV-PlayerServer"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static h(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/streaming/d;Ljava/lang/String;JJI)V
    .locals 0

    invoke-static/range {p0 .. p7}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom;->i(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/streaming/d;Ljava/lang/String;JJI)V

    return-void
.end method

.method public static i(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/streaming/d;Ljava/lang/String;JJI)V
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$a;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$a;-><init>()V

    .line 2
    iput-object p2, v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$a;->c:Ljava/lang/String;

    .line 3
    iget-object p2, p1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/d;->a:Ljava/lang/String;

    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/d;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$a;->b:Ljava/lang/String;

    .line 4
    iget-object p2, p1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/d;->a:Ljava/lang/String;

    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/d;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$a;->d:Ljava/lang/String;

    .line 5
    iget-object p2, p1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/d;->a:Ljava/lang/String;

    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/d;->k(Ljava/lang/String;)I

    move-result p2

    iput p2, v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$a;->i:I

    .line 6
    iput-wide p3, v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$a;->f:J

    .line 7
    iput-wide p5, v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$a;->g:J

    .line 8
    iput p7, v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$a;->j:I

    .line 9
    iget-object p1, p1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/d;->d:Ljava/lang/String;

    iput-object p1, v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$a;->e:Ljava/lang/String;

    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    const-wide/16 p3, 0x3e8

    div-long/2addr p1, p3

    iput-wide p1, v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$a;->h:J

    .line 11
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom;->e(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$AppDatabase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$AppDatabase;->b()Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$b;

    move-result-object p0

    .line 12
    invoke-interface {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$b;->b(Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$a;)V

    return-void
.end method
