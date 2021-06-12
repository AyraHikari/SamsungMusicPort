.class final Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTrackFragment$TrackFilterableImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/list/common/FilterOptionManager$Filterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTrackFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TrackFilterableImpl"
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTrackFragment;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTrackFragment;)V
    .locals 0

    .line 203
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTrackFragment$TrackFilterableImpl;->a:Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTrackFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTrackFragment;Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTrackFragment$1;)V
    .locals 0

    .line 203
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTrackFragment$TrackFilterableImpl;-><init>(Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTrackFragment;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/SharedPreferences;)I
    .locals 0

    .line 220
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTrackFragment$TrackFilterableImpl;->a:Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTrackFragment;

    invoke-static {p1}, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTrackFragment;->b(Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTrackFragment;)I

    move-result p1

    return p1
.end method

.method public a(Landroid/content/SharedPreferences;I)V
    .locals 0

    .line 215
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTrackFragment$TrackFilterableImpl;->a:Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTrackFragment;

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTrackFragment;->a(Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTrackFragment;I)I

    return-void
.end method

.method public a()[I
    .locals 1

    const/4 v0, 0x3

    .line 209
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 4
        0xc
        0xe
        0x2
    .end array-data
.end method
