.class Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer$IssuingLyricsHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IssuingLyricsHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer$IssuingLyricsHandler$NotifyCallback;
    }
.end annotation


# instance fields
.field private final mNotifyHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .locals 3

    .line 167
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 164
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer$IssuingLyricsHandler$NotifyCallback;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer$IssuingLyricsHandler$NotifyCallback;-><init>(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer$1;)V

    invoke-direct {p1, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer$IssuingLyricsHandler;->mNotifyHandler:Landroid/os/Handler;

    return-void
.end method

.method private notifyIssuedLyrics(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer$IssuingArgs;)V
    .locals 2

    .line 219
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer$IssuingLyricsHandler;->mNotifyHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12

    .line 172
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer$IssuingArgs;

    .line 173
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer$IssuingArgs;->issuerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer;

    if-nez v0, :cond_0

    .line 175
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer$IssuingLyricsHandler;->notifyIssuedLyrics(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer$IssuingArgs;)V

    return-void

    .line 179
    :cond_0
    iget-object v1, p1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer$IssuingArgs;->issuedKey:Ljava/lang/String;

    iget-object v2, p1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer$IssuingArgs;->serverUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer$IssuingArgs;->fileUrl:Ljava/lang/String;

    .line 180
    invoke-static {v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer$ILyricsDownloader$Request;->obtain(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer$ILyricsDownloader$Request;

    move-result-object v1

    .line 181
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer;->access$100(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer$ILyricsDownloader;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer$ILyricsDownloader;->getUpdateTime(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer$ILyricsDownloader$Request;)J

    move-result-wide v2

    .line 182
    iget-object v4, p1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer$IssuingArgs;->lastIssuedLyrics:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    const-string v5, "last_updated"

    const-wide/16 v6, -0x1

    .line 183
    invoke-static {v0, v4, v5, v6, v7}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer;->access$200(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer;Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;Ljava/lang/String;J)J

    move-result-wide v4

    .line 185
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer;->access$300()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Checking update date from-server : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, ", from-local : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    cmp-long v8, v2, v8

    if-nez v8, :cond_1

    const/4 v8, 0x1

    goto :goto_0

    :cond_1
    const/4 v8, 0x0

    :goto_0
    cmp-long v6, v2, v6

    if-eqz v6, :cond_2

    cmp-long v4, v2, v4

    if-nez v4, :cond_2

    const/4 v10, 0x1

    :cond_2
    or-int v4, v8, v10

    if-eqz v4, :cond_3

    .line 193
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer$IssuingLyricsHandler;->notifyIssuedLyrics(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer$IssuingArgs;)V

    return-void

    .line 197
    :cond_3
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer;->access$100(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer$ILyricsDownloader;

    move-result-object v4

    invoke-interface {v4, v1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer$ILyricsDownloader;->download(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer$ILyricsDownloader$Request;)I

    move-result v1

    if-gez v1, :cond_4

    .line 199
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Download failed !, serverUrl : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer$IssuingArgs;->serverUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", fileUrl : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer$IssuingArgs;->fileUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer$IssuingLyricsHandler;->notifyIssuedLyrics(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer$IssuingArgs;)V

    return-void

    .line 205
    :cond_4
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer;->access$400(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LyricsParser;

    move-result-object v0

    iget-object v1, p1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer$IssuingArgs;->fileUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LyricsParser;->getLyric(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    move-result-object v0

    iput-object v0, p1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer$IssuingArgs;->issuedLyrics:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    .line 206
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer$IssuingArgs;->issuedLyrics:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;->EMPTY_LYRICS:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    if-ne v0, v1, :cond_5

    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer$IssuingArgs;->lastIssuedLyrics:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    goto :goto_1

    :cond_5
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer$IssuingArgs;->issuedLyrics:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    :goto_1
    iput-object v0, p1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer$IssuingArgs;->issuedLyrics:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    .line 208
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer$IssuingArgs;->issuedLyrics:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    const-string v1, "issue_key"

    iget-object v4, p1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer$IssuingArgs;->issuedKey:Ljava/lang/String;

    invoke-interface {v0, v1, v4}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;->putExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer$IssuingArgs;->issuedLyrics:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    const-string v1, "last_updated"

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;->putExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    new-instance v0, Ljava/io/File;

    iget-object v1, p1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer$IssuingArgs;->fileUrl:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 212
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    .line 213
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer;->access$300()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Download path : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer$IssuingArgs;->fileUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer;->access$300()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Temporary lyrics file is deleted : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer$IssuingArgs;->fileUrl:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer$IssuingLyricsHandler;->notifyIssuedLyrics(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer$IssuingArgs;)V

    return-void
.end method
