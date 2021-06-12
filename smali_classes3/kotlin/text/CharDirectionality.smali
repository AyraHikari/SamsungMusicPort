.class public final enum Lkotlin/text/CharDirectionality;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/text/CharDirectionality$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lkotlin/text/CharDirectionality;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lkotlin/text/CharDirectionality;

.field public static final enum ARABIC_NUMBER:Lkotlin/text/CharDirectionality;

.field public static final enum BOUNDARY_NEUTRAL:Lkotlin/text/CharDirectionality;

.field public static final enum COMMON_NUMBER_SEPARATOR:Lkotlin/text/CharDirectionality;

.field public static final Companion:Lkotlin/text/CharDirectionality$Companion;

.field public static final enum EUROPEAN_NUMBER:Lkotlin/text/CharDirectionality;

.field public static final enum EUROPEAN_NUMBER_SEPARATOR:Lkotlin/text/CharDirectionality;

.field public static final enum EUROPEAN_NUMBER_TERMINATOR:Lkotlin/text/CharDirectionality;

.field public static final enum LEFT_TO_RIGHT:Lkotlin/text/CharDirectionality;

.field public static final enum LEFT_TO_RIGHT_EMBEDDING:Lkotlin/text/CharDirectionality;

.field public static final enum LEFT_TO_RIGHT_OVERRIDE:Lkotlin/text/CharDirectionality;

.field public static final enum NONSPACING_MARK:Lkotlin/text/CharDirectionality;

.field public static final enum OTHER_NEUTRALS:Lkotlin/text/CharDirectionality;

.field public static final enum PARAGRAPH_SEPARATOR:Lkotlin/text/CharDirectionality;

.field public static final enum POP_DIRECTIONAL_FORMAT:Lkotlin/text/CharDirectionality;

.field public static final enum RIGHT_TO_LEFT:Lkotlin/text/CharDirectionality;

.field public static final enum RIGHT_TO_LEFT_ARABIC:Lkotlin/text/CharDirectionality;

.field public static final enum RIGHT_TO_LEFT_EMBEDDING:Lkotlin/text/CharDirectionality;

.field public static final enum RIGHT_TO_LEFT_OVERRIDE:Lkotlin/text/CharDirectionality;

.field public static final enum SEGMENT_SEPARATOR:Lkotlin/text/CharDirectionality;

.field public static final enum UNDEFINED:Lkotlin/text/CharDirectionality;

.field public static final enum WHITESPACE:Lkotlin/text/CharDirectionality;

