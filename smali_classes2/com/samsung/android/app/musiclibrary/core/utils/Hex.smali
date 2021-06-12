.class public final Lcom/samsung/android/app/musiclibrary/core/utils/Hex;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final HEXES:Ljava/lang/String; = "0123456789ABCDEF"

.field public static final INSTANCE:Lcom/samsung/android/app/musiclibrary/core/utils/Hex;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 3
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/utils/Hex;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/core/utils/Hex;-><init>()V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/utils/Hex;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/utils/Hex;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getHexString(B)Ljava/lang/String;
    .locals 3

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    and-int/lit16 v1, p1, 0xf0

    shr-int/lit8 v1, v1, 0x4

    and-int/lit8 p1, p1, 0xf

    const-string v2, "0123456789ABCDEF"

    .line 17
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "0123456789ABCDEF"

    invoke-virtual {v1, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "StringBuilder(2).run {\n \u2026\n        toString()\n    }"

    .line 13
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final getHexString([B)Ljava/lang/String;
    .locals 6

    if-eqz p1, :cond_1

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p1

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 41
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-byte v3, p1, v2

    and-int/lit16 v4, v3, 0xf0

    shr-int/lit8 v4, v4, 0x4

    and-int/lit8 v3, v3, 0xf

    const-string v5, "0123456789ABCDEF"

    .line 35
    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v4, "0123456789ABCDEF"

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const-string p1, ""

    :goto_1
    const-string v0, "bytes?.run {\n        val\u2026sb.toString()\n    } ?: \"\""

    .line 38
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
