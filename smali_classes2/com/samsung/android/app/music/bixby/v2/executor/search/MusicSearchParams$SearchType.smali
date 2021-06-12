.class public final enum Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SearchType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;

.field public static final enum ALBUM:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;

.field public static final enum PLAYLIST:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;

.field public static final enum STATION:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;

.field public static final enum TRACK:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 53
    new-instance v0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;

    const-string v1, "TRACK"

    const-string v2, "Music"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;->TRACK:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;

    .line 54
    new-instance v0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;

    const-string v1, "ALBUM"

    const-string v2, "Album"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;->ALBUM:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;

    .line 55
    new-instance v0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;

    const-string v1, "STATION"

    const-string v2, "Station"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;->STATION:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;

    .line 56
    new-instance v0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;

    const-string v1, "PLAYLIST"

    const-string v2, "Playlist"

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v2}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;->PLAYLIST:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;

    const/4 v0, 0x4

    .line 51
    new-array v0, v0, [Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;

    sget-object v1, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;->TRACK:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;->ALBUM:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;->STATION:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;->PLAYLIST:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;->$VALUES:[Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;

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

    .line 62
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 63
    iput-object p3, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;->value:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$1000(Ljava/lang/String;)Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;
    .locals 0

    .line 51
    invoke-static {p0}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;->match(Ljava/lang/String;)Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;)Ljava/lang/String;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;->value:Ljava/lang/String;

    return-object p0
.end method

.method private static match(Ljava/lang/String;)Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;
    .locals 5

    .line 91
    invoke-static {}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;->values()[Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 92
    iget-object v4, v3, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;->value:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 96
    :cond_1
    sget-object p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;->TRACK:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;
    .locals 1

    .line 51
    const-class v0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;
    .locals 1

    .line 51
    sget-object v0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;->$VALUES:[Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;

    invoke-virtual {v0}, [Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;->value:Ljava/lang/String;

    return-object v0
.end method

.method public toDisplayType()Ljava/lang/String;
    .locals 1

    .line 80
    sget-object v0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;->TRACK:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;

    if-ne p0, v0, :cond_0

    const-string v0, "1"

    return-object v0

    .line 82
    :cond_0
    sget-object v0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;->ALBUM:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;

    if-ne p0, v0, :cond_1

    const-string v0, "2"

    return-object v0

    .line 84
    :cond_1
    sget-object v0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;->STATION:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;

    if-ne p0, v0, :cond_2

    const-string v0, "5"

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public toProviderValue()I
    .locals 1

    .line 72
    sget-object v0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;->ALBUM:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x3

    return v0

    :cond_0
    const/4 v0, 0x4

    return v0
.end method
