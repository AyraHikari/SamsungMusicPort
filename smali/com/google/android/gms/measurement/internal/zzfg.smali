.class public final Lcom/google/android/gms/measurement/internal/zzfg;
.super Lcom/google/android/gms/measurement/internal/zzez;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzfa;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzez;-><init>(Lcom/google/android/gms/measurement/internal/zzfa;)V

    return-void
.end method

.method static a(Lcom/google/android/gms/internal/measurement/zzgf;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzgg;
    .locals 4

    .line 39
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzgf;->a:[Lcom/google/android/gms/internal/measurement/zzgg;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 40
    iget-object v3, v2, Lcom/google/android/gms/internal/measurement/zzgg;->a:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static a(Ljava/lang/StringBuilder;I)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    const-string v1, "  "

    .line 299
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final a(Ljava/lang/StringBuilder;ILcom/google/android/gms/internal/measurement/zzfw;)V
    .locals 6

    if-nez p3, :cond_0

    return-void

    .line 257
    :cond_0
    invoke-static {p1, p2}, Lcom/google/android/gms/measurement/internal/zzfg;->a(Ljava/lang/StringBuilder;I)V

    const-string v0, "filter {\n"

    .line 258
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "complement"

    .line 259
    iget-object v1, p3, Lcom/google/android/gms/internal/measurement/zzfw;->c:Ljava/lang/Boolean;

    invoke-static {p1, p2, v0, v1}, Lcom/google/android/gms/measurement/internal/zzfg;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v0, "param_name"

    .line 260
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->o()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v1

    iget-object v2, p3, Lcom/google/android/gms/internal/measurement/zzfw;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzan;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2, v0, v1}, Lcom/google/android/gms/measurement/internal/zzfg;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v0, p2, 0x1

    const-string v1, "string_filter"

    .line 261
    iget-object v2, p3, Lcom/google/android/gms/internal/measurement/zzfw;->a:Lcom/google/android/gms/internal/measurement/zzfz;

    if-eqz v2, :cond_4

    .line 263
    invoke-static {p1, v0}, Lcom/google/android/gms/measurement/internal/zzfg;->a(Ljava/lang/StringBuilder;I)V

    .line 264
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " {\n"

    .line 265
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    iget-object v1, v2, Lcom/google/android/gms/internal/measurement/zzfz;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    const-string v1, "UNKNOWN_MATCH_TYPE"

    .line 268
    iget-object v3, v2, Lcom/google/android/gms/internal/measurement/zzfz;->a:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v1, "IN_LIST"

    goto :goto_0

    :pswitch_1
    const-string v1, "EXACT"

    goto :goto_0

    :pswitch_2
    const-string v1, "PARTIAL"

    goto :goto_0

    :pswitch_3
    const-string v1, "ENDS_WITH"

    goto :goto_0

    :pswitch_4
    const-string v1, "BEGINS_WITH"

    goto :goto_0

    :pswitch_5
    const-string v1, "REGEXP"

    :goto_0
    const-string v3, "match_type"

    .line 280
    invoke-static {p1, v0, v3, v1}, Lcom/google/android/gms/measurement/internal/zzfg;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_1
    const-string v1, "expression"

    .line 281
    iget-object v3, v2, Lcom/google/android/gms/internal/measurement/zzfz;->b:Ljava/lang/String;

    invoke-static {p1, v0, v1, v3}, Lcom/google/android/gms/measurement/internal/zzfg;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v1, "case_sensitive"

    .line 282
    iget-object v3, v2, Lcom/google/android/gms/internal/measurement/zzfz;->c:Ljava/lang/Boolean;

    invoke-static {p1, v0, v1, v3}, Lcom/google/android/gms/measurement/internal/zzfg;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 283
    iget-object v1, v2, Lcom/google/android/gms/internal/measurement/zzfz;->d:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_3

    add-int/lit8 v1, v0, 0x1

    .line 284
    invoke-static {p1, v1}, Lcom/google/android/gms/measurement/internal/zzfg;->a(Ljava/lang/StringBuilder;I)V

    const-string v1, "expression_list {\n"

    .line 285
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    iget-object v1, v2, Lcom/google/android/gms/internal/measurement/zzfz;->d:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    add-int/lit8 v5, v0, 0x2

    .line 287
    invoke-static {p1, v5}, Lcom/google/android/gms/measurement/internal/zzfg;->a(Ljava/lang/StringBuilder;I)V

    .line 288
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    .line 289
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    const-string v1, "}\n"

    .line 291
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    :cond_3
    invoke-static {p1, v0}, Lcom/google/android/gms/measurement/internal/zzfg;->a(Ljava/lang/StringBuilder;I)V

    const-string v1, "}\n"

    .line 293
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    const-string v1, "number_filter"

    .line 294
    iget-object p3, p3, Lcom/google/android/gms/internal/measurement/zzfw;->b:Lcom/google/android/gms/internal/measurement/zzfx;

    invoke-direct {p0, p1, v0, v1, p3}, Lcom/google/android/gms/measurement/internal/zzfg;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Lcom/google/android/gms/internal/measurement/zzfx;)V

    .line 295
    invoke-static {p1, p2}, Lcom/google/android/gms/measurement/internal/zzfg;->a(Ljava/lang/StringBuilder;I)V

    const-string p2, "}\n"

    .line 296
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final a(Ljava/lang/StringBuilder;ILjava/lang/String;Lcom/google/android/gms/internal/measurement/zzfx;)V
    .locals 1

    if-nez p4, :cond_0

    return-void

    .line 234
    :cond_0
    invoke-static {p1, p2}, Lcom/google/android/gms/measurement/internal/zzfg;->a(Ljava/lang/StringBuilder;I)V

    .line 235
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " {\n"

    .line 236
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    iget-object p3, p4, Lcom/google/android/gms/internal/measurement/zzfx;->a:Ljava/lang/Integer;

    if-eqz p3, :cond_1

    const-string p3, "UNKNOWN_COMPARISON_TYPE"

    .line 239
    iget-object v0, p4, Lcom/google/android/gms/internal/measurement/zzfx;->a:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string p3, "BETWEEN"

    goto :goto_0

    :pswitch_1
    const-string p3, "EQUAL"

    goto :goto_0

    :pswitch_2
    const-string p3, "GREATER_THAN"

    goto :goto_0

    :pswitch_3
    const-string p3, "LESS_THAN"

    :goto_0
    const-string v0, "comparison_type"

    .line 247
    invoke-static {p1, p2, v0, p3}, Lcom/google/android/gms/measurement/internal/zzfg;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_1
    const-string p3, "match_as_float"

    .line 248
    iget-object v0, p4, Lcom/google/android/gms/internal/measurement/zzfx;->b:Ljava/lang/Boolean;

    invoke-static {p1, p2, p3, v0}, Lcom/google/android/gms/measurement/internal/zzfg;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string p3, "comparison_value"

    .line 249
    iget-object v0, p4, Lcom/google/android/gms/internal/measurement/zzfx;->c:Ljava/lang/String;

    invoke-static {p1, p2, p3, v0}, Lcom/google/android/gms/measurement/internal/zzfg;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string p3, "min_comparison_value"

    .line 250
    iget-object v0, p4, Lcom/google/android/gms/internal/measurement/zzfx;->d:Ljava/lang/String;

    invoke-static {p1, p2, p3, v0}, Lcom/google/android/gms/measurement/internal/zzfg;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string p3, "max_comparison_value"

    .line 251
    iget-object p4, p4, Lcom/google/android/gms/internal/measurement/zzfx;->e:Ljava/lang/String;

    invoke-static {p1, p2, p3, p4}, Lcom/google/android/gms/measurement/internal/zzfg;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 252
    invoke-static {p1, p2}, Lcom/google/android/gms/measurement/internal/zzfg;->a(Ljava/lang/StringBuilder;I)V

    const-string p2, "}\n"

    .line 253
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static a(Ljava/lang/StringBuilder;ILjava/lang/String;Lcom/google/android/gms/internal/measurement/zzgj;)V
    .locals 8

    if-nez p3, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x3

    .line 206
    invoke-static {p0, p1}, Lcom/google/android/gms/measurement/internal/zzfg;->a(Ljava/lang/StringBuilder;I)V

    .line 207
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " {\n"

    .line 208
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    iget-object p2, p3, Lcom/google/android/gms/internal/measurement/zzgj;->b:[J

    const/16 v0, 0xa

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eqz p2, :cond_3

    .line 210
    invoke-static {p0, v1}, Lcom/google/android/gms/measurement/internal/zzfg;->a(Ljava/lang/StringBuilder;I)V

    const-string p2, "results: "

    .line 211
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    iget-object p2, p3, Lcom/google/android/gms/internal/measurement/zzgj;->b:[J

    array-length v3, p2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-wide v6, p2, v4

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    add-int/lit8 v7, v5, 0x1

    if-eqz v5, :cond_1

    const-string v5, ", "

    .line 215
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    :cond_1
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    move v5, v7

    goto :goto_0

    .line 218
    :cond_2
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 219
    :cond_3
    iget-object p2, p3, Lcom/google/android/gms/internal/measurement/zzgj;->a:[J

    if-eqz p2, :cond_6

    .line 220
    invoke-static {p0, v1}, Lcom/google/android/gms/measurement/internal/zzfg;->a(Ljava/lang/StringBuilder;I)V

    const-string p2, "status: "

    .line 221
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    iget-object p2, p3, Lcom/google/android/gms/internal/measurement/zzgj;->a:[J

    array-length p3, p2

    const/4 v1, 0x0

    :goto_1
    if-ge v2, p3, :cond_5

    aget-wide v3, p2, v2

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    add-int/lit8 v4, v1, 0x1

    if-eqz v1, :cond_4

    const-string v1, ", "

    .line 225
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    :cond_4
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    move v1, v4

    goto :goto_1

    .line 228
    :cond_5
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 229
    :cond_6
    invoke-static {p0, p1}, Lcom/google/android/gms/measurement/internal/zzfg;->a(Ljava/lang/StringBuilder;I)V

    const-string p1, "}\n"

    .line 230
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V
    .locals 0

    if-nez p3, :cond_0

    return-void

    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 304
    invoke-static {p0, p1}, Lcom/google/android/gms/measurement/internal/zzfg;->a(Ljava/lang/StringBuilder;I)V

    .line 305
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    .line 306
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    .line 308
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method static a(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "([+-])?([0-9]+\\.?[0-9]*|[0-9]*\\.?[0-9]+)"

    .line 332
    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 333
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v0, 0x136

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static a([JI)Z
    .locals 6

    .line 335
    array-length v0, p0

    shl-int/lit8 v0, v0, 0x6

    const/4 v1, 0x0

    if-lt p1, v0, :cond_0

    return v1

    .line 337
    :cond_0
    div-int/lit8 v0, p1, 0x40

    aget-wide v2, p0, v0

    const-wide/16 v4, 0x1

    rem-int/lit8 p1, p1, 0x40

    shl-long p0, v4, p1

    and-long/2addr p0, v2

    const-wide/16 v2, 0x0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method static a(Ljava/util/BitSet;)[J
    .locals 10

    .line 338
    invoke-virtual {p0}, Ljava/util/BitSet;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x3f

    const/16 v1, 0x40

    div-int/2addr v0, v1

    .line 339
    new-array v2, v0, [J

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_2

    const-wide/16 v5, 0x0

    .line 341
    aput-wide v5, v2, v4

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v1, :cond_1

    shl-int/lit8 v6, v4, 0x6

    add-int/2addr v6, v5

    .line 343
    invoke-virtual {p0}, Ljava/util/BitSet;->length()I

    move-result v7

    if-ge v6, v7, :cond_1

    .line 344
    invoke-virtual {p0, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 345
    aget-wide v6, v2, v4

    const-wide/16 v8, 0x1

    shl-long/2addr v8, v5

    or-long/2addr v6, v8

    aput-wide v6, v2, v4

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method static a([Lcom/google/android/gms/internal/measurement/zzgg;Ljava/lang/String;Ljava/lang/Object;)[Lcom/google/android/gms/internal/measurement/zzgg;
    .locals 5

    .line 53
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_4

    aget-object v3, p0, v2

    .line 54
    iget-object v4, v3, Lcom/google/android/gms/internal/measurement/zzgg;->a:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 p1, 0x0

    .line 55
    iput-object p1, v3, Lcom/google/android/gms/internal/measurement/zzgg;->c:Ljava/lang/Long;

    .line 56
    iput-object p1, v3, Lcom/google/android/gms/internal/measurement/zzgg;->b:Ljava/lang/String;

    .line 57
    iput-object p1, v3, Lcom/google/android/gms/internal/measurement/zzgg;->d:Ljava/lang/Double;

    .line 58
    instance-of p1, p2, Ljava/lang/Long;

    if-eqz p1, :cond_0

    .line 59
    check-cast p2, Ljava/lang/Long;

    iput-object p2, v3, Lcom/google/android/gms/internal/measurement/zzgg;->c:Ljava/lang/Long;

    goto :goto_1

    .line 60
    :cond_0
    instance-of p1, p2, Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 61
    check-cast p2, Ljava/lang/String;

    iput-object p2, v3, Lcom/google/android/gms/internal/measurement/zzgg;->b:Ljava/lang/String;

    goto :goto_1

    .line 62
    :cond_1
    instance-of p1, p2, Ljava/lang/Double;

    if-eqz p1, :cond_2

    .line 63
    check-cast p2, Ljava/lang/Double;

    iput-object p2, v3, Lcom/google/android/gms/internal/measurement/zzgg;->d:Ljava/lang/Double;

    :cond_2
    :goto_1
    return-object p0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 66
    :cond_4
    array-length v0, p0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Lcom/google/android/gms/internal/measurement/zzgg;

    .line 67
    array-length v2, p0

    invoke-static {p0, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 68
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzgg;

    invoke-direct {v1}, Lcom/google/android/gms/internal/measurement/zzgg;-><init>()V

    .line 69
    iput-object p1, v1, Lcom/google/android/gms/internal/measurement/zzgg;->a:Ljava/lang/String;

    .line 70
    instance-of p1, p2, Ljava/lang/Long;

    if-eqz p1, :cond_5

    .line 71
    check-cast p2, Ljava/lang/Long;

    iput-object p2, v1, Lcom/google/android/gms/internal/measurement/zzgg;->c:Ljava/lang/Long;

    goto :goto_2

    .line 72
    :cond_5
    instance-of p1, p2, Ljava/lang/String;

    if-eqz p1, :cond_6

    .line 73
    check-cast p2, Ljava/lang/String;

    iput-object p2, v1, Lcom/google/android/gms/internal/measurement/zzgg;->b:Ljava/lang/String;

    goto :goto_2

    .line 74
    :cond_6
    instance-of p1, p2, Ljava/lang/Double;

    if-eqz p1, :cond_7

    .line 75
    check-cast p2, Ljava/lang/Double;

    iput-object p2, v1, Lcom/google/android/gms/internal/measurement/zzgg;->d:Ljava/lang/Double;

    .line 76
    :cond_7
    :goto_2
    array-length p0, p0

    aput-object v1, v0, p0

    return-object v0
.end method

.method static b(Lcom/google/android/gms/internal/measurement/zzgf;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 44
    invoke-static {p0, p1}, Lcom/google/android/gms/measurement/internal/zzfg;->a(Lcom/google/android/gms/internal/measurement/zzgf;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzgg;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 46
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzgg;->b:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 47
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzgg;->b:Ljava/lang/String;

    return-object p0

    .line 48
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzgg;->c:Ljava/lang/Long;

    if-eqz p1, :cond_1

    .line 49
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzgg;->c:Ljava/lang/Long;

    return-object p0

    .line 50
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzgg;->d:Ljava/lang/Double;

    if-eqz p1, :cond_2

    .line 51
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzgg;->d:Ljava/lang/Double;

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method final a([BLandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">([B",
            "Landroid/os/Parcelable$Creator<",
            "TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 312
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 313
    :try_start_0
    array-length v2, p1

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 314
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 315
    invoke-interface {p2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Parcelable;
    :try_end_0
    .catch Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader$ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 316
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 319
    :catch_0
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzap;->j_()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object p1

    const-string p2, "Failed to load parcelable from buffer"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 320
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-object v0

    .line 322
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method final a(Lcom/google/android/gms/internal/measurement/zzfv;)Ljava/lang/String;
    .locals 6

    if-nez p1, :cond_0

    const-string p1, "null"

    return-object p1

    .line 181
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\nevent_filter {\n"

    .line 182
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "filter_id"

    .line 183
    iget-object v2, p1, Lcom/google/android/gms/internal/measurement/zzfv;->a:Ljava/lang/Integer;

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Lcom/google/android/gms/measurement/internal/zzfg;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v1, "event_name"

    .line 184
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->o()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v2

    iget-object v4, p1, Lcom/google/android/gms/internal/measurement/zzfv;->b:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/google/android/gms/measurement/internal/zzan;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v3, v1, v2}, Lcom/google/android/gms/measurement/internal/zzfg;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v1, "event_count_filter"

    .line 185
    iget-object v2, p1, Lcom/google/android/gms/internal/measurement/zzfv;->d:Lcom/google/android/gms/internal/measurement/zzfx;

    const/4 v4, 0x1

    invoke-direct {p0, v0, v4, v1, v2}, Lcom/google/android/gms/measurement/internal/zzfg;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Lcom/google/android/gms/internal/measurement/zzfx;)V

    const-string v1, "  filters {\n"

    .line 186
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzfv;->c:[Lcom/google/android/gms/internal/measurement/zzfw;

    array-length v1, p1

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v2, p1, v3

    const/4 v5, 0x2

    .line 188
    invoke-direct {p0, v0, v5, v2}, Lcom/google/android/gms/measurement/internal/zzfg;->a(Ljava/lang/StringBuilder;ILcom/google/android/gms/internal/measurement/zzfw;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 190
    :cond_1
    invoke-static {v0, v4}, Lcom/google/android/gms/measurement/internal/zzfg;->a(Ljava/lang/StringBuilder;I)V

    const-string p1, "}\n}\n"

    .line 191
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method final a(Lcom/google/android/gms/internal/measurement/zzfy;)Ljava/lang/String;
    .locals 5

    if-nez p1, :cond_0

    const-string p1, "null"

    return-object p1

    .line 195
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\nproperty_filter {\n"

    .line 196
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "filter_id"

    .line 197
    iget-object v2, p1, Lcom/google/android/gms/internal/measurement/zzfy;->a:Ljava/lang/Integer;

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Lcom/google/android/gms/measurement/internal/zzfg;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v1, "property_name"

    .line 199
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->o()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v2

    iget-object v4, p1, Lcom/google/android/gms/internal/measurement/zzfy;->b:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/google/android/gms/measurement/internal/zzan;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 200
    invoke-static {v0, v3, v1, v2}, Lcom/google/android/gms/measurement/internal/zzfg;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const/4 v1, 0x1

    .line 201
    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzfy;->c:Lcom/google/android/gms/internal/measurement/zzfw;

    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzfg;->a(Ljava/lang/StringBuilder;ILcom/google/android/gms/internal/measurement/zzfw;)V

    const-string p1, "}\n"

    .line 202
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic a()V
    .locals 0

    .line 378
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzez;->a()V

    return-void
.end method

.method final a(Lcom/google/android/gms/internal/measurement/zzgg;Ljava/lang/Object;)V
    .locals 1

    .line 16
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->a(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 17
    iput-object v0, p1, Lcom/google/android/gms/internal/measurement/zzgg;->b:Ljava/lang/String;

    .line 18
    iput-object v0, p1, Lcom/google/android/gms/internal/measurement/zzgg;->c:Ljava/lang/Long;

    .line 19
    iput-object v0, p1, Lcom/google/android/gms/internal/measurement/zzgg;->d:Ljava/lang/Double;

    .line 20
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 21
    check-cast p2, Ljava/lang/String;

    iput-object p2, p1, Lcom/google/android/gms/internal/measurement/zzgg;->b:Ljava/lang/String;

    return-void

    .line 22
    :cond_0
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 23
    check-cast p2, Ljava/lang/Long;

    iput-object p2, p1, Lcom/google/android/gms/internal/measurement/zzgg;->c:Ljava/lang/Long;

    return-void

    .line 24
    :cond_1
    instance-of v0, p2, Ljava/lang/Double;

    if-eqz v0, :cond_2

    .line 25
    check-cast p2, Ljava/lang/Double;

    iput-object p2, p1, Lcom/google/android/gms/internal/measurement/zzgg;->d:Ljava/lang/Double;

    return-void

    .line 26
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzap;->j_()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object p1

    const-string v0, "Ignoring invalid (type) event param value"

    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method final a(Lcom/google/android/gms/internal/measurement/zzgl;Ljava/lang/Object;)V
    .locals 1

    .line 4
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->a(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 5
    iput-object v0, p1, Lcom/google/android/gms/internal/measurement/zzgl;->c:Ljava/lang/String;

    .line 6
    iput-object v0, p1, Lcom/google/android/gms/internal/measurement/zzgl;->d:Ljava/lang/Long;

    .line 7
    iput-object v0, p1, Lcom/google/android/gms/internal/measurement/zzgl;->e:Ljava/lang/Double;

    .line 8
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 9
    check-cast p2, Ljava/lang/String;

    iput-object p2, p1, Lcom/google/android/gms/internal/measurement/zzgl;->c:Ljava/lang/String;

    return-void

    .line 10
    :cond_0
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 11
    check-cast p2, Ljava/lang/Long;

    iput-object p2, p1, Lcom/google/android/gms/internal/measurement/zzgl;->d:Ljava/lang/Long;

    return-void

    .line 12
    :cond_1
    instance-of v0, p2, Ljava/lang/Double;

    if-eqz v0, :cond_2

    .line 13
    check-cast p2, Ljava/lang/Double;

    iput-object p2, p1, Lcom/google/android/gms/internal/measurement/zzgl;->e:Ljava/lang/Double;

    return-void

    .line 14
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzap;->j_()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object p1

    const-string v0, "Ignoring invalid (type) user attribute value"

    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method final a(JJ)Z
    .locals 4

    const/4 v0, 0x1

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-eqz v3, :cond_2

    cmp-long v1, p3, v1

    if-gtz v1, :cond_0

    goto :goto_0

    .line 351
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->m()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->a()J

    move-result-wide v1

    sub-long/2addr v1, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide p1

    cmp-long p1, p1, p3

    if-lez p1, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    :goto_0
    return v0
.end method

.method final a(Lcom/google/android/gms/measurement/internal/zzad;Lcom/google/android/gms/measurement/internal/zzh;)Z
    .locals 0
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 323
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    iget-object p1, p2, Lcom/google/android/gms/measurement/internal/zzh;->b:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p2, Lcom/google/android/gms/measurement/internal/zzh;->r:Ljava/lang/String;

    .line 326
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 327
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->u()Lcom/google/android/gms/measurement/internal/zzk;

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method final a(Lcom/google/android/gms/internal/measurement/zzgh;)[B
    .locals 3

    .line 28
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzg;->e()I

    move-result v0

    .line 29
    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 31
    array-length v2, v0

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzyy;->a([BII)Lcom/google/android/gms/internal/measurement/zzyy;

    move-result-object v1

    .line 33
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/measurement/zzzg;->a(Lcom/google/android/gms/internal/measurement/zzyy;)V

    .line 34
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzyy;->a()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 37
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzap;->j_()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v0

    const-string v1, "Data loss. Failed to serialize batch"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method final a([B)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 352
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 353
    new-instance p1, Ljava/util/zip/GZIPInputStream;

    invoke-direct {p1, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 354
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v2, 0x400

    .line 355
    new-array v2, v2, [B

    .line 356
    :goto_0
    invoke-virtual {p1, v2}, Ljava/util/zip/GZIPInputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_0

    const/4 v4, 0x0

    .line 358
    invoke-virtual {v1, v2, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 360
    :cond_0
    invoke-virtual {p1}, Ljava/util/zip/GZIPInputStream;->close()V

    .line 361
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V

    .line 362
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 364
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzap;->j_()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v0

    const-string v1, "Failed to ungzip content"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 365
    throw p1
.end method

.method final b(Lcom/google/android/gms/internal/measurement/zzgh;)Ljava/lang/String;
    .locals 16

    move-object/from16 v0, p1

    .line 78
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nbatch {\n"

    .line 79
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/zzgh;->a:[Lcom/google/android/gms/internal/measurement/zzgi;

    if-eqz v2, :cond_b

    .line 81
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzgh;->a:[Lcom/google/android/gms/internal/measurement/zzgi;

    array-length v2, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_b

    aget-object v5, v0, v4

    if-eqz v5, :cond_a

    if-eqz v5, :cond_a

    const/4 v6, 0x1

    .line 85
    invoke-static {v1, v6}, Lcom/google/android/gms/measurement/internal/zzfg;->a(Ljava/lang/StringBuilder;I)V

    const-string v7, "bundle {\n"

    .line 86
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "protocol_version"

    .line 87
    iget-object v8, v5, Lcom/google/android/gms/internal/measurement/zzgi;->a:Ljava/lang/Integer;

    invoke-static {v1, v6, v7, v8}, Lcom/google/android/gms/measurement/internal/zzfg;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v7, "platform"

    .line 88
    iget-object v8, v5, Lcom/google/android/gms/internal/measurement/zzgi;->i:Ljava/lang/String;

    invoke-static {v1, v6, v7, v8}, Lcom/google/android/gms/measurement/internal/zzfg;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v7, "gmp_version"

    .line 89
    iget-object v8, v5, Lcom/google/android/gms/internal/measurement/zzgi;->q:Ljava/lang/Long;

    invoke-static {v1, v6, v7, v8}, Lcom/google/android/gms/measurement/internal/zzfg;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v7, "uploading_gmp_version"

    .line 90
    iget-object v8, v5, Lcom/google/android/gms/internal/measurement/zzgi;->r:Ljava/lang/Long;

    invoke-static {v1, v6, v7, v8}, Lcom/google/android/gms/measurement/internal/zzfg;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v7, "config_version"

    .line 91
    iget-object v8, v5, Lcom/google/android/gms/internal/measurement/zzgi;->E:Ljava/lang/Long;

    invoke-static {v1, v6, v7, v8}, Lcom/google/android/gms/measurement/internal/zzfg;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v7, "gmp_app_id"

    .line 92
    iget-object v8, v5, Lcom/google/android/gms/internal/measurement/zzgi;->y:Ljava/lang/String;

    invoke-static {v1, v6, v7, v8}, Lcom/google/android/gms/measurement/internal/zzfg;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v7, "admob_app_id"

    .line 93
    iget-object v8, v5, Lcom/google/android/gms/internal/measurement/zzgi;->I:Ljava/lang/String;

    invoke-static {v1, v6, v7, v8}, Lcom/google/android/gms/measurement/internal/zzfg;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v7, "app_id"

    .line 94
    iget-object v8, v5, Lcom/google/android/gms/internal/measurement/zzgi;->o:Ljava/lang/String;

    invoke-static {v1, v6, v7, v8}, Lcom/google/android/gms/measurement/internal/zzfg;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v7, "app_version"

    .line 95
    iget-object v8, v5, Lcom/google/android/gms/internal/measurement/zzgi;->p:Ljava/lang/String;

    invoke-static {v1, v6, v7, v8}, Lcom/google/android/gms/measurement/internal/zzfg;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v7, "app_version_major"

    .line 96
    iget-object v8, v5, Lcom/google/android/gms/internal/measurement/zzgi;->C:Ljava/lang/Integer;

    invoke-static {v1, v6, v7, v8}, Lcom/google/android/gms/measurement/internal/zzfg;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v7, "firebase_instance_id"

    .line 97
    iget-object v8, v5, Lcom/google/android/gms/internal/measurement/zzgi;->B:Ljava/lang/String;

    invoke-static {v1, v6, v7, v8}, Lcom/google/android/gms/measurement/internal/zzfg;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v7, "dev_cert_hash"

    .line 98
    iget-object v8, v5, Lcom/google/android/gms/internal/measurement/zzgi;->v:Ljava/lang/Long;

    invoke-static {v1, v6, v7, v8}, Lcom/google/android/gms/measurement/internal/zzfg;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v7, "app_store"

    .line 99
    iget-object v8, v5, Lcom/google/android/gms/internal/measurement/zzgi;->n:Ljava/lang/String;

    invoke-static {v1, v6, v7, v8}, Lcom/google/android/gms/measurement/internal/zzfg;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v7, "upload_timestamp_millis"

    .line 100
    iget-object v8, v5, Lcom/google/android/gms/internal/measurement/zzgi;->d:Ljava/lang/Long;

    invoke-static {v1, v6, v7, v8}, Lcom/google/android/gms/measurement/internal/zzfg;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v7, "start_timestamp_millis"

    .line 101
    iget-object v8, v5, Lcom/google/android/gms/internal/measurement/zzgi;->e:Ljava/lang/Long;

    invoke-static {v1, v6, v7, v8}, Lcom/google/android/gms/measurement/internal/zzfg;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v7, "end_timestamp_millis"

    .line 102
    iget-object v8, v5, Lcom/google/android/gms/internal/measurement/zzgi;->f:Ljava/lang/Long;

    invoke-static {v1, v6, v7, v8}, Lcom/google/android/gms/measurement/internal/zzfg;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v7, "previous_bundle_start_timestamp_millis"

    .line 103
    iget-object v8, v5, Lcom/google/android/gms/internal/measurement/zzgi;->g:Ljava/lang/Long;

    invoke-static {v1, v6, v7, v8}, Lcom/google/android/gms/measurement/internal/zzfg;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v7, "previous_bundle_end_timestamp_millis"

    .line 104
    iget-object v8, v5, Lcom/google/android/gms/internal/measurement/zzgi;->h:Ljava/lang/Long;

    invoke-static {v1, v6, v7, v8}, Lcom/google/android/gms/measurement/internal/zzfg;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v7, "app_instance_id"

    .line 105
    iget-object v8, v5, Lcom/google/android/gms/internal/measurement/zzgi;->u:Ljava/lang/String;

    invoke-static {v1, v6, v7, v8}, Lcom/google/android/gms/measurement/internal/zzfg;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v7, "resettable_device_id"

    .line 106
    iget-object v8, v5, Lcom/google/android/gms/internal/measurement/zzgi;->s:Ljava/lang/String;

    invoke-static {v1, v6, v7, v8}, Lcom/google/android/gms/measurement/internal/zzfg;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v7, "device_id"

    .line 107
    iget-object v8, v5, Lcom/google/android/gms/internal/measurement/zzgi;->D:Ljava/lang/String;

    invoke-static {v1, v6, v7, v8}, Lcom/google/android/gms/measurement/internal/zzfg;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v7, "ds_id"

    .line 108
    iget-object v8, v5, Lcom/google/android/gms/internal/measurement/zzgi;->G:Ljava/lang/String;

    invoke-static {v1, v6, v7, v8}, Lcom/google/android/gms/measurement/internal/zzfg;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v7, "limited_ad_tracking"

    .line 109
    iget-object v8, v5, Lcom/google/android/gms/internal/measurement/zzgi;->t:Ljava/lang/Boolean;

    invoke-static {v1, v6, v7, v8}, Lcom/google/android/gms/measurement/internal/zzfg;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v7, "os_version"

    .line 110
    iget-object v8, v5, Lcom/google/android/gms/internal/measurement/zzgi;->j:Ljava/lang/String;

    invoke-static {v1, v6, v7, v8}, Lcom/google/android/gms/measurement/internal/zzfg;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v7, "device_model"

    .line 111
    iget-object v8, v5, Lcom/google/android/gms/internal/measurement/zzgi;->k:Ljava/lang/String;

    invoke-static {v1, v6, v7, v8}, Lcom/google/android/gms/measurement/internal/zzfg;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v7, "user_default_language"

    .line 112
    iget-object v8, v5, Lcom/google/android/gms/internal/measurement/zzgi;->l:Ljava/lang/String;

    invoke-static {v1, v6, v7, v8}, Lcom/google/android/gms/measurement/internal/zzfg;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v7, "time_zone_offset_minutes"

    .line 113
    iget-object v8, v5, Lcom/google/android/gms/internal/measurement/zzgi;->m:Ljava/lang/Integer;

    invoke-static {v1, v6, v7, v8}, Lcom/google/android/gms/measurement/internal/zzfg;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v7, "bundle_sequential_index"

    .line 114
    iget-object v8, v5, Lcom/google/android/gms/internal/measurement/zzgi;->w:Ljava/lang/Integer;

    invoke-static {v1, v6, v7, v8}, Lcom/google/android/gms/measurement/internal/zzfg;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v7, "service_upload"

    .line 115
    iget-object v8, v5, Lcom/google/android/gms/internal/measurement/zzgi;->z:Ljava/lang/Boolean;

    invoke-static {v1, v6, v7, v8}, Lcom/google/android/gms/measurement/internal/zzfg;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v7, "health_monitor"

    .line 116
    iget-object v8, v5, Lcom/google/android/gms/internal/measurement/zzgi;->x:Ljava/lang/String;

    invoke-static {v1, v6, v7, v8}, Lcom/google/android/gms/measurement/internal/zzfg;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 117
    iget-object v7, v5, Lcom/google/android/gms/internal/measurement/zzgi;->F:Ljava/lang/Long;

    if-eqz v7, :cond_0

    iget-object v7, v5, Lcom/google/android/gms/internal/measurement/zzgi;->F:Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-eqz v7, :cond_0

    const-string v7, "android_id"

    .line 118
    iget-object v8, v5, Lcom/google/android/gms/internal/measurement/zzgi;->F:Ljava/lang/Long;

    invoke-static {v1, v6, v7, v8}, Lcom/google/android/gms/measurement/internal/zzfg;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 119
    :cond_0
    iget-object v7, v5, Lcom/google/android/gms/internal/measurement/zzgi;->H:Ljava/lang/Integer;

    if-eqz v7, :cond_1

    const-string v7, "retry_counter"

    .line 120
    iget-object v8, v5, Lcom/google/android/gms/internal/measurement/zzgi;->H:Ljava/lang/Integer;

    invoke-static {v1, v6, v7, v8}, Lcom/google/android/gms/measurement/internal/zzfg;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 121
    :cond_1
    iget-object v7, v5, Lcom/google/android/gms/internal/measurement/zzgi;->c:[Lcom/google/android/gms/internal/measurement/zzgl;

    const/4 v8, 0x2

    if-eqz v7, :cond_3

    .line 123
    array-length v9, v7

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v9, :cond_3

    aget-object v11, v7, v10

    if-eqz v11, :cond_2

    .line 125
    invoke-static {v1, v8}, Lcom/google/android/gms/measurement/internal/zzfg;->a(Ljava/lang/StringBuilder;I)V

    const-string v12, "user_property {\n"

    .line 126
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "set_timestamp_millis"

    .line 127
    iget-object v13, v11, Lcom/google/android/gms/internal/measurement/zzgl;->a:Ljava/lang/Long;

    invoke-static {v1, v8, v12, v13}, Lcom/google/android/gms/measurement/internal/zzfg;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v12, "name"

    .line 128
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzco;->o()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v13

    iget-object v14, v11, Lcom/google/android/gms/internal/measurement/zzgl;->b:Ljava/lang/String;

    invoke-virtual {v13, v14}, Lcom/google/android/gms/measurement/internal/zzan;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v1, v8, v12, v13}, Lcom/google/android/gms/measurement/internal/zzfg;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v12, "string_value"

    .line 129
    iget-object v13, v11, Lcom/google/android/gms/internal/measurement/zzgl;->c:Ljava/lang/String;

    invoke-static {v1, v8, v12, v13}, Lcom/google/android/gms/measurement/internal/zzfg;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v12, "int_value"

    .line 130
    iget-object v13, v11, Lcom/google/android/gms/internal/measurement/zzgl;->d:Ljava/lang/Long;

    invoke-static {v1, v8, v12, v13}, Lcom/google/android/gms/measurement/internal/zzfg;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v12, "double_value"

    .line 131
    iget-object v11, v11, Lcom/google/android/gms/internal/measurement/zzgl;->e:Ljava/lang/Double;

    invoke-static {v1, v8, v12, v11}, Lcom/google/android/gms/measurement/internal/zzfg;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 132
    invoke-static {v1, v8}, Lcom/google/android/gms/measurement/internal/zzfg;->a(Ljava/lang/StringBuilder;I)V

    const-string v11, "}\n"

    .line 133
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 135
    :cond_3
    iget-object v7, v5, Lcom/google/android/gms/internal/measurement/zzgi;->A:[Lcom/google/android/gms/internal/measurement/zzgd;

    if-eqz v7, :cond_5

    .line 137
    array-length v9, v7

    const/4 v10, 0x0

    :goto_2
    if-ge v10, v9, :cond_5

    aget-object v11, v7, v10

    if-eqz v11, :cond_4

    .line 139
    invoke-static {v1, v8}, Lcom/google/android/gms/measurement/internal/zzfg;->a(Ljava/lang/StringBuilder;I)V

    const-string v12, "audience_membership {\n"

    .line 140
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "audience_id"

    .line 141
    iget-object v13, v11, Lcom/google/android/gms/internal/measurement/zzgd;->a:Ljava/lang/Integer;

    invoke-static {v1, v8, v12, v13}, Lcom/google/android/gms/measurement/internal/zzfg;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v12, "new_audience"

    .line 142
    iget-object v13, v11, Lcom/google/android/gms/internal/measurement/zzgd;->d:Ljava/lang/Boolean;

    invoke-static {v1, v8, v12, v13}, Lcom/google/android/gms/measurement/internal/zzfg;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v12, "current_data"

    .line 143
    iget-object v13, v11, Lcom/google/android/gms/internal/measurement/zzgd;->b:Lcom/google/android/gms/internal/measurement/zzgj;

    invoke-static {v1, v8, v12, v13}, Lcom/google/android/gms/measurement/internal/zzfg;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Lcom/google/android/gms/internal/measurement/zzgj;)V

    const-string v12, "previous_data"

    .line 144
    iget-object v11, v11, Lcom/google/android/gms/internal/measurement/zzgd;->c:Lcom/google/android/gms/internal/measurement/zzgj;

    invoke-static {v1, v8, v12, v11}, Lcom/google/android/gms/measurement/internal/zzfg;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Lcom/google/android/gms/internal/measurement/zzgj;)V

    .line 145
    invoke-static {v1, v8}, Lcom/google/android/gms/measurement/internal/zzfg;->a(Ljava/lang/StringBuilder;I)V

    const-string v11, "}\n"

    .line 146
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 148
    :cond_5
    iget-object v5, v5, Lcom/google/android/gms/internal/measurement/zzgi;->b:[Lcom/google/android/gms/internal/measurement/zzgf;

    if-eqz v5, :cond_9

    .line 150
    array-length v7, v5

    const/4 v9, 0x0

    :goto_3
    if-ge v9, v7, :cond_9

    aget-object v10, v5, v9

    if-eqz v10, :cond_8

    .line 152
    invoke-static {v1, v8}, Lcom/google/android/gms/measurement/internal/zzfg;->a(Ljava/lang/StringBuilder;I)V

    const-string v11, "event {\n"

    .line 153
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "name"

    .line 154
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzco;->o()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v12

    iget-object v13, v10, Lcom/google/android/gms/internal/measurement/zzgf;->b:Ljava/lang/String;

    invoke-virtual {v12, v13}, Lcom/google/android/gms/measurement/internal/zzan;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v1, v8, v11, v12}, Lcom/google/android/gms/measurement/internal/zzfg;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v11, "timestamp_millis"

    .line 155
    iget-object v12, v10, Lcom/google/android/gms/internal/measurement/zzgf;->c:Ljava/lang/Long;

    invoke-static {v1, v8, v11, v12}, Lcom/google/android/gms/measurement/internal/zzfg;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v11, "previous_timestamp_millis"

    .line 156
    iget-object v12, v10, Lcom/google/android/gms/internal/measurement/zzgf;->d:Ljava/lang/Long;

    invoke-static {v1, v8, v11, v12}, Lcom/google/android/gms/measurement/internal/zzfg;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v11, "count"

    .line 157
    iget-object v12, v10, Lcom/google/android/gms/internal/measurement/zzgf;->e:Ljava/lang/Integer;

    invoke-static {v1, v8, v11, v12}, Lcom/google/android/gms/measurement/internal/zzfg;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 158
    iget-object v10, v10, Lcom/google/android/gms/internal/measurement/zzgf;->a:[Lcom/google/android/gms/internal/measurement/zzgg;

    if-eqz v10, :cond_7

    .line 160
    array-length v11, v10

    const/4 v12, 0x0

    :goto_4
    if-ge v12, v11, :cond_7

    aget-object v13, v10, v12

    if-eqz v13, :cond_6

    const/4 v14, 0x3

    .line 162
    invoke-static {v1, v14}, Lcom/google/android/gms/measurement/internal/zzfg;->a(Ljava/lang/StringBuilder;I)V

    const-string v15, "param {\n"

    .line 163
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "name"

    .line 164
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzco;->o()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v3

    iget-object v6, v13, Lcom/google/android/gms/internal/measurement/zzgg;->a:Ljava/lang/String;

    invoke-virtual {v3, v6}, Lcom/google/android/gms/measurement/internal/zzan;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v14, v15, v3}, Lcom/google/android/gms/measurement/internal/zzfg;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v3, "string_value"

    .line 165
    iget-object v6, v13, Lcom/google/android/gms/internal/measurement/zzgg;->b:Ljava/lang/String;

    invoke-static {v1, v14, v3, v6}, Lcom/google/android/gms/measurement/internal/zzfg;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v3, "int_value"

    .line 166
    iget-object v6, v13, Lcom/google/android/gms/internal/measurement/zzgg;->c:Ljava/lang/Long;

    invoke-static {v1, v14, v3, v6}, Lcom/google/android/gms/measurement/internal/zzfg;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v3, "double_value"

    .line 167
    iget-object v6, v13, Lcom/google/android/gms/internal/measurement/zzgg;->d:Ljava/lang/Double;

    invoke-static {v1, v14, v3, v6}, Lcom/google/android/gms/measurement/internal/zzfg;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 168
    invoke-static {v1, v14}, Lcom/google/android/gms/measurement/internal/zzfg;->a(Ljava/lang/StringBuilder;I)V

    const-string v3, "}\n"

    .line 169
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    add-int/lit8 v12, v12, 0x1

    const/4 v6, 0x1

    goto :goto_4

    .line 171
    :cond_7
    invoke-static {v1, v8}, Lcom/google/android/gms/measurement/internal/zzfg;->a(Ljava/lang/StringBuilder;I)V

    const-string v3, "}\n"

    .line 172
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    add-int/lit8 v9, v9, 0x1

    const/4 v6, 0x1

    goto/16 :goto_3

    :cond_9
    const/4 v3, 0x1

    .line 174
    invoke-static {v1, v3}, Lcom/google/android/gms/measurement/internal/zzfg;->a(Ljava/lang/StringBuilder;I)V

    const-string v3, "}\n"

    .line 175
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_b
    const-string v0, "}\n"

    .line 177
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic b()V
    .locals 0

    .line 379
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzez;->b()V

    return-void
.end method

.method final b([B)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 366
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 367
    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 368
    invoke-virtual {v1, p1}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 369
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 370
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 371
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 373
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzap;->j_()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v0

    const-string v1, "Failed to gzip content"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 374
    throw p1
.end method

.method public final bridge synthetic c()V
    .locals 0

    .line 380
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzez;->c()V

    return-void
.end method

.method public final bridge synthetic d()V
    .locals 0

    .line 381
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzez;->d()V

    return-void
.end method

.method protected final e()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final bridge synthetic g()Lcom/google/android/gms/measurement/internal/zzfg;
    .locals 1

    .line 375
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzez;->g()Lcom/google/android/gms/measurement/internal/zzfg;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic h()Lcom/google/android/gms/measurement/internal/zzj;
    .locals 1

    .line 376
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzez;->h()Lcom/google/android/gms/measurement/internal/zzj;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic i()Lcom/google/android/gms/measurement/internal/zzq;
    .locals 1

    .line 377
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzez;->i()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic l()Lcom/google/android/gms/measurement/internal/zzx;
    .locals 1

    .line 382
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzez;->l()Lcom/google/android/gms/measurement/internal/zzx;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic m()Lcom/google/android/gms/common/util/Clock;
    .locals 1

    .line 383
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzez;->m()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic n()Landroid/content/Context;
    .locals 1

    .line 384
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzez;->n()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic o()Lcom/google/android/gms/measurement/internal/zzan;
    .locals 1

    .line 385
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzez;->o()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic p()Lcom/google/android/gms/measurement/internal/zzfk;
    .locals 1

    .line 386
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzez;->p()Lcom/google/android/gms/measurement/internal/zzfk;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic q()Lcom/google/android/gms/measurement/internal/zzbo;
    .locals 1

    .line 387
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzez;->q()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic r()Lcom/google/android/gms/measurement/internal/zzap;
    .locals 1

    .line 388
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzez;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic s()Lcom/google/android/gms/measurement/internal/zzba;
    .locals 1

    .line 389
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzez;->s()Lcom/google/android/gms/measurement/internal/zzba;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic t()Lcom/google/android/gms/measurement/internal/zzn;
    .locals 1

    .line 390
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzez;->t()Lcom/google/android/gms/measurement/internal/zzn;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic u()Lcom/google/android/gms/measurement/internal/zzk;
    .locals 1

    .line 391
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzez;->u()Lcom/google/android/gms/measurement/internal/zzk;

    move-result-object v0

    return-object v0
.end method
