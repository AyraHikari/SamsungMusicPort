.class Lcom/samsung/android/app/music/lyrics/LyricsCache$5$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/meta/lyric/ILyricsLoader2$OnLyricsLoadFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/lyrics/LyricsCache$5;->requestSyncedLyric(ILcom/samsung/android/app/music/lyrics/LyricsCache$LyricsHolder;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/app/music/lyrics/LyricsCache$5;

.field final synthetic val$audioId:J

.field final synthetic val$holder:Lcom/samsung/android/app/music/lyrics/LyricsCache$LyricsHolder;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/lyrics/LyricsCache$5;Lcom/samsung/android/app/music/lyrics/LyricsCache$LyricsHolder;J)V
    .locals 0

    .line 388
    iput-object p1, p0, Lcom/samsung/android/app/music/lyrics/LyricsCache$5$1;->this$1:Lcom/samsung/android/app/music/lyrics/LyricsCache$5;

    iput-object p2, p0, Lcom/samsung/android/app/music/lyrics/LyricsCache$5$1;->val$holder:Lcom/samsung/android/app/music/lyrics/LyricsCache$LyricsHolder;

    iput-wide p3, p0, Lcom/samsung/android/app/music/lyrics/LyricsCache$5$1;->val$audioId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLyricsLoadFinished(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;)V
    .locals 3

    .line 391
    iget-object v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsCache$5$1;->val$holder:Lcom/samsung/android/app/music/lyrics/LyricsCache$LyricsHolder;

    iput-object p1, v0, Lcom/samsung/android/app/music/lyrics/LyricsCache$LyricsHolder;->lyrics:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    .line 392
    iget-object p1, p0, Lcom/samsung/android/app/music/lyrics/LyricsCache$5$1;->val$holder:Lcom/samsung/android/app/music/lyrics/LyricsCache$LyricsHolder;

    iget-object p1, p1, Lcom/samsung/android/app/music/lyrics/LyricsCache$LyricsHolder;->lyrics:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/music/lyrics/LyricsCache$5$1;->val$holder:Lcom/samsung/android/app/music/lyrics/LyricsCache$LyricsHolder;

    iget-object p1, p1, Lcom/samsung/android/app/music/lyrics/LyricsCache$LyricsHolder;->lyrics:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;->EMPTY_LYRICS:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    if-eq p1, v0, :cond_0

    .line 393
    iget-object p1, p0, Lcom/samsung/android/app/music/lyrics/LyricsCache$5$1;->val$holder:Lcom/samsung/android/app/music/lyrics/LyricsCache$LyricsHolder;

    iget-object p1, p1, Lcom/samsung/android/app/music/lyrics/LyricsCache$LyricsHolder;->lyrics:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;->trim()V

    .line 395
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/lyrics/LyricsCache$5$1;->this$1:Lcom/samsung/android/app/music/lyrics/LyricsCache$5;

    iget-object p1, p1, Lcom/samsung/android/app/music/lyrics/LyricsCache$5;->this$0:Lcom/samsung/android/app/music/lyrics/LyricsCache;

    invoke-static {p1}, Lcom/samsung/android/app/music/lyrics/LyricsCache;->access$800(Lcom/samsung/android/app/music/lyrics/LyricsCache;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 396
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsCache$5$1;->this$1:Lcom/samsung/android/app/music/lyrics/LyricsCache$5;

    iget-object v0, v0, Lcom/samsung/android/app/music/lyrics/LyricsCache$5;->this$0:Lcom/samsung/android/app/music/lyrics/LyricsCache;

    invoke-static {v0}, Lcom/samsung/android/app/music/lyrics/LyricsCache;->access$900(Lcom/samsung/android/app/music/lyrics/LyricsCache;)Landroid/util/LruCache;

    move-result-object v0

    iget-wide v1, p0, Lcom/samsung/android/app/music/lyrics/LyricsCache$5$1;->val$audioId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/lyrics/LyricsCache$5$1;->val$holder:Lcom/samsung/android/app/music/lyrics/LyricsCache$LyricsHolder;

    iget-object v2, v2, Lcom/samsung/android/app/music/lyrics/LyricsCache$LyricsHolder;->lyrics:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    invoke-virtual {v0, v1, v2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 399
    iget-object p1, p0, Lcom/samsung/android/app/music/lyrics/LyricsCache$5$1;->this$1:Lcom/samsung/android/app/music/lyrics/LyricsCache$5;

    iget-object p1, p1, Lcom/samsung/android/app/music/lyrics/LyricsCache$5;->this$0:Lcom/samsung/android/app/music/lyrics/LyricsCache;

    invoke-static {p1}, Lcom/samsung/android/app/music/lyrics/LyricsCache;->access$1100(Lcom/samsung/android/app/music/lyrics/LyricsCache;)Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/app/music/lyrics/LyricsCache$5$1;->val$holder:Lcom/samsung/android/app/music/lyrics/LyricsCache$LyricsHolder;

    invoke-virtual {p1, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 400
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void

    :catchall_0
    move-exception v0

    .line 397
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
