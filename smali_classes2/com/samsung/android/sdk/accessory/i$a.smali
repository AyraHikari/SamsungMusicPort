.class final Lcom/samsung/android/sdk/accessory/i$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/accessory/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Lcom/samsung/accessory/a/a/a;

.field private b:I

.field private c:I

.field private d:Lcom/samsung/android/sdk/accessory/e;

.field private e:Ljava/lang/Object;


# direct methods
.method private constructor <init>(IILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/sdk/accessory/i$a;->b:I

    iput p2, p0, Lcom/samsung/android/sdk/accessory/i$a;->c:I

    iput-object p3, p0, Lcom/samsung/android/sdk/accessory/i$a;->e:Ljava/lang/Object;

    new-instance p2, Lcom/samsung/android/sdk/accessory/e;

    invoke-direct {p2, p1}, Lcom/samsung/android/sdk/accessory/e;-><init>(I)V

    iput-object p2, p0, Lcom/samsung/android/sdk/accessory/i$a;->d:Lcom/samsung/android/sdk/accessory/e;

    return-void
.end method

.method synthetic constructor <init>(IILjava/lang/Object;B)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/sdk/accessory/i$a;-><init>(IILjava/lang/Object;)V

    return-void
.end method

.method private b(I[BII)I
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/i$a;->a:Lcom/samsung/accessory/a/a/a;

    invoke-virtual {v0, p2, p3, p4}, Lcom/samsung/accessory/a/a/a;->a([BII)V

    invoke-static {}, Lcom/samsung/android/sdk/accessory/i;->a()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p4, p0, Lcom/samsung/android/sdk/accessory/i$a;->e:Ljava/lang/Object;

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " : payload received ["

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, "] : "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/samsung/android/sdk/accessory/i$a;->a:Lcom/samsung/accessory/a/a/a;

    invoke-virtual {p4}, Lcom/samsung/accessory/a/a/a;->d()I

    move-result p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/samsung/android/sdk/accessory/i$a;->d:Lcom/samsung/android/sdk/accessory/e;

    invoke-virtual {p2}, Lcom/samsung/android/sdk/accessory/e;->c()I

    move-result p2
    :try_end_0
    .catch Lcom/samsung/accessory/a/a/c; {:try_start_0 .. :try_end_0} :catch_0

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    invoke-static {}, Lcom/samsung/android/sdk/accessory/i;->a()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "BufferException: "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/accessory/a/a/c;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x3

    return p1
.end method


# virtual methods
.method public final a(I[BII)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-nez p1, :cond_2

    iget-object v3, p0, Lcom/samsung/android/sdk/accessory/i$a;->a:Lcom/samsung/accessory/a/a/a;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/sdk/accessory/i$a;->a:Lcom/samsung/accessory/a/a/a;

    invoke-virtual {v3}, Lcom/samsung/accessory/a/a/a;->d()I

    move-result v3

    if-lez v3, :cond_1

    iget v3, p0, Lcom/samsung/android/sdk/accessory/i$a;->b:I

    if-ne v3, v2, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/i$a;->a:Lcom/samsung/accessory/a/a/a;

    invoke-virtual {v0}, Lcom/samsung/accessory/a/a/a;->e()Z

    iput-object v1, p0, Lcom/samsung/android/sdk/accessory/i$a;->a:Lcom/samsung/accessory/a/a/a;

    invoke-static {}, Lcom/samsung/android/sdk/accessory/i;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MsgFragment received out of order! clearing legacy buffer and accepting new..."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/samsung/android/sdk/accessory/i;->a()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Received a non-fragment in <"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/samsung/android/sdk/accessory/i$a;->e:Ljava/lang/Object;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, "> while blob receive in progress...!"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    :goto_0
    invoke-static {}, Lcom/samsung/android/sdk/accessory/b;->a()Lcom/samsung/android/sdk/accessory/b;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/samsung/android/sdk/accessory/b;->b(I)Lcom/samsung/accessory/a/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/i$a;->a:Lcom/samsung/accessory/a/a/a;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/sdk/accessory/i$a;->b(I[BII)I

    move-result p1

    return p1

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/sdk/accessory/i$a;->d:Lcom/samsung/android/sdk/accessory/e;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/accessory/e;->a()I

    move-result v3

    if-ne p1, v3, :cond_5

    iget v0, p0, Lcom/samsung/android/sdk/accessory/i$a;->b:I

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/i$a;->a:Lcom/samsung/accessory/a/a/a;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/i$a;->a:Lcom/samsung/accessory/a/a/a;

    invoke-virtual {v0}, Lcom/samsung/accessory/a/a/a;->e()Z

    iput-object v1, p0, Lcom/samsung/android/sdk/accessory/i$a;->a:Lcom/samsung/accessory/a/a/a;

    invoke-static {}, Lcom/samsung/android/sdk/accessory/i;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MsgFragment received out of order! Clearing legacy buffer and accepting new..."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/i$a;->a:Lcom/samsung/accessory/a/a/a;

    if-nez v0, :cond_4

    invoke-static {}, Lcom/samsung/android/sdk/accessory/b;->a()Lcom/samsung/android/sdk/accessory/b;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/sdk/accessory/i$a;->c:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/accessory/b;->b(I)Lcom/samsung/accessory/a/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/i$a;->a:Lcom/samsung/accessory/a/a/a;

    :cond_4
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/sdk/accessory/i$a;->b(I[BII)I

    move-result p1

    return p1

    :cond_5
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/i$a;->d:Lcom/samsung/android/sdk/accessory/e;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/accessory/e;->b()I

    move-result v1

    if-eq p1, v1, :cond_7

    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/i$a;->d:Lcom/samsung/android/sdk/accessory/e;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/accessory/e;->c()I

    move-result v1

    if-ne p1, v1, :cond_6

    goto :goto_1

    :cond_6
    invoke-static {}, Lcom/samsung/android/sdk/accessory/i;->a()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "invalid fragment index:"

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " received in <"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/samsung/android/sdk/accessory/i$a;->e:Ljava/lang/Object;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ">! "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_7
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/i$a;->a:Lcom/samsung/accessory/a/a/a;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/i$a;->a:Lcom/samsung/accessory/a/a/a;

    invoke-virtual {v0}, Lcom/samsung/accessory/a/a/a;->d()I

    move-result v0

    if-eqz v0, :cond_8

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/sdk/accessory/i$a;->b(I[BII)I

    move-result p1

    return p1

    :cond_8
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Reassembling failed, received invalid fragment!"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
