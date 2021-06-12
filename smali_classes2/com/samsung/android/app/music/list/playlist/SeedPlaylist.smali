.class public final Lcom/samsung/android/app/music/list/playlist/SeedPlaylist;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/list/playlist/SeedPlaylist$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/samsung/android/app/music/list/playlist/SeedPlaylist$Companion;


# instance fields
.field public audioType:Ljava/lang/String;

.field private playType:I

.field public trackId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/music/list/playlist/SeedPlaylist$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/list/playlist/SeedPlaylist$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/list/playlist/SeedPlaylist;->Companion:Lcom/samsung/android/app/music/list/playlist/SeedPlaylist$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 450
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAudioType()Ljava/lang/String;
    .locals 2

    .line 452
    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/SeedPlaylist;->audioType:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v1, "audioType"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getPlayType()I
    .locals 1

    .line 453
    iget v0, p0, Lcom/samsung/android/app/music/list/playlist/SeedPlaylist;->playType:I

    return v0
.end method

.method public final getTrackId()Ljava/lang/String;
    .locals 2

    .line 451
    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/SeedPlaylist;->trackId:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v1, "trackId"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final setAudioType(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 452
    iput-object p1, p0, Lcom/samsung/android/app/music/list/playlist/SeedPlaylist;->audioType:Ljava/lang/String;

    return-void
.end method

.method public final setPlayType(I)V
    .locals 0

    .line 453
    iput p1, p0, Lcom/samsung/android/app/music/list/playlist/SeedPlaylist;->playType:I

    return-void
.end method

.method public final setTrackId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 451
    iput-object p1, p0, Lcom/samsung/android/app/music/list/playlist/SeedPlaylist;->trackId:Ljava/lang/String;

    return-void
.end method
