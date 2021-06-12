.class final Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistPlayableImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/Playable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/PlaylistFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PlaylistPlayableImpl"
.end annotation


# instance fields
.field private final a:Lcom/samsung/android/app/music/list/local/PlaylistFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/list/local/PlaylistFragment;)V
    .locals 1

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 749
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistPlayableImpl;->a:Lcom/samsung/android/app/music/list/local/PlaylistFragment;

    return-void
.end method


# virtual methods
.method public l_()V
    .locals 3

    const-string v0, "UiList"

    .line 752
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " PlaylistPlayableImpl play"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    new-instance v0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistPlayTask;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistPlayableImpl;->a:Lcom/samsung/android/app/music/list/local/PlaylistFragment;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistPlayTask;-><init>(Lcom/samsung/android/app/music/list/local/PlaylistFragment;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Lkotlin/Unit;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistPlayTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
