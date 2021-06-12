.class final Lcom/samsung/android/app/music/player/SeekController$seekTouchController$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/player/SeekController;-><init>(Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;Landroid/view/View;Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/samsung/android/app/music/player/SeekController$SeekTouchController;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/player/SeekController;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/player/SeekController;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/player/SeekController$seekTouchController$2;->this$0:Lcom/samsung/android/app/music/player/SeekController;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/samsung/android/app/music/player/SeekController$SeekTouchController;
    .locals 3

    .line 92
    new-instance v0, Lcom/samsung/android/app/music/player/SeekController$SeekTouchController;

    .line 93
    iget-object v1, p0, Lcom/samsung/android/app/music/player/SeekController$seekTouchController$2;->this$0:Lcom/samsung/android/app/music/player/SeekController;

    invoke-static {v1}, Lcom/samsung/android/app/music/player/SeekController;->f(Lcom/samsung/android/app/music/player/SeekController;)Lcom/samsung/android/app/music/widget/progress/MusicProgressBarScrubbing;

    move-result-object v1

    .line 94
    iget-object v2, p0, Lcom/samsung/android/app/music/player/SeekController$seekTouchController$2;->this$0:Lcom/samsung/android/app/music/player/SeekController;

    invoke-static {v2}, Lcom/samsung/android/app/music/player/SeekController;->e(Lcom/samsung/android/app/music/player/SeekController;)Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;

    move-result-object v2

    .line 92
    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/music/player/SeekController$SeekTouchController;-><init>(Lcom/samsung/android/app/music/widget/progress/MusicProgressBarScrubbing;Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 67
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/SeekController$seekTouchController$2;->invoke()Lcom/samsung/android/app/music/player/SeekController$SeekTouchController;

    move-result-object v0

    return-object v0
.end method
