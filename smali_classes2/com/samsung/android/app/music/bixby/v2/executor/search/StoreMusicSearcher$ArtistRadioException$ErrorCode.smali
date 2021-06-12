.class final enum Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher$ArtistRadioException$ErrorCode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher$ArtistRadioException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ErrorCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher$ArtistRadioException$ErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher$ArtistRadioException$ErrorCode;

.field public static final enum FAIL_GET_ARTIST_ID:Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher$ArtistRadioException$ErrorCode;

.field public static final enum NOT_ARTIST:Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher$ArtistRadioException$ErrorCode;


# instance fields
.field private errorCode:I

.field private errorMessage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 239
    new-instance v0, Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher$ArtistRadioException$ErrorCode;

    const-string v1, "NOT_ARTIST"

    const-string v2, "This is not artist"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v0, v1, v3, v4, v2}, Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher$ArtistRadioException$ErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher$ArtistRadioException$ErrorCode;->NOT_ARTIST:Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher$ArtistRadioException$ErrorCode;

    .line 240
    new-instance v0, Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher$ArtistRadioException$ErrorCode;

    const-string v1, "FAIL_GET_ARTIST_ID"

    const-string v2, "Fail to get artist id"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v4, v5, v2}, Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher$ArtistRadioException$ErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher$ArtistRadioException$ErrorCode;->FAIL_GET_ARTIST_ID:Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher$ArtistRadioException$ErrorCode;

    .line 237
    new-array v0, v5, [Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher$ArtistRadioException$ErrorCode;

    sget-object v1, Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher$ArtistRadioException$ErrorCode;->NOT_ARTIST:Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher$ArtistRadioException$ErrorCode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher$ArtistRadioException$ErrorCode;->FAIL_GET_ARTIST_ID:Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher$ArtistRadioException$ErrorCode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher$ArtistRadioException$ErrorCode;->$VALUES:[Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher$ArtistRadioException$ErrorCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 246
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 247
    iput p3, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher$ArtistRadioException$ErrorCode;->errorCode:I

    .line 248
    iput-object p4, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher$ArtistRadioException$ErrorCode;->errorMessage:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher$ArtistRadioException$ErrorCode;
    .locals 1

    .line 237
    const-class v0, Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher$ArtistRadioException$ErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher$ArtistRadioException$ErrorCode;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher$ArtistRadioException$ErrorCode;
    .locals 1

    .line 237
    sget-object v0, Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher$ArtistRadioException$ErrorCode;->$VALUES:[Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher$ArtistRadioException$ErrorCode;

    invoke-virtual {v0}, [Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher$ArtistRadioException$ErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher$ArtistRadioException$ErrorCode;

    return-object v0
.end method


# virtual methods
.method getMessage()Ljava/lang/String;
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher$ArtistRadioException$ErrorCode;->errorMessage:Ljava/lang/String;

    return-object v0
.end method
