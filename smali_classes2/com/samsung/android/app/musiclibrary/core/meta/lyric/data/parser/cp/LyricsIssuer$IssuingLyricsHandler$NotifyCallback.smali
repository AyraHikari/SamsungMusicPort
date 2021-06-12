.class Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer$IssuingLyricsHandler$NotifyCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer$IssuingLyricsHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NotifyCallback"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer$1;)V
    .locals 0

    .line 222
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer$IssuingLyricsHandler$NotifyCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 6

    .line 225
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer$IssuingArgs;

    .line 226
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer$IssuingArgs;->issuerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 230
    :cond_0
    iget-object v1, p1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer$IssuingArgs;->issuedLyrics:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    sget-object v2, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;->EMPTY_LYRICS:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    if-eq v1, v2, :cond_1

    .line 231
    iget-object v1, p1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer$IssuingArgs;->issuedLyrics:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    const-string v2, "issue_key"

    invoke-interface {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;->getExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 232
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 233
    iget-object v4, p1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer$IssuingArgs;->issuedLyrics:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    const-string v5, "last_issued"

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v5, v2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;->putExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer;->access$500(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer;)Landroid/util/LruCache;

    move-result-object v2

    iget-object v3, p1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer$IssuingArgs;->issuedLyrics:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    invoke-virtual {v2, v1, v3}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer;->access$600(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsJournal;

    move-result-object v0

    iget-object v2, p1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer$IssuingArgs;->issuedLyrics:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsJournal;->put(Ljava/lang/String;Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;)V

    .line 238
    :cond_1
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer$IssuingArgs;->l:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer$OnLyricsIssuedListener;

    iget-object p1, p1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer$IssuingArgs;->issuedLyrics:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer$OnLyricsIssuedListener;->onLyricsIssued(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;)V

    const/4 p1, 0x1

    return p1
.end method
