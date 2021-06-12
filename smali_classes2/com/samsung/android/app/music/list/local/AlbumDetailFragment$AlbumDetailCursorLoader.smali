.class final Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailCursorLoader;
.super Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AlbumDetailCursorLoader"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "queryArgs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 224
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;)V

    const/16 p1, 0x7d0

    int-to-long p1, p1

    .line 226
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailCursorLoader;->setUpdateThrottle(J)V

    return-void
.end method


# virtual methods
.method protected a()Landroid/database/Cursor;
    .locals 2

    .line 230
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;->onLoadInBackground()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;

    invoke-direct {v1, v0}, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;-><init>(Landroid/database/Cursor;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    check-cast v1, Landroid/database/Cursor;

    return-object v1
.end method

.method public synthetic onLoadInBackground()Ljava/lang/Object;
    .locals 1

    .line 223
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailCursorLoader;->a()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
