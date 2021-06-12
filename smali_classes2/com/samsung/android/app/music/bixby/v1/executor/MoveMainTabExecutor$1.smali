.class Lcom/samsung/android/app/music/bixby/v1/executor/MoveMainTabExecutor$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager$OnUserConfirmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/bixby/v1/executor/MoveMainTabExecutor;->execute(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;

.field final synthetic b:Lcom/samsung/android/app/music/bixby/v1/executor/MoveMainTabExecutor;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/bixby/v1/executor/MoveMainTabExecutor;Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/MoveMainTabExecutor$1;->b:Lcom/samsung/android/app/music/bixby/v1/executor/MoveMainTabExecutor;

    iput-object p2, p0, Lcom/samsung/android/app/music/bixby/v1/executor/MoveMainTabExecutor$1;->a:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPositiveReceived()V
    .locals 2

    .line 65
    invoke-static {}, Lcom/samsung/android/app/music/bixby/v1/executor/MoveMainTabExecutor;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onPositiveReceived()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 66
    invoke-static {v0}, Lcom/samsung/android/app/music/settings/MilkSettings;->c(Z)V

    .line 67
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/MoveMainTabExecutor$1;->b:Lcom/samsung/android/app/music/bixby/v1/executor/MoveMainTabExecutor;

    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/MoveMainTabExecutor$1;->a:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/bixby/v1/executor/MoveMainTabExecutor;->a(Lcom/samsung/android/app/music/bixby/v1/executor/MoveMainTabExecutor;Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;)V

    return-void
.end method
