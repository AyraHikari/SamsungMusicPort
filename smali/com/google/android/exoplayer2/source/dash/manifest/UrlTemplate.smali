.class public final Lcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:[Ljava/lang/String;

.field private final b:[I

.field private final c:[Ljava/lang/String;

.field private final d:I


# direct methods
.method private constructor <init>([Ljava/lang/String;[I[Ljava/lang/String;I)V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;->a:[Ljava/lang/String;

    .line 67
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;->b:[I

    .line 68
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;->c:[Ljava/lang/String;

    .line 69
    iput p4, p0, Lcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;->d:I

    return-void
.end method

.method private static a(Ljava/lang/String;[Ljava/lang/String;[I[Ljava/lang/String;)I
    .locals 10

    const-string v0, ""

    const/4 v1, 0x0

    .line 118
    aput-object v0, p1, v1

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 121
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_a

    const-string v3, "$"

    .line 122
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 124
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, p1, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v2

    .line 125
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0

    :cond_0
    if-eq v3, v0, :cond_1

    .line 127
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v5, p1, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v2

    :goto_1
    move v0, v3

    goto :goto_0

    :cond_1
    const-string v3, "$$"

    .line 129
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 130
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, p1, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "$"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p1, v2

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_2
    const-string v3, "$"

    add-int/lit8 v0, v0, 0x1

    .line 133
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    .line 134
    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v5, "RepresentationID"

    .line 135
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_3

    .line 136
    aput v6, p2, v2

    goto/16 :goto_4

    :cond_3
    const-string v5, "%0"

    .line 138
    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const-string v7, "%01d"

    if-eq v5, v4, :cond_5

    .line 141
    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "d"

    .line 142
    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 143
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "d"

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 145
    :cond_4
    invoke-virtual {v0, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 147
    :cond_5
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v5

    const v8, -0x74423897

    const/4 v9, 0x2

    if-eq v5, v8, :cond_8

    const v8, 0x27c6ed

    if-eq v5, v8, :cond_7

    const v8, 0x246e091

    if-eq v5, v8, :cond_6

    goto :goto_2

    :cond_6
    const-string v5, "Bandwidth"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v4, 0x1

    goto :goto_2

    :cond_7
    const-string v5, "Time"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v4, 0x2

    goto :goto_2

    :cond_8
    const-string v5, "Number"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v4, 0x0

    :cond_9
    :goto_2
    packed-switch v4, :pswitch_data_0

    .line 158
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid template: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    const/4 v0, 0x4

    .line 155
    aput v0, p2, v2

    goto :goto_3

    :pswitch_1
    const/4 v0, 0x3

    .line 152
    aput v0, p2, v2

    goto :goto_3

    .line 149
    :pswitch_2
    aput v9, p2, v2

    .line 160
    :goto_3
    aput-object v7, p3, v2

    :goto_4
    add-int/lit8 v2, v2, 0x1

    const-string v0, ""

    .line 163
    aput-object v0, p1, v2

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    :cond_a
    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Ljava/lang/String;)Lcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;
    .locals 4

    const/4 v0, 0x5

    .line 54
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x4

    .line 55
    new-array v2, v1, [I

    .line 56
    new-array v1, v1, [Ljava/lang/String;

    .line 57
    invoke-static {p0, v0, v2, v1}, Lcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;->a(Ljava/lang/String;[Ljava/lang/String;[I[Ljava/lang/String;)I

    move-result p0

    .line 58
    new-instance v3, Lcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;

    invoke-direct {v3, v0, v2, v1, p0}, Lcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;-><init>([Ljava/lang/String;[I[Ljava/lang/String;I)V

    return-object v3
.end method


# virtual methods
.method public a(Ljava/lang/String;JIJ)Ljava/lang/String;
    .locals 7

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 85
    :goto_0
    iget v3, p0, Lcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;->d:I

    if-ge v2, v3, :cond_4

    .line 86
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;->a:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;->b:[I

    aget v3, v3, v2

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 88
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 89
    :cond_0
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;->b:[I

    aget v3, v3, v2

    const/4 v5, 0x2

    if-ne v3, v5, :cond_1

    .line 90
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v5, p0, Lcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;->c:[Ljava/lang/String;

    aget-object v5, v5, v2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v1

    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 91
    :cond_1
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;->b:[I

    aget v3, v3, v2

    const/4 v5, 0x3

    if-ne v3, v5, :cond_2

    .line 92
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v5, p0, Lcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;->c:[Ljava/lang/String;

    aget-object v5, v5, v2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v1

    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 93
    :cond_2
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;->b:[I

    aget v3, v3, v2

    const/4 v5, 0x4

    if-ne v3, v5, :cond_3

    .line 94
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v5, p0, Lcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;->c:[Ljava/lang/String;

    aget-object v5, v5, v2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v1

    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 97
    :cond_4
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;->a:[Ljava/lang/String;

    iget p2, p0, Lcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;->d:I

    aget-object p1, p1, p2

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
