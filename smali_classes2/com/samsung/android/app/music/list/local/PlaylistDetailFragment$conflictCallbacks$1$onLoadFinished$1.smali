.class final Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$conflictCallbacks$1$onLoadFinished$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$conflictCallbacks$1;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$conflictCallbacks$1;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$conflictCallbacks$1;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$conflictCallbacks$1$onLoadFinished$1;->a:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$conflictCallbacks$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1475
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$conflictCallbacks$1$onLoadFinished$1;->a:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$conflictCallbacks$1;

    iget-object v0, v0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$conflictCallbacks$1;->a:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    .line 1553
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->isResumed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1476
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$conflictCallbacks$1$onLoadFinished$1;->a:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$conflictCallbacks$1;

    iget-object v0, v0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$conflictCallbacks$1;->a:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "conflict"

    .line 1477
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1478
    new-instance v1, Lcom/samsung/android/app/music/list/playlist/ConflictDialog;

    invoke-direct {v1}, Lcom/samsung/android/app/music/list/playlist/ConflictDialog;-><init>()V

    .line 1480
    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$conflictCallbacks$1$onLoadFinished$1;->a:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$conflictCallbacks$1;

    iget-object v2, v2, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$conflictCallbacks$1;->a:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    check-cast v2, Landroid/support/v4/app/Fragment;

    const/16 v3, 0x71

    .line 1479
    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/music/list/playlist/ConflictDialog;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    const-string v2, "conflict"

    .line 1483
    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/app/music/list/playlist/ConflictDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 1556
    :cond_0
    new-instance v1, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$conflictCallbacks$1$onLoadFinished$1$$special$$inlined$doOnResume$1;

    invoke-direct {v1, v0, p0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$conflictCallbacks$1$onLoadFinished$1$$special$$inlined$doOnResume$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$conflictCallbacks$1$onLoadFinished$1;)V

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->addOnResumeLifeCycleCallback(Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;)V

    :cond_1
    :goto_0
    return-void
.end method
