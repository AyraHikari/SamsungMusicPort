.class public final Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer$OnLyricsIssuedListener;,
        Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer$ILyricsDownloader;,
        Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer$IssuingLyricsHandler;,
        Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer$IssuingArgs;
    }
.end annotation


# static fields
.field private static final ISSUED_LYRICS_DISC_CACHE_SIZE:I = 0x100000

.field private static final ISSUED_LYRICS_MEMORY_CACHE_SIZE:I = 0x3e8

.field private static final ISSUE_EXPIRED:J = 0x5265c00L

.field private static final KEY_ISSUE_KEY:Ljava/lang/String; = "issue_key"

.field private static final KEY_LAST_ISSUED:Ljava/lang/String; = "last_issued"

.field private static final KEY_LAST_UPDATED:Ljava/lang/String; = "last_updated"

.field private static final TAG:Ljava/lang/String; = "LyricsIssuer"


# instance fields
.field private final mCachePath:Ljava/lang/String;

.field private final mIssuedLyricsCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;",
            ">;"
        }
    .end annotation
.end field

.field private final mIssuingLyricsHandler:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer$IssuingLyricsHandler;

.field private final mLyricsDownloader:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer$ILyricsDownloader;

.field private final mLyricsJournal:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsJournal;

.field private final mLyricsParser:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LyricsParser;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LyricsParser;Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer$ILyricsDownloader;Ljava/lang/String;)V
    .locals 2

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x3e8

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer;->mIssuedLyricsCache:Landroid/util/LruCache;

    .line 56
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer;->mLyricsParser:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LyricsParser;

    .line 57
    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer;->mLyricsDownloader:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer$ILyricsDownloader;

    .line 58
    iput-object p4, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer;->mCachePath:Ljava/lang/String;

    .line 60
    new-instance p2, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsJournal;

    const/high16 p3, 0x100000

    invoke-direct {p2, p4, p3}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsJournal;-><init>(Ljava/lang/String;I)V

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer;->mLyricsJournal:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsJournal;

    .line 61
    new-instance p2, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer$IssuingLyricsHandler;

    invoke-direct {p2, p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer$IssuingLyricsHandler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer;->mIssuingLyricsHandler:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer$IssuingLyricsHandler;

    .line 63
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer;->ensureCachePathInternal()V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer$ILyricsDownloader;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer;->mLyricsDownloader:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer$ILyricsDownloader;

    return-object p0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer;Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;Ljava/lang/String;J)J
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer;->getLongInternal(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 24
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LyricsParser;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer;->mLyricsParser:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LyricsParser;

    return-object p0
.end method

.method static synthetic access$500(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer;)Landroid/util/LruCache;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer;->mIssuedLyricsCache:Landroid/util/LruCache;

    return-object p0
.end method

.method static synthetic access$600(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsJournal;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer;->mLyricsJournal:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsJournal;

    return-object p0
.end method

.method private ensureCachePathInternal()V
    .locals 2

    .line 129
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer;->mCachePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 130
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    return-void
.end method

.method private getLongInternal(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;Ljava/lang/String;J)J
    .locals 0

    .line 118
    invoke-interface {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;->getExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 121
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide p3, p1

    :catch_0
    :goto_0
    return-wide p3
.end method

.method private startIssuingLyricsInternal(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer$OnLyricsIssuedListener;)V
    .locals 9

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer;->mCachePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 99
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer;->mIssuingLyricsHandler:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer$IssuingLyricsHandler;

    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer$IssuingArgs;

    move-object v2, v1

    move-object v3, p0

    move-object v4, p3

    move-object v5, p2

    move-object v6, p1

    move-object v8, p4

    invoke-direct/range {v2 .. v8}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer$IssuingArgs;-><init>(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer;Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer$OnLyricsIssuedListener;)V

    const/4 p1, 0x0

    invoke-static {v0, p1, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 101
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method


# virtual methods
.method public checkIssueExpiredInternal(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;)Z
    .locals 6

    const-string v0, "last_issued"

    const-wide/16 v1, 0x0

    .line 109
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer;->getLongInternal(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;Ljava/lang/String;J)J

    move-result-wide v0

    .line 110
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 112
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkIssuerExpiredInternal last issued : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ", current time : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    sub-long/2addr v2, v0

    const-wide/32 v0, 0x5265c00

    cmp-long p1, v2, v0

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public issueLyrics(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer$OnLyricsIssuedListener;)V
    .locals 2

    if-nez p3, :cond_0

    .line 68
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer;->TAG:Ljava/lang/String;

    const-string p2, "issueLyrics onLyricsIssuedListener(l) is null"

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer;->mIssuedLyricsCache:Landroid/util/LruCache;

    invoke-virtual {v0, p2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    if-eqz v0, :cond_2

    .line 73
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer;->checkIssueExpiredInternal(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 74
    invoke-interface {p3, v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer$OnLyricsIssuedListener;->onLyricsIssued(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;)V

    return-void

    .line 77
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer;->mIssuedLyricsCache:Landroid/util/LruCache;

    invoke-virtual {v0, p2}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer;->mLyricsJournal:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsJournal;

    invoke-virtual {v0, p2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsJournal;->get(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    move-result-object v0

    if-nez v0, :cond_3

    .line 80
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;->EMPTY_LYRICS:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    .line 81
    :cond_3
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer;->checkIssueExpiredInternal(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 82
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer;->TAG:Ljava/lang/String;

    const-string p2, "Issuing token is still valid, so uses disk cached one"

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-interface {p3, v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer$OnLyricsIssuedListener;->onLyricsIssued(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;)V

    return-void

    .line 87
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer;->mLyricsDownloader:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer$ILyricsDownloader;

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_6

    .line 89
    invoke-interface {p3, v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer$OnLyricsIssuedListener;->onLyricsIssued(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;)V

    return-void

    .line 93
    :cond_6
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer;->startIssuingLyricsInternal(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer$OnLyricsIssuedListener;)V

    return-void
.end method

.method public release()V
    .locals 2

    .line 105
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer;->mIssuingLyricsHandler:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer$IssuingLyricsHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer$IssuingLyricsHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method
