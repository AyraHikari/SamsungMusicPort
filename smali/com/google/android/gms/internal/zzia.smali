.class public final Lcom/google/android/gms/internal/zzia;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzv;
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/zzhq;

.field private final b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private final e:Z

.field private final f:I

.field private final g:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzia;->b:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzia;->e:Z

    const/16 p1, 0x40

    if-gt p2, p1, :cond_1

    if-gez p2, :cond_0

    goto :goto_0

    :cond_0
    iput p2, p0, Lcom/google/android/gms/internal/zzia;->f:I

    goto :goto_1

    :cond_1
    :goto_0
    iput p1, p0, Lcom/google/android/gms/internal/zzia;->f:I

    :goto_1
    if-gtz p3, :cond_2

    const/4 p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/zzia;->g:I

    goto :goto_2

    :cond_2
    iput p3, p0, Lcom/google/android/gms/internal/zzia;->g:I

    :goto_2
    new-instance p1, Lcom/google/android/gms/internal/zzhz;

    iget p2, p0, Lcom/google/android/gms/internal/zzia;->f:I

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/zzhz;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzia;->a:Lcom/google/android/gms/internal/zzhq;

    return-void
.end method

.method private final a(Ljava/lang/String;Ljava/util/HashSet;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_f

    aget-object v3, p1, v2

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x1

    const/4 v6, 0x0

    :goto_1
    add-int/lit8 v7, v5, 0x2

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-gt v7, v8, :cond_5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v8

    const/16 v9, 0x27

    if-ne v8, v9, :cond_4

    add-int/lit8 v6, v5, -0x1

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    const/16 v8, 0x20

    if-eq v6, v8, :cond_3

    add-int/lit8 v6, v5, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v9

    const/16 v10, 0x73

    if-eq v9, v10, :cond_1

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    const/16 v9, 0x53

    if-ne v6, v9, :cond_3

    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-eq v7, v6, :cond_2

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    if-ne v6, v8, :cond_3

    :cond_2
    invoke-virtual {v4, v5, v8}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    move v5, v7

    goto :goto_2

    :cond_3
    invoke-virtual {v4, v5, v8}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    :goto_2
    const/4 v6, 0x1

    :cond_4
    add-int/2addr v5, v1

    goto :goto_1

    :cond_5
    if-eqz v6, :cond_6

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_6
    const/4 v4, 0x0

    :goto_3
    if-eqz v4, :cond_7

    iput-object v4, p0, Lcom/google/android/gms/internal/zzia;->d:Ljava/lang/String;

    move-object v3, v4

    :cond_7
    invoke-static {v3, v1}, Lcom/google/android/gms/internal/zzhu;->a(Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    iget v5, p0, Lcom/google/android/gms/internal/zzia;->g:I

    if-lt v4, v5, :cond_e

    const/4 v4, 0x0

    :goto_4
    array-length v5, v3

    if-ge v4, v5, :cond_d

    const-string v5, ""

    move-object v6, v5

    const/4 v5, 0x0

    :goto_5
    iget v7, p0, Lcom/google/android/gms/internal/zzia;->g:I

    if-ge v5, v7, :cond_b

    add-int v7, v4, v5

    array-length v8, v3

    if-lt v7, v8, :cond_8

    const/4 v5, 0x0

    goto :goto_7

    :cond_8
    if-lez v5, :cond_9

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v8, " "

    invoke-virtual {v6, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :cond_9
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aget-object v7, v3, v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_a

    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_6

    :cond_a
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v6, v7

    :goto_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_b
    const/4 v5, 0x1

    :goto_7
    if-eqz v5, :cond_d

    invoke-virtual {p2, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Ljava/util/HashSet;->size()I

    move-result v5

    iget v6, p0, Lcom/google/android/gms/internal/zzia;->b:I

    if-lt v5, v6, :cond_c

    return v0

    :cond_c
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_d
    invoke-virtual {p2}, Ljava/util/HashSet;->size()I

    move-result v3

    iget v4, p0, Lcom/google/android/gms/internal/zzia;->b:I

    if-lt v3, v4, :cond_e

    return v0

    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_f
    return v1
.end method


# virtual methods
.method public final a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/internal/zzhp;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzib;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzib;-><init>(Lcom/google/android/gms/internal/zzia;)V

    invoke-static {p2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzhp;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzhp;->e()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    sget-object v3, Ljava/text/Normalizer$Form;->NFKC:Ljava/text/Normalizer$Form;

    invoke-static {v2, v3}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v0}, Lcom/google/android/gms/internal/zzia;->a(Ljava/lang/String;Ljava/util/HashSet;)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/zzht;

    invoke-direct {p1}, Lcom/google/android/gms/internal/zzht;-><init>()V

    const-string p2, ""

    iput-object p2, p0, Lcom/google/android/gms/internal/zzia;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzia;->a:Lcom/google/android/gms/internal/zzhq;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzhq;->a(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzht;->a([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    const-string v0, "Error while writing hash to byteStream"

    invoke-static {v0, p2}, Lcom/google/android/gms/internal/zzagf;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzht;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
