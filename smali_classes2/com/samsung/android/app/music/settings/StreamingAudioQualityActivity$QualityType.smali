.class final enum Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity$QualityType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "QualityType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity$QualityType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity$QualityType;

.field public static final enum HIGH:Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity$QualityType;

.field public static final enum LOW:Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity$QualityType;

.field public static final enum MIDDLE:Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity$QualityType;


# instance fields
.field private intType:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 58
    new-instance v0, Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity$QualityType;

    const-string v1, "LOW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity$QualityType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity$QualityType;->LOW:Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity$QualityType;

    new-instance v0, Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity$QualityType;

    const-string v1, "MIDDLE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity$QualityType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity$QualityType;->MIDDLE:Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity$QualityType;

    new-instance v0, Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity$QualityType;

    const-string v1, "HIGH"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity$QualityType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity$QualityType;->HIGH:Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity$QualityType;

    const/4 v0, 0x3

    .line 57
    new-array v0, v0, [Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity$QualityType;

    sget-object v1, Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity$QualityType;->LOW:Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity$QualityType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity$QualityType;->MIDDLE:Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity$QualityType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity$QualityType;->HIGH:Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity$QualityType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity$QualityType;->$VALUES:[Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity$QualityType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 62
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 63
    iput p3, p0, Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity$QualityType;->intType:I

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity$QualityType;)I
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity$QualityType;->getIntType()I

    move-result p0

    return p0
.end method

.method private getIntType()I
    .locals 1

    .line 67
    iget v0, p0, Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity$QualityType;->intType:I

    return v0
.end method

.method public static getQualityType(I)Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity$QualityType;
    .locals 6

    .line 71
    sget-object v0, Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity$QualityType;->MIDDLE:Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity$QualityType;

    .line 73
    invoke-static {}, Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity$QualityType;->values()[Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity$QualityType;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 74
    invoke-direct {v4}, Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity$QualityType;->getIntType()I

    move-result v5

    if-ne v5, p0, :cond_0

    move-object v0, v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity$QualityType;
    .locals 1

    .line 57
    const-class v0, Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity$QualityType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity$QualityType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity$QualityType;
    .locals 1

    .line 57
    sget-object v0, Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity$QualityType;->$VALUES:[Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity$QualityType;

    invoke-virtual {v0}, [Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity$QualityType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity$QualityType;

    return-object v0
.end method
