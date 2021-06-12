.class public final Lcom/samsung/android/app/music/list/playlist/ConflictDialog$loaderCallbacks$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/playlist/ConflictDialog;-><init>()V
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
.field final synthetic this$0:Lcom/samsung/android/app/music/list/playlist/ConflictDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/playlist/ConflictDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 153
    iput-object p1, p0, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$loaderCallbacks$1;->this$0:Lcom/samsung/android/app/music/list/playlist/ConflictDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
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

    .line 157
    new-instance p1, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;

    .line 158
    iget-object p2, p0, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$loaderCallbacks$1;->this$0:Lcom/samsung/android/app/music/list/playlist/ConflictDialog;

    invoke-virtual {p2}, Lcom/samsung/android/app/music/list/playlist/ConflictDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    if-nez p2, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    const-string v0, "activity!!"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string p2, "activity!!.applicationContext"

    invoke-static {v1, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists$Conflict;->a:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p1

    .line 157
    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    check-cast p1, Landroid/support/v4/content/Loader;

    return-object p1
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
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

    .line 168
    iget-object p1, p0, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$loaderCallbacks$1;->this$0:Lcom/samsung/android/app/music/list/playlist/ConflictDialog;

    invoke-static {p1}, Lcom/samsung/android/app/music/list/playlist/ConflictDialog;->access$getAdapter$p(Lcom/samsung/android/app/music/list/playlist/ConflictDialog;)Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 169
    iget-object p1, p0, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$loaderCallbacks$1;->this$0:Lcom/samsung/android/app/music/list/playlist/ConflictDialog;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/playlist/ConflictDialog;->updatePositiveButton()V

    if-eqz p2, :cond_0

    .line 171
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    .line 173
    iget-object p1, p0, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$loaderCallbacks$1;->this$0:Lcom/samsung/android/app/music/list/playlist/ConflictDialog;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/playlist/ConflictDialog;->dismissAllowingStateLoss()V

    :cond_1
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 153
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$loaderCallbacks$1;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

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

    .line 178
    iget-object p1, p0, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$loaderCallbacks$1;->this$0:Lcom/samsung/android/app/music/list/playlist/ConflictDialog;

    invoke-static {p1}, Lcom/samsung/android/app/music/list/playlist/ConflictDialog;->access$getAdapter$p(Lcom/samsung/android/app/music/list/playlist/ConflictDialog;)Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    return-void
.end method
