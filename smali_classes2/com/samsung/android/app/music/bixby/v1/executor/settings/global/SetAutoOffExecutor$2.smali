.class Lcom/samsung/android/app/music/bixby/v1/executor/settings/global/SetAutoOffExecutor$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/bixby/v1/executor/settings/global/SetAutoOffExecutor;->execute(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/samsung/android/app/music/bixby/v1/executor/settings/global/SetAutoOffExecutor;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/bixby/v1/executor/settings/global/SetAutoOffExecutor;II)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/settings/global/SetAutoOffExecutor$2;->c:Lcom/samsung/android/app/music/bixby/v1/executor/settings/global/SetAutoOffExecutor;

    iput p2, p0, Lcom/samsung/android/app/music/bixby/v1/executor/settings/global/SetAutoOffExecutor$2;->a:I

    iput p3, p0, Lcom/samsung/android/app/music/bixby/v1/executor/settings/global/SetAutoOffExecutor$2;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 106
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/settings/global/SetAutoOffExecutor$2;->c:Lcom/samsung/android/app/music/bixby/v1/executor/settings/global/SetAutoOffExecutor;

    invoke-static {v0}, Lcom/samsung/android/app/music/bixby/v1/executor/settings/global/SetAutoOffExecutor;->a(Lcom/samsung/android/app/music/bixby/v1/executor/settings/global/SetAutoOffExecutor;)Lcom/samsung/android/app/music/settings/AutoOffControllable;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/settings/global/SetAutoOffExecutor$2;->a:I

    iget v2, p0, Lcom/samsung/android/app/music/bixby/v1/executor/settings/global/SetAutoOffExecutor$2;->b:I

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/app/music/settings/AutoOffControllable;->a(II)V

    .line 107
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/settings/global/SetAutoOffExecutor$2;->c:Lcom/samsung/android/app/music/bixby/v1/executor/settings/global/SetAutoOffExecutor;

    invoke-static {v0}, Lcom/samsung/android/app/music/bixby/v1/executor/settings/global/SetAutoOffExecutor;->b(Lcom/samsung/android/app/music/bixby/v1/executor/settings/global/SetAutoOffExecutor;)Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;

    iget-object v2, p0, Lcom/samsung/android/app/music/bixby/v1/executor/settings/global/SetAutoOffExecutor$2;->c:Lcom/samsung/android/app/music/bixby/v1/executor/settings/global/SetAutoOffExecutor;

    invoke-static {v2}, Lcom/samsung/android/app/music/bixby/v1/executor/settings/global/SetAutoOffExecutor;->c(Lcom/samsung/android/app/music/bixby/v1/executor/settings/global/SetAutoOffExecutor;)Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v3, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;-><init>(ZLcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;)V

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;)V

    return-void
.end method
