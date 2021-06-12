.class public final Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;


# static fields
.field private static final a:Ljava/lang/String; = "CommandExecutorManagerImpl"


# instance fields
.field private final b:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;

.field private final c:I

.field private d:[Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;

.field private e:Z

.field private f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(I)V
    .locals 3

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CommandExecutorManagerImpl() - commandExecutorType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyLog;->debugOnly(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;->getInstance()Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;->b:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;

    .line 39
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;->c:I

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 80
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;->e:Z

    return v0
.end method

.method public varargs addCommandExecutor(Ljava/lang/String;[Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # [Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 45
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addCommandExecutor() - screenState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mCommandExecutorType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", executors: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyLog;->debugOnly(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;->f:Ljava/lang/String;

    .line 49
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;->d:[Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;

    if-nez p1, :cond_0

    .line 50
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;->d:[Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;

    goto :goto_0

    .line 52
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 53
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;->d:[Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;

    invoke-static {p1, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 54
    invoke-static {p1, p2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 56
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;->d:[Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;

    .line 57
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;->d:[Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;->d:[Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;

    .line 59
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;->b:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;->c:I

    invoke-virtual {p1, v0, p0, p2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;->addCommandExecutor(ILcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;[Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;)V

    return-void
.end method

.method b()V
    .locals 3

    .line 84
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelCommand() - mScreenState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mCommandExecutorType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyLog;->debugOnly(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;->b:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;

    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;->sendResponse(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;)V

    return-void
.end method

.method c()V
    .locals 3

    .line 91
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enable() - mScreenState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mCommandExecutorType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;->e:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyLog;->debugOnly(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;->e:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 97
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;->e:Z

    .line 99
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;->b:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;->setCurrentScreenState(Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;->b:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;->getNextCommand()Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 103
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;->b:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;->executeCommand(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;->b:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;->clearNextCommand()V

    :cond_1
    return-void
.end method

.method d()V
    .locals 3

    .line 110
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disable() - mScreenState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mCommandExecutorType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;->e:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyLog;->debugOnly(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;->e:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 114
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;->e:Z

    :cond_0
    return-void
.end method

.method e()V
    .locals 3

    .line 119
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "destroy() - mScreenState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mCommandExecutorType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mCommandExecutors: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;->d:[Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;

    if-nez v2, :cond_0

    const-string v2, "null"

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;->d:[Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;

    array-length v2, v2

    .line 122
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 119
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyLog;->debugOnly(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;->d:[Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;

    if-nez v0, :cond_1

    return-void

    .line 126
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;->b:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;->c:I

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;->d:[Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;

    invoke-virtual {v0, v1, p0, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;->removeCommandExecutor(ILcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;[Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;)V

    const/4 v0, 0x0

    .line 127
    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;->d:[Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;

    return-void
.end method

.method public onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;)V
    .locals 1
    .param p1    # Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 64
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;->b:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;->sendResponse(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;)V

    return-void
.end method

.method public requestUserConfirm(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager$OnUserConfirmListener;)V
    .locals 1
    .param p1    # Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager$OnUserConfirmListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 76
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;->b:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;->requestUserConfirm(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager$OnUserConfirmListener;)V

    return-void
.end method

.method public setNextCommand(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;)V
    .locals 3
    .param p1    # Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 69
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setNextCommand() - command: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyLog;->debugOnly(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;->b:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;->setNextCommand(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;)V

    return-void
.end method
