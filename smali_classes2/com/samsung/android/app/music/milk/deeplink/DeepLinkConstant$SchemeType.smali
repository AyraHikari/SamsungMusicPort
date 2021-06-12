.class public final enum Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SchemeType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SchemeType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SchemeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SchemeType;

.field public static final enum CONTENT:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SchemeType;

.field public static final enum FILE:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SchemeType;

.field public static final enum RADIO:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SchemeType;

.field public static final enum SAMSUNG_MUSIC:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SchemeType;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 5
    new-instance v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SchemeType;

    const-string v1, "SAMSUNG_MUSIC"

    const-string v2, "samu"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SchemeType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SchemeType;->SAMSUNG_MUSIC:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SchemeType;

    new-instance v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SchemeType;

    const-string v1, "RADIO"

    const-string v2, "radio"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SchemeType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SchemeType;->RADIO:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SchemeType;

    new-instance v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SchemeType;

    const-string v1, "FILE"

    const-string v2, "file"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SchemeType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SchemeType;->FILE:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SchemeType;

    new-instance v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SchemeType;

    const-string v1, "CONTENT"

    const-string v2, "content"

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SchemeType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SchemeType;->CONTENT:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SchemeType;

    const/4 v0, 0x4

    .line 4
    new-array v0, v0, [Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SchemeType;

    sget-object v1, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SchemeType;->SAMSUNG_MUSIC:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SchemeType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SchemeType;->RADIO:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SchemeType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SchemeType;->FILE:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SchemeType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SchemeType;->CONTENT:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SchemeType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SchemeType;->$VALUES:[Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SchemeType;

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

    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 10
    iput-object p3, p0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SchemeType;->value:Ljava/lang/String;

    return-void
.end method

.method public static getSchemeType(Ljava/lang/String;)Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SchemeType;
    .locals 5

    .line 18
    invoke-static {}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SchemeType;->values()[Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SchemeType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 19
    iget-object v4, v3, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SchemeType;->value:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SchemeType;
    .locals 1

    .line 4
    const-class v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SchemeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SchemeType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SchemeType;
    .locals 1

    .line 4
    sget-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SchemeType;->$VALUES:[Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SchemeType;

    invoke-virtual {v0}, [Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SchemeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SchemeType;

    return-object v0
.end method


# virtual methods
.method public getString()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SchemeType;->value:Ljava/lang/String;

    return-object v0
.end method
