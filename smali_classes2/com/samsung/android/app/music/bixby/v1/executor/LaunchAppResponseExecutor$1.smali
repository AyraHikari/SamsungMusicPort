.class Lcom/samsung/android/app/music/bixby/v1/executor/LaunchAppResponseExecutor$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager$OnUserConfirmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/bixby/v1/executor/LaunchAppResponseExecutor;->a(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/bixby/v1/executor/LaunchAppResponseExecutor;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/bixby/v1/executor/LaunchAppResponseExecutor;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/LaunchAppResponseExecutor$1;->a:Lcom/samsung/android/app/music/bixby/v1/executor/LaunchAppResponseExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPositiveReceived()V
    .locals 3

    .line 109
    invoke-static {}, Lcom/samsung/android/app/music/bixby/v1/executor/LaunchAppResponseExecutor;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onPositiveReceived()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 110
    invoke-static {v0}, Lcom/samsung/android/app/music/settings/MilkSettings;->c(Z)V

    .line 111
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/LaunchAppResponseExecutor$1;->a:Lcom/samsung/android/app/music/bixby/v1/executor/LaunchAppResponseExecutor;

    invoke-static {v0}, Lcom/samsung/android/app/music/bixby/v1/executor/LaunchAppResponseExecutor;->a(Lcom/samsung/android/app/music/bixby/v1/executor/LaunchAppResponseExecutor;)Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;-><init>(Z)V

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;)V

    return-void
.end method
