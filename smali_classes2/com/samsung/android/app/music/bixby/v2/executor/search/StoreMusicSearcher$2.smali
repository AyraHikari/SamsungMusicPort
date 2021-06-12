.class Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Function;


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
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Ljava/lang/String;",
        "Lio/reactivex/Observable<",
        "Lcom/samsung/android/app/music/model/contents/ArtistDetailTracksModel;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher$2;->a:Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/samsung/android/app/music/model/contents/ArtistDetailTracksModel;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 84
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher$2;->a:Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher;

    invoke-static {v0}, Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher;->b(Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher;)Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;->ARTIST_NAME:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;->a(Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;)V

    .line 86
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher$2;->a:Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher;

    invoke-static {v0}, Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher;->c(Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, v2}, Lcom/samsung/android/app/music/network/request/contents/ContentsApis;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    .line 88
    :cond_0
    new-instance p1, Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher$ArtistRadioException;

    sget-object v0, Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher$ArtistRadioException$ErrorCode;->FAIL_GET_ARTIST_ID:Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher$ArtistRadioException$ErrorCode;

    invoke-direct {p1, v0}, Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher$ArtistRadioException;-><init>(Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher$ArtistRadioException$ErrorCode;)V

    invoke-static {p1}, Lio/reactivex/Observable;->a(Ljava/lang/Throwable;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 81
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher$2;->a(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
