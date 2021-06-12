.class Lcom/samsung/android/app/music/list/local/QueueFragment$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/local/QueueFragment;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[J

.field final synthetic b:Lcom/samsung/android/app/music/list/local/QueueFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/QueueFragment;[J)V
    .locals 0

    .line 411
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/QueueFragment$4;->b:Lcom/samsung/android/app/music/list/local/QueueFragment;

    iput-object p2, p0, Lcom/samsung/android/app/music/list/local/QueueFragment$4;->a:[J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 414
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/QueueFragment$4;->b:Lcom/samsung/android/app/music/list/local/QueueFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/QueueFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "UiList"

    .line 415
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/QueueFragment$4;->b:Lcom/samsung/android/app/music/list/local/QueueFragment;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " onActivityResult() : getActivity() is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 419
    :cond_0
    new-instance v0, Lcom/samsung/android/app/music/util/task/AddToNowPlayingTask;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/QueueFragment$4;->b:Lcom/samsung/android/app/music/list/local/QueueFragment;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/local/QueueFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/QueueFragment$4;->a:[J

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/app/music/util/task/AddToNowPlayingTask;-><init>(Landroid/app/Activity;[JZ)V

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/util/task/AddToNowPlayingTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
