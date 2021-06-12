.class public final enum Lcom/samsung/android/app/music/advertise/AdConstants$ADPOPUP_TYPE;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/advertise/AdConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ADPOPUP_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/app/music/advertise/AdConstants$ADPOPUP_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/app/music/advertise/AdConstants$ADPOPUP_TYPE;

.field public static final enum INCROSS:Lcom/samsung/android/app/music/advertise/AdConstants$ADPOPUP_TYPE;

.field public static final enum INTERSTITIAL:Lcom/samsung/android/app/music/advertise/AdConstants$ADPOPUP_TYPE;

.field public static final enum MEZZO:Lcom/samsung/android/app/music/advertise/AdConstants$ADPOPUP_TYPE;

.field public static final enum NONE:Lcom/samsung/android/app/music/advertise/AdConstants$ADPOPUP_TYPE;

.field public static final enum POSTROLL:Lcom/samsung/android/app/music/advertise/AdConstants$ADPOPUP_TYPE;

.field public static final enum VIDEO:Lcom/samsung/android/app/music/advertise/AdConstants$ADPOPUP_TYPE;


# instance fields
.field value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 10
    new-instance v0, Lcom/samsung/android/app/music/advertise/AdConstants$ADPOPUP_TYPE;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/app/music/advertise/AdConstants$ADPOPUP_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/app/music/advertise/AdConstants$ADPOPUP_TYPE;->NONE:Lcom/samsung/android/app/music/advertise/AdConstants$ADPOPUP_TYPE;

    new-instance v0, Lcom/samsung/android/app/music/advertise/AdConstants$ADPOPUP_TYPE;

    const-string v1, "INTERSTITIAL"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/samsung/android/app/music/advertise/AdConstants$ADPOPUP_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/app/music/advertise/AdConstants$ADPOPUP_TYPE;->INTERSTITIAL:Lcom/samsung/android/app/music/advertise/AdConstants$ADPOPUP_TYPE;

    new-instance v0, Lcom/samsung/android/app/music/advertise/AdConstants$ADPOPUP_TYPE;

    const-string v1, "VIDEO"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/samsung/android/app/music/advertise/AdConstants$ADPOPUP_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/app/music/advertise/AdConstants$ADPOPUP_TYPE;->VIDEO:Lcom/samsung/android/app/music/advertise/AdConstants$ADPOPUP_TYPE;

    new-instance v0, Lcom/samsung/android/app/music/advertise/AdConstants$ADPOPUP_TYPE;

    const-string v1, "POSTROLL"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/samsung/android/app/music/advertise/AdConstants$ADPOPUP_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/app/music/advertise/AdConstants$ADPOPUP_TYPE;->POSTROLL:Lcom/samsung/android/app/music/advertise/AdConstants$ADPOPUP_TYPE;

    new-instance v0, Lcom/samsung/android/app/music/advertise/AdConstants$ADPOPUP_TYPE;

    const-string v1, "MEZZO"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lcom/samsung/android/app/music/advertise/AdConstants$ADPOPUP_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/app/music/advertise/AdConstants$ADPOPUP_TYPE;->MEZZO:Lcom/samsung/android/app/music/advertise/AdConstants$ADPOPUP_TYPE;

    new-instance v0, Lcom/samsung/android/app/music/advertise/AdConstants$ADPOPUP_TYPE;

    const-string v1, "INCROSS"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v7}, Lcom/samsung/android/app/music/advertise/AdConstants$ADPOPUP_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/app/music/advertise/AdConstants$ADPOPUP_TYPE;->INCROSS:Lcom/samsung/android/app/music/advertise/AdConstants$ADPOPUP_TYPE;

    const/4 v0, 0x6

    .line 9
    new-array v0, v0, [Lcom/samsung/android/app/music/advertise/AdConstants$ADPOPUP_TYPE;

    sget-object v1, Lcom/samsung/android/app/music/advertise/AdConstants$ADPOPUP_TYPE;->NONE:Lcom/samsung/android/app/music/advertise/AdConstants$ADPOPUP_TYPE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/app/music/advertise/AdConstants$ADPOPUP_TYPE;->INTERSTITIAL:Lcom/samsung/android/app/music/advertise/AdConstants$ADPOPUP_TYPE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/app/music/advertise/AdConstants$ADPOPUP_TYPE;->VIDEO:Lcom/samsung/android/app/music/advertise/AdConstants$ADPOPUP_TYPE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/app/music/advertise/AdConstants$ADPOPUP_TYPE;->POSTROLL:Lcom/samsung/android/app/music/advertise/AdConstants$ADPOPUP_TYPE;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/android/app/music/advertise/AdConstants$ADPOPUP_TYPE;->MEZZO:Lcom/samsung/android/app/music/advertise/AdConstants$ADPOPUP_TYPE;

    aput-object v1, v0, v6

    sget-object v1, Lcom/samsung/android/app/music/advertise/AdConstants$ADPOPUP_TYPE;->INCROSS:Lcom/samsung/android/app/music/advertise/AdConstants$ADPOPUP_TYPE;

    aput-object v1, v0, v7

    sput-object v0, Lcom/samsung/android/app/music/advertise/AdConstants$ADPOPUP_TYPE;->$VALUES:[Lcom/samsung/android/app/music/advertise/AdConstants$ADPOPUP_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 15
    iput p3, p0, Lcom/samsung/android/app/music/advertise/AdConstants$ADPOPUP_TYPE;->value:I

    return-void
.end method

.method public static create(I)Lcom/samsung/android/app/music/advertise/AdConstants$ADPOPUP_TYPE;
    .locals 5

    .line 19
    invoke-static {}, Lcom/samsung/android/app/music/advertise/AdConstants$ADPOPUP_TYPE;->values()[Lcom/samsung/android/app/music/advertise/AdConstants$ADPOPUP_TYPE;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 20
    invoke-virtual {v3}, Lcom/samsung/android/app/music/advertise/AdConstants$ADPOPUP_TYPE;->getValue()I

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 24
    :cond_1
    sget-object p0, Lcom/samsung/android/app/music/advertise/AdConstants$ADPOPUP_TYPE;->NONE:Lcom/samsung/android/app/music/advertise/AdConstants$ADPOPUP_TYPE;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/app/music/advertise/AdConstants$ADPOPUP_TYPE;
    .locals 1

    .line 9
    const-class v0, Lcom/samsung/android/app/music/advertise/AdConstants$ADPOPUP_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/music/advertise/AdConstants$ADPOPUP_TYPE;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/app/music/advertise/AdConstants$ADPOPUP_TYPE;
    .locals 1

    .line 9
    sget-object v0, Lcom/samsung/android/app/music/advertise/AdConstants$ADPOPUP_TYPE;->$VALUES:[Lcom/samsung/android/app/music/advertise/AdConstants$ADPOPUP_TYPE;

    invoke-virtual {v0}, [Lcom/samsung/android/app/music/advertise/AdConstants$ADPOPUP_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/app/music/advertise/AdConstants$ADPOPUP_TYPE;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 28
    iget v0, p0, Lcom/samsung/android/app/music/advertise/AdConstants$ADPOPUP_TYPE;->value:I

    return v0
.end method
