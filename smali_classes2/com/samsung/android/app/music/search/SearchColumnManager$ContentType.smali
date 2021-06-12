.class final enum Lcom/samsung/android/app/music/search/SearchColumnManager$ContentType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/search/SearchColumnManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ContentType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/app/music/search/SearchColumnManager$ContentType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/app/music/search/SearchColumnManager$ContentType;

.field public static final enum ALBUMS:Lcom/samsung/android/app/music/search/SearchColumnManager$ContentType;

.field public static final enum ARTISTS:Lcom/samsung/android/app/music/search/SearchColumnManager$ContentType;

.field public static final enum LYRICS:Lcom/samsung/android/app/music/search/SearchColumnManager$ContentType;

.field private static final MAX_ITEM_COUNT_PER_TYPE:I = 0x5

.field public static final enum MUSIC_VIDEO:Lcom/samsung/android/app/music/search/SearchColumnManager$ContentType;

.field public static final enum PLAYLIST:Lcom/samsung/android/app/music/search/SearchColumnManager$ContentType;

.field public static final enum SONG:Lcom/samsung/android/app/music/search/SearchColumnManager$ContentType;

.field public static final enum SPOTIFY_PLAYLIST:Lcom/samsung/android/app/music/search/SearchColumnManager$ContentType;


# instance fields
.field private final PHONE_LANDSCAPE:I

.field private final PHONE_PORTRAIT:I

.field private final TABLET_LANDSCAPE:I

.field private final TABLET_PORTRAIT:I

