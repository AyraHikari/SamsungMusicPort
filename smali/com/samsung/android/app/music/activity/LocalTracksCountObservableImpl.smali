.class public Lcom/samsung/android/app/music/activity/LocalTracksCountObservableImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
.implements Lcom/samsung/android/app/music/list/common/LocalTracksCountObservable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/activity/LocalTracksCountObservableImpl$OnLocalTracksCountChangedObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks<",
        "Landroid/database/Cursor;",
        ">;",
        "Lcom/samsung/android/app/music/list/common/LocalTracksCountObservable;"
    }
.end annotation


# instance fields
.field private final a:Landroid/support/v4/app/FragmentActivity;

.field private b:I

.field private final c:Lcom/samsung/android/app/music/activity/LocalTracksCountObservableImpl$OnLocalTracksCountChangedObserver;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;)V
    .locals 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput v0, p0, Lcom/samsung/android/app/music/activity/LocalTracksCountObservableImpl;->b:I

    .line 23
    new-instance v0, Lcom/samsung/android/app/music/activity/LocalTracksCountObservableImpl$OnLocalTracksCountChangedObserver;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/activity/LocalTracksCountObservableImpl$OnLocalTracksCountChangedObserver;-><init>(Lcom/samsung/android/app/music/activity/LocalTracksCountObservableImpl$1;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/activity/LocalTracksCountObservableImpl;->c:Lcom/samsung/android/app/music/activity/LocalTracksCountObservableImpl$OnLocalTracksCountChangedObserver;

    .line 27
    iput-object p1, p0, Lcom/samsung/android/app/music/activity/LocalTracksCountObservableImpl;->a:Landroid/support/v4/app/FragmentActivity;

    .line 28
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object p1

    const/16 v0, 0x309

    invoke-virtual {p1, v0, v1, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

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

    .line 59
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 60
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    .line 61
    iget p2, p0, Lcom/samsung/android/app/music/activity/LocalTracksCountObservableImpl;->b:I

    if-eq p2, p1, :cond_0

    .line 62
    iput p1, p0, Lcom/samsung/android/app/music/activity/LocalTracksCountObservableImpl;->b:I

    .line 63
    iget-object p1, p0, Lcom/samsung/android/app/music/activity/LocalTracksCountObservableImpl;->c:Lcom/samsung/android/app/music/activity/LocalTracksCountObservableImpl$OnLocalTracksCountChangedObserver;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/activity/LocalTracksCountObservableImpl$OnLocalTracksCountChangedObserver;->a()V

    :cond_0
    return-void
.end method

.method public getLocalTracksCount()I
    .locals 1

    .line 42
    iget v0, p0, Lcom/samsung/android/app/music/activity/LocalTracksCountObservableImpl;->b:I

    return v0
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

    .line 52
    new-instance p1, Lcom/samsung/android/app/musiclibrary/ui/list/query/AllTrackQueryArgs;

    invoke-direct {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/query/AllTrackQueryArgs;-><init>()V

    .line 53
    new-instance p2, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;

    iget-object v0, p0, Lcom/samsung/android/app/music/activity/LocalTracksCountObservableImpl;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p1, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->uri:Landroid/net/Uri;

    const-string v0, "count(*)"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selection:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p2

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object p2
.end method

.method public synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 16
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/activity/LocalTracksCountObservableImpl;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

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

.method public setOnLocalTracksCountChangedListener(Lcom/samsung/android/app/music/list/common/LocalTracksCountObservable$OnLocalTracksCountChangedListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 34
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/LocalTracksCountObservableImpl;->c:Lcom/samsung/android/app/music/activity/LocalTracksCountObservableImpl$OnLocalTracksCountChangedObserver;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/activity/LocalTracksCountObservableImpl$OnLocalTracksCountChangedObserver;->a(Lcom/samsung/android/app/music/list/common/LocalTracksCountObservable$OnLocalTracksCountChangedListener;)V

    goto :goto_0

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/LocalTracksCountObservableImpl;->c:Lcom/samsung/android/app/music/activity/LocalTracksCountObservableImpl$OnLocalTracksCountChangedObserver;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/activity/LocalTracksCountObservableImpl$OnLocalTracksCountChangedObserver;->b(Lcom/samsung/android/app/music/list/common/LocalTracksCountObservable$OnLocalTracksCountChangedListener;)V

    :goto_0
    return-void
.end method

.method public updateLocalTrackCount()V
    .locals 3

    .line 47
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/LocalTracksCountObservableImpl;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/16 v1, 0x309

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    return-void
.end method
