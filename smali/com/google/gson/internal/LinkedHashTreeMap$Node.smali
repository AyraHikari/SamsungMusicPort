.class final Lcom/google/gson/internal/LinkedHashTreeMap$Node;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gson/internal/LinkedHashTreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Node"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field a:Lcom/google/gson/internal/LinkedHashTreeMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/internal/LinkedHashTreeMap$Node<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field b:Lcom/google/gson/internal/LinkedHashTreeMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/internal/LinkedHashTreeMap$Node<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field c:Lcom/google/gson/internal/LinkedHashTreeMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/internal/LinkedHashTreeMap$Node<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field d:Lcom/google/gson/internal/LinkedHashTreeMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/internal/LinkedHashTreeMap$Node<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field e:Lcom/google/gson/internal/LinkedHashTreeMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/internal/LinkedHashTreeMap$Node<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final f:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field final g:I

.field h:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field i:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 479
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 480
    iput-object v0, p0, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->f:Ljava/lang/Object;

    const/4 v0, -0x1

    .line 481
    iput v0, p0, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->g:I

    .line 482
    iput-object p0, p0, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->e:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    iput-object p0, p0, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->d:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    return-void
.end method

.method constructor <init>(Lcom/google/gson/internal/LinkedHashTreeMap$Node;Ljava/lang/Object;ILcom/google/gson/internal/LinkedHashTreeMap$Node;Lcom/google/gson/internal/LinkedHashTreeMap$Node;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/internal/LinkedHashTreeMap$Node<",
            "TK;TV;>;TK;I",
            "Lcom/google/gson/internal/LinkedHashTreeMap$Node<",
            "TK;TV;>;",
            "Lcom/google/gson/internal/LinkedHashTreeMap$Node<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 486
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 487
    iput-object p1, p0, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->a:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    .line 488
    iput-object p2, p0, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->f:Ljava/lang/Object;

    .line 489
    iput p3, p0, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->g:I

    const/4 p1, 0x1

    .line 490
    iput p1, p0, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->i:I

    .line 491
    iput-object p4, p0, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->d:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    .line 492
    iput-object p5, p0, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->e:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    .line 493
    iput-object p0, p5, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->d:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    .line 494
    iput-object p0, p4, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->e:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    return-void
.end method


# virtual methods
.method public a()Lcom/google/gson/internal/LinkedHashTreeMap$Node;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/gson/internal/LinkedHashTreeMap$Node<",
            "TK;TV;>;"
        }
    .end annotation

    .line 535
    iget-object v0, p0, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->b:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    move-object v1, p0

    :goto_0
    if-eqz v0, :cond_0

    .line 538
    iget-object v1, v0, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->b:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    move-object v2, v1

    move-object v1, v0

    move-object v0, v2

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public b()Lcom/google/gson/internal/LinkedHashTreeMap$Node;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/gson/internal/LinkedHashTreeMap$Node<",
            "TK;TV;>;"
        }
    .end annotation

    .line 548
    iget-object v0, p0, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->c:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    move-object v1, p0

    :goto_0
    if-eqz v0, :cond_0

    .line 551
    iget-object v1, v0, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->c:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    move-object v2, v1

    move-object v1, v0

    move-object v0, v2

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 513
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 514
    check-cast p1, Ljava/util/Map$Entry;

    .line 515
    iget-object v0, p0, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->f:Ljava/lang/Object;

    if-nez v0, :cond_0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->f:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_0
    iget-object v0, p0, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->h:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 516
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->h:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :goto_1
    const/4 v1, 0x1

    :cond_2
    return v1

    :cond_3
    return v1
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 498
    iget-object v0, p0, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->f:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 502
    iget-object v0, p0, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->h:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 522
    iget-object v0, p0, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->f:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->f:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    iget-object v2, p0, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->h:Ljava/lang/Object;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->h:Ljava/lang/Object;

    .line 523
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    xor-int/2addr v0, v1

    return v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 506
    iget-object v0, p0, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->h:Ljava/lang/Object;

    .line 507
    iput-object p1, p0, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->h:Ljava/lang/Object;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 527
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->f:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->h:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
