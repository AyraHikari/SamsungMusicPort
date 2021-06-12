.class Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 66
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;->access$000(Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;)Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController$OnControllerClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;->access$000(Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;)Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController$OnControllerClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController$OnControllerClickListener;->onClick(Landroid/view/View;)V

    .line 69
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 70
    sget v0, Lcom/samsung/android/app/musiclibrary/R$id;->prev_btn:I

    if-ne p1, v0, :cond_1

    .line 71
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;->access$100(Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;)Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;->d()V

    .line 72
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;->access$200(Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;)Landroid/content/Context;

    move-result-object p1

    const-string v0, "GSOM"

    const-string v1, "Prev Next"

    invoke-static {p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 74
    :cond_1
    sget v0, Lcom/samsung/android/app/musiclibrary/R$id;->next_btn:I

    const/4 v1, 0x1

    if-ne p1, v0, :cond_2

    .line 75
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;->access$100(Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;)Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;->e()V

    .line 76
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;->access$300(Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 77
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;

    .line 78
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;->access$200(Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;)Landroid/content/Context;

    move-result-object p1

    const-string v0, "GSOM"

    const-string v2, "Prev Next"

    invoke-static {p1, v0, v2}, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;

    invoke-static {p1, v1}, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;->access$302(Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;Z)Z

    goto :goto_0

    .line 82
    :cond_2
    sget v0, Lcom/samsung/android/app/musiclibrary/R$id;->play_pause_btn:I

    if-ne p1, v0, :cond_3

    .line 83
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;->access$100(Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;)Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;->c()V

    .line 84
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;->access$300(Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 85
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;

    .line 86
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;->access$200(Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;)Landroid/content/Context;

    move-result-object p1

    const-string v0, "GSOM"

    const-string v2, "Play Pause"

    invoke-static {p1, v0, v2}, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;

    invoke-static {p1, v1}, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;->access$302(Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;Z)Z

    :cond_3
    :goto_0
    return-void
.end method
