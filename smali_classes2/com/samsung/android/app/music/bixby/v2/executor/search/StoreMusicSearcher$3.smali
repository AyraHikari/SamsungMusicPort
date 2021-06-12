.class Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher$3;
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
        "Ljava/lang/Boolean;",
        "Lio/reactivex/Observable<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher;Ljava/lang/String;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher$3;->b:Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher;

    iput-object p2, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher$3;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Boolean;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            ")",
            "Lio/reactivex/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 76
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 77
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher$3;->b:Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher;

    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher$3;->a:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher;->b(Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    .line 79
    :cond_0
    new-instance p1, Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher$ArtistRadioException;

    sget-object v0, Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher$ArtistRadioException$ErrorCode;->NOT_ARTIST:Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher$ArtistRadioException$ErrorCode;

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

    .line 73
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher$3;->a(Ljava/lang/Boolean;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
