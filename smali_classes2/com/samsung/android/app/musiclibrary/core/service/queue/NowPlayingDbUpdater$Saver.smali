.class final Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingDbUpdater$Saver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingDbUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Saver"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mIds:[J


# direct methods
.method public constructor <init>(Landroid/content/Context;[J)V
    .locals 1

    const-string v0, "mContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mIds"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingDbUpdater$Saver;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingDbUpdater$Saver;->mIds:[J

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 46
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists;->g:Landroid/net/Uri;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;->a(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 45
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;->f(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 49
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingDbUpdater$Saver;->mIds:[J

    array-length v1, v1

    .line 50
    new-array v1, v1, [Landroid/content/ContentValues;

    .line 51
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingDbUpdater$Saver;->mIds:[J

    .line 73
    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-wide v6, v2, v4

    add-int/lit8 v8, v5, 0x1

    .line 52
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    const-string v10, "audio_id"

    .line 53
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v9, v10, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 52
    aput-object v9, v1, v5

    add-int/lit8 v4, v4, 0x1

    move v5, v8

    goto :goto_0

    .line 57
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingDbUpdater$Saver;->mContext:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v0

    .line 58
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingDbUpdater;->access$getLOG_TAG$cp()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saveNowPlayingQueue now playing count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 60
    :catch_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingDbUpdater;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v0

    const-string v1, "saveNowPlayingQueue() - IllegalArgumentException!!"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method
