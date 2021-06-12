.class final Lcom/samsung/android/app/music/player/SeekController$uiUpdater$2;
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
        "Lcom/samsung/android/app/music/player/SeekController$UiUpdater;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $playerController:Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

.field final synthetic this$0:Lcom/samsung/android/app/music/player/SeekController;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/player/SeekController;Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/player/SeekController$uiUpdater$2;->this$0:Lcom/samsung/android/app/music/player/SeekController;

    iput-object p2, p0, Lcom/samsung/android/app/music/player/SeekController$uiUpdater$2;->$playerController:Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/samsung/android/app/music/player/SeekController$UiUpdater;
    .locals 8

    .line 83
    new-instance v7, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;

    .line 84
    iget-object v0, p0, Lcom/samsung/android/app/music/player/SeekController$uiUpdater$2;->this$0:Lcom/samsung/android/app/music/player/SeekController;

    invoke-static {v0}, Lcom/samsung/android/app/music/player/SeekController;->c(Lcom/samsung/android/app/music/player/SeekController;)Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/samsung/android/app/music/player/SeekController$uiUpdater$2;->this$0:Lcom/samsung/android/app/music/player/SeekController;

    invoke-static {v0}, Lcom/samsung/android/app/music/player/SeekController;->d(Lcom/samsung/android/app/music/player/SeekController;)Landroid/widget/SeekBar;

    move-result-object v2

    const-string v0, "seekBar"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/music/player/SeekController$uiUpdater$2;->this$0:Lcom/samsung/android/app/music/player/SeekController;

    invoke-static {v0}, Lcom/samsung/android/app/music/player/SeekController;->b(Lcom/samsung/android/app/music/player/SeekController;)Landroid/widget/TextView;

    move-result-object v3

    const-string v0, "currentTimeView"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/music/player/SeekController$uiUpdater$2;->this$0:Lcom/samsung/android/app/music/player/SeekController;

    invoke-static {v0}, Lcom/samsung/android/app/music/player/SeekController;->a(Lcom/samsung/android/app/music/player/SeekController;)Landroid/widget/TextView;

    move-result-object v4

    const-string v0, "durationView"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    iget-object v5, p0, Lcom/samsung/android/app/music/player/SeekController$uiUpdater$2;->$playerController:Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    iget-object v0, p0, Lcom/samsung/android/app/music/player/SeekController$uiUpdater$2;->this$0:Lcom/samsung/android/app/music/player/SeekController;

    invoke-static {v0}, Lcom/samsung/android/app/music/player/SeekController;->e(Lcom/samsung/android/app/music/player/SeekController;)Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;

    move-result-object v6

    move-object v0, v7

    .line 83
    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;-><init>(Landroid/content/Context;Landroid/widget/SeekBar;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;)V

    return-object v7
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 67
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/SeekController$uiUpdater$2;->invoke()Lcom/samsung/android/app/music/player/SeekController$UiUpdater;

    move-result-object v0

    return-object v0
.end method
