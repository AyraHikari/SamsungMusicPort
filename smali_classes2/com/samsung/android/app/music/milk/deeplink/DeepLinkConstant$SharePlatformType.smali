.class public final enum Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SharePlatformType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;

.field public static final enum FACEBOOK:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;

.field public static final enum INSTAGRAM:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;

.field public static final enum KAKAOSTORY:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;

.field public static final enum KAKAOTALK:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;

.field public static final enum LINE:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;

.field public static final enum SHARE_VIA:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;

.field public static final enum TWITTER:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;

.field public static final enum WECHAT_MOMENT:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;

.field public static final enum WECHAT_MY_FRIEND:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;

.field public static final enum WEIBO:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;


# instance fields
.field private name:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 260
    new-instance v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;

    const-string v1, "FACEBOOK"

    const-string v2, "fb"

    const-string v3, "FaceBook"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;->FACEBOOK:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;

    new-instance v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;

    const-string v1, "TWITTER"

    const-string v2, "tw"

    const-string v3, "Twitter"

    const/4 v5, 0x1

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;->TWITTER:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;

    new-instance v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;

    const-string v1, "KAKAOTALK"

    const-string v2, "kt"

    const-string v3, "KakaoTalk"

    const/4 v6, 0x2

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;->KAKAOTALK:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;

    .line 261
    new-instance v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;

    const-string v1, "KAKAOSTORY"

    const-string v2, "ks"

    const-string v3, "KakaoStory"

    const/4 v7, 0x3

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;->KAKAOSTORY:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;

    new-instance v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;

    const-string v1, "LINE"

    const-string v2, "ln"

    const-string v3, "LINE"

    const/4 v8, 0x4

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;->LINE:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;

    .line 262
    new-instance v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;

    const-string v1, "INSTAGRAM"

    const-string v2, "in"

    const-string v3, "Instagram"

    const/4 v9, 0x5

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;->INSTAGRAM:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;

    .line 263
    new-instance v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;

    const-string v1, "WECHAT_MY_FRIEND"

    const-string v2, "wcf"

    const-string v3, "Wechat My friend"

    const/4 v10, 0x6

    invoke-direct {v0, v1, v10, v2, v3}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;->WECHAT_MY_FRIEND:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;

    .line 264
    new-instance v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;

    const-string v1, "WECHAT_MOMENT"

    const-string v2, "wcm"

    const-string v3, "Wechat Moment"

    const/4 v11, 0x7

    invoke-direct {v0, v1, v11, v2, v3}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;->WECHAT_MOMENT:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;

    .line 265
    new-instance v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;

    const-string v1, "WEIBO"

    const-string v2, "wb"

    const-string v3, "Weibo"

    const/16 v12, 0x8

    invoke-direct {v0, v1, v12, v2, v3}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;->WEIBO:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;

    new-instance v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;

    const-string v1, "SHARE_VIA"

    const-string v2, "sv"

    const-string v3, "Share via"

    const/16 v13, 0x9

    invoke-direct {v0, v1, v13, v2, v3}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;->SHARE_VIA:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;

    const/16 v0, 0xa

    .line 259
    new-array v0, v0, [Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;

    sget-object v1, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;->FACEBOOK:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;->TWITTER:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;->KAKAOTALK:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;->KAKAOSTORY:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;->LINE:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;->INSTAGRAM:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;

    aput-object v1, v0, v9

    sget-object v1, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;->WECHAT_MY_FRIEND:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;

    aput-object v1, v0, v10

    sget-object v1, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;->WECHAT_MOMENT:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;

    aput-object v1, v0, v11

    sget-object v1, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;->WEIBO:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;

    aput-object v1, v0, v12

    sget-object v1, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;->SHARE_VIA:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;

    aput-object v1, v0, v13

    sput-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;->$VALUES:[Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 272
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 273
    iput-object p3, p0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;->value:Ljava/lang/String;

    .line 274
    iput-object p4, p0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;->name:Ljava/lang/String;

    return-void
.end method

.method public static getSharePlatfomType(Ljava/lang/String;)Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;
    .locals 5

    .line 286
    invoke-static {}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;->values()[Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 287
    iget-object v4, v3, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;->value:Ljava/lang/String;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;
    .locals 1

    .line 259
    const-class v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;
    .locals 1

    .line 259
    sget-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;->$VALUES:[Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;

    invoke-virtual {v0}, [Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;

    return-object v0
.end method


# virtual methods
.method public getPlatformName()Ljava/lang/String;
    .locals 1

    .line 282
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getString()Ljava/lang/String;
    .locals 1

    .line 278
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;->value:Ljava/lang/String;

    return-object v0
.end method
