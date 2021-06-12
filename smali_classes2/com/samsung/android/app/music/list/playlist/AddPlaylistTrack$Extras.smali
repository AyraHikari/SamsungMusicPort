.class public final Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack$Extras;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Extras"
.end annotation


# instance fields
.field private albumId:Ljava/lang/String;

.field public artistIds:Ljava/lang/String;

.field public artistNames:Ljava/lang/String;

.field private audioId:J

.field private cpAttrs:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 246
    iput-wide v0, p0, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack$Extras;->audioId:J

    const/4 v0, -0x1

    .line 250
    iput v0, p0, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack$Extras;->cpAttrs:I

    return-void
.end method


# virtual methods
.method public final getAlbumId()Ljava/lang/String;
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack$Extras;->albumId:Ljava/lang/String;

    return-object v0
.end method

.method public final getArtistIds()Ljava/lang/String;
    .locals 2

    .line 248
    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack$Extras;->artistIds:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v1, "artistIds"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getArtistNames()Ljava/lang/String;
    .locals 2

    .line 249
    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack$Extras;->artistNames:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v1, "artistNames"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getAudioId()J
    .locals 2

    .line 246
    iget-wide v0, p0, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack$Extras;->audioId:J

    return-wide v0
.end method

.method public final getCpAttrs()I
    .locals 1

    .line 250
    iget v0, p0, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack$Extras;->cpAttrs:I

    return v0
.end method

.method public final setAlbumId(Ljava/lang/String;)V
    .locals 0

    .line 247
    iput-object p1, p0, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack$Extras;->albumId:Ljava/lang/String;

    return-void
.end method

.method public final setArtistIds(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 248
    iput-object p1, p0, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack$Extras;->artistIds:Ljava/lang/String;

    return-void
.end method

.method public final setArtistNames(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 249
    iput-object p1, p0, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack$Extras;->artistNames:Ljava/lang/String;

    return-void
.end method

.method public final setAudioId(J)V
    .locals 0

    .line 246
    iput-wide p1, p0, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack$Extras;->audioId:J

    return-void
.end method

.method public final setCpAttrs(I)V
    .locals 0

    .line 250
    iput p1, p0, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack$Extras;->cpAttrs:I

    return-void
.end method
