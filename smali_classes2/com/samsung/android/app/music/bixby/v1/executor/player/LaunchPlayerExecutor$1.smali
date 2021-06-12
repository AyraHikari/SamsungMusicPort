.class Lcom/samsung/android/app/music/bixby/v1/executor/player/LaunchPlayerExecutor$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/player/PlayerSceneStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/bixby/v1/executor/player/LaunchPlayerExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/bixby/v1/executor/player/LaunchPlayerExecutor;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/bixby/v1/executor/player/LaunchPlayerExecutor;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/player/LaunchPlayerExecutor$1;->a:Lcom/samsung/android/app/music/bixby/v1/executor/player/LaunchPlayerExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/player/LaunchPlayerExecutor$1;->a:Lcom/samsung/android/app/music/bixby/v1/executor/player/LaunchPlayerExecutor;

    invoke-static {v0}, Lcom/samsung/android/app/music/bixby/v1/executor/player/LaunchPlayerExecutor;->a(Lcom/samsung/android/app/music/bixby/v1/executor/player/LaunchPlayerExecutor;)Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;

    move-result-object v0

    if-nez v0, :cond_0

    .line 90
    invoke-static {}, Lcom/samsung/android/app/music/bixby/v1/executor/player/LaunchPlayerExecutor;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "execute() - Command is null"

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/16 v0, 0x8

    if-ne p1, v0, :cond_1

    .line 94
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/player/LaunchPlayerExecutor$1;->a:Lcom/samsung/android/app/music/bixby/v1/executor/player/LaunchPlayerExecutor;

    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/player/LaunchPlayerExecutor$1;->a:Lcom/samsung/android/app/music/bixby/v1/executor/player/LaunchPlayerExecutor;

    invoke-static {v0}, Lcom/samsung/android/app/music/bixby/v1/executor/player/LaunchPlayerExecutor;->a(Lcom/samsung/android/app/music/bixby/v1/executor/player/LaunchPlayerExecutor;)Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/bixby/v1/executor/player/LaunchPlayerExecutor;->a(Lcom/samsung/android/app/music/bixby/v1/executor/player/LaunchPlayerExecutor;Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;)V

    .line 95
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/player/LaunchPlayerExecutor$1;->a:Lcom/samsung/android/app/music/bixby/v1/executor/player/LaunchPlayerExecutor;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/bixby/v1/executor/player/LaunchPlayerExecutor;->b(Lcom/samsung/android/app/music/bixby/v1/executor/player/LaunchPlayerExecutor;Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;)Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;

    .line 96
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/player/LaunchPlayerExecutor$1;->a:Lcom/samsung/android/app/music/bixby/v1/executor/player/LaunchPlayerExecutor;

    invoke-static {p1}, Lcom/samsung/android/app/music/bixby/v1/executor/player/LaunchPlayerExecutor;->b(Lcom/samsung/android/app/music/bixby/v1/executor/player/LaunchPlayerExecutor;)Lcom/samsung/android/app/music/player/ISlidePlayer;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/samsung/android/app/music/player/ISlidePlayer;->removePlayerSceneStateListener(Lcom/samsung/android/app/music/player/PlayerSceneStateListener;)V

    :cond_1
    return-void
.end method
