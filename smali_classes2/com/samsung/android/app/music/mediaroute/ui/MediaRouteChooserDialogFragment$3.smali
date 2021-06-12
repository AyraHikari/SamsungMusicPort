.class Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteChooserDialogFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteChooserDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
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
.field final synthetic a:Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteChooserDialogFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteChooserDialogFragment;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteChooserDialogFragment$3;->a:Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteChooserDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .locals 1
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

    .line 100
    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result p1

    const v0, 0x7f130025

    if-ne p1, v0, :cond_0

    const-string p1, "SMUSIC-UI-PlayerCast"

    const-string v0, "[CastDeviceListDialog] onLoadFinished"

    .line 102
    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    iget-object p1, p0, Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteChooserDialogFragment$3;->a:Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteChooserDialogFragment;

    invoke-static {p1}, Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteChooserDialogFragment;->a(Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteChooserDialogFragment;)Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteListAdapter;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteListAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

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

    const p2, 0x7f130025

    if-ne p1, p2, :cond_0

    .line 90
    new-instance p1, Landroid/support/v4/content/CursorLoader;

    iget-object p2, p0, Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteChooserDialogFragment$3;->a:Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteChooserDialogFragment;

    invoke-virtual {p2}, Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteChooserDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/app/music/mediaroute/MediaRouteContentProvider;->a:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    .line 94
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loader id not recognized: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 85
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteChooserDialogFragment$3;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .line 109
    iget-object p1, p0, Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteChooserDialogFragment$3;->a:Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteChooserDialogFragment;

    invoke-static {p1}, Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteChooserDialogFragment;->a(Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteChooserDialogFragment;)Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteListAdapter;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteListAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    return-void
.end method
