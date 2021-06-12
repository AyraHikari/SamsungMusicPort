.class final Lcom/samsung/android/app/music/player/SeekController$viewUpdater$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/player/SeekController;-><init>(Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;Landroid/view/View;Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/player/SeekController;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/player/SeekController;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/player/SeekController$viewUpdater$1;->a:Lcom/samsung/android/app/music/player/SeekController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    const-string v0, "SeekController"

    .line 113
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSeekBarVisibility : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/music/player/SeekController$viewUpdater$1;->a:Lcom/samsung/android/app/music/player/SeekController;

    invoke-static {v2}, Lcom/samsung/android/app/music/player/SeekController;->h(Lcom/samsung/android/app/music/player/SeekController;)Landroid/widget/TextView;

    move-result-object v2

    const-string v3, "artist"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/widget/TextView;->getBottom()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/music/player/SeekController$viewUpdater$1;->a:Lcom/samsung/android/app/music/player/SeekController;

    invoke-static {v2}, Lcom/samsung/android/app/music/player/SeekController;->d(Lcom/samsung/android/app/music/player/SeekController;)Landroid/widget/SeekBar;

    move-result-object v2

    const-string v3, "seekBar"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getTop()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/samsung/android/app/music/player/SeekController$viewUpdater$1;->a:Lcom/samsung/android/app/music/player/SeekController;

    invoke-static {v0}, Lcom/samsung/android/app/music/player/SeekController;->h(Lcom/samsung/android/app/music/player/SeekController;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "artist"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/TextView;->getBottom()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/app/music/player/SeekController$viewUpdater$1;->a:Lcom/samsung/android/app/music/player/SeekController;

    invoke-static {v1}, Lcom/samsung/android/app/music/player/SeekController;->d(Lcom/samsung/android/app/music/player/SeekController;)Landroid/widget/SeekBar;

    move-result-object v1

    const-string v2, "seekBar"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getTop()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 115
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/app/music/player/SeekController$viewUpdater$1;->a:Lcom/samsung/android/app/music/player/SeekController;

    invoke-static {v1}, Lcom/samsung/android/app/music/player/SeekController;->d(Lcom/samsung/android/app/music/player/SeekController;)Landroid/widget/SeekBar;

    move-result-object v1

    const-string v2, "seekBar"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 116
    iget-object v1, p0, Lcom/samsung/android/app/music/player/SeekController$viewUpdater$1;->a:Lcom/samsung/android/app/music/player/SeekController;

    invoke-static {v1}, Lcom/samsung/android/app/music/player/SeekController;->i(Lcom/samsung/android/app/music/player/SeekController;)Landroid/support/constraint/Group;

    move-result-object v1

    const-string v2, "timeGroup"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/support/constraint/Group;->setVisibility(I)V

    return-void
.end method
