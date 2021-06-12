.class Lcom/samsung/android/app/music/util/player/PlayRadioObservable$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/util/player/PlayRadioObservable;->a(Lio/reactivex/ObservableEmitter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/reactivex/ObservableEmitter;

.field final synthetic b:Lcom/samsung/android/app/music/util/player/PlayRadioObservable;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/util/player/PlayRadioObservable;Lio/reactivex/ObservableEmitter;)V
    .locals 0

    .line 333
    iput-object p1, p0, Lcom/samsung/android/app/music/util/player/PlayRadioObservable$6;->b:Lcom/samsung/android/app/music/util/player/PlayRadioObservable;

    iput-object p2, p0, Lcom/samsung/android/app/music/util/player/PlayRadioObservable$6;->a:Lio/reactivex/ObservableEmitter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 336
    iget-object p1, p0, Lcom/samsung/android/app/music/util/player/PlayRadioObservable$6;->b:Lcom/samsung/android/app/music/util/player/PlayRadioObservable;

    invoke-static {p1}, Lcom/samsung/android/app/music/util/player/PlayRadioObservable;->e(Lcom/samsung/android/app/music/util/player/PlayRadioObservable;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "service binding done. stationId - "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/app/music/util/player/PlayRadioObservable$6;->b:Lcom/samsung/android/app/music/util/player/PlayRadioObservable;

    invoke-static {v0}, Lcom/samsung/android/app/music/util/player/PlayRadioObservable;->f(Lcom/samsung/android/app/music/util/player/PlayRadioObservable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    iget-object p1, p0, Lcom/samsung/android/app/music/util/player/PlayRadioObservable$6;->b:Lcom/samsung/android/app/music/util/player/PlayRadioObservable;

    iget-object p2, p0, Lcom/samsung/android/app/music/util/player/PlayRadioObservable$6;->a:Lio/reactivex/ObservableEmitter;

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/util/player/PlayRadioObservable;->a(Lcom/samsung/android/app/music/util/player/PlayRadioObservable;Lio/reactivex/ObservableEmitter;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 342
    iget-object p1, p0, Lcom/samsung/android/app/music/util/player/PlayRadioObservable$6;->b:Lcom/samsung/android/app/music/util/player/PlayRadioObservable;

    invoke-static {p1}, Lcom/samsung/android/app/music/util/player/PlayRadioObservable;->e(Lcom/samsung/android/app/music/util/player/PlayRadioObservable;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "onServiceDisconnected"

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    iget-object p1, p0, Lcom/samsung/android/app/music/util/player/PlayRadioObservable$6;->b:Lcom/samsung/android/app/music/util/player/PlayRadioObservable;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/util/player/PlayRadioObservable;->a(Lcom/samsung/android/app/music/util/player/PlayRadioObservable;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;)Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;

    return-void
.end method
