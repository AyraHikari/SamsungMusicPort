.class Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/AbsCpLyricsParser$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/AbsCpLyricsParser$Request$OnRequestPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/AbsCpLyricsParser;->requestLyrics(JLcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer$OnLyricsIssuedListener;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/AbsCpLyricsParser;

.field final synthetic val$l:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer$OnLyricsIssuedListener;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/AbsCpLyricsParser;Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer$OnLyricsIssuedListener;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/AbsCpLyricsParser$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/AbsCpLyricsParser;

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/AbsCpLyricsParser$1;->val$l:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer$OnLyricsIssuedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestPrepared(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/AbsCpLyricsParser$Request;)V
    .locals 3

    .line 62
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/AbsCpLyricsParser$Request;->lyricsUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/AbsCpLyricsParser$1;->val$l:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer$OnLyricsIssuedListener;

    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;->EMPTY_LYRICS:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer$OnLyricsIssuedListener;->onLyricsIssued(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;)V

    return-void

    .line 66
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/AbsCpLyricsParser;->access$000()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/AbsCpLyricsParser$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/AbsCpLyricsParser;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/AbsCpLyricsParser;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "download lyric uri : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/AbsCpLyricsParser$Request;->lyricsUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/AbsCpLyricsParser$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/AbsCpLyricsParser;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/AbsCpLyricsParser;->access$100(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/AbsCpLyricsParser;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer;

    move-result-object v0

    iget-object v1, p1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/AbsCpLyricsParser$Request;->lyricsUrl:Ljava/lang/String;

    iget-object p1, p1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/AbsCpLyricsParser$Request;->sourceId:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/AbsCpLyricsParser$1;->val$l:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer$OnLyricsIssuedListener;

    invoke-virtual {v0, v1, p1, v2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer;->issueLyrics(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer$OnLyricsIssuedListener;)V

    return-void
.end method
