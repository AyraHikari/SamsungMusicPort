.class final Lcom/samsung/android/app/music/player/SeekController$seekChangeController$2;
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
        "Lcom/samsung/android/app/music/player/SeekController$OnSeekBarChangeListenerImpl;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $playerController:Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

.field final synthetic this$0:Lcom/samsung/android/app/music/player/SeekController;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/player/SeekController;Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/player/SeekController$seekChangeController$2;->this$0:Lcom/samsung/android/app/music/player/SeekController;

    iput-object p2, p0, Lcom/samsung/android/app/music/player/SeekController$seekChangeController$2;->$playerController:Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/samsung/android/app/music/player/SeekController$OnSeekBarChangeListenerImpl;
    .locals 5

    .line 98
    new-instance v0, Lcom/samsung/android/app/music/player/SeekController$OnSeekBarChangeListenerImpl;

    .line 99
    iget-object v1, p0, Lcom/samsung/android/app/music/player/SeekController$seekChangeController$2;->this$0:Lcom/samsung/android/app/music/player/SeekController;

    invoke-static {v1}, Lcom/samsung/android/app/music/player/SeekController;->g(Lcom/samsung/android/app/music/player/SeekController;)Lcom/samsung/android/app/music/player/SeekController$UiUpdater;

    move-result-object v1

    .line 100
    iget-object v2, p0, Lcom/samsung/android/app/music/player/SeekController$seekChangeController$2;->this$0:Lcom/samsung/android/app/music/player/SeekController;

    invoke-static {v2}, Lcom/samsung/android/app/music/player/SeekController;->f(Lcom/samsung/android/app/music/player/SeekController;)Lcom/samsung/android/app/music/widget/progress/MusicProgressBarScrubbing;

    move-result-object v2

    .line 101
    iget-object v3, p0, Lcom/samsung/android/app/music/player/SeekController$seekChangeController$2;->this$0:Lcom/samsung/android/app/music/player/SeekController;

    invoke-static {v3}, Lcom/samsung/android/app/music/player/SeekController;->e(Lcom/samsung/android/app/music/player/SeekController;)Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;

    move-result-object v3

    .line 102
    iget-object v4, p0, Lcom/samsung/android/app/music/player/SeekController$seekChangeController$2;->$playerController:Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    .line 98
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/app/music/player/SeekController$OnSeekBarChangeListenerImpl;-><init>(Lcom/samsung/android/app/music/player/SeekController$UiUpdater;Lcom/samsung/android/app/music/widget/progress/MusicProgressBarScrubbing;Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 67
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/SeekController$seekChangeController$2;->invoke()Lcom/samsung/android/app/music/player/SeekController$OnSeekBarChangeListenerImpl;

    move-result-object v0

    return-object v0
.end method
