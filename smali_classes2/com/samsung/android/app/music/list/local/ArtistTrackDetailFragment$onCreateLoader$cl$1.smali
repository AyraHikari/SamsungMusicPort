.class public final Lcom/samsung/android/app/music/list/local/ArtistTrackDetailFragment$onCreateLoader$cl$1;
.super Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/local/ArtistTrackDetailFragment;->onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/list/local/ArtistTrackDetailFragment;

.field final synthetic b:Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/ArtistTrackDetailFragment;Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 126
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/ArtistTrackDetailFragment$onCreateLoader$cl$1;->a:Lcom/samsung/android/app/music/list/local/ArtistTrackDetailFragment;

    iput-object p2, p0, Lcom/samsung/android/app/music/list/local/ArtistTrackDetailFragment$onCreateLoader$cl$1;->b:Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;

    move-object v0, p0

    move-object v1, p3

    move-object v2, p4

    move-object v3, p5

    move-object v4, p6

    move-object v5, p7

    move-object v6, p8

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected a()Landroid/database/Cursor;
    .locals 2

    .line 135
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;->onLoadInBackground()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 137
    new-instance v1, Lcom/samsung/android/app/music/list/common/info/ArtistTrackCursor;

    invoke-direct {v1, v0}, Lcom/samsung/android/app/music/list/common/info/ArtistTrackCursor;-><init>(Landroid/database/Cursor;)V

    check-cast v1, Landroid/database/Cursor;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public synthetic onLoadInBackground()Ljava/lang/Object;
    .locals 1

    .line 126
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/ArtistTrackDetailFragment$onCreateLoader$cl$1;->a()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
