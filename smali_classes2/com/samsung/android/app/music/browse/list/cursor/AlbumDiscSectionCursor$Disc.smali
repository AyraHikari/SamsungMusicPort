.class Lcom/samsung/android/app/music/browse/list/cursor/AlbumDiscSectionCursor$Disc;
.super Lcom/samsung/android/app/music/model/base/TrackModel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/browse/list/cursor/AlbumDiscSectionCursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Disc"
.end annotation


# instance fields
.field a:I


# direct methods
.method private constructor <init>(I)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/samsung/android/app/music/model/base/TrackModel;-><init>()V

    .line 28
    iput p1, p0, Lcom/samsung/android/app/music/browse/list/cursor/AlbumDiscSectionCursor$Disc;->a:I

    return-void
.end method

.method synthetic constructor <init>(ILcom/samsung/android/app/music/browse/list/cursor/AlbumDiscSectionCursor$1;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/browse/list/cursor/AlbumDiscSectionCursor$Disc;-><init>(I)V

    return-void
.end method
