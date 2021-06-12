.class public interface abstract Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager$OnUserConfirmListener;
    }
.end annotation


# virtual methods
.method public varargs abstract addCommandExecutor(Ljava/lang/String;[Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # [Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;)V
    .param p1    # Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract requestUserConfirm(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager$OnUserConfirmListener;)V
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
.end method

.method public abstract setNextCommand(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;)V
    .param p1    # Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method
