.class public final enum Lcom/samsung/android/app/music/milk/MilkConstants$CacheSizeType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/MilkConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CacheSizeType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/app/music/milk/MilkConstants$CacheSizeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/app/music/milk/MilkConstants$CacheSizeType;

.field public static final enum GB_1:Lcom/samsung/android/app/music/milk/MilkConstants$CacheSizeType;

.field public static final enum MB_100:Lcom/samsung/android/app/music/milk/MilkConstants$CacheSizeType;

.field public static final enum MB_500:Lcom/samsung/android/app/music/milk/MilkConstants$CacheSizeType;


# instance fields
.field private position:I

.field private value:J


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 775
    new-instance v6, Lcom/samsung/android/app/music/milk/MilkConstants$CacheSizeType;

    const-string v1, "MB_100"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/32 v4, 0x6400000

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/milk/MilkConstants$CacheSizeType;-><init>(Ljava/lang/String;IIJ)V

    sput-object v6, Lcom/samsung/android/app/music/milk/MilkConstants$CacheSizeType;->MB_100:Lcom/samsung/android/app/music/milk/MilkConstants$CacheSizeType;

    new-instance v0, Lcom/samsung/android/app/music/milk/MilkConstants$CacheSizeType;

    const-string v8, "MB_500"

    const/4 v9, 0x1

    const/4 v10, 0x1

    const-wide/32 v11, 0x1f400000

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/samsung/android/app/music/milk/MilkConstants$CacheSizeType;-><init>(Ljava/lang/String;IIJ)V

    sput-object v0, Lcom/samsung/android/app/music/milk/MilkConstants$CacheSizeType;->MB_500:Lcom/samsung/android/app/music/milk/MilkConstants$CacheSizeType;

    new-instance v0, Lcom/samsung/android/app/music/milk/MilkConstants$CacheSizeType;

    const-string v2, "GB_1"

    const/4 v3, 0x2

    const/4 v4, 0x2

    const-wide/32 v5, 0x3e800000

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/app/music/milk/MilkConstants$CacheSizeType;-><init>(Ljava/lang/String;IIJ)V

    sput-object v0, Lcom/samsung/android/app/music/milk/MilkConstants$CacheSizeType;->GB_1:Lcom/samsung/android/app/music/milk/MilkConstants$CacheSizeType;

    const/4 v0, 0x3

    .line 774
    new-array v0, v0, [Lcom/samsung/android/app/music/milk/MilkConstants$CacheSizeType;

    sget-object v1, Lcom/samsung/android/app/music/milk/MilkConstants$CacheSizeType;->MB_100:Lcom/samsung/android/app/music/milk/MilkConstants$CacheSizeType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/app/music/milk/MilkConstants$CacheSizeType;->MB_500:Lcom/samsung/android/app/music/milk/MilkConstants$CacheSizeType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/app/music/milk/MilkConstants$CacheSizeType;->GB_1:Lcom/samsung/android/app/music/milk/MilkConstants$CacheSizeType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/app/music/milk/MilkConstants$CacheSizeType;->$VALUES:[Lcom/samsung/android/app/music/milk/MilkConstants$CacheSizeType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ)V"
        }
    .end annotation

    .line 781
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 782
    iput p3, p0, Lcom/samsung/android/app/music/milk/MilkConstants$CacheSizeType;->position:I

    .line 783
    iput-wide p4, p0, Lcom/samsung/android/app/music/milk/MilkConstants$CacheSizeType;->value:J

    return-void
.end method

.method public static getSizeType(I)Lcom/samsung/android/app/music/milk/MilkConstants$CacheSizeType;
    .locals 5

    .line 795
    invoke-static {}, Lcom/samsung/android/app/music/milk/MilkConstants$CacheSizeType;->values()[Lcom/samsung/android/app/music/milk/MilkConstants$CacheSizeType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 796
    iget v4, v3, Lcom/samsung/android/app/music/milk/MilkConstants$CacheSizeType;->position:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getSizeType(J)Lcom/samsung/android/app/music/milk/MilkConstants$CacheSizeType;
    .locals 6

    .line 805
    invoke-static {}, Lcom/samsung/android/app/music/milk/MilkConstants$CacheSizeType;->values()[Lcom/samsung/android/app/music/milk/MilkConstants$CacheSizeType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 806
    iget-wide v4, v3, Lcom/samsung/android/app/music/milk/MilkConstants$CacheSizeType;->value:J

    cmp-long v4, v4, p0

    if-nez v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/app/music/milk/MilkConstants$CacheSizeType;
    .locals 1

    .line 774
    const-class v0, Lcom/samsung/android/app/music/milk/MilkConstants$CacheSizeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/music/milk/MilkConstants$CacheSizeType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/app/music/milk/MilkConstants$CacheSizeType;
    .locals 1

    .line 774
    sget-object v0, Lcom/samsung/android/app/music/milk/MilkConstants$CacheSizeType;->$VALUES:[Lcom/samsung/android/app/music/milk/MilkConstants$CacheSizeType;

    invoke-virtual {v0}, [Lcom/samsung/android/app/music/milk/MilkConstants$CacheSizeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/app/music/milk/MilkConstants$CacheSizeType;

    return-object v0
.end method


# virtual methods
.method public getPosition()I
    .locals 1

    .line 787
    iget v0, p0, Lcom/samsung/android/app/music/milk/MilkConstants$CacheSizeType;->position:I

    return v0
.end method

.method public getValue()J
    .locals 2

    .line 791
    iget-wide v0, p0, Lcom/samsung/android/app/music/milk/MilkConstants$CacheSizeType;->value:J

    return-wide v0
.end method
