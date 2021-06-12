.class public final Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/android/gms/common/annotation/KeepName;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack$Extras;,
        Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack$Companion;


# instance fields
.field private addType:Ljava/lang/String;

.field public albumTitle:Ljava/lang/String;

.field public artistList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/list/playlist/Artist;",
            ">;"
        }
    .end annotation
.end field

.field public audioType:Ljava/lang/String;

.field private explicit:I

.field private final extras:Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack$Extras;

.field private fileName:Ljava/lang/String;

.field public trackId:Ljava/lang/String;

.field public trackTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack;->Companion:Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 243
    new-instance v0, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack$Extras;

    invoke-direct {v0}, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack$Extras;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack;->extras:Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack$Extras;

    return-void
.end method


# virtual methods
.method public final getAddType()Ljava/lang/String;
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack;->addType:Ljava/lang/String;

    return-object v0
.end method

.method public final getAlbumTitle()Ljava/lang/String;
    .locals 2

    .line 236
    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack;->albumTitle:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v1, "albumTitle"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getArtistList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/list/playlist/Artist;",
            ">;"
        }
    .end annotation

    .line 238
    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack;->artistList:Ljava/util/List;

    if-nez v0, :cond_0

    const-string v1, "artistList"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getAudioType()Ljava/lang/String;
    .locals 2

    .line 233
    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack;->audioType:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v1, "audioType"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getExplicit()I
    .locals 1

    .line 237
    iget v0, p0, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack;->explicit:I

    return v0
.end method

.method public final getExtras()Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack$Extras;
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack;->extras:Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack$Extras;

    return-object v0
.end method

.method public final getFileName()Ljava/lang/String;
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public final getTrackId()Ljava/lang/String;
    .locals 2

    .line 234
    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack;->trackId:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v1, "trackId"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getTrackTitle()Ljava/lang/String;
    .locals 2

    .line 235
    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack;->trackTitle:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v1, "trackTitle"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final setAddType(Ljava/lang/String;)V
    .locals 0

    .line 240
    iput-object p1, p0, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack;->addType:Ljava/lang/String;

    return-void
.end method

.method public final setAlbumTitle(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 236
    iput-object p1, p0, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack;->albumTitle:Ljava/lang/String;

    return-void
.end method

.method public final setArtistList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/list/playlist/Artist;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 238
    iput-object p1, p0, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack;->artistList:Ljava/util/List;

    return-void
.end method

.method public final setAudioType(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 233
    iput-object p1, p0, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack;->audioType:Ljava/lang/String;

    return-void
.end method

.method public final setExplicit(I)V
    .locals 0

    .line 237
    iput p1, p0, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack;->explicit:I

    return-void
.end method

.method public final setFileName(Ljava/lang/String;)V
    .locals 0

    .line 239
    iput-object p1, p0, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack;->fileName:Ljava/lang/String;

    return-void
.end method

.method public final setTrackId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 234
    iput-object p1, p0, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack;->trackId:Ljava/lang/String;

    return-void
.end method

.method public final setTrackTitle(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 235
    iput-object p1, p0, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack;->trackTitle:Ljava/lang/String;

    return-void
.end method

.method public final toArtistList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/list/playlist/Artist;",
            ">;"
        }
    .end annotation

    const-string v0, "artistIds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "artistNames"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 254
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 255
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, "::"

    invoke-direct {v1, p1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    new-instance p1, Ljava/util/StringTokenizer;

    const-string v2, ", "

    invoke-direct {p1, p2, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 259
    new-instance p2, Lcom/samsung/android/app/music/list/playlist/Artist;

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    const-string v3, "idsTokens.nextToken()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    const-string v4, "namesTokens.nextToken()"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, v2, v3}, Lcom/samsung/android/app/music/list/playlist/Artist;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 261
    :cond_0
    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final toAudioType(I)Ljava/lang/String;
    .locals 0

    sparse-switch p1, :sswitch_data_0

    const-string p1, "0"

    goto :goto_0

    :sswitch_0
    const-string p1, "0"

    goto :goto_0

    :sswitch_1
    const-string p1, "4"

    goto :goto_0

    :sswitch_2
    const-string p1, "3"

    :goto_0
    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        0x10001 -> :sswitch_2
        0x80001 -> :sswitch_1
        0x80002 -> :sswitch_0
        0x80008 -> :sswitch_2
    .end sparse-switch
.end method
