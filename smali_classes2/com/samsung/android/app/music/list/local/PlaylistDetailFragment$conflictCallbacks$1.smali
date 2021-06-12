.class public final Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$conflictCallbacks$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1460
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$conflictCallbacks$1;->a:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 1473
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result p1

    if-lez p1, :cond_0

    .line 1474
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance p2, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$conflictCallbacks$1$onLoadFinished$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$conflictCallbacks$1$onLoadFinished$1;-><init>(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$conflictCallbacks$1;)V

    check-cast p2, Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/content/Loader<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .line 1462
    new-instance p1, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;

    .line 1463
    iget-object p2, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$conflictCallbacks$1;->a:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/FragmentExtensionKt;->a(Landroid/support/v4/app/Fragment;)Landroid/content/Context;

    move-result-object v1

    .line 1464
    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists$Conflict;->a:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p1

    .line 1462
    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    check-cast p1, Landroid/support/v4/content/Loader;

    return-object p1
.end method

.method public synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 1460
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$conflictCallbacks$1;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
