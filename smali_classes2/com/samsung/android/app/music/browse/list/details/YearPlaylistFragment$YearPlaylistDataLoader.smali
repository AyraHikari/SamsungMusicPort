.class Lcom/samsung/android/app/music/browse/list/details/YearPlaylistFragment$YearPlaylistDataLoader;
.super Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/browse/list/details/YearPlaylistFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "YearPlaylistDataLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader<",
        "Lcom/samsung/android/app/music/model/base/PlayListModel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 107
    new-instance v0, Lcom/samsung/android/app/music/browse/list/details/YearPlaylistFragment$YearPlaylistDataLoader$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/browse/list/details/YearPlaylistFragment$YearPlaylistDataLoader$1;-><init>()V

    new-instance v1, Lcom/samsung/android/app/music/browse/list/details/YearPlaylistFragment$YearPlaylistDataLoader$2;

    invoke-direct {v1, p2}, Lcom/samsung/android/app/music/browse/list/details/YearPlaylistFragment$YearPlaylistDataLoader$2;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader;-><init>(Landroid/content/Context;Lcom/samsung/android/app/music/browse/list/data/BrowseCursorFactory;Lcom/samsung/android/app/music/browse/list/data/PageDataSource;)V

    return-void
.end method
