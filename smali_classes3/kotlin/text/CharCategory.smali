.class public final enum Lkotlin/text/CharCategory;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/text/CharCategory$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lkotlin/text/CharCategory;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lkotlin/text/CharCategory;

.field public static final enum COMBINING_SPACING_MARK:Lkotlin/text/CharCategory;

.field public static final enum CONNECTOR_PUNCTUATION:Lkotlin/text/CharCategory;

.field public static final enum CONTROL:Lkotlin/text/CharCategory;

.field public static final enum CURRENCY_SYMBOL:Lkotlin/text/CharCategory;

.field public static final Companion:Lkotlin/text/CharCategory$Companion;

.field public static final enum DASH_PUNCTUATION:Lkotlin/text/CharCategory;

.field public static final enum DECIMAL_DIGIT_NUMBER:Lkotlin/text/CharCategory;

.field public static final enum ENCLOSING_MARK:Lkotlin/text/CharCategory;

.field public static final enum END_PUNCTUATION:Lkotlin/text/CharCategory;

.field public static final enum FINAL_QUOTE_PUNCTUATION:Lkotlin/text/CharCategory;

.field public static final enum FORMAT:Lkotlin/text/CharCategory;

.field public static final enum INITIAL_QUOTE_PUNCTUATION:Lkotlin/text/CharCategory;

.field public static final enum LETTER_NUMBER:Lkotlin/text/CharCategory;

.field public static final enum LINE_SEPARATOR:Lkotlin/text/CharCategory;

.field public static final enum LOWERCASE_LETTER:Lkotlin/text/CharCategory;

.field public static final enum MATH_SYMBOL:Lkotlin/text/CharCategory;

.field public static final enum MODIFIER_LETTER:Lkotlin/text/CharCategory;

.field public static final enum MODIFIER_SYMBOL:Lkotlin/text/CharCategory;

.field public static final enum NON_SPACING_MARK:Lkotlin/text/CharCategory;

.field public static final enum OTHER_LETTER:Lkotlin/text/CharCategory;

.field public static final enum OTHER_NUMBER:Lkotlin/text/CharCategory;

.field public static final enum OTHER_PUNCTUATION:Lkotlin/text/CharCategory;

.field public static final enum OTHER_SYMBOL:Lkotlin/text/CharCategory;

.field public static final enum PARAGRAPH_SEPARATOR:Lkotlin/text/CharCategory;

.field public static final enum PRIVATE_USE:Lkotlin/text/CharCategory;

.field public static final enum SPACE_SEPARATOR:Lkotlin/text/CharCategory;

.field public static final enum START_PUNCTUATION:Lkotlin/text/CharCategory;

.field public static final enum SURROGATE:Lkotlin/text/CharCategory;

.field public static final enum TITLECASE_LETTER:Lkotlin/text/CharCategory;

.field public static final enum UNASSIGNED:Lkotlin/text/CharCategory;

.field public static final enum UPPERCASE_LETTER:Lkotlin/text/CharCategory;

.field private static final categoryMap$delegate:Lkotlin/Lazy;


