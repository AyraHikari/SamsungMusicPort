.class public final Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetailGetter$requestTrackDetailInternal$1;
.super Lcom/samsung/android/app/music/milk/SimpleSubscriber;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetailGetter;->a(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetailGetter$OnTrackDetailUpdateListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/milk/SimpleSubscriber<",
        "Lcom/samsung/android/app/music/model/contents/TrackDetailModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetailGetter;

.field final synthetic b:Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetailGetter$OnTrackDetailUpdateListener;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetailGetter;Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetailGetter$OnTrackDetailUpdateListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetailGetter$OnTrackDetailUpdateListener;",
            ")V"
        }
    .end annotation

    .line 124
    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetailGetter$requestTrackDetailInternal$1;->a:Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetailGetter;

    iput-object p2, p0, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetailGetter$requestTrackDetailInternal$1;->b:Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetailGetter$OnTrackDetailUpdateListener;

    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/SimpleSubscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/model/contents/TrackDetailModel;)V
    .locals 2

    const-string v0, "trackDetailModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetailGetter$requestTrackDetailInternal$1;->a:Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetailGetter;

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetailGetter;->a(Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetailGetter;Lcom/samsung/android/app/music/model/contents/TrackDetailModel;)V

    .line 127
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetailGetter$requestTrackDetailInternal$1;->a:Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetailGetter;

    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetailGetter$requestTrackDetailInternal$1;->a:Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetailGetter;

    invoke-static {v1, p1}, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetailGetter;->b(Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetailGetter;Lcom/samsung/android/app/music/model/contents/TrackDetailModel;)Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetailGetter;->a(Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail;)V

    .line 128
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetailGetter$requestTrackDetailInternal$1;->b:Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetailGetter$OnTrackDetailUpdateListener;

    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetailGetter$requestTrackDetailInternal$1;->a:Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetailGetter;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetailGetter;->a()Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetailGetter$OnTrackDetailUpdateListener;->a(Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetailGetter$requestTrackDetailInternal$1;->a:Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetailGetter;

    const/4 v0, 0x0

    check-cast v0, Lcom/samsung/android/app/music/model/contents/TrackDetailModel;

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetailGetter;->a(Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetailGetter;Lcom/samsung/android/app/music/model/contents/TrackDetailModel;)V

    .line 133
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetailGetter$requestTrackDetailInternal$1;->a:Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetailGetter;

    sget-object v0, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail;->a:Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail$Companion;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail$Companion;->a()Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetailGetter;->a(Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail;)V

    .line 134
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetailGetter$requestTrackDetailInternal$1;->b:Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetailGetter$OnTrackDetailUpdateListener;

    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetailGetter$requestTrackDetailInternal$1;->a:Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetailGetter;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetailGetter;->a()Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetailGetter$OnTrackDetailUpdateListener;->a(Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail;)V

    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 124
    check-cast p1, Lcom/samsung/android/app/music/model/contents/TrackDetailModel;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetailGetter$requestTrackDetailInternal$1;->a(Lcom/samsung/android/app/music/model/contents/TrackDetailModel;)V

    return-void
.end method
