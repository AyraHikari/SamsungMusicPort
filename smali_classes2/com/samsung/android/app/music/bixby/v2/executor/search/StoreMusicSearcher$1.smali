.class Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher$1;
.super Lcom/samsung/android/app/music/util/rx/SubscriberAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher;->a(Lcom/samsung/android/app/music/bixby/v2/executor/search/IMusicSearcher$OnSearchCompleteListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/util/rx/SubscriberAdapter<",
        "Lcom/samsung/android/app/music/model/contents/ArtistDetailTracksModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher;Ljava/lang/String;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher$1;->b:Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher;

    iput-object p2, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/samsung/android/app/music/util/rx/SubscriberAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/model/contents/ArtistDetailTracksModel;)V
    .locals 3

    .line 99
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/util/rx/SubscriberAdapter;->onNext(Ljava/lang/Object;)V

    const-string v0, "MusicSearch"

    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add artist playlist : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/contents/ArtistDetailTracksModel;->getPlaylistId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 100
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher$1;->b:Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/contents/ArtistDetailTracksModel;->getTrackList()Ljava/util/List;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher;->a(Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher;Ljava/util/List;)V

    .line 103
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher$1;->b:Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher;

    invoke-static {p1}, Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher;->a(Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 93
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/util/rx/SubscriberAdapter;->onError(Ljava/lang/Throwable;)V

    .line 94
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher$1;->b:Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher;

    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher$1;->a:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher;->a(Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 90
    check-cast p1, Lcom/samsung/android/app/music/model/contents/ArtistDetailTracksModel;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher$1;->a(Lcom/samsung/android/app/music/model/contents/ArtistDetailTracksModel;)V

    return-void
.end method
