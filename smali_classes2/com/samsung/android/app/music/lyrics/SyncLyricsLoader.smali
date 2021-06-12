.class Lcom/samsung/android/app/music/lyrics/SyncLyricsLoader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/meta/lyric/ILyricsLoader2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/lyrics/SyncLyricsLoader$Request;,
        Lcom/samsung/android/app/music/lyrics/SyncLyricsLoader$RequestCleaner;
    }
.end annotation


# static fields
.field private static final RADIO:I = -0x1

.field private static final TAG:Ljava/lang/String; = "SyncLyricsLoader"

.field private static final TTL_REQUEST:J = 0x1b58L

.field private static final sMapLock:Ljava/lang/Object;


# instance fields
.field private final mCpLyricsLoaders:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/AbsCpLyricsParser;",
            ">;"
        }
    .end annotation
.end field

.field private final mLyricsParser:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LyricsParser;

.field private final mRequestCleaner:Lcom/samsung/android/app/music/lyrics/SyncLyricsLoader$RequestCleaner;

.field private final mRequestMap:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Lcom/samsung/android/app/music/lyrics/SyncLyricsLoader$Request;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/lyrics/SyncLyricsLoader;->sMapLock:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/lyrics/SyncLyricsLoader;->mCpLyricsLoaders:Landroid/util/SparseArray;

    .line 45
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/lyrics/SyncLyricsLoader;->mRequestMap:Landroid/util/LongSparseArray;

    .line 47
    new-instance v0, Lcom/samsung/android/app/music/lyrics/SyncLyricsLoader$RequestCleaner;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/lyrics/SyncLyricsLoader$RequestCleaner;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/lyrics/SyncLyricsLoader;->mRequestCleaner:Lcom/samsung/android/app/music/lyrics/SyncLyricsLoader$RequestCleaner;

    const/16 v0, 0x8

    .line 103
    new-array v0, v0, [Ljava/lang/Class;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LyricsParser$Type;->LRC_FILE:Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LyricsParser$Type;->XSYL_FILE:Ljava/lang/Class;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LyricsParser$Type;->ID3_XSYL:Ljava/lang/Class;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LyricsParser$Type;->ID3_USLT:Ljava/lang/Class;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LyricsParser$Type;->ID3_ULT:Ljava/lang/Class;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LyricsParser$Type;->MP4V2:Ljava/lang/Class;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LyricsParser$Type;->FLAC:Ljava/lang/Class;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-class v1, Lcom/samsung/android/app/music/lyrics/data/loader/MilkMdrmParser;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 104
    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LyricsParser;->obtain(Landroid/content/Context;[Ljava/lang/Class;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LyricsParser;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/lyrics/SyncLyricsLoader;->mLyricsParser:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LyricsParser;

    .line 109
    invoke-static {p1}, Lcom/samsung/android/app/music/util/DiskUtils;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 110
    sget-boolean v1, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz v1, :cond_0

    .line 111
    iget-object v1, p0, Lcom/samsung/android/app/music/lyrics/SyncLyricsLoader;->mCpLyricsLoaders:Landroid/util/SparseArray;

    const/high16 v2, 0x80000

    new-instance v3, Lcom/samsung/android/app/music/lyrics/data/loader/CpMilkLyricsParser;

    invoke-direct {v3, p1, v0}, Lcom/samsung/android/app/music/lyrics/data/loader/CpMilkLyricsParser;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 112
    iget-object v1, p0, Lcom/samsung/android/app/music/lyrics/SyncLyricsLoader;->mCpLyricsLoaders:Landroid/util/SparseArray;

    const/4 v2, -0x1

    new-instance v3, Lcom/samsung/android/app/music/lyrics/data/loader/CpRadioLyricsParser;

    invoke-direct {v3, p1, v0}, Lcom/samsung/android/app/music/lyrics/data/loader/CpRadioLyricsParser;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 33
    sget-object v0, Lcom/samsung/android/app/music/lyrics/SyncLyricsLoader;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/Object;
    .locals 1

    .line 33
    sget-object v0, Lcom/samsung/android/app/music/lyrics/SyncLyricsLoader;->sMapLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/music/lyrics/SyncLyricsLoader;JLcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/music/lyrics/SyncLyricsLoader;->notifyClients(JLcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;)V

    return-void
.end method

.method private notifyClients(JLcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;)V
    .locals 3

    .line 167
    sget-object v0, Lcom/samsung/android/app/music/lyrics/SyncLyricsLoader;->sMapLock:Ljava/lang/Object;

    monitor-enter v0

    .line 168
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/music/lyrics/SyncLyricsLoader;->mRequestMap:Landroid/util/LongSparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/lyrics/SyncLyricsLoader$Request;

    if-eqz v1, :cond_0

    .line 170
    iget-object v1, v1, Lcom/samsung/android/app/music/lyrics/SyncLyricsLoader$Request;->clients:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/ILyricsLoader2$OnLyricsLoadFinishedListener;

    .line 171
    invoke-interface {v2, p3}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/ILyricsLoader2$OnLyricsLoadFinishedListener;->onLyricsLoadFinished(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;)V

    goto :goto_0

    .line 174
    :cond_0
    iget-object p3, p0, Lcom/samsung/android/app/music/lyrics/SyncLyricsLoader;->mRequestMap:Landroid/util/LongSparseArray;

    invoke-virtual {p3, p1, p2}, Landroid/util/LongSparseArray;->remove(J)V

    .line 175
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public isExpired(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;IJLjava/lang/Object;)Z
    .locals 0
    .param p5    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 152
    invoke-static {p2}, Lcom/samsung/android/app/music/provider/CpAttrs;->d(I)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 153
    instance-of p3, p5, Landroid/os/Bundle;

    if-eqz p3, :cond_0

    check-cast p5, Landroid/os/Bundle;

    .line 155
    :cond_0
    invoke-static {p2}, Lcom/samsung/android/app/music/provider/CpAttrs;->a(I)I

    move-result p2

    .line 156
    iget-object p3, p0, Lcom/samsung/android/app/music/lyrics/SyncLyricsLoader;->mCpLyricsLoaders:Landroid/util/SparseArray;

    invoke-virtual {p3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/AbsCpLyricsParser;

    if-eqz p2, :cond_1

    .line 159
    invoke-virtual {p2, p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/AbsCpLyricsParser;->isExpired(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public declared-synchronized requestLyric(IJLjava/lang/String;Lcom/samsung/android/app/musiclibrary/core/meta/lyric/ILyricsLoader2$OnLyricsLoadFinishedListener;Ljava/lang/Object;)V
    .locals 3
    .param p5    # Lcom/samsung/android/app/musiclibrary/core/meta/lyric/ILyricsLoader2$OnLyricsLoadFinishedListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    monitor-enter p0

    .line 119
    :try_start_0
    sget-object v0, Lcom/samsung/android/app/music/lyrics/SyncLyricsLoader;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestLyrics : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/samsung/android/app/music/lyrics/SyncLyricsLoader;->mRequestCleaner:Lcom/samsung/android/app/music/lyrics/SyncLyricsLoader$RequestCleaner;

    iget-object v1, p0, Lcom/samsung/android/app/music/lyrics/SyncLyricsLoader;->mRequestMap:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/lyrics/SyncLyricsLoader$RequestCleaner;->postClean(Landroid/util/LongSparseArray;)V

    .line 122
    instance-of v0, p6, Landroid/os/Bundle;

    if-eqz v0, :cond_0

    move-object v0, p6

    check-cast v0, Landroid/os/Bundle;

    .line 123
    :cond_0
    sget-object v0, Lcom/samsung/android/app/music/lyrics/SyncLyricsLoader;->sMapLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 124
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/app/music/lyrics/SyncLyricsLoader;->mRequestMap:Landroid/util/LongSparseArray;

    invoke-virtual {v1, p2, p3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/lyrics/SyncLyricsLoader$Request;

    if-eqz v1, :cond_1

    .line 126
    iget-object p1, v1, Lcom/samsung/android/app/music/lyrics/SyncLyricsLoader$Request;->clients:Ljava/util/Set;

    invoke-interface {p1, p5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 127
    sget-object p1, Lcom/samsung/android/app/music/lyrics/SyncLyricsLoader;->TAG:Ljava/lang/String;

    const-string p2, "already requested !, simply add callback! "

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    .line 130
    :cond_1
    :try_start_2
    new-instance v1, Lcom/samsung/android/app/music/lyrics/SyncLyricsLoader$Request;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/samsung/android/app/music/lyrics/SyncLyricsLoader$Request;-><init>(Lcom/samsung/android/app/music/lyrics/SyncLyricsLoader$1;)V

    .line 131
    iget-object v2, v1, Lcom/samsung/android/app/music/lyrics/SyncLyricsLoader$Request;->clients:Ljava/util/Set;

    invoke-interface {v2, p5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 132
    iget-object p5, p0, Lcom/samsung/android/app/music/lyrics/SyncLyricsLoader;->mRequestMap:Landroid/util/LongSparseArray;

    invoke-virtual {p5, p2, p3, v1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 133
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 134
    :try_start_3
    invoke-static {p1}, Lcom/samsung/android/app/music/provider/CpAttrs;->d(I)Z

    move-result p5

    if-eqz p5, :cond_2

    .line 135
    invoke-static {p1}, Lcom/samsung/android/app/music/provider/CpAttrs;->a(I)I

    move-result p1

    .line 136
    iget-object p4, p0, Lcom/samsung/android/app/music/lyrics/SyncLyricsLoader;->mCpLyricsLoaders:Landroid/util/SparseArray;

    invoke-virtual {p4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/AbsCpLyricsParser;

    if-eqz p1, :cond_3

    .line 138
    new-instance p4, Lcom/samsung/android/app/music/lyrics/SyncLyricsLoader$1;

    invoke-direct {p4, p0, p2, p3}, Lcom/samsung/android/app/music/lyrics/SyncLyricsLoader$1;-><init>(Lcom/samsung/android/app/music/lyrics/SyncLyricsLoader;J)V

    invoke-virtual {p1, p2, p3, p4, p6}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/AbsCpLyricsParser;->requestLyrics(JLcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer$OnLyricsIssuedListener;Ljava/lang/Object;)V

    goto :goto_0

    .line 146
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/app/music/lyrics/SyncLyricsLoader;->mLyricsParser:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LyricsParser;

    invoke-virtual {p1, p4}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LyricsParser;->getLyric(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    move-result-object p1

    invoke-direct {p0, p2, p3, p1}, Lcom/samsung/android/app/music/lyrics/SyncLyricsLoader;->notifyClients(JLcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 148
    :cond_3
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 133
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p1

    .line 118
    monitor-exit p0

    throw p1
.end method
