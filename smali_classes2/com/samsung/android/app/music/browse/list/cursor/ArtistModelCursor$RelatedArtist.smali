.class Lcom/samsung/android/app/music/browse/list/cursor/ArtistModelCursor$RelatedArtist;
.super Lcom/samsung/android/app/music/model/base/ArtistModel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/browse/list/cursor/ArtistModelCursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RelatedArtist"
.end annotation


# instance fields
.field a:I


# direct methods
.method private constructor <init>(I)V
    .locals 2

    const-string v0, ""

    const-string v1, ""

    .line 83
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/music/model/base/ArtistModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    iput p1, p0, Lcom/samsung/android/app/music/browse/list/cursor/ArtistModelCursor$RelatedArtist;->a:I

    return-void
.end method

.method synthetic constructor <init>(ILcom/samsung/android/app/music/browse/list/cursor/ArtistModelCursor$1;)V
    .locals 0

    .line 80
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/browse/list/cursor/ArtistModelCursor$RelatedArtist;-><init>(I)V

    return-void
.end method
