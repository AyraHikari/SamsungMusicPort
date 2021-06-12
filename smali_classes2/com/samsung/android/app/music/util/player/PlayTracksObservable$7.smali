.class Lcom/samsung/android/app/music/util/player/PlayTracksObservable$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/util/player/PlayTracksObservable;->a(Lio/reactivex/ObservableEmitter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/reactivex/ObservableEmitter;

.field final synthetic b:Lcom/samsung/android/app/music/util/player/PlayTracksObservable;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/util/player/PlayTracksObservable;Lio/reactivex/ObservableEmitter;)V
    .locals 0

    .line 319
    iput-object p1, p0, Lcom/samsung/android/app/music/util/player/PlayTracksObservable$7;->b:Lcom/samsung/android/app/music/util/player/PlayTracksObservable;

    iput-object p2, p0, Lcom/samsung/android/app/music/util/player/PlayTracksObservable$7;->a:Lio/reactivex/ObservableEmitter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 322
    iget-object p1, p0, Lcom/samsung/android/app/music/util/player/PlayTracksObservable$7;->b:Lcom/samsung/android/app/music/util/player/PlayTracksObservable;

    invoke-static {p1}, Lcom/samsung/android/app/music/util/player/PlayTracksObservable;->c(Lcom/samsung/android/app/music/util/player/PlayTracksObservable;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "service binding done. "

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    iget-object p1, p0, Lcom/samsung/android/app/music/util/player/PlayTracksObservable$7;->b:Lcom/samsung/android/app/music/util/player/PlayTracksObservable;

    iget-object p2, p0, Lcom/samsung/android/app/music/util/player/PlayTracksObservable$7;->a:Lio/reactivex/ObservableEmitter;

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/util/player/PlayTracksObservable;->a(Lcom/samsung/android/app/music/util/player/PlayTracksObservable;Lio/reactivex/ObservableEmitter;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 328
    iget-object p1, p0, Lcom/samsung/android/app/music/util/player/PlayTracksObservable$7;->b:Lcom/samsung/android/app/music/util/player/PlayTracksObservable;

    invoke-static {p1}, Lcom/samsung/android/app/music/util/player/PlayTracksObservable;->c(Lcom/samsung/android/app/music/util/player/PlayTracksObservable;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "onServiceDisconnected"

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    iget-object p1, p0, Lcom/samsung/android/app/music/util/player/PlayTracksObservable$7;->b:Lcom/samsung/android/app/music/util/player/PlayTracksObservable;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/util/player/PlayTracksObservable;->a(Lcom/samsung/android/app/music/util/player/PlayTracksObservable;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;)Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;

    return-void
.end method
