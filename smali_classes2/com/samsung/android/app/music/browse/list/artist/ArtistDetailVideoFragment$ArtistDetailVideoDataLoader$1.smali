.class Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailVideoFragment$ArtistDetailVideoDataLoader$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/browse/list/data/BrowseCursorFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailVideoFragment$ArtistDetailVideoDataLoader;-><init>(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/android/app/music/browse/list/data/BrowseCursorFactory<",
        "Lcom/samsung/android/app/music/model/base/MusicVideoModel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 156
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
            "Lcom/samsung/android/app/music/model/base/MusicVideoModel;",
            ">;Z)",
            "Landroid/database/Cursor;"
        }
    .end annotation

    .line 159
    new-instance v0, Lcom/samsung/android/app/music/browse/list/cursor/VideoModelCursor;

    invoke-static {p1}, Lcom/samsung/android/app/music/model/base/VideoModel;->convertModels(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/app/music/browse/list/cursor/VideoModelCursor;-><init>(Ljava/util/List;Z)V

    return-object v0
.end method