.field private mDisplayType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 127
    new-instance v8, Lcom/samsung/android/app/music/search/SearchColumnManager$ContentType;

    const-string v1, "SONG"

    const-string v3, "1"

    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/app/music/search/SearchColumnManager$ContentType;-><init>(Ljava/lang/String;ILjava/lang/String;IIII)V

    sput-object v8, Lcom/samsung/android/app/music/search/SearchColumnManager$ContentType;->SONG:Lcom/samsung/android/app/music/search/SearchColumnManager$ContentType;

    .line 128
    new-instance v0, Lcom/samsung/android/app/music/search/SearchColumnManager$ContentType;

    const-string v10, "ALBUMS"

    const-string v12, "2"

    const/4 v11, 0x1

    const/4 v13, 0x1

    const/4 v14, 0x1

    const/4 v15, 0x1

    const/16 v16, 0x1

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lcom/samsung/android/app/music/search/SearchColumnManager$ContentType;-><init>(Ljava/lang/String;ILjava/lang/String;IIII)V

    sput-object v0, Lcom/samsung/android/app/music/search/SearchColumnManager$ContentType;->ALBUMS:Lcom/samsung/android/app/music/search/SearchColumnManager$ContentType;

    .line 129
    new-instance v0, Lcom/samsung/android/app/music/search/SearchColumnManager$ContentType;

    const-string v2, "ARTISTS"

    const-string v4, "3"

    const/4 v3, 0x2

    const/4 v8, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/samsung/android/app/music/search/SearchColumnManager$ContentType;-><init>(Ljava/lang/String;ILjava/lang/String;IIII)V

    sput-object v0, Lcom/samsung/android/app/music/search/SearchColumnManager$ContentType;->ARTISTS:Lcom/samsung/android/app/music/search/SearchColumnManager$ContentType;

    .line 130
    new-instance v0, Lcom/samsung/android/app/music/search/SearchColumnManager$ContentType;

    const-string v10, "LYRICS"

    const-string v12, "7"

    const/4 v11, 0x3

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lcom/samsung/android/app/music/search/SearchColumnManager$ContentType;-><init>(Ljava/lang/String;ILjava/lang/String;IIII)V

    sput-object v0, Lcom/samsung/android/app/music/search/SearchColumnManager$ContentType;->LYRICS:Lcom/samsung/android/app/music/search/SearchColumnManager$ContentType;

    .line 131
    new-instance v0, Lcom/samsung/android/app/music/search/SearchColumnManager$ContentType;

    const-string v2, "MUSIC_VIDEO"

    const-string v4, "6"

    const/4 v3, 0x4

    const/4 v5, 0x2

    const/4 v6, 0x4

    const/4 v7, 0x4

    const/4 v8, 0x5

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/samsung/android/app/music/search/SearchColumnManager$ContentType;-><init>(Ljava/lang/String;ILjava/lang/String;IIII)V

    sput-object v0, Lcom/samsung/android/app/music/search/SearchColumnManager$ContentType;->MUSIC_VIDEO:Lcom/samsung/android/app/music/search/SearchColumnManager$ContentType;

    .line 132
    new-instance v0, Lcom/samsung/android/app/music/search/SearchColumnManager$ContentType;

    const-string v10, "PLAYLIST"

    const-string v12, "5"

    const/4 v11, 0x5

    const/4 v13, 0x2

    const/4 v14, 0x5

    const/4 v15, 0x4

    const/16 v16, 0x5

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lcom/samsung/android/app/music/search/SearchColumnManager$ContentType;-><init>(Ljava/lang/String;ILjava/lang/String;IIII)V

    sput-object v0, Lcom/samsung/android/app/music/search/SearchColumnManager$ContentType;->PLAYLIST:Lcom/samsung/android/app/music/search/SearchColumnManager$ContentType;

    .line 133
    new-instance v0, Lcom/samsung/android/app/music/search/SearchColumnManager$ContentType;

    const-string v2, "SPOTIFY_PLAYLIST"

    const-string v4, "9"

    const/4 v3, 0x6

    const/4 v6, 0x5

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/samsung/android/app/music/search/SearchColumnManager$ContentType;-><init>(Ljava/lang/String;ILjava/lang/String;IIII)V

    sput-object v0, Lcom/samsung/android/app/music/search/SearchColumnManager$ContentType;->SPOTIFY_PLAYLIST:Lcom/samsung/android/app/music/search/SearchColumnManager$ContentType;

    const/4 v0, 0x7

    .line 125
    new-array v0, v0, [Lcom/samsung/android/app/music/search/SearchColumnManager$ContentType;

    sget-object v1, Lcom/samsung/android/app/music/search/SearchColumnManager$ContentType;->SONG:Lcom/samsung/android/app/music/search/SearchColumnManager$ContentType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/app/music/search/SearchColumnManager$ContentType;->ALBUMS:Lcom/samsung/android/app/music/search/SearchColumnManager$ContentType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/app/music/search/SearchColumnManager$ContentType;->ARTISTS:Lcom/samsung/android/app/music/search/SearchColumnManager$ContentType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/app/music/search/SearchColumnManager$ContentType;->LYRICS:Lcom/samsung/android/app/music/search/SearchColumnManager$ContentType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/app/music/search/SearchColumnManager$ContentType;->MUSIC_VIDEO:Lcom/samsung/android/app/music/search/SearchColumnManager$ContentType;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/app/music/search/SearchColumnManager$ContentType;->PLAYLIST:Lcom/samsung/android/app/music/search/SearchColumnManager$ContentType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/app/music/search/SearchColumnManager$ContentType;->SPOTIFY_PLAYLIST:Lcom/samsung/android/app/music/search/SearchColumnManager$ContentType;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/app/music/search/SearchColumnManager$ContentType;->$VALUES:[Lcom/samsung/android/app/music/search/SearchColumnManager$ContentType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;IIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIII)V"
        }
    .end annotation

    .line 154
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 155
    iput-object p3, p0, Lcom/samsung/android/app/music/search/SearchColumnManager$ContentType;->mDisplayType:Ljava/lang/String;

    .line 156
    iput p4, p0, Lcom/samsung/android/app/music/search/SearchColumnManager$ContentType;->PHONE_PORTRAIT:I

    .line 157
    iput p5, p0, Lcom/samsung/android/app/music/search/SearchColumnManager$ContentType;->PHONE_LANDSCAPE:I

    .line 158
    iput p6, p0, Lcom/samsung/android/app/music/search/SearchColumnManager$ContentType;->TABLET_PORTRAIT:I

    .line 159
    iput p7, p0, Lcom/samsung/android/app/music/search/SearchColumnManager$ContentType;->TABLET_LANDSCAPE:I

    return-void
