.class public final enum Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$CacheSize;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CacheSize"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$CacheSize;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$CacheSize;

.field public static final enum GB_1:Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$CacheSize;

.field public static final enum MB_100:Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$CacheSize;

.field public static final enum MB_500:Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$CacheSize;


# instance fields
.field private detail:Ljava/lang/String;

.field private position:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 210
    new-instance v0, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$CacheSize;

    const-string v1, "MB_100"

    const-string v2, "100MB"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v3, v2}, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$CacheSize;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$CacheSize;->MB_100:Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$CacheSize;

    new-instance v0, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$CacheSize;

    const-string v1, "MB_500"

    const-string v2, "500MB"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v4, v2}, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$CacheSize;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$CacheSize;->MB_500:Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$CacheSize;

    new-instance v0, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$CacheSize;

    const-string v1, "GB_1"

    const-string v2, "1GB"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v5, v2}, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$CacheSize;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$CacheSize;->GB_1:Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$CacheSize;

    const/4 v0, 0x3

    .line 209
    new-array v0, v0, [Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$CacheSize;

    sget-object v1, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$CacheSize;->MB_100:Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$CacheSize;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$CacheSize;->MB_500:Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$CacheSize;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$CacheSize;->GB_1:Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$CacheSize;

    aput-object v1, v0, v5

    sput-object v0, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$CacheSize;->$VALUES:[Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$CacheSize;

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

    .line 216
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 217
    iput p3, p0, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$CacheSize;->position:I

    .line 218
    iput-object p4, p0, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$CacheSize;->detail:Ljava/lang/String;

    return-void
.end method

.method public static getDetailByPosition(I)Ljava/lang/String;
    .locals 5

    .line 222
    invoke-static {}, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$CacheSize;->values()[Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$CacheSize;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 223
    iget v4, v3, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$CacheSize;->position:I

    if-ne p0, v4, :cond_0

    .line 224
    iget-object p0, v3, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$CacheSize;->detail:Ljava/lang/String;

    return-object p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$CacheSize;
    .locals 1

    .line 209
    const-class v0, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$CacheSize;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$CacheSize;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$CacheSize;
    .locals 1

    .line 209
    sget-object v0, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$CacheSize;->$VALUES:[Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$CacheSize;

    invoke-virtual {v0}, [Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$CacheSize;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$CacheSize;

    return-object v0
.end method
