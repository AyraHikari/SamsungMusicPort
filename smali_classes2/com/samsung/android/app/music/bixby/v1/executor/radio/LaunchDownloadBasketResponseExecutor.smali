.class public Lcom/samsung/android/app/music/bixby/v1/executor/radio/LaunchDownloadBasketResponseExecutor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;


# instance fields
.field private final a:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;)V
    .locals 0
    .param p1    # Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/radio/LaunchDownloadBasketResponseExecutor;->a:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;

    return-void
.end method


# virtual methods
.method public execute(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;)Z
    .locals 3
    .param p1    # Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "LaunchDownloadBasketResponseExecutor"

    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "execute() - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "DOWNLOAD_BASKET"

    .line 30
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 32
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;->getState()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "DownloadBasket"

    .line 34
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 35
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;-><init>(Ljava/lang/String;)V

    const-string p1, "ExceedMaxNumber"

    const-string v1, "Valid"

    const-string v2, "no"

    .line 36
    invoke-virtual {v0, p1, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x1

    if-eqz v0, :cond_1

    .line 40
    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/radio/LaunchDownloadBasketResponseExecutor;->a:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;

    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;

    invoke-direct {v2, p1, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;-><init>(ZLcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;)V

    invoke-interface {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;)V

    goto :goto_0

    .line 42
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/radio/LaunchDownloadBasketResponseExecutor;->a:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;

    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;

    invoke-direct {v1, p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;-><init>(Z)V

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;)V

    :goto_0
    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method