.end method

.method public static convert(Ljava/lang/String;)Lcom/samsung/android/app/music/search/SearchColumnManager$ContentType;
    .locals 5

    .line 191
    invoke-static {}, Lcom/samsung/android/app/music/search/SearchColumnManager$ContentType;->values()[Lcom/samsung/android/app/music/search/SearchColumnManager$ContentType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 192
    iget-object v4, v3, Lcom/samsung/android/app/music/search/SearchColumnManager$ContentType;->mDisplayType:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 196
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "This display type is NOT declared in ContentType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/app/music/search/SearchColumnManager$ContentType;
    .locals 1

    .line 125
    const-class v0, Lcom/samsung/android/app/music/search/SearchColumnManager$ContentType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/music/search/SearchColumnManager$ContentType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/app/music/search/SearchColumnManager$ContentType;
    .locals 1

    .line 125
    sget-object v0, Lcom/samsung/android/app/music/search/SearchColumnManager$ContentType;->$VALUES:[Lcom/samsung/android/app/music/search/SearchColumnManager$ContentType;

    invoke-virtual {v0}, [Lcom/samsung/android/app/music/search/SearchColumnManager$ContentType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/app/music/search/SearchColumnManager$ContentType;

    return-object v0
.end method


# virtual methods
.method getColumnCount(ZZ)I
    .locals 0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 164
    iget p1, p0, Lcom/samsung/android/app/music/search/SearchColumnManager$ContentType;->PHONE_PORTRAIT:I

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/samsung/android/app/music/search/SearchColumnManager$ContentType;->PHONE_LANDSCAPE:I

    :goto_0
    return p1

    :cond_1
    if-eqz p2, :cond_2

    .line 166
    iget p1, p0, Lcom/samsung/android/app/music/search/SearchColumnManager$ContentType;->TABLET_PORTRAIT:I

    goto :goto_1

    :cond_2
    iget p1, p0, Lcom/samsung/android/app/music/search/SearchColumnManager$ContentType;->TABLET_LANDSCAPE:I

    :goto_1
    return p1
.end method

.method getLandScapeCount(Z)I
    .locals 0

    if-eqz p1, :cond_0

    .line 175
    iget p1, p0, Lcom/samsung/android/app/music/search/SearchColumnManager$ContentType;->PHONE_LANDSCAPE:I

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/samsung/android/app/music/search/SearchColumnManager$ContentType;->TABLET_LANDSCAPE:I

    :goto_0
    return p1
.end method

.method getMaxRowCount(ZZ)I
    .locals 1

    .line 179
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/search/SearchColumnManager$ContentType;->isLinearType(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x4

    return p1

    :cond_0
    const/4 v0, 0x5

    .line 182
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/search/SearchColumnManager$ContentType;->getColumnCount(ZZ)I

    move-result p1

    div-int/2addr v0, p1

    return v0
.end method

.method getPortraitCount(Z)I
    .locals 0

    if-eqz p1, :cond_0

    .line 171
    iget p1, p0, Lcom/samsung/android/app/music/search/SearchColumnManager$ContentType;->PHONE_PORTRAIT:I

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/samsung/android/app/music/search/SearchColumnManager$ContentType;->TABLET_PORTRAIT:I

    :goto_0
    return p1
.end method

.method isLinearType(ZZ)Z
    .locals 0

    .line 186
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/search/SearchColumnManager$ContentType;->getColumnCount(ZZ)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    return p2
.end method
