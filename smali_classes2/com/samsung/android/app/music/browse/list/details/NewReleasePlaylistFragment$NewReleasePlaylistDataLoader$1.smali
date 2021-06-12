.class Lcom/samsung/android/app/music/browse/list/details/NewReleasePlaylistFragment$NewReleasePlaylistDataLoader$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/browse/list/data/BrowseCursorFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/browse/list/details/NewReleasePlaylistFragment$NewReleasePlaylistDataLoader;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/android/app/music/browse/list/data/BrowseCursorFactory<",
        "Lcom/samsung/android/app/music/model/base/PlayListModel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;Z)Landroid/database/Cursor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/base/PlayListModel;",
            ">;Z)",
            "Landroid/database/Cursor;"
        }
    .end annotation

    .line 86
    new-instance v0, Lcom/samsung/android/app/music/browse/list/cursor/PlaylistModelCursor;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/app/music/browse/list/cursor/PlaylistModelCursor;-><init>(Ljava/util/List;Z)V

    return-object v0
.end method
