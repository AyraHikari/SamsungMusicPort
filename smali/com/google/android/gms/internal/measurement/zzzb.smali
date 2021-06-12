.class public final Lcom/google/android/gms/internal/measurement/zzzb;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Lcom/google/android/gms/internal/measurement/zzza<",
        "TM;>;T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final b:I

.field protected final c:Z

.field private final d:I


# direct methods
.method private final a(Lcom/google/android/gms/internal/measurement/zzyx;)Ljava/lang/Object;
    .locals 4

    .line 46
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzzb;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzzb;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzzb;->a:Ljava/lang/Class;

    .line 47
    :goto_0
    :try_start_0
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzzb;->d:I

    packed-switch v1, :pswitch_data_0

    .line 56
    new-instance p1, Ljava/lang/IllegalArgumentException;

    goto :goto_1

    .line 53
    :pswitch_0
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzzg;

    .line 54
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/measurement/zzyx;->a(Lcom/google/android/gms/internal/measurement/zzzg;)V

    return-object v1

    .line 48
    :pswitch_1
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzzg;

    .line 49
    iget v2, p0, Lcom/google/android/gms/internal/measurement/zzzb;->b:I

    ushr-int/lit8 v2, v2, 0x3

    .line 51
    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/measurement/zzyx;->a(Lcom/google/android/gms/internal/measurement/zzzg;I)V

    return-object v1

    .line 56
    :goto_1
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzzb;->d:I

    const/16 v2, 0x18

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unknown type "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 62
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Error reading extension field"

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    .line 60
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x21

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Error creating instance of class "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception p1

    .line 58
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x21

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Error creating instance of class "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected final a(Ljava/lang/Object;)I
    .locals 3

    .line 76
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzzb;->b:I

    ushr-int/lit8 v0, v0, 0x3

    .line 79
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzzb;->d:I

    packed-switch v1, :pswitch_data_0

    .line 88
    new-instance p1, Ljava/lang/IllegalArgumentException;

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzzb;->d:I

    const/16 v1, 0x18

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unknown type "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 86
    :pswitch_0
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzzg;

    .line 87
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/zzyy;->b(ILcom/google/android/gms/internal/measurement/zzzg;)I

    move-result p1

    return p1

    .line 80
    :pswitch_1
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzzg;

    .line 82
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzyy;->b(I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x1

    .line 83
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzg;->e()I

    move-result p1

    add-int/2addr v0, p1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method final a(Ljava/util/List;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/zzzi;",
            ">;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 24
    :cond_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/measurement/zzzb;->c:Z

    if-eqz v1, :cond_5

    .line 25
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 26
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 27
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzzi;

    .line 28
    iget-object v5, v4, Lcom/google/android/gms/internal/measurement/zzzi;->b:[B

    array-length v5, v5

    if-eqz v5, :cond_1

    .line 30
    iget-object v4, v4, Lcom/google/android/gms/internal/measurement/zzzi;->b:[B

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzyx;->a([B)Lcom/google/android/gms/internal/measurement/zzyx;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/measurement/zzzb;->a(Lcom/google/android/gms/internal/measurement/zzyx;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 32
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_3

    return-object v0

    .line 35
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzzb;->a:Ljava/lang/Class;

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzzb;->a:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_1
    if-ge v2, p1, :cond_4

    .line 37
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v2, v3}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    return-object v0

    .line 41
    :cond_5
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    return-object v0

    .line 43
    :cond_6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzzi;

    .line 44
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzzb;->a:Ljava/lang/Class;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzzi;->b:[B

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzyx;->a([B)Lcom/google/android/gms/internal/measurement/zzyx;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzzb;->a(Lcom/google/android/gms/internal/measurement/zzyx;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected final a(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzyy;)V
    .locals 2

    .line 63
    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzzb;->b:I

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/measurement/zzyy;->c(I)V

    .line 64
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzzb;->d:I

    packed-switch v0, :pswitch_data_0

    .line 73
    new-instance p1, Ljava/lang/IllegalArgumentException;

    goto :goto_0

    .line 72
    :pswitch_0
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzzg;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/measurement/zzyy;->a(Lcom/google/android/gms/internal/measurement/zzzg;)V

    return-void

    .line 65
    :pswitch_1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzzb;->b:I

    ushr-int/lit8 v0, v0, 0x3

    .line 68
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzzg;

    .line 69
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/measurement/zzzg;->a(Lcom/google/android/gms/internal/measurement/zzyy;)V

    const/4 p1, 0x4

    .line 70
    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/internal/measurement/zzyy;->c(II)V

    return-void

    .line 73
    :goto_0
    iget p2, p0, Lcom/google/android/gms/internal/measurement/zzzb;->d:I

    const/16 v0, 0x18

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Unknown type "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 75
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 13
    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/measurement/zzzb;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 15
    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzzb;

    .line 16
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzzb;->d:I

    iget v3, p1, Lcom/google/android/gms/internal/measurement/zzzb;->d:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzzb;->a:Ljava/lang/Class;

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzzb;->a:Ljava/lang/Class;

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzzb;->b:I

    iget v3, p1, Lcom/google/android/gms/internal/measurement/zzzb;->b:I

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lcom/google/android/gms/internal/measurement/zzzb;->c:Z

    iget-boolean p1, p1, Lcom/google/android/gms/internal/measurement/zzzb;->c:Z

    if-ne v1, p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 2

    .line 17
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzzb;->d:I

    add-int/lit16 v0, v0, 0x47b

    mul-int/lit8 v0, v0, 0x1f

    .line 18
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzzb;->a:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 19
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzzb;->b:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 20
    iget-boolean v1, p0, Lcom/google/android/gms/internal/measurement/zzzb;->c:Z

    add-int/2addr v0, v1

    return v0
.end method
