.class public abstract Lcom/samsung/android/app/music/provider/sync/observer/DelayedContentObserver;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/provider/sync/observer/DelayedContentObserver$Companion;
    }
.end annotation


# static fields
.field public static final b:Lcom/samsung/android/app/music/provider/sync/observer/DelayedContentObserver$Companion;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final f:Z

.field private static final g:Ljava/lang/String;


# instance fields
.field private a:J

.field private final c:Landroid/support/v4/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/ArraySet<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/samsung/android/app/music/provider/sync/observer/DelayedContentObserver$observerHandler$1;

.field private final e:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/music/provider/sync/observer/DelayedContentObserver$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/provider/sync/observer/DelayedContentObserver$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/provider/sync/observer/DelayedContentObserver;->b:Lcom/samsung/android/app/music/provider/sync/observer/DelayedContentObserver$Companion;

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MusicSync-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/app/music/provider/sync/observer/DelayedContentObserver;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/provider/sync/observer/DelayedContentObserver;->g:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/provider/sync/observer/DelayedContentObserver;->e:Landroid/content/Context;

    const-wide/16 v0, 0x3e8

    .line 23
    iput-wide v0, p0, Lcom/samsung/android/app/music/provider/sync/observer/DelayedContentObserver;->a:J

    .line 25
    new-instance p1, Landroid/support/v4/util/ArraySet;

    invoke-direct {p1}, Landroid/support/v4/util/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/provider/sync/observer/DelayedContentObserver;->c:Landroid/support/v4/util/ArraySet;

    .line 27
    new-instance p1, Lcom/samsung/android/app/music/provider/sync/observer/DelayedContentObserver$observerHandler$1;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, p2, v0}, Lcom/samsung/android/app/music/provider/sync/observer/DelayedContentObserver$observerHandler$1;-><init>(Lcom/samsung/android/app/music/provider/sync/observer/DelayedContentObserver;Landroid/os/Handler;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/provider/sync/observer/DelayedContentObserver;->d:Lcom/samsung/android/app/music/provider/sync/observer/DelayedContentObserver$observerHandler$1;

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/provider/sync/observer/DelayedContentObserver;)Landroid/support/v4/util/ArraySet;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/samsung/android/app/music/provider/sync/observer/DelayedContentObserver;->c:Landroid/support/v4/util/ArraySet;

    return-object p0
.end method

.method private final b()Z
    .locals 7

    .line 47
    iget-object v0, p0, Lcom/samsung/android/app/music/provider/sync/observer/DelayedContentObserver;->e:Landroid/content/Context;

    invoke-static {}, Landroid/provider/MediaStore;->getMediaScannerUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 46
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    check-cast v0, Ljava/io/Closeable;

    const/4 v1, 0x0

    .line 48
    move-object v2, v1

    check-cast v2, Ljava/lang/Throwable;

    :try_start_0
    move-object v3, v0

    check-cast v3, Landroid/database/Cursor;

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    .line 49
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    const-string v5, "volume"

    .line 68
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v3, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v3, v1

    goto :goto_0

    :cond_1
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_0
    if-eqz v3, :cond_2

    const-string v5, "external"

    const/4 v6, 0x2

    .line 50
    invoke-static {v3, v5, v4, v6, v1}, Lkotlin/text/StringsKt;->a(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    :cond_2
    invoke-static {v0, v2}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return v4

    .line 49
    :cond_3
    :goto_1
    invoke-static {v0, v2}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return v4

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    move-object v2, v1

    .line 48
    :try_start_1
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    invoke-static {v0, v2}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method protected final a()Landroid/content/Context;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/samsung/android/app/music/provider/sync/observer/DelayedContentObserver;->e:Landroid/content/Context;

    return-object v0
.end method

.method public final a(J)V
    .locals 0

    .line 57
    iput-wide p1, p0, Lcom/samsung/android/app/music/provider/sync/observer/DelayedContentObserver;->a:J

    return-void
.end method

.method protected abstract a(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 3

    const-string p1, "uri"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    sget-boolean p1, Lcom/samsung/android/app/music/provider/sync/observer/DelayedContentObserver;->f:Z

    if-eqz p1, :cond_0

    sget-object p1, Lcom/samsung/android/app/music/provider/sync/observer/DelayedContentObserver;->g:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " onChange uri : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/provider/sync/observer/DelayedContentObserver;->c:Landroid/support/v4/util/ArraySet;

    invoke-virtual {p1, p2}, Landroid/support/v4/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 38
    iget-object p1, p0, Lcom/samsung/android/app/music/provider/sync/observer/DelayedContentObserver;->d:Lcom/samsung/android/app/music/provider/sync/observer/DelayedContentObserver$observerHandler$1;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/provider/sync/observer/DelayedContentObserver$observerHandler$1;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 40
    :cond_1
    iget-wide v0, p0, Lcom/samsung/android/app/music/provider/sync/observer/DelayedContentObserver;->a:J

    .line 41
    invoke-direct {p0}, Lcom/samsung/android/app/music/provider/sync/observer/DelayedContentObserver;->b()Z

    move-result p1

    if-eqz p1, :cond_2

    shl-long/2addr v0, p2

    .line 42
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/app/music/provider/sync/observer/DelayedContentObserver;->d:Lcom/samsung/android/app/music/provider/sync/observer/DelayedContentObserver$observerHandler$1;

    iget-object v2, p0, Lcom/samsung/android/app/music/provider/sync/observer/DelayedContentObserver;->d:Lcom/samsung/android/app/music/provider/sync/observer/DelayedContentObserver$observerHandler$1;

    invoke-virtual {v2, p2}, Lcom/samsung/android/app/music/provider/sync/observer/DelayedContentObserver$observerHandler$1;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2, v0, v1}, Lcom/samsung/android/app/music/provider/sync/observer/DelayedContentObserver$observerHandler$1;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method
