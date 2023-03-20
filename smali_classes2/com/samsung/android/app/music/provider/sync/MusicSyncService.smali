.class public final Lcom/samsung/android/app/music/provider/sync/MusicSyncService;
.super Landroidx/core/app/i;
.source "MusicSync.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/provider/sync/MusicSyncService$a;
    }
.end annotation


# static fields
.field public static final p:Lcom/samsung/android/app/music/provider/sync/MusicSyncService$a;

.field public static final q:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/music/provider/sync/MusicSyncService$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/provider/sync/MusicSyncService$a;-><init>(Lkotlin/jvm/internal/g;)V

    sput-object v0, Lcom/samsung/android/app/music/provider/sync/MusicSyncService;->p:Lcom/samsung/android/app/music/provider/sync/MusicSyncService$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/core/app/i;-><init>()V

    return-void
.end method


# virtual methods
.method public g(Landroid/content/Intent;)V
    .locals 4

    const-string v0, "i"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/debug/b;->h:Lcom/samsung/android/app/musiclibrary/ui/debug/b$a;

    .line 2
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/debug/c;->b()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/debug/c;->a()I

    :cond_0
    const-string v1, "MusicSync-MusicSyncService"

    .line 3
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/b$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "onHandleWork start"

    const/4 v3, 0x0

    .line 4
    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ktx/b;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/provider/sync/MusicSyncService;->m(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "applicationContext"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/j;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Throwable;

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/provider/z;->f(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 7
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/debug/c;->d()Z

    move-result v0

    if-nez v0, :cond_2

    .line 8
    :goto_0
    sget-object p1, Lcom/samsung/android/app/musiclibrary/ui/debug/b;->h:Lcom/samsung/android/app/musiclibrary/ui/debug/b$a;

    .line 9
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/debug/c;->b()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/debug/c;->a()I

    .line 10
    :cond_1
    invoke-virtual {p1, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/b$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "onHandleWork end"

    .line 11
    invoke-static {v0, v3}, Lcom/samsung/android/app/musiclibrary/ktx/b;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 12
    :cond_2
    throw p1
.end method

.method public final j(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/provider/sync/a;
    .locals 6

    .line 1
    sget-object v0, Lcom/samsung/android/app/music/provider/sync/z;->a:Lcom/samsung/android/app/music/provider/sync/z;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/app/music/provider/sync/z;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/provider/sync/h0;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Lcom/samsung/android/app/music/provider/sync/h0;->a()Lcom/samsung/android/app/music/provider/sync/a;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/debug/c;->d()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_1

    .line 4
    sget-object p1, Lcom/samsung/android/app/musiclibrary/ui/debug/b;->h:Lcom/samsung/android/app/musiclibrary/ui/debug/b$a;

    const/4 p3, 0x0

    const-string p4, "MusicSync-MusicSyncService"

    .line 5
    invoke-virtual {p1, p4}, Lcom/samsung/android/app/musiclibrary/ui/debug/b$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p4, "handleSyncEvent : Unknown sync event - "

    invoke-static {p4, p2}, Lkotlin/jvm/internal/j;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p3}, Lcom/samsung/android/app/musiclibrary/ktx/b;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    new-instance p1, Lcom/samsung/android/app/music/provider/sync/a;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/provider/sync/a;-><init>(Lcom/samsung/android/app/music/provider/sync/b;Lcom/samsung/android/app/music/provider/sync/b;Lcom/samsung/android/app/music/provider/sync/m;ILkotlin/jvm/internal/g;)V

    return-object p1

    .line 8
    :cond_1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "Unknown sync event "

    invoke-static {p2, p1}, Lkotlin/jvm/internal/j;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final k(Landroid/content/Context;Ljava/util/EnumSet;Ljava/lang/String;)Lcom/samsung/android/app/music/provider/sync/a;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/EnumSet<",
            "Lcom/samsung/android/app/music/provider/sync/b0;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/samsung/android/app/music/provider/sync/a;"
        }
    .end annotation

    .line 1
    invoke-static {p1, p2, p3}, Lcom/samsung/android/app/music/provider/sync/p;->n(Landroid/content/Context;Ljava/util/EnumSet;Ljava/lang/String;)Lcom/samsung/android/app/music/provider/sync/b;

    move-result-object p3

    .line 2
    sget-object v0, Lcom/samsung/android/app/music/provider/sync/t;->a:Lcom/samsung/android/app/music/provider/sync/t;

    .line 3
    sget-object v3, Lcom/samsung/android/app/music/provider/sync/u;->a:[I

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v1, p1

    move-object v2, p2

    .line 4
    invoke-static/range {v0 .. v7}, Lcom/samsung/android/app/music/provider/sync/t;->i(Lcom/samsung/android/app/music/provider/sync/t;Landroid/content/Context;Ljava/util/EnumSet;[ILjava/lang/String;ZILjava/lang/Object;)Lcom/samsung/android/app/music/provider/sync/b;

    move-result-object v0

    .line 5
    invoke-virtual {p3}, Lcom/samsung/android/app/music/provider/sync/b;->a()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/provider/sync/b;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/app/Service;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "content://com.sec.android.app.music/"

    .line 7
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "Uri.parse(this)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "update_folders_info"

    .line 8
    invoke-virtual {v1, v3, v4, v2, v2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 9
    :cond_1
    sget-object v1, Lcom/samsung/android/app/music/provider/sync/b0;->b:Lcom/samsung/android/app/music/provider/sync/b0;

    invoke-virtual {p2, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 10
    sget-object v1, Lcom/samsung/android/app/music/provider/backuprestore/f;->a:Lcom/samsung/android/app/music/provider/backuprestore/f;

    invoke-virtual {v1, p1}, Lcom/samsung/android/app/music/provider/backuprestore/f;->f(Landroid/content/Context;)Z

    move-result v1

    goto :goto_0

    :cond_2
    move v1, v3

    .line 11
    :goto_0
    sget-object v4, Lcom/samsung/android/app/music/provider/sync/c0;->a:Lcom/samsung/android/app/music/provider/sync/c0;

    invoke-virtual {v4, p1}, Lcom/samsung/android/app/music/provider/sync/c0;->i(Landroid/content/Context;)Lcom/samsung/android/app/music/provider/sync/i0;

    move-result-object v4

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    invoke-interface {v4, p2}, Lcom/samsung/android/app/music/provider/sync/i0;->a(Ljava/util/EnumSet;)Lcom/samsung/android/app/music/provider/sync/m;

    move-result-object v2

    .line 12
    :goto_1
    invoke-virtual {p3}, Lcom/samsung/android/app/music/provider/sync/b;->a()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {v0}, Lcom/samsung/android/app/music/provider/sync/b;->a()Z

    move-result v4

    if-nez v4, :cond_6

    if-nez v1, :cond_6

    .line 13
    sget-object v1, Lcom/samsung/android/app/music/provider/sync/b0;->r:Lcom/samsung/android/app/music/provider/sync/b0;

    invoke-virtual {p2, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    goto :goto_2

    :cond_4
    if-eqz v2, :cond_7

    .line 14
    invoke-virtual {v2}, Lcom/samsung/android/app/music/provider/sync/m;->f()Z

    move-result p2

    if-nez p2, :cond_5

    invoke-virtual {v2}, Lcom/samsung/android/app/music/provider/sync/m;->g()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 15
    :cond_5
    new-instance p2, Lcom/samsung/android/app/music/provider/sync/y;

    const/4 v1, 0x1

    invoke-direct {p2, p1, v1}, Lcom/samsung/android/app/music/provider/sync/y;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {p2}, Lcom/samsung/android/app/music/provider/sync/y;->a()Lcom/samsung/android/app/music/provider/sync/a;

    goto :goto_3

    .line 16
    :cond_6
    :goto_2
    new-instance p2, Lcom/samsung/android/app/music/provider/sync/y;

    invoke-direct {p2, p1, v3}, Lcom/samsung/android/app/music/provider/sync/y;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {p2}, Lcom/samsung/android/app/music/provider/sync/y;->a()Lcom/samsung/android/app/music/provider/sync/a;

    .line 17
    :cond_7
    :goto_3
    new-instance p1, Lcom/samsung/android/app/music/provider/sync/a;

    invoke-direct {p1, p3, v0, v2}, Lcom/samsung/android/app/music/provider/sync/a;-><init>(Lcom/samsung/android/app/music/provider/sync/b;Lcom/samsung/android/app/music/provider/sync/b;Lcom/samsung/android/app/music/provider/sync/m;)V

    return-object p1
.end method

.method public final l(Landroid/content/Context;)Z
    .locals 9

    const-string v0, "external"

    .line 1
    invoke-static {v0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v0, "getContentUri(\"external\")"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/j;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "count(_id)"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1c

    const/4 v8, 0x0

    move-object v1, p1

    .line 2
    invoke-static/range {v1 .. v8}, Lcom/samsung/android/app/musiclibrary/ktx/content/a;->R(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Landroid/database/Cursor;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p1, :cond_0

    :goto_0
    move-object v2, v1

    goto :goto_2

    .line 3
    :cond_0
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    move v2, v0

    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :goto_2
    invoke-static {p1, v1}, Lkotlin/io/c;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    if-nez v2, :cond_3

    goto :goto_3

    .line 6
    :cond_3
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_3
    return v0

    :catchall_0
    move-exception v0

    .line 7
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    invoke-static {p1, v0}, Lkotlin/io/c;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final m(Landroid/content/Intent;)V
    .locals 11

    .line 1
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.sec.android.app.music.extra.SYNC_LOG_MESSAGE"

    .line 2
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "<<UNKNOWN>>"

    :cond_0
    const-string v2, "com.sec.android.app.music.extra.SYNC_EVENT"

    const/4 v3, -0x1

    .line 3
    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v4, "com.sec.android.app.music.extra.SYNC_DATA"

    .line 4
    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-class v5, Lcom/samsung/android/app/music/provider/sync/b0;

    .line 5
    invoke-static {v5}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v5

    const-string v6, "com.sec.android.app.music.extra.SYNC_OPERATIONS"

    .line 6
    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    if-nez v6, :cond_1

    goto :goto_1

    .line 7
    :cond_1
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 8
    check-cast v7, Ljava/lang/String;

    const-string v8, "it"

    .line 9
    invoke-static {v7, v8}, Lkotlin/jvm/internal/j;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7}, Lcom/samsung/android/app/music/provider/sync/b0;->valueOf(Ljava/lang/String;)Lcom/samsung/android/app/music/provider/sync/b0;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    :goto_1
    const-string v6, "context"

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-ne v2, v3, :cond_4

    .line 10
    invoke-virtual {v5}, Ljava/util/EnumSet;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 11
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " ERROR SNAPSHOT [action : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", from : "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", syncEvent : "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", syncOperations : "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0x5d

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 12
    invoke-static {v0, v6}, Lkotlin/jvm/internal/j;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v1, v8, [Ljava/lang/String;

    aput-object p1, v1, v7

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/provider/z;->d(Landroid/content/Context;[Ljava/lang/String;)V

    .line 13
    sget-boolean p1, Lcom/samsung/android/app/music/provider/sync/MusicSyncService;->q:Z

    xor-int/2addr p1, v8

    if-eqz p1, :cond_3

    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Intent has no valid extra. check sync log"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14
    :cond_4
    invoke-virtual {v5}, Ljava/util/EnumSet;->size()I

    move-result v3

    if-ne v3, v8, :cond_5

    sget-object v3, Lcom/samsung/android/app/music/provider/sync/b0;->r:Lcom/samsung/android/app/music/provider/sync/b0;

    invoke-virtual {v5, v3}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    move v3, v8

    goto :goto_2

    :cond_5
    move v3, v7

    :goto_2
    if-eq v2, v8, :cond_6

    if-nez v3, :cond_6

    move v9, v8

    goto :goto_3

    :cond_6
    move v9, v7

    :goto_3
    const/4 v10, 0x3

    if-ne v2, v10, :cond_7

    .line 15
    sget-object v10, Lcom/samsung/android/app/music/provider/sync/r;->b:Lcom/samsung/android/app/music/provider/sync/r$a;

    invoke-static {v0, v6}, Lkotlin/jvm/internal/j;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Lcom/samsung/android/app/music/provider/sync/r$a;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/provider/sync/r;

    .line 16
    :cond_7
    invoke-static {v0, v6}, Lkotlin/jvm/internal/j;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v0, v6}, Lcom/samsung/android/app/musiclibrary/ktx/content/a;->o(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    const-string v10, "MusicSync-MusicSyncService"

    if-nez v6, :cond_9

    if-eqz v9, :cond_8

    const-string p1, "no permission : skip sync from "

    .line 17
    invoke-static {p1, v1}, Lkotlin/jvm/internal/j;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array v1, v8, [Ljava/lang/String;

    aput-object p1, v1, v7

    .line 18
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/provider/z;->d(Landroid/content/Context;[Ljava/lang/String;)V

    .line 19
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/debug/b;->h:Lcom/samsung/android/app/musiclibrary/ui/debug/b$a;

    .line 20
    invoke-virtual {v0, v10}, Lcom/samsung/android/app/musiclibrary/ui/debug/b$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 21
    invoke-static {p1, v7}, Lcom/samsung/android/app/musiclibrary/ktx/b;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    return-void

    :cond_9
    if-nez v3, :cond_b

    .line 22
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/provider/sync/MusicSyncService;->l(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_b

    if-eqz v9, :cond_a

    const-string p1, "MediaProvider is not syncable state. cursor invalid. from "

    .line 23
    invoke-static {p1, v1}, Lkotlin/jvm/internal/j;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array v1, v8, [Ljava/lang/String;

    aput-object p1, v1, v7

    .line 24
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/provider/z;->d(Landroid/content/Context;[Ljava/lang/String;)V

    .line 25
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/debug/b;->h:Lcom/samsung/android/app/musiclibrary/ui/debug/b$a;

    .line 26
    invoke-virtual {v0, v10}, Lcom/samsung/android/app/musiclibrary/ui/debug/b$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 27
    invoke-static {p1, v7}, Lcom/samsung/android/app/musiclibrary/ktx/b;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    return-void

    .line 28
    :cond_b
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_10

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v6

    const v9, -0x4ac0835d

    if-eq v6, v9, :cond_e

    const v5, 0x61ddeb63

    if-eq v6, v5, :cond_c

    goto :goto_4

    :cond_c
    const-string v5, "com.sec.android.app.music.action.LOCAL_SYNC_EVENT"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    goto :goto_4

    .line 29
    :cond_d
    invoke-virtual {p0, v0, v2, v4, v1}, Lcom/samsung/android/app/music/provider/sync/MusicSyncService;->j(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/provider/sync/a;

    move-result-object p1

    goto :goto_5

    :cond_e
    const-string v2, "com.sec.android.app.music.action.LOCAL_SYNC_OPERATIONS"

    .line 30
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    goto :goto_4

    :cond_f
    const-string p1, "operations"

    .line 31
    invoke-static {v5, p1}, Lkotlin/jvm/internal/j;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v5, v1}, Lcom/samsung/android/app/music/provider/sync/MusicSyncService;->k(Landroid/content/Context;Ljava/util/EnumSet;Ljava/lang/String;)Lcom/samsung/android/app/music/provider/sync/a;

    move-result-object p1

    goto :goto_5

    :cond_10
    :goto_4
    new-array v1, v8, [Ljava/lang/String;

    .line 32
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v2, "Wrong action delivered "

    invoke-static {v2, p1}, Lkotlin/jvm/internal/j;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v7

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/provider/z;->d(Landroid/content/Context;[Ljava/lang/String;)V

    .line 33
    sget-object p1, Lcom/samsung/android/app/music/provider/sync/a;->e:Lcom/samsung/android/app/music/provider/sync/a;

    .line 34
    :goto_5
    invoke-virtual {p1}, Lcom/samsung/android/app/music/provider/sync/a;->a()Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_6

    :cond_11
    const/4 p1, 0x0

    :goto_6
    if-nez p1, :cond_12

    goto :goto_7

    .line 35
    :cond_12
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.app.music.action.LOCAL_SYNC_FINISHED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.sec.android.app.music"

    .line 36
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.sec.android.app.music.extra.SYNCED_INFO"

    .line 37
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 38
    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :goto_7
    return-void
.end method
