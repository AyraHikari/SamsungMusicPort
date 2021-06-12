.class Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailFragment$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailFragment$3;->a()Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/ObservableOnSubscribe<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailFragment$3;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailFragment$3;)V
    .locals 0

    .line 265
    iput-object p1, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailFragment$3$1;->a:Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailFragment$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/reactivex/ObservableEmitter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableEmitter<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 268
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailFragment$3$1;->a:Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailFragment$3;

    iget-object v0, v0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailFragment$3;->a:Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailFragment;

    iget-object v0, v0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailFragment;->a:Landroid/content/Context;

    .line 269
    invoke-static {v0}, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyAdjustment;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 270
    invoke-interface {p1, v0}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    .line 271
    invoke-interface {p1}, Lio/reactivex/ObservableEmitter;->onComplete()V

    return-void
.end method
