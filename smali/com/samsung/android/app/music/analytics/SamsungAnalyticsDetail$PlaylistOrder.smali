.class public final enum Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$PlaylistOrder;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PlaylistOrder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$PlaylistOrder;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$PlaylistOrder;

.field public static final enum BOTTOM:Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$PlaylistOrder;

.field public static final enum NEXT_CURRENT:Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$PlaylistOrder;

.field public static final enum TOP:Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$PlaylistOrder;


# instance fields
.field private detail:Ljava/lang/String;

.field private position:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 187
    new-instance v0, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$PlaylistOrder;

    const-string v1, "TOP"

    const-string v2, "From the top"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v3, v2}, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$PlaylistOrder;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$PlaylistOrder;->TOP:Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$PlaylistOrder;

    new-instance v0, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$PlaylistOrder;

    const-string v1, "BOTTOM"

    const-string v2, "From the bottom"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v4, v2}, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$PlaylistOrder;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$PlaylistOrder;->BOTTOM:Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$PlaylistOrder;

    new-instance v0, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$PlaylistOrder;

    const-string v1, "NEXT_CURRENT"

    const-string v2, "Next to the playing song"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v5, v2}, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$PlaylistOrder;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$PlaylistOrder;->NEXT_CURRENT:Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$PlaylistOrder;

    const/4 v0, 0x3

    .line 186
    new-array v0, v0, [Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$PlaylistOrder;

    sget-object v1, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$PlaylistOrder;->TOP:Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$PlaylistOrder;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$PlaylistOrder;->BOTTOM:Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$PlaylistOrder;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$PlaylistOrder;->NEXT_CURRENT:Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$PlaylistOrder;

    aput-object v1, v0, v5

    sput-object v0, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$PlaylistOrder;->$VALUES:[Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$PlaylistOrder;

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

    .line 193
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 194
    iput p3, p0, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$PlaylistOrder;->position:I

    .line 195
    iput-object p4, p0, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$PlaylistOrder;->detail:Ljava/lang/String;

    return-void
.end method

.method public static getDetailByPosition(I)Ljava/lang/String;
    .locals 5

    .line 199
    invoke-static {}, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$PlaylistOrder;->values()[Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$PlaylistOrder;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 200
    iget v4, v3, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$PlaylistOrder;->position:I

    if-ne p0, v4, :cond_0

    .line 201
    iget-object p0, v3, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$PlaylistOrder;->detail:Ljava/lang/String;

    return-object p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$PlaylistOrder;
    .locals 1

    .line 186
    const-class v0, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$PlaylistOrder;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$PlaylistOrder;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$PlaylistOrder;
    .locals 1

    .line 186
    sget-object v0, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$PlaylistOrder;->$VALUES:[Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$PlaylistOrder;

    invoke-virtual {v0}, [Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$PlaylistOrder;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$PlaylistOrder;

    return-object v0
.end method