# instance fields
.field private final code:Ljava/lang/String;

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/16 v0, 0x1e

    new-array v0, v0, [Lkotlin/text/CharCategory;

    new-instance v1, Lkotlin/text/CharCategory;

    const-string v2, "UNASSIGNED"

    const-string v3, "Cn"

    const/4 v4, 0x0

    .line 15
    invoke-direct {v1, v2, v4, v4, v3}, Lkotlin/text/CharCategory;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lkotlin/text/CharCategory;->UNASSIGNED:Lkotlin/text/CharCategory;

    aput-object v1, v0, v4

    new-instance v1, Lkotlin/text/CharCategory;

    const-string v2, "UPPERCASE_LETTER"

    const-string v3, "Lu"

    const/4 v4, 0x1

    .line 20
    invoke-direct {v1, v2, v4, v4, v3}, Lkotlin/text/CharCategory;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lkotlin/text/CharCategory;->UPPERCASE_LETTER:Lkotlin/text/CharCategory;

    aput-object v1, v0, v4

    new-instance v1, Lkotlin/text/CharCategory;

    const-string v2, "LOWERCASE_LETTER"

    const-string v3, "Ll"

    const/4 v4, 0x2

    .line 25
    invoke-direct {v1, v2, v4, v4, v3}, Lkotlin/text/CharCategory;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lkotlin/text/CharCategory;->LOWERCASE_LETTER:Lkotlin/text/CharCategory;

    aput-object v1, v0, v4

    new-instance v1, Lkotlin/text/CharCategory;

    const-string v2, "TITLECASE_LETTER"

    const-string v3, "Lt"

    const/4 v4, 0x3

    .line 30
    invoke-direct {v1, v2, v4, v4, v3}, Lkotlin/text/CharCategory;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lkotlin/text/CharCategory;->TITLECASE_LETTER:Lkotlin/text/CharCategory;

    aput-object v1, v0, v4

    new-instance v1, Lkotlin/text/CharCategory;

    const-string v2, "MODIFIER_LETTER"

    const-string v3, "Lm"

    const/4 v4, 0x4

    .line 35
    invoke-direct {v1, v2, v4, v4, v3}, Lkotlin/text/CharCategory;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lkotlin/text/CharCategory;->MODIFIER_LETTER:Lkotlin/text/CharCategory;

    aput-object v1, v0, v4

    new-instance v1, Lkotlin/text/CharCategory;

    const-string v2, "OTHER_LETTER"

    const-string v3, "Lo"

    const/4 v4, 0x5

    .line 40
    invoke-direct {v1, v2, v4, v4, v3}, Lkotlin/text/CharCategory;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lkotlin/text/CharCategory;->OTHER_LETTER:Lkotlin/text/CharCategory;

    aput-object v1, v0, v4

    new-instance v1, Lkotlin/text/CharCategory;

    const-string v2, "NON_SPACING_MARK"

    const-string v3, "Mn"

    const/4 v4, 0x6

    .line 45
    invoke-direct {v1, v2, v4, v4, v3}, Lkotlin/text/CharCategory;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lkotlin/text/CharCategory;->NON_SPACING_MARK:Lkotlin/text/CharCategory;

    aput-object v1, v0, v4

    new-instance v1, Lkotlin/text/CharCategory;

    const-string v2, "ENCLOSING_MARK"

    const-string v3, "Me"

    const/4 v4, 0x7

    .line 50
    invoke-direct {v1, v2, v4, v4, v3}, Lkotlin/text/CharCategory;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lkotlin/text/CharCategory;->ENCLOSING_MARK:Lkotlin/text/CharCategory;

    aput-object v1, v0, v4

    new-instance v1, Lkotlin/text/CharCategory;

    const-string v2, "COMBINING_SPACING_MARK"

    const-string v3, "Mc"

    const/16 v4, 0x8

    .line 55
    invoke-direct {v1, v2, v4, v4, v3}, Lkotlin/text/CharCategory;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lkotlin/text/CharCategory;->COMBINING_SPACING_MARK:Lkotlin/text/CharCategory;

    aput-object v1, v0, v4

    new-instance v1, Lkotlin/text/CharCategory;

    const-string v2, "DECIMAL_DIGIT_NUMBER"

    const-string v3, "Nd"

    const/16 v4, 0x9

    .line 60
    invoke-direct {v1, v2, v4, v4, v3}, Lkotlin/text/CharCategory;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lkotlin/text/CharCategory;->DECIMAL_DIGIT_NUMBER:Lkotlin/text/CharCategory;

    aput-object v1, v0, v4

    new-instance v1, Lkotlin/text/CharCategory;

    const-string v2, "LETTER_NUMBER"

    const-string v3, "Nl"

    const/16 v4, 0xa

    .line 65
    invoke-direct {v1, v2, v4, v4, v3}, Lkotlin/text/CharCategory;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lkotlin/text/CharCategory;->LETTER_NUMBER:Lkotlin/text/CharCategory;

    aput-object v1, v0, v4

    new-instance v1, Lkotlin/text/CharCategory;

    const-string v2, "OTHER_NUMBER"

    const-string v3, "No"

    const/16 v4, 0xb

    .line 70
    invoke-direct {v1, v2, v4, v4, v3}, Lkotlin/text/CharCategory;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lkotlin/text/CharCategory;->OTHER_NUMBER:Lkotlin/text/CharCategory;

    aput-object v1, v0, v4

    new-instance v1, Lkotlin/text/CharCategory;

    const-string v2, "SPACE_SEPARATOR"

    const-string v3, "Zs"

    const/16 v4, 0xc

    .line 75
    invoke-direct {v1, v2, v4, v4, v3}, Lkotlin/text/CharCategory;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lkotlin/text/CharCategory;->SPACE_SEPARATOR:Lkotlin/text/CharCategory;

    aput-object v1, v0, v4

    new-instance v1, Lkotlin/text/CharCategory;

    const-string v2, "LINE_SEPARATOR"

    const-string v3, "Zl"

    const/16 v4, 0xd

    .line 80
    invoke-direct {v1, v2, v4, v4, v3}, Lkotlin/text/CharCategory;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lkotlin/text/CharCategory;->LINE_SEPARATOR:Lkotlin/text/CharCategory;

    aput-object v1, v0, v4

    new-instance v1, Lkotlin/text/CharCategory;

    const-string v2, "PARAGRAPH_SEPARATOR"

    const-string v3, "Zp"

    const/16 v4, 0xe

    .line 85
    invoke-direct {v1, v2, v4, v4, v3}, Lkotlin/text/CharCategory;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lkotlin/text/CharCategory;->PARAGRAPH_SEPARATOR:Lkotlin/text/CharCategory;

    aput-object v1, v0, v4

    new-instance v1, Lkotlin/text/CharCategory;

    const-string v2, "CONTROL"

    const-string v3, "Cc"

    const/16 v4, 0xf

    const/16 v5, 0xf

    .line 90
    invoke-direct {v1, v2, v4, v5, v3}, Lkotlin/text/CharCategory;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lkotlin/text/CharCategory;->CONTROL:Lkotlin/text/CharCategory;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/text/CharCategory;

    const-string v2, "FORMAT"

    const-string v3, "Cf"

    const/16 v4, 0x10

    const/16 v5, 0x10

    .line 95
    invoke-direct {v1, v2, v4, v5, v3}, Lkotlin/text/CharCategory;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lkotlin/text/CharCategory;->FORMAT:Lkotlin/text/CharCategory;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/text/CharCategory;

    const-string v2, "PRIVATE_USE"

    const-string v3, "Co"

    const/16 v4, 0x11

    const/16 v5, 0x12

    .line 100
    invoke-direct {v1, v2, v4, v5, v3}, Lkotlin/text/CharCategory;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lkotlin/text/CharCategory;->PRIVATE_USE:Lkotlin/text/CharCategory;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/text/CharCategory;

    const-string v2, "SURROGATE"

    const-string v3, "Cs"

    const/16 v4, 0x12

    const/16 v5, 0x13

    .line 105
    invoke-direct {v1, v2, v4, v5, v3}, Lkotlin/text/CharCategory;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lkotlin/text/CharCategory;->SURROGATE:Lkotlin/text/CharCategory;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/text/CharCategory;

    const-string v2, "DASH_PUNCTUATION"

    const-string v3, "Pd"

    const/16 v4, 0x13

    const/16 v5, 0x14

    .line 110
    invoke-direct {v1, v2, v4, v5, v3}, Lkotlin/text/CharCategory;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lkotlin/text/CharCategory;->DASH_PUNCTUATION:Lkotlin/text/CharCategory;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/text/CharCategory;

    const-string v2, "START_PUNCTUATION"

    const-string v3, "Ps"

    const/16 v4, 0x14

    const/16 v5, 0x15

    .line 115
    invoke-direct {v1, v2, v4, v5, v3}, Lkotlin/text/CharCategory;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lkotlin/text/CharCategory;->START_PUNCTUATION:Lkotlin/text/CharCategory;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/text/CharCategory;

    const-string v2, "END_PUNCTUATION"

    const-string v3, "Pe"

    const/16 v4, 0x15

    const/16 v5, 0x16

    .line 120
    invoke-direct {v1, v2, v4, v5, v3}, Lkotlin/text/CharCategory;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lkotlin/text/CharCategory;->END_PUNCTUATION:Lkotlin/text/CharCategory;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/text/CharCategory;

    const-string v2, "CONNECTOR_PUNCTUATION"

    const-string v3, "Pc"

    const/16 v4, 0x16

    const/16 v5, 0x17

    .line 125
    invoke-direct {v1, v2, v4, v5, v3}, Lkotlin/text/CharCategory;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lkotlin/text/CharCategory;->CONNECTOR_PUNCTUATION:Lkotlin/text/CharCategory;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/text/CharCategory;

    const-string v2, "OTHER_PUNCTUATION"

    const-string v3, "Po"

    const/16 v4, 0x17

    const/16 v5, 0x18

    .line 130
    invoke-direct {v1, v2, v4, v5, v3}, Lkotlin/text/CharCategory;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lkotlin/text/CharCategory;->OTHER_PUNCTUATION:Lkotlin/text/CharCategory;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/text/CharCategory;

    const-string v2, "MATH_SYMBOL"

    const-string v3, "Sm"

    const/16 v4, 0x18

    const/16 v5, 0x19

    .line 135
    invoke-direct {v1, v2, v4, v5, v3}, Lkotlin/text/CharCategory;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lkotlin/text/CharCategory;->MATH_SYMBOL:Lkotlin/text/CharCategory;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/text/CharCategory;

    const-string v2, "CURRENCY_SYMBOL"

    const-string v3, "Sc"

    const/16 v4, 0x19

    const/16 v5, 0x1a

    .line 140
    invoke-direct {v1, v2, v4, v5, v3}, Lkotlin/text/CharCategory;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lkotlin/text/CharCategory;->CURRENCY_SYMBOL:Lkotlin/text/CharCategory;

    const/16 v2, 0x19

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/text/CharCategory;

    const-string v2, "MODIFIER_SYMBOL"

    const-string v3, "Sk"

    const/16 v4, 0x1a

    const/16 v5, 0x1b

    .line 145
    invoke-direct {v1, v2, v4, v5, v3}, Lkotlin/text/CharCategory;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lkotlin/text/CharCategory;->MODIFIER_SYMBOL:Lkotlin/text/CharCategory;

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/text/CharCategory;

    const-string v2, "OTHER_SYMBOL"

    const-string v3, "So"

    const/16 v4, 0x1b

    const/16 v5, 0x1c

    .line 150
    invoke-direct {v1, v2, v4, v5, v3}, Lkotlin/text/CharCategory;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lkotlin/text/CharCategory;->OTHER_SYMBOL:Lkotlin/text/CharCategory;

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/text/CharCategory;

    const-string v2, "INITIAL_QUOTE_PUNCTUATION"

    const-string v3, "Pi"

    const/16 v4, 0x1c

    const/16 v5, 0x1d

    .line 155
    invoke-direct {v1, v2, v4, v5, v3}, Lkotlin/text/CharCategory;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lkotlin/text/CharCategory;->INITIAL_QUOTE_PUNCTUATION:Lkotlin/text/CharCategory;

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/text/CharCategory;

    const-string v2, "FINAL_QUOTE_PUNCTUATION"

    const-string v3, "Pf"

    const/16 v4, 0x1d

    const/16 v5, 0x1e

    .line 160
    invoke-direct {v1, v2, v4, v5, v3}, Lkotlin/text/CharCategory;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lkotlin/text/CharCategory;->FINAL_QUOTE_PUNCTUATION:Lkotlin/text/CharCategory;

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    sput-object v0, Lkotlin/text/CharCategory;->$VALUES:[Lkotlin/text/CharCategory;

    new-instance v0, Lkotlin/text/CharCategory$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/text/CharCategory$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlin/text/CharCategory;->Companion:Lkotlin/text/CharCategory$Companion;

    .line 169
    sget-object v0, Lkotlin/text/CharCategory$Companion$categoryMap$2;->INSTANCE:Lkotlin/text/CharCategory$Companion$categoryMap$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->a(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lkotlin/text/CharCategory;->categoryMap$delegate:Lkotlin/Lazy;

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

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lkotlin/text/CharCategory;->value:I

    iput-object p4, p0, Lkotlin/text/CharCategory;->code:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getCategoryMap$cp()Lkotlin/Lazy;
    .locals 1

    .line 11
    sget-object v0, Lkotlin/text/CharCategory;->categoryMap$delegate:Lkotlin/Lazy;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lkotlin/text/CharCategory;
    .locals 1

    const-class v0, Lkotlin/text/CharCategory;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lkotlin/text/CharCategory;

    return-object p0
.end method

.method public static values()[Lkotlin/text/CharCategory;
    .locals 1

    sget-object v0, Lkotlin/text/CharCategory;->$VALUES:[Lkotlin/text/CharCategory;

    invoke-virtual {v0}, [Lkotlin/text/CharCategory;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkotlin/text/CharCategory;

    return-object v0
.end method


# virtual methods
.method public final contains(C)Z
    .locals 1

    .line 165
    invoke-static {p1}, Ljava/lang/Character;->getType(C)I

    move-result p1

    iget v0, p0, Lkotlin/text/CharCategory;->value:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final getCode()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lkotlin/text/CharCategory;->code:Ljava/lang/String;

    return-object v0
.end method

.method public final getValue()I
    .locals 1

    .line 11
    iget v0, p0, Lkotlin/text/CharCategory;->value:I

    return v0
.end method
