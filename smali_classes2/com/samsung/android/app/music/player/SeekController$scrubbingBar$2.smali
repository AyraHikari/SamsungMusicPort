.class final Lcom/samsung/android/app/music/player/SeekController$scrubbingBar$2;
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
        "Lcom/samsung/android/app/music/widget/progress/MusicProgressBarScrubbing;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $enableScrubbing:Z

.field final synthetic $view:Landroid/view/View;

.field final synthetic this$0:Lcom/samsung/android/app/music/player/SeekController;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/player/SeekController;ZLandroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/player/SeekController$scrubbingBar$2;->this$0:Lcom/samsung/android/app/music/player/SeekController;

    iput-boolean p2, p0, Lcom/samsung/android/app/music/player/SeekController$scrubbingBar$2;->$enableScrubbing:Z

    iput-object p3, p0, Lcom/samsung/android/app/music/player/SeekController$scrubbingBar$2;->$view:Landroid/view/View;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/samsung/android/app/music/widget/progress/MusicProgressBarScrubbing;
    .locals 3

    .line 89
    iget-boolean v0, p0, Lcom/samsung/android/app/music/player/SeekController$scrubbingBar$2;->$enableScrubbing:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/android/app/music/widget/progress/MusicProgressBarScrubbing;

    iget-object v1, p0, Lcom/samsung/android/app/music/player/SeekController$scrubbingBar$2;->this$0:Lcom/samsung/android/app/music/player/SeekController;

    invoke-static {v1}, Lcom/samsung/android/app/music/player/SeekController;->c(Lcom/samsung/android/app/music/player/SeekController;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/player/SeekController$scrubbingBar$2;->$view:Landroid/view/View;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/music/widget/progress/MusicProgressBarScrubbing;-><init>(Landroid/content/Context;Landroid/view/View;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 67
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/SeekController$scrubbingBar$2;->invoke()Lcom/samsung/android/app/music/widget/progress/MusicProgressBarScrubbing;

    move-result-object v0

    return-object v0
.end method
