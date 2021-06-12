.class public final enum Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/StoreMainConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StoreMainGroupType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;

.field public static final enum BANNER:Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;

.field public static final enum BANNER_SMALL:Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;

.field public static final enum LEGAL_NOTICE:Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;

.field public static final enum MUSIC_CATEGORY:Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;

.field public static final enum MUSIC_VIDEO:Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;

.field public static final enum NEW_RELEASE:Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;

.field public static final enum PICK:Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;

.field public static final enum RADIO:Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;

.field public static final enum TOP_CHART:Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;

.field private static final valueMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 164
    new-instance v0, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;

    const-string v1, "BANNER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;->BANNER:Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;

    .line 165
    new-instance v0, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;

    const-string v1, "TOP_CHART"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;->TOP_CHART:Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;

    .line 166
    new-instance v0, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;

    const-string v1, "NEW_RELEASE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;->NEW_RELEASE:Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;

    .line 167
    new-instance v0, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;

    const-string v1, "BANNER_SMALL"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;->BANNER_SMALL:Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;

    .line 168
    new-instance v0, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;

    const-string v1, "PICK"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;->PICK:Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;

    .line 169
    new-instance v0, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;

    const-string v1, "RADIO"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v7}, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;->RADIO:Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;

    .line 170
    new-instance v0, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;

    const-string v1, "MUSIC_VIDEO"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8, v8}, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;->MUSIC_VIDEO:Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;

    .line 171
    new-instance v0, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;

    const-string v1, "MUSIC_CATEGORY"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9, v9}, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;->MUSIC_CATEGORY:Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;

    .line 172
    new-instance v0, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;

    const-string v1, "LEGAL_NOTICE"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10, v10}, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;->LEGAL_NOTICE:Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;

    const/16 v0, 0x9

    .line 163
    new-array v0, v0, [Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;

    sget-object v1, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;->BANNER:Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;->TOP_CHART:Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;->NEW_RELEASE:Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;->BANNER_SMALL:Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;->PICK:Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;->RADIO:Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;->MUSIC_VIDEO:Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;->MUSIC_CATEGORY:Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;

    aput-object v1, v0, v9

    sget-object v1, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;->LEGAL_NOTICE:Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;

    aput-object v1, v0, v10

    sput-object v0, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;->$VALUES:[Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;

    .line 175
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;->valueMap:Ljava/util/Map;

    .line 178
    invoke-static {}, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;->values()[Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 179
    sget-object v4, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;->valueMap:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;->toValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 183
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 184
    iput p3, p0, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;->mValue:I

    return-void
.end method

.method public static fromValue(I)Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;
    .locals 1

    .line 192
    sget-object v0, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;->valueMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;
    .locals 1

    .line 163
    const-class v0, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;
    .locals 1

    .line 163
    sget-object v0, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;->$VALUES:[Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;

    invoke-virtual {v0}, [Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;

    return-object v0
.end method


# virtual methods
.method public toValue()I
    .locals 1

    .line 188
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;->mValue:I

    return v0
.end method
