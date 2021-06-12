.class Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailFragment;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lio/reactivex/Observable<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailFragment;)V
    .locals 0

    .line 262
    iput-object p1, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailFragment$3;->a:Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 265
    new-instance v0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailFragment$3$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailFragment$3$1;-><init>(Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailFragment$3;)V

    invoke-static {v0}, Lio/reactivex/Observable;->a(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 262
    invoke-virtual {p0}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailFragment$3;->a()Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method
