.class final Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$onViewCreated$5;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$onViewCreated$5;->this$0:Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 72
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$onViewCreated$5;->invoke()V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 4

    const-string v0, "UiList-FT"

    .line 193
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shuffleAsyncTask status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$onViewCreated$5;->this$0:Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;

    invoke-static {v2}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;->f(Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;)Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$ShuffleAsyncTask;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$ShuffleAsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$onViewCreated$5;->this$0:Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;->f(Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;)Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$ShuffleAsyncTask;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$onViewCreated$5;->this$0:Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;->f(Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;)Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$ShuffleAsyncTask;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$ShuffleAsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_3

    .line 195
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$onViewCreated$5;->this$0:Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;

    new-instance v1, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$ShuffleAsyncTask;

    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$onViewCreated$5;->this$0:Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;

    invoke-direct {v1, v2}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$ShuffleAsyncTask;-><init>(Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;)V

    .line 196
    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v3, 0x0

    new-array v3, v3, [Lkotlin/Unit;

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$ShuffleAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 195
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;->a(Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$ShuffleAsyncTask;)V

    :cond_3
    return-void
.end method
