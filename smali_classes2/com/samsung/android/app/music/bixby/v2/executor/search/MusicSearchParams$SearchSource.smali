.class public final enum Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SearchSource"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;

.field public static final enum ARTIST_NAME:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;

.field public static final enum TRACK_PLUS_ARTIST:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;

.field public static final enum TRACK_TITLE:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;

.field public static final enum UNDEFINED_KEYWORD:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 102
    new-instance v0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;

    const-string v1, "TRACK_TITLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;->TRACK_TITLE:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;

    .line 103
    new-instance v0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;

    const-string v1, "ARTIST_NAME"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;->ARTIST_NAME:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;

    .line 104
    new-instance v0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;

    const-string v1, "TRACK_PLUS_ARTIST"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;->TRACK_PLUS_ARTIST:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;

    .line 105
    new-instance v0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;

    const-string v1, "UNDEFINED_KEYWORD"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;->UNDEFINED_KEYWORD:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;

    const/4 v0, 0x4

    .line 100
    new-array v0, v0, [Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;

    sget-object v1, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;->TRACK_TITLE:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;->ARTIST_NAME:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;->TRACK_PLUS_ARTIST:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;->UNDEFINED_KEYWORD:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;

    aput-object v1, v0, v5

    sput-object v0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;->$VALUES:[Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 100
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;
    .locals 1

    .line 100
    const-class v0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;
    .locals 1

    .line 100
    sget-object v0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;->$VALUES:[Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;

    invoke-virtual {v0}, [Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;

    return-object v0
.end method
