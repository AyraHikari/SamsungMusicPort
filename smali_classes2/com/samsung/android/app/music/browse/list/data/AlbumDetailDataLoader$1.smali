.class Lcom/samsung/android/app/music/browse/list/data/AlbumDetailDataLoader$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/browse/list/data/BrowseCursorFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/browse/list/data/AlbumDetailDataLoader;-><init>(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/android/app/music/browse/list/data/BrowseCursorFactory<",
        "Lcom/samsung/android/app/music/model/base/TrackModel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 22
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
            "Lcom/samsung/android/app/music/model/base/TrackModel;",
            ">;Z)",
            "Landroid/database/Cursor;"
        }
    .end annotation

    .line 25
    new-instance v0, Lcom/samsung/android/app/music/browse/list/cursor/AlbumDiscSectionCursor;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/app/music/browse/list/cursor/AlbumDiscSectionCursor;-><init>(Ljava/util/List;Z)V

    return-object v0
.end method
