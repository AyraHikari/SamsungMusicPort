.class public final enum Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;

.field public static final enum SE_CP_SERVER_ERROR:Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;

.field public static final enum SE_INVALID_ALBUM_ID:Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;

.field public static final enum SE_INVALID_ARTIST_ID:Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;

.field public static final enum SE_INVALID_PICK_ID:Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;

.field public static final enum SE_INVALID_TRACK_ID:Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;

.field public static final enum SE_MOD_DOWNLOAD_COUNT_OVERFLOW:Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;

.field public static final enum SE_MOD_ORDER:Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;

.field public static final enum SE_MOD_SEARCH:Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;

.field public static final enum SE_MOD_TRACK_MUSIC_VIDEO:Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;

.field public static final enum SE_NORMA_ERROR:Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;

.field private static final TAG:Ljava/lang/String;

.field private static final valueMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mErrorCode:I

.field private final mResId:I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 13
    new-instance v0, Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;

    const-string v1, "SE_NORMA_ERROR"

    const/4 v2, 0x0

    const/4 v3, -0x1

    const v4, 0x7f0b047e

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;->SE_NORMA_ERROR:Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;

    .line 14
    new-instance v0, Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;

    const-string v1, "SE_CP_SERVER_ERROR"

    const/4 v3, 0x1

    const/16 v4, 0x1389

    const v5, 0x7f0b047d

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;->SE_CP_SERVER_ERROR:Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;

    .line 15
    new-instance v0, Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;

    const-string v1, "SE_INVALID_ARTIST_ID"

    const/4 v4, 0x2

    const v5, 0x7f0b047c

    const/16 v6, 0x2008

    invoke-direct {v0, v1, v4, v6, v5}, Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;->SE_INVALID_ARTIST_ID:Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;

    .line 16
    new-instance v0, Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;

    const-string v1, "SE_INVALID_ALBUM_ID"

    const/4 v6, 0x3

    const/16 v7, 0x2009

    invoke-direct {v0, v1, v6, v7, v5}, Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;->SE_INVALID_ALBUM_ID:Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;

    .line 17
    new-instance v0, Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;

    const-string v1, "SE_INVALID_PICK_ID"

    const/4 v7, 0x4

    const/16 v8, 0x200a

    invoke-direct {v0, v1, v7, v8, v5}, Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;->SE_INVALID_PICK_ID:Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;

    .line 18
    new-instance v0, Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;

    const-string v1, "SE_INVALID_TRACK_ID"

    const/4 v8, 0x5

    const/16 v9, 0x200b

    invoke-direct {v0, v1, v8, v9, v5}, Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;->SE_INVALID_TRACK_ID:Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;

    .line 19
    new-instance v0, Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;

    const-string v1, "SE_MOD_TRACK_MUSIC_VIDEO"

    const/4 v9, 0x6

    const/16 v10, 0x20d0

    invoke-direct {v0, v1, v9, v10, v5}, Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;->SE_MOD_TRACK_MUSIC_VIDEO:Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;

    .line 20
    new-instance v0, Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;

    const-string v1, "SE_MOD_SEARCH"

    const/4 v10, 0x7

    const/16 v11, 0x2134

    invoke-direct {v0, v1, v10, v11, v5}, Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;->SE_MOD_SEARCH:Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;

    .line 21
    new-instance v0, Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;

    const-string v1, "SE_MOD_ORDER"

    const/16 v11, 0x8

    const/16 v12, 0x2198

    invoke-direct {v0, v1, v11, v12, v5}, Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;->SE_MOD_ORDER:Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;

    .line 22
    new-instance v0, Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;

    const-string v1, "SE_MOD_DOWNLOAD_COUNT_OVERFLOW"

    const/16 v12, 0x9

    const/16 v13, 0x219a

    invoke-direct {v0, v1, v12, v13, v5}, Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;->SE_MOD_DOWNLOAD_COUNT_OVERFLOW:Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;

    const/16 v0, 0xa

    .line 12
    new-array v0, v0, [Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;

    sget-object v1, Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;->SE_NORMA_ERROR:Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;->SE_CP_SERVER_ERROR:Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;->SE_INVALID_ARTIST_ID:Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;->SE_INVALID_ALBUM_ID:Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;->SE_INVALID_PICK_ID:Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;->SE_INVALID_TRACK_ID:Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;->SE_MOD_TRACK_MUSIC_VIDEO:Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;

    aput-object v1, v0, v9

    sget-object v1, Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;->SE_MOD_SEARCH:Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;

    aput-object v1, v0, v10

    sget-object v1, Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;->SE_MOD_ORDER:Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;

    aput-object v1, v0, v11

    sget-object v1, Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;->SE_MOD_DOWNLOAD_COUNT_OVERFLOW:Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;

    aput-object v1, v0, v12

    sput-object v0, Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;->$VALUES:[Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;

    .line 24
    const-class v0, Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;->TAG:Ljava/lang/String;

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;->valueMap:Ljava/util/Map;

    .line 35
    invoke-static {}, Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;->values()[Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 36
    sget-object v4, Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;->valueMap:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;->toErrorCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 41
    iput p3, p0, Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;->mErrorCode:I

    .line 42
    iput p4, p0, Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;->mResId:I

    return-void
.end method

.method public static fromErrorCode(I)Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;
    .locals 3

    .line 50
    sget-object v0, Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;->valueMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 51
    sget-object v0, Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fromErrorCode: Unknown Error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    sget-object p0, Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;->SE_NORMA_ERROR:Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;

    return-object p0

    .line 55
    :cond_0
    sget-object v0, Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;->valueMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;

    return-object p0
.end method

.method private getResId()I
    .locals 1

    .line 28
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;->mResId:I

    return v0
.end method

.method public static toString(Landroid/content/Context;I)Ljava/lang/String;
    .locals 3

    .line 59
    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;->fromErrorCode(I)Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;

    move-result-object v0

    invoke-direct {v0}, Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;->getResId()I

    move-result v0

    const/16 v1, 0x1389

    if-ne p1, v1, :cond_0

    const/4 v1, 0x1

    .line 61
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 63
    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;
    .locals 1

    .line 12
    const-class v0, Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;
    .locals 1

    .line 12
    sget-object v0, Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;->$VALUES:[Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;

    invoke-virtual {v0}, [Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;

    return-object v0
.end method


# virtual methods
.method public toErrorCode()I
    .locals 1

    .line 46
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;->mErrorCode:I

    return v0
.end method