.field private static final directionalityMap$delegate:Lkotlin/Lazy;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v0, 0x14

    new-array v0, v0, [Lkotlin/text/CharDirectionality;

    new-instance v1, Lkotlin/text/CharDirectionality;

    const-string v2, "UNDEFINED"

    const/4 v3, 0x0

    const/4 v4, -0x1

    .line 19
    invoke-direct {v1, v2, v3, v4}, Lkotlin/text/CharDirectionality;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lkotlin/text/CharDirectionality;->UNDEFINED:Lkotlin/text/CharDirectionality;

    aput-object v1, v0, v3

    new-instance v1, Lkotlin/text/CharDirectionality;

    const-string v2, "LEFT_TO_RIGHT"

    const/4 v4, 0x1

    .line 24
    invoke-direct {v1, v2, v4, v3}, Lkotlin/text/CharDirectionality;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lkotlin/text/CharDirectionality;->LEFT_TO_RIGHT:Lkotlin/text/CharDirectionality;

    aput-object v1, v0, v4

    new-instance v1, Lkotlin/text/CharDirectionality;

    const-string v2, "RIGHT_TO_LEFT"

    const/4 v3, 0x2

    .line 29
    invoke-direct {v1, v2, v3, v4}, Lkotlin/text/CharDirectionality;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lkotlin/text/CharDirectionality;->RIGHT_TO_LEFT:Lkotlin/text/CharDirectionality;

    aput-object v1, v0, v3

    new-instance v1, Lkotlin/text/CharDirectionality;

    const-string v2, "RIGHT_TO_LEFT_ARABIC"

    const/4 v4, 0x3

    .line 34
    invoke-direct {v1, v2, v4, v3}, Lkotlin/text/CharDirectionality;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lkotlin/text/CharDirectionality;->RIGHT_TO_LEFT_ARABIC:Lkotlin/text/CharDirectionality;

    aput-object v1, v0, v4

    new-instance v1, Lkotlin/text/CharDirectionality;

    const-string v2, "EUROPEAN_NUMBER"

    const/4 v3, 0x4

    .line 39
    invoke-direct {v1, v2, v3, v4}, Lkotlin/text/CharDirectionality;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lkotlin/text/CharDirectionality;->EUROPEAN_NUMBER:Lkotlin/text/CharDirectionality;

    aput-object v1, v0, v3

    new-instance v1, Lkotlin/text/CharDirectionality;

    const-string v2, "EUROPEAN_NUMBER_SEPARATOR"

    const/4 v4, 0x5

    .line 44
    invoke-direct {v1, v2, v4, v3}, Lkotlin/text/CharDirectionality;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lkotlin/text/CharDirectionality;->EUROPEAN_NUMBER_SEPARATOR:Lkotlin/text/CharDirectionality;

    aput-object v1, v0, v4

    new-instance v1, Lkotlin/text/CharDirectionality;

    const-string v2, "EUROPEAN_NUMBER_TERMINATOR"

    const/4 v3, 0x6

    .line 49
    invoke-direct {v1, v2, v3, v4}, Lkotlin/text/CharDirectionality;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lkotlin/text/CharDirectionality;->EUROPEAN_NUMBER_TERMINATOR:Lkotlin/text/CharDirectionality;

    aput-object v1, v0, v3

    new-instance v1, Lkotlin/text/CharDirectionality;

    const-string v2, "ARABIC_NUMBER"

    const/4 v4, 0x7

    .line 54
    invoke-direct {v1, v2, v4, v3}, Lkotlin/text/CharDirectionality;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lkotlin/text/CharDirectionality;->ARABIC_NUMBER:Lkotlin/text/CharDirectionality;

    aput-object v1, v0, v4

    new-instance v1, Lkotlin/text/CharDirectionality;

    const-string v2, "COMMON_NUMBER_SEPARATOR"

    const/16 v3, 0x8

    .line 59
    invoke-direct {v1, v2, v3, v4}, Lkotlin/text/CharDirectionality;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lkotlin/text/CharDirectionality;->COMMON_NUMBER_SEPARATOR:Lkotlin/text/CharDirectionality;

    aput-object v1, v0, v3

    new-instance v1, Lkotlin/text/CharDirectionality;

    const-string v2, "NONSPACING_MARK"

    const/16 v4, 0x9

    .line 64
    invoke-direct {v1, v2, v4, v3}, Lkotlin/text/CharDirectionality;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lkotlin/text/CharDirectionality;->NONSPACING_MARK:Lkotlin/text/CharDirectionality;

    aput-object v1, v0, v4

    new-instance v1, Lkotlin/text/CharDirectionality;

    const-string v2, "BOUNDARY_NEUTRAL"

    const/16 v3, 0xa

    .line 69
    invoke-direct {v1, v2, v3, v4}, Lkotlin/text/CharDirectionality;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lkotlin/text/CharDirectionality;->BOUNDARY_NEUTRAL:Lkotlin/text/CharDirectionality;

    aput-object v1, v0, v3

    new-instance v1, Lkotlin/text/CharDirectionality;

    const-string v2, "PARAGRAPH_SEPARATOR"

    const/16 v4, 0xb

    .line 74
    invoke-direct {v1, v2, v4, v3}, Lkotlin/text/CharDirectionality;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lkotlin/text/CharDirectionality;->PARAGRAPH_SEPARATOR:Lkotlin/text/CharDirectionality;

    aput-object v1, v0, v4

    new-instance v1, Lkotlin/text/CharDirectionality;

    const-string v2, "SEGMENT_SEPARATOR"

    const/16 v3, 0xc

    .line 79
    invoke-direct {v1, v2, v3, v4}, Lkotlin/text/CharDirectionality;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lkotlin/text/CharDirectionality;->SEGMENT_SEPARATOR:Lkotlin/text/CharDirectionality;

    aput-object v1, v0, v3

    new-instance v1, Lkotlin/text/CharDirectionality;

    const-string v2, "WHITESPACE"

    const/16 v4, 0xd

    .line 84
    invoke-direct {v1, v2, v4, v3}, Lkotlin/text/CharDirectionality;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lkotlin/text/CharDirectionality;->WHITESPACE:Lkotlin/text/CharDirectionality;

    aput-object v1, v0, v4

    new-instance v1, Lkotlin/text/CharDirectionality;

    const-string v2, "OTHER_NEUTRALS"

    const/16 v3, 0xe

    .line 89
    invoke-direct {v1, v2, v3, v4}, Lkotlin/text/CharDirectionality;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lkotlin/text/CharDirectionality;->OTHER_NEUTRALS:Lkotlin/text/CharDirectionality;

    aput-object v1, v0, v3

    new-instance v1, Lkotlin/text/CharDirectionality;

    const-string v2, "LEFT_TO_RIGHT_EMBEDDING"

    const/16 v4, 0xf

    .line 94
    invoke-direct {v1, v2, v4, v3}, Lkotlin/text/CharDirectionality;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lkotlin/text/CharDirectionality;->LEFT_TO_RIGHT_EMBEDDING:Lkotlin/text/CharDirectionality;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/text/CharDirectionality;

    const-string v2, "LEFT_TO_RIGHT_OVERRIDE"

    const/16 v3, 0x10

    .line 99
    invoke-direct {v1, v2, v3, v4}, Lkotlin/text/CharDirectionality;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lkotlin/text/CharDirectionality;->LEFT_TO_RIGHT_OVERRIDE:Lkotlin/text/CharDirectionality;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/text/CharDirectionality;

    const-string v2, "RIGHT_TO_LEFT_EMBEDDING"

    const/16 v3, 0x11

    const/16 v4, 0x10

    .line 104
    invoke-direct {v1, v2, v3, v4}, Lkotlin/text/CharDirectionality;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lkotlin/text/CharDirectionality;->RIGHT_TO_LEFT_EMBEDDING:Lkotlin/text/CharDirectionality;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/text/CharDirectionality;

    const-string v2, "RIGHT_TO_LEFT_OVERRIDE"

    const/16 v3, 0x12

    const/16 v4, 0x11

    .line 109
    invoke-direct {v1, v2, v3, v4}, Lkotlin/text/CharDirectionality;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lkotlin/text/CharDirectionality;->RIGHT_TO_LEFT_OVERRIDE:Lkotlin/text/CharDirectionality;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/text/CharDirectionality;

    const-string v2, "POP_DIRECTIONAL_FORMAT"

    const/16 v3, 0x13

    const/16 v4, 0x12

    .line 114
    invoke-direct {v1, v2, v3, v4}, Lkotlin/text/CharDirectionality;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lkotlin/text/CharDirectionality;->POP_DIRECTIONAL_FORMAT:Lkotlin/text/CharDirectionality;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sput-object v0, Lkotlin/text/CharDirectionality;->$VALUES:[Lkotlin/text/CharDirectionality;

    new-instance v0, Lkotlin/text/CharDirectionality$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/text/CharDirectionality$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlin/text/CharDirectionality;->Companion:Lkotlin/text/CharDirectionality$Companion;

    .line 118
    sget-object v0, Lkotlin/text/CharDirectionality$Companion$directionalityMap$2;->INSTANCE:Lkotlin/text/CharDirectionality$Companion$directionalityMap$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->a(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lkotlin/text/CharDirectionality;->directionalityMap$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lkotlin/text/CharDirectionality;->value:I

    return-void
.end method

.method public static final synthetic access$getDirectionalityMap$cp()Lkotlin/Lazy;
    .locals 1

    .line 13
    sget-object v0, Lkotlin/text/CharDirectionality;->directionalityMap$delegate:Lkotlin/Lazy;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lkotlin/text/CharDirectionality;
    .locals 1

    const-class v0, Lkotlin/text/CharDirectionality;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lkotlin/text/CharDirectionality;

    return-object p0
.end method

.method public static values()[Lkotlin/text/CharDirectionality;
    .locals 1

    sget-object v0, Lkotlin/text/CharDirectionality;->$VALUES:[Lkotlin/text/CharDirectionality;

    invoke-virtual {v0}, [Lkotlin/text/CharDirectionality;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkotlin/text/CharDirectionality;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .line 13
    iget v0, p0, Lkotlin/text/CharDirectionality;->value:I

    return v0
.end method
