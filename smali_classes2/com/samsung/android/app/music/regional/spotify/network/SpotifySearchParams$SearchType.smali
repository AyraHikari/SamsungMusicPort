.class public final enum Lcom/samsung/android/app/music/regional/spotify/network/SpotifySearchParams$SearchType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/regional/spotify/network/SpotifySearchParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SearchType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/app/music/regional/spotify/network/SpotifySearchParams$SearchType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/app/music/regional/spotify/network/SpotifySearchParams$SearchType;

.field public static final enum ALBUM:Lcom/samsung/android/app/music/regional/spotify/network/SpotifySearchParams$SearchType;

.field public static final enum ARTIST:Lcom/samsung/android/app/music/regional/spotify/network/SpotifySearchParams$SearchType;

.field public static final enum PLAYLIST:Lcom/samsung/android/app/music/regional/spotify/network/SpotifySearchParams$SearchType;

.field public static final enum TRACK:Lcom/samsung/android/app/music/regional/spotify/network/SpotifySearchParams$SearchType;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 6
    new-instance v0, Lcom/samsung/android/app/music/regional/spotify/network/SpotifySearchParams$SearchType;

    const-string v1, "ALBUM"

    const-string v2, "album"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/android/app/music/regional/spotify/network/SpotifySearchParams$SearchType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/regional/spotify/network/SpotifySearchParams$SearchType;->ALBUM:Lcom/samsung/android/app/music/regional/spotify/network/SpotifySearchParams$SearchType;

    new-instance v0, Lcom/samsung/android/app/music/regional/spotify/network/SpotifySearchParams$SearchType;

    const-string v1, "ARTIST"

    const-string v2, "artist"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/samsung/android/app/music/regional/spotify/network/SpotifySearchParams$SearchType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/regional/spotify/network/SpotifySearchParams$SearchType;->ARTIST:Lcom/samsung/android/app/music/regional/spotify/network/SpotifySearchParams$SearchType;

    new-instance v0, Lcom/samsung/android/app/music/regional/spotify/network/SpotifySearchParams$SearchType;

    const-string v1, "TRACK"

    const-string v2, "track"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lcom/samsung/android/app/music/regional/spotify/network/SpotifySearchParams$SearchType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/regional/spotify/network/SpotifySearchParams$SearchType;->TRACK:Lcom/samsung/android/app/music/regional/spotify/network/SpotifySearchParams$SearchType;

    new-instance v0, Lcom/samsung/android/app/music/regional/spotify/network/SpotifySearchParams$SearchType;

    const-string v1, "PLAYLIST"

    const-string v2, "playlist"

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v2}, Lcom/samsung/android/app/music/regional/spotify/network/SpotifySearchParams$SearchType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/regional/spotify/network/SpotifySearchParams$SearchType;->PLAYLIST:Lcom/samsung/android/app/music/regional/spotify/network/SpotifySearchParams$SearchType;

    const/4 v0, 0x4

    .line 5
    new-array v0, v0, [Lcom/samsung/android/app/music/regional/spotify/network/SpotifySearchParams$SearchType;

    sget-object v1, Lcom/samsung/android/app/music/regional/spotify/network/SpotifySearchParams$SearchType;->ALBUM:Lcom/samsung/android/app/music/regional/spotify/network/SpotifySearchParams$SearchType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/app/music/regional/spotify/network/SpotifySearchParams$SearchType;->ARTIST:Lcom/samsung/android/app/music/regional/spotify/network/SpotifySearchParams$SearchType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/app/music/regional/spotify/network/SpotifySearchParams$SearchType;->TRACK:Lcom/samsung/android/app/music/regional/spotify/network/SpotifySearchParams$SearchType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/android/app/music/regional/spotify/network/SpotifySearchParams$SearchType;->PLAYLIST:Lcom/samsung/android/app/music/regional/spotify/network/SpotifySearchParams$SearchType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/samsung/android/app/music/regional/spotify/network/SpotifySearchParams$SearchType;->$VALUES:[Lcom/samsung/android/app/music/regional/spotify/network/SpotifySearchParams$SearchType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 11
    iput-object p3, p0, Lcom/samsung/android/app/music/regional/spotify/network/SpotifySearchParams$SearchType;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/app/music/regional/spotify/network/SpotifySearchParams$SearchType;
    .locals 1

    .line 5
    const-class v0, Lcom/samsung/android/app/music/regional/spotify/network/SpotifySearchParams$SearchType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/music/regional/spotify/network/SpotifySearchParams$SearchType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/app/music/regional/spotify/network/SpotifySearchParams$SearchType;
    .locals 1

    .line 5
    sget-object v0, Lcom/samsung/android/app/music/regional/spotify/network/SpotifySearchParams$SearchType;->$VALUES:[Lcom/samsung/android/app/music/regional/spotify/network/SpotifySearchParams$SearchType;

    invoke-virtual {v0}, [Lcom/samsung/android/app/music/regional/spotify/network/SpotifySearchParams$SearchType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/app/music/regional/spotify/network/SpotifySearchParams$SearchType;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/network/SpotifySearchParams$SearchType;->value:Ljava/lang/String;

    return-object v0
.end method
