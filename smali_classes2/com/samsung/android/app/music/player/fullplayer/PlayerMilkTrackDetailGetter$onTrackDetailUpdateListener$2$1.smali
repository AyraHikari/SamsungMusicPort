.class public final Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetailGetter$onTrackDetailUpdateListener$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetailGetter$OnTrackDetailUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetailGetter$onTrackDetailUpdateListener$2;->invoke()Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetailGetter$onTrackDetailUpdateListener$2$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetailGetter$onTrackDetailUpdateListener$2;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetailGetter$onTrackDetailUpdateListener$2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 26
    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetailGetter$onTrackDetailUpdateListener$2$1;->a:Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetailGetter$onTrackDetailUpdateListener$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail;)V
    .locals 1

    const-string v0, "trackDetail"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetailGetter$onTrackDetailUpdateListener$2$1;->a:Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetailGetter$onTrackDetailUpdateListener$2;

    iget-object p1, p1, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetailGetter$onTrackDetailUpdateListener$2;->this$0:Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetailGetter;

    invoke-static {p1}, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetailGetter;->a(Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetailGetter;)Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController;->a()V

    :cond_0
    return-void
.end method
