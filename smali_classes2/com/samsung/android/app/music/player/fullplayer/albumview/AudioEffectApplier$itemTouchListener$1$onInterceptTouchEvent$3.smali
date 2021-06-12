.class final Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier$itemTouchListener$1$onInterceptTouchEvent$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier$itemTouchListener$1;->onInterceptTouchEvent(Landroid/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier$itemTouchListener$1;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier$itemTouchListener$1;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier$itemTouchListener$1$onInterceptTouchEvent$3;->a:Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier$itemTouchListener$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier$itemTouchListener$1$onInterceptTouchEvent$3;->a:Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier$itemTouchListener$1;

    iget-object v0, v0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier$itemTouchListener$1;->a:Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier;->a(Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier;Z)V

    .line 60
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier$itemTouchListener$1$onInterceptTouchEvent$3;->a:Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier$itemTouchListener$1;

    iget-object v0, v0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier$itemTouchListener$1;->a:Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier;

    invoke-static {v0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier;->d(Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier$itemTouchListener$1$onInterceptTouchEvent$3;->a:Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier$itemTouchListener$1;

    iget-object v0, v0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier$itemTouchListener$1;->a:Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier;

    invoke-static {v0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier;->e(Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier;)V

    :cond_0
    return-void
.end method
