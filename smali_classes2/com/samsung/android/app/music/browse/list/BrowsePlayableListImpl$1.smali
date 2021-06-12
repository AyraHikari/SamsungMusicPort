.class Lcom/samsung/android/app/music/browse/list/BrowsePlayableListImpl$1;
.super Lcom/samsung/android/app/music/milk/SimpleSubscriber;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/browse/list/BrowsePlayableListImpl;->a(Lcom/samsung/android/app/music/browse/list/BrowsePlayRadio$PlayResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/milk/SimpleSubscriber<",
        "Lcom/samsung/android/app/music/util/player/PlayingTrackInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/browse/list/BrowsePlayRadio$PlayResult;

.field final synthetic b:Lcom/samsung/android/app/music/browse/list/BrowsePlayableListImpl;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/browse/list/BrowsePlayableListImpl;Lcom/samsung/android/app/music/browse/list/BrowsePlayRadio$PlayResult;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/BrowsePlayableListImpl$1;->b:Lcom/samsung/android/app/music/browse/list/BrowsePlayableListImpl;

    iput-object p2, p0, Lcom/samsung/android/app/music/browse/list/BrowsePlayableListImpl$1;->a:Lcom/samsung/android/app/music/browse/list/BrowsePlayRadio$PlayResult;

    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/SimpleSubscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/util/player/PlayingTrackInfo;)V
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowsePlayableListImpl$1;->a:Lcom/samsung/android/app/music/browse/list/BrowsePlayRadio$PlayResult;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/music/browse/list/BrowsePlayRadio$PlayResult;->a(Lcom/samsung/android/app/music/util/player/PlayingTrackInfo;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 163
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/SimpleSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 164
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowsePlayableListImpl$1;->a:Lcom/samsung/android/app/music/browse/list/BrowsePlayRadio$PlayResult;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/music/browse/list/BrowsePlayRadio$PlayResult;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 155
    check-cast p1, Lcom/samsung/android/app/music/util/player/PlayingTrackInfo;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/browse/list/BrowsePlayableListImpl$1;->a(Lcom/samsung/android/app/music/util/player/PlayingTrackInfo;)V

    return-void
.end method
