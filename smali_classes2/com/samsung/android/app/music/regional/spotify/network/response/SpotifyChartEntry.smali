.class public Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyChartEntry;
.super Ljava/lang/Object;
.source "SpotifyChartEntry.java"


# instance fields
.field public current_position:I

.field public previous_position:I

.field public track:Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyFullTrack;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrentPosition()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyChartEntry;->current_position:I

    return v0
.end method

.method public getPreviousPosition()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyChartEntry;->previous_position:I

    return v0
.end method

.method public getTrack()Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyFullTrack;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyChartEntry;->track:Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyFullTrack;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/apache/commons/lang3/builder/e;->B:Lorg/apache/commons/lang3/builder/e;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/builder/d;->f(Ljava/lang/Object;Lorg/apache/commons/lang3/builder/e;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
