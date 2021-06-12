.class Lcom/samsung/android/app/music/lyrics/data/loader/CpMilkLyricsParser$1;
.super Lcom/samsung/android/app/music/milk/SimpleSubscriber;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/lyrics/data/loader/CpMilkLyricsParser;->initRequestFromServer(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/AbsCpLyricsParser$Request;Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/AbsCpLyricsParser$Request$OnRequestPreparedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/milk/SimpleSubscriber<",
        "Lcom/samsung/android/app/music/model/contents/TrackLyricsModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/lyrics/data/loader/CpMilkLyricsParser;

.field final synthetic val$l:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/AbsCpLyricsParser$Request$OnRequestPreparedListener;

.field final synthetic val$request:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/AbsCpLyricsParser$Request;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/lyrics/data/loader/CpMilkLyricsParser;Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/AbsCpLyricsParser$Request;Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/AbsCpLyricsParser$Request$OnRequestPreparedListener;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/samsung/android/app/music/lyrics/data/loader/CpMilkLyricsParser$1;->this$0:Lcom/samsung/android/app/music/lyrics/data/loader/CpMilkLyricsParser;

    iput-object p2, p0, Lcom/samsung/android/app/music/lyrics/data/loader/CpMilkLyricsParser$1;->val$request:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/AbsCpLyricsParser$Request;

    iput-object p3, p0, Lcom/samsung/android/app/music/lyrics/data/loader/CpMilkLyricsParser$1;->val$l:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/AbsCpLyricsParser$Request$OnRequestPreparedListener;

    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/SimpleSubscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/samsung/android/app/music/lyrics/data/loader/CpMilkLyricsParser$1;->this$0:Lcom/samsung/android/app/music/lyrics/data/loader/CpMilkLyricsParser;

    invoke-static {v0}, Lcom/samsung/android/app/music/lyrics/data/loader/CpMilkLyricsParser;->access$000(Lcom/samsung/android/app/music/lyrics/data/loader/CpMilkLyricsParser;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "request lyrics to server failed"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public onNext(Lcom/samsung/android/app/music/model/contents/TrackLyricsModel;)V
    .locals 4

    if-eqz p1, :cond_2

    .line 89
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/contents/TrackLyricsModel;->getLyrics()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 90
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    and-int/2addr v0, v2

    if-eqz v0, :cond_2

    .line 91
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/model/base/LyricModel;

    if-eqz p1, :cond_2

    .line 93
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/base/LyricModel;->getAvailableUrl()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    .line 97
    :goto_2
    iget-object v0, p0, Lcom/samsung/android/app/music/lyrics/data/loader/CpMilkLyricsParser$1;->this$0:Lcom/samsung/android/app/music/lyrics/data/loader/CpMilkLyricsParser;

    invoke-static {v0}, Lcom/samsung/android/app/music/lyrics/data/loader/CpMilkLyricsParser;->access$100(Lcom/samsung/android/app/music/lyrics/data/loader/CpMilkLyricsParser;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Lyrics url from server : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/samsung/android/app/music/lyrics/data/loader/CpMilkLyricsParser$1;->val$request:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/AbsCpLyricsParser$Request;

    iput-object p1, v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/AbsCpLyricsParser$Request;->lyricsUrl:Ljava/lang/String;

    .line 99
    iget-object p1, p0, Lcom/samsung/android/app/music/lyrics/data/loader/CpMilkLyricsParser$1;->val$l:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/AbsCpLyricsParser$Request$OnRequestPreparedListener;

    iget-object v0, p0, Lcom/samsung/android/app/music/lyrics/data/loader/CpMilkLyricsParser$1;->val$request:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/AbsCpLyricsParser$Request;

    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/AbsCpLyricsParser$Request$OnRequestPreparedListener;->onRequestPrepared(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/AbsCpLyricsParser$Request;)V

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 75
    check-cast p1, Lcom/samsung/android/app/music/model/contents/TrackLyricsModel;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/lyrics/data/loader/CpMilkLyricsParser$1;->onNext(Lcom/samsung/android/app/music/model/contents/TrackLyricsModel;)V

    return-void
.end method
