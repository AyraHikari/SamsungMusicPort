.class final Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:[B

.field final b:B

.field final c:I

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>([BBI)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;->a:[B

    .line 20
    iput-byte p2, p0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;->b:B

    .line 21
    iput p3, p0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;->c:I

    .line 22
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;->d:Ljava/util/Map;

    return-void
.end method

.method static a(Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;I)Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;
    .locals 3

    .line 30
    new-instance v0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;->a:[B

    iget-byte v2, p0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;->b:B

    invoke-direct {v0, v1, v2, p1}, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;-><init>([BBI)V

    .line 31
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;->a()Ljava/util/Map;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;->a(Ljava/util/Map;)V

    return-object v0
.end method

.method static a(Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;[B)Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;
    .locals 3

    .line 36
    new-instance v0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;

    iget-byte v1, p0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;->b:B

    iget v2, p0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;->c:I

    invoke-direct {v0, p1, v1, v2}, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;-><init>([BBI)V

    .line 37
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;->a()Ljava/util/Map;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;->a(Ljava/util/Map;)V

    return-object v0
.end method

.method static a([BBI)Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;
    .locals 1

    .line 26
    new-instance v0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;-><init>([BBI)V

    return-object v0
.end method

.method private a(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;",
            ">;)V"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method a()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;",
            ">;"
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;->d:Ljava/util/Map;

    return-object v0
.end method

.method a(I)V
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;->d:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method a(ILcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;)V
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;->d:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method a(JI)V
    .locals 6

    .line 69
    iget-object v0, p0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 70
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;

    .line 71
    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;->a()J

    move-result-wide v2

    cmp-long v2, p1, v2

    if-gtz v2, :cond_0

    .line 72
    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;->a()J

    move-result-wide v2

    int-to-long v4, p3

    add-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;->a(J)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method b()B
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;->a:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    return v0
.end method

.method b(I)Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;->d:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "=== ID3v2 Tag Info ===\n"

    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "version : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;->a:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;->a:[B

    const/4 v2, 0x1

    aget-byte v1, v1, v2

    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nflags : 0b"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;->b:B

    invoke-static {v1}, Lcom/samsung/android/app/music/common/metaedit/MetaUtils;->a(B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nsize : "

    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
