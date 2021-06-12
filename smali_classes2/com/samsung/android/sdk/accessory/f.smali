.class Lcom/samsung/android/sdk/accessory/f;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lcom/samsung/android/sdk/accessory/f;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:[B

.field private i:Lcom/samsung/android/sdk/accessory/e;

.field private j:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[SA_SDK]"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/samsung/android/sdk/accessory/f;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/accessory/f;->a:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/accessory/f;->b:Ljava/util/Map;

    return-void
.end method

.method constructor <init>(ILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/sdk/accessory/f;->j:Ljava/lang/Object;

    new-instance p2, Lcom/samsung/android/sdk/accessory/e;

    invoke-direct {p2, p1}, Lcom/samsung/android/sdk/accessory/e;-><init>(I)V

    iput-object p2, p0, Lcom/samsung/android/sdk/accessory/f;->i:Lcom/samsung/android/sdk/accessory/e;

    return-void
.end method


# virtual methods
.method final a()Lcom/samsung/android/sdk/accessory/e;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/f;->h:[B

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/samsung/android/sdk/accessory/f;->c:I

    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/f;->h:[B

    array-length v1, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return-object v2

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/f;->h:[B

    array-length v0, v0

    iget v1, p0, Lcom/samsung/android/sdk/accessory/f;->d:I

    if-gt v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/f;->h:[B

    array-length v0, v0

    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/f;->i:Lcom/samsung/android/sdk/accessory/e;

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v1, v3}, Lcom/samsung/android/sdk/accessory/e;->a(I)V

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/samsung/android/sdk/accessory/f;->c:I

    if-nez v0, :cond_2

    iget v0, p0, Lcom/samsung/android/sdk/accessory/f;->d:I

    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/f;->i:Lcom/samsung/android/sdk/accessory/e;

    iget-object v3, p0, Lcom/samsung/android/sdk/accessory/f;->i:Lcom/samsung/android/sdk/accessory/e;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/accessory/e;->a()I

    move-result v3

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/f;->h:[B

    array-length v0, v0

    iget v1, p0, Lcom/samsung/android/sdk/accessory/f;->c:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/samsung/android/sdk/accessory/f;->d:I

    if-le v0, v1, :cond_3

    iget v0, p0, Lcom/samsung/android/sdk/accessory/f;->d:I

    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/f;->i:Lcom/samsung/android/sdk/accessory/e;

    iget-object v3, p0, Lcom/samsung/android/sdk/accessory/f;->i:Lcom/samsung/android/sdk/accessory/e;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/accessory/e;->b()I

    move-result v3

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/f;->h:[B

    array-length v0, v0

    iget v1, p0, Lcom/samsung/android/sdk/accessory/f;->c:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/f;->i:Lcom/samsung/android/sdk/accessory/e;

    iget-object v3, p0, Lcom/samsung/android/sdk/accessory/f;->i:Lcom/samsung/android/sdk/accessory/e;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/accessory/e;->c()I

    move-result v3

    goto :goto_0

    :goto_1
    invoke-static {}, Lcom/samsung/android/sdk/accessory/b;->a()Lcom/samsung/android/sdk/accessory/b;

    move-result-object v1

    iget v3, p0, Lcom/samsung/android/sdk/accessory/f;->e:I

    add-int/2addr v3, v0

    iget v4, p0, Lcom/samsung/android/sdk/accessory/f;->g:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/samsung/android/sdk/accessory/f;->f:I

    add-int/2addr v3, v4

    invoke-virtual {v1, v3}, Lcom/samsung/android/sdk/accessory/b;->b(I)Lcom/samsung/accessory/a/a/a;

    move-result-object v1

    iget v3, p0, Lcom/samsung/android/sdk/accessory/f;->e:I

    invoke-virtual {v1, v3}, Lcom/samsung/accessory/a/a/a;->a(I)V

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/sdk/accessory/f;->h:[B

    iget v4, p0, Lcom/samsung/android/sdk/accessory/f;->c:I

    invoke-virtual {v1, v3, v4, v0}, Lcom/samsung/accessory/a/a/a;->a([BII)V

    iget-object v3, p0, Lcom/samsung/android/sdk/accessory/f;->i:Lcom/samsung/android/sdk/accessory/e;

    invoke-virtual {v3, v1}, Lcom/samsung/android/sdk/accessory/e;->a(Lcom/samsung/accessory/a/a/a;)V

    iget v1, p0, Lcom/samsung/android/sdk/accessory/f;->c:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/samsung/android/sdk/accessory/f;->c:I

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/f;->i:Lcom/samsung/android/sdk/accessory/e;
    :try_end_0
    .catch Lcom/samsung/accessory/a/a/c; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/sdk/accessory/f;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "BufferException: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/accessory/a/a/c;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Send Failed! Fragmenter is already shutdown"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final a(IIII[B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/sdk/accessory/f;->b:Ljava/util/Map;

    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/f;->j:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput p1, p0, Lcom/samsung/android/sdk/accessory/f;->e:I

    iput p2, p0, Lcom/samsung/android/sdk/accessory/f;->f:I

    iput p4, p0, Lcom/samsung/android/sdk/accessory/f;->g:I

    sub-int v0, p3, p4

    iput v0, p0, Lcom/samsung/android/sdk/accessory/f;->d:I

    iput-object p5, p0, Lcom/samsung/android/sdk/accessory/f;->h:[B

    sget-object v0, Lcom/samsung/android/sdk/accessory/f;->b:Ljava/util/Map;

    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/f;->j:Ljava/lang/Object;

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/sdk/accessory/f;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "confiure: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p5

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Concurrent write detected! Another write active: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/samsung/android/sdk/accessory/f;->j:Ljava/lang/Object;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method final b()Lcom/samsung/android/sdk/accessory/e;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/f;->i:Lcom/samsung/android/sdk/accessory/e;

    return-object v0
.end method

.method final c()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/accessory/f;->c:I

    return v0
.end method

.method final d()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/f;->i:Lcom/samsung/android/sdk/accessory/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/f;->i:Lcom/samsung/android/sdk/accessory/e;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessory/e;->h()V

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/accessory/f;->b:Ljava/util/Map;

    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/f;->j:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/accessory/f;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/sdk/accessory/f;->b:Ljava/util/Map;

    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/f;->j:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/f;->h:[B

    return-void
.end method
