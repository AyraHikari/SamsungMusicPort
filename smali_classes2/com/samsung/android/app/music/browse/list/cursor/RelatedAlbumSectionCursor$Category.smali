.class Lcom/samsung/android/app/music/browse/list/cursor/RelatedAlbumSectionCursor$Category;
.super Lcom/samsung/android/app/music/model/base/AlbumModel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/browse/list/cursor/RelatedAlbumSectionCursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Category"
.end annotation


# instance fields
.field a:I


# direct methods
.method private constructor <init>(I)V
    .locals 0

    .line 71
    invoke-direct {p0}, Lcom/samsung/android/app/music/model/base/AlbumModel;-><init>()V

    .line 72
    iput p1, p0, Lcom/samsung/android/app/music/browse/list/cursor/RelatedAlbumSectionCursor$Category;->a:I

    return-void
.end method

.method synthetic constructor <init>(ILcom/samsung/android/app/music/browse/list/cursor/RelatedAlbumSectionCursor$1;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/browse/list/cursor/RelatedAlbumSectionCursor$Category;-><init>(I)V

    return-void
.end method
