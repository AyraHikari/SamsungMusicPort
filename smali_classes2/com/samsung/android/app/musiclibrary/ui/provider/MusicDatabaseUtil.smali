.class public final Lcom/samsung/android/app/musiclibrary/ui/provider/MusicDatabaseUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/text/Collator;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private static a([B)I
    .locals 1

    .line 35
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    aget-byte v0, p0, v0

    if-eqz v0, :cond_0

    .line 36
    array-length p0, p0

    return p0

    .line 39
    :cond_0
    array-length p0, p0

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 26
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/ui/provider/MusicDatabaseUtil;->c(Ljava/lang/String;)[B

    move-result-object p0

    .line 28
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/ui/provider/MusicDatabaseUtil;->a([B)I

    move-result v2

    const-string v3, "ISO8859_1"

    invoke-direct {v0, p0, v1, v2, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string p0, ""

    return-object p0
.end method

.method public static a()V
    .locals 2

    .line 54
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/MusicDatabaseUtil;->a:Ljava/text/Collator;

    .line 55
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/MusicDatabaseUtil;->a:Ljava/text/Collator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/text/Collator;->setStrength(I)V

    return-void
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    if-eqz p0, :cond_9

    const-string v0, "<unknown>"

    .line 61
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "\u0001"

    return-object p0

    :cond_0
    const-string v0, "\u0001"

    .line 66
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .line 69
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string v1, "the "

    .line 70
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    .line 71
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_1
    const-string v1, "an "

    .line 73
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    .line 74
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_2
    const-string v1, "a "

    .line 76
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x2

    .line 77
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_3
    const-string v1, ", the"

    .line 79
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_4

    const-string v1, ",the"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, ", an"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, ",an"

    .line 80
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, ", a"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, ",a"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    const/16 v1, 0x2c

    .line 81
    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_5
    const-string v1, "[\\[\\]\\(\\)\"\'.,?!]"

    const-string v3, ""

    .line 83
    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 84
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_8

    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x2e

    .line 89
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    :goto_0
    if-ge v2, v4, :cond_6

    .line 92
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 95
    :cond_6
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 97
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v0, :cond_7

    const-string v0, "\u0001"

    .line 99
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    :cond_7
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/ui/provider/MusicDatabaseUtil;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_8
    const-string p0, ""

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method private static c(Ljava/lang/String;)[B
    .locals 2

    .line 44
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/MusicDatabaseUtil;->a:Ljava/text/Collator;

    if-nez v0, :cond_0

    .line 45
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/MusicDatabaseUtil;->a:Ljava/text/Collator;

    .line 46
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/MusicDatabaseUtil;->a:Ljava/text/Collator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/text/Collator;->setStrength(I)V

    .line 48
    :cond_0
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/MusicDatabaseUtil;->a:Ljava/text/Collator;

    invoke-virtual {v0, p0}, Ljava/text/Collator;->getCollationKey(Ljava/lang/String;)Ljava/text/CollationKey;

    move-result-object p0

    invoke-virtual {p0}, Ljava/text/CollationKey;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method
