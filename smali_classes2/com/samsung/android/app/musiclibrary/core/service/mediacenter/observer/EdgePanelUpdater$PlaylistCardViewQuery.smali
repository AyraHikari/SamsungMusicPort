.class public Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/EdgePanelUpdater$PlaylistCardViewQuery;
.super Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/EdgePanelUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PlaylistCardViewQuery"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 7

    .line 175
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;-><init>()V

    const/4 v0, 0x3

    .line 177
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists$Meta;->b(I)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/EdgePanelUpdater$PlaylistCardViewQuery;->uri:Landroid/net/Uri;

    const-string v1, "_id"

    const-string v2, "name"

    const-string v3, "number_of_tracks"

    const-string v4, "album_id"

    const-string v5, "cp_attrs"

    const-string v6, "sort_by"

    .line 178
    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/EdgePanelUpdater$PlaylistCardViewQuery;->projection:[Ljava/lang/String;

    return-void
.end method
