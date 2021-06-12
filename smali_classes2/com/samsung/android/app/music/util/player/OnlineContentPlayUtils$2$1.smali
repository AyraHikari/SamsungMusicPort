.class Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$2;->a()Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/ObservableOnSubscribe<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$2;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$2;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$2$1;->a:Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/reactivex/ObservableEmitter;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableEmitter<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 148
    iget-object v0, p0, Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$2$1;->a:Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$2;

    iget-object v0, v0, Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$2;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$2$1;->a:Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$2;

    iget-object v1, v1, Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$2;->b:Ljava/util/List;

    iget-object v2, p0, Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$2$1;->a:Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$2;

    iget-object v2, v2, Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$2;->c:Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter$Converter;

    .line 149
    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter;->a(Landroid/content/Context;Ljava/util/List;Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter$Converter;)[J

    move-result-object v0

    const-string v1, "OnlineContentPlayUtils"

    .line 150
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "playTracks. success. playlistId - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$2$1;->a:Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$2;

    iget-object v3, v3, Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$2;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", size - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$2$1;->a:Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$2;

    iget-object v3, v3, Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$2;->b:Ljava/util/List;

    .line 152
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", position - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$2$1;->a:Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$2;

    iget v3, v3, Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$2;->e:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", playAll - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$2$1;->a:Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$2;

    iget-boolean v3, v3, Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$2;->f:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", audio ids "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    .line 154
    invoke-static {v0}, Lcom/samsung/android/app/music/util/CollectionsUtils;->a([J)Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 150
    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    iget-object v1, p0, Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$2$1;->a:Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$2;

    iget v1, v1, Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$2;->e:I

    iget-object v2, p0, Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$2$1;->a:Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$2;

    iget-object v2, v2, Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$2;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$2$1;->a:Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$2;

    iget-boolean v3, v3, Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$2;->f:Z

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils;->a([JILjava/lang/String;Z)V

    const/4 v0, 0x1

    .line 156
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    .line 157
    invoke-interface {p1}, Lio/reactivex/ObservableEmitter;->onComplete()V

    return-void
.end method
