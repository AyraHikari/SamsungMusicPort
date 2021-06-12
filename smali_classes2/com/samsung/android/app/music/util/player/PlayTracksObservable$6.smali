.class Lcom/samsung/android/app/music/util/player/PlayTracksObservable$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/util/player/PlayTracksObservable;->release()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/ObservableOnSubscribe<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/util/player/PlayTracksObservable;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/util/player/PlayTracksObservable;)V
    .locals 0

    .line 300
    iput-object p1, p0, Lcom/samsung/android/app/music/util/player/PlayTracksObservable$6;->a:Lcom/samsung/android/app/music/util/player/PlayTracksObservable;

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
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 303
    iget-object p1, p0, Lcom/samsung/android/app/music/util/player/PlayTracksObservable$6;->a:Lcom/samsung/android/app/music/util/player/PlayTracksObservable;

    invoke-static {p1}, Lcom/samsung/android/app/music/util/player/PlayTracksObservable;->d(Lcom/samsung/android/app/music/util/player/PlayTracksObservable;)Lcom/samsung/android/app/musiclibrary/core/service/IPlayerServiceCallback$Stub;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->unregisterCallback(Lcom/samsung/android/app/musiclibrary/core/service/IPlayerServiceCallback;)V

    .line 304
    iget-object p1, p0, Lcom/samsung/android/app/music/util/player/PlayTracksObservable$6;->a:Lcom/samsung/android/app/music/util/player/PlayTracksObservable;

    invoke-static {p1}, Lcom/samsung/android/app/music/util/player/PlayTracksObservable;->e(Lcom/samsung/android/app/music/util/player/PlayTracksObservable;)Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->unbindFromService(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;)V

    .line 305
    iget-object p1, p0, Lcom/samsung/android/app/music/util/player/PlayTracksObservable$6;->a:Lcom/samsung/android/app/music/util/player/PlayTracksObservable;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/util/player/PlayTracksObservable;->a(Lcom/samsung/android/app/music/util/player/PlayTracksObservable;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;)Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;

    return-void
.end method
