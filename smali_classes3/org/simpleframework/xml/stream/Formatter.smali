.class Lorg/simpleframework/xml/stream/Formatter;
.super Ljava/lang/Object;
.source "Formatter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/simpleframework/xml/stream/Formatter$Tag;
    }
.end annotation


# static fields
.field private static final AND:[C

.field private static final CLOSE:[C

.field private static final DOUBLE:[C

.field private static final GREATER:[C

.field private static final LESS:[C

.field private static final NAMESPACE:[C

.field private static final OPEN:[C

.field private static final SINGLE:[C


# instance fields
.field private buffer:Lorg/simpleframework/xml/stream/OutputBuffer;

.field private indenter:Lorg/simpleframework/xml/stream/Indenter;

.field private last:Lorg/simpleframework/xml/stream/Formatter$Tag;

.field private prolog:Ljava/lang/String;

.field private result:Ljava/io/Writer;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x5

    new-array v1, v0, [C

    .line 1
    fill-array-data v1, :array_0

    sput-object v1, Lorg/simpleframework/xml/stream/Formatter;->NAMESPACE:[C

    const/4 v1, 0x4

    new-array v2, v1, [C

    .line 2
    fill-array-data v2, :array_1

    sput-object v2, Lorg/simpleframework/xml/stream/Formatter;->LESS:[C

    new-array v2, v1, [C

    .line 3
    fill-array-data v2, :array_2

    sput-object v2, Lorg/simpleframework/xml/stream/Formatter;->GREATER:[C

    const/4 v2, 0x6

    new-array v3, v2, [C

    .line 4
    fill-array-data v3, :array_3

    sput-object v3, Lorg/simpleframework/xml/stream/Formatter;->DOUBLE:[C

    new-array v2, v2, [C

    .line 5
    fill-array-data v2, :array_4

    sput-object v2, Lorg/simpleframework/xml/stream/Formatter;->SINGLE:[C

    new-array v2, v0, [C

    .line 6
    fill-array-data v2, :array_5

    sput-object v2, Lorg/simpleframework/xml/stream/Formatter;->AND:[C

    new-array v0, v0, [C

    .line 7
    fill-array-data v0, :array_6

    sput-object v0, Lorg/simpleframework/xml/stream/Formatter;->OPEN:[C

    new-array v0, v1, [C

    .line 8
    fill-array-data v0, :array_7

    sput-object v0, Lorg/simpleframework/xml/stream/Formatter;->CLOSE:[C

    return-void

    :array_0
    .array-data 2
        0x78s
        0x6ds
        0x6cs
        0x6es
        0x73s
    .end array-data

    nop

    :array_1
    .array-data 2
        0x26s
        0x6cs
        0x74s
        0x3bs
    .end array-data

    :array_2
    .array-data 2
        0x26s
        0x67s
        0x74s
        0x3bs
    .end array-data

    :array_3
    .array-data 2
        0x26s
        0x71s
        0x75s
        0x6fs
        0x74s
        0x3bs
    .end array-data

    :array_4
    .array-data 2
        0x26s
        0x61s
        0x70s
        0x6fs
        0x73s
        0x3bs
    .end array-data

    :array_5
    .array-data 2
        0x26s
        0x61s
        0x6ds
        0x70s
        0x3bs
    .end array-data

    nop

    :array_6
    .array-data 2
        0x3cs
        0x21s
        0x2ds
        0x2ds
        0x20s
    .end array-data

    nop

    :array_7
    .array-data 2
        0x20s
        0x2ds
        0x2ds
        0x3es
    .end array-data
.end method

.method public constructor <init>(Ljava/io/Writer;Lorg/simpleframework/xml/stream/Format;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/io/BufferedWriter;

    const/16 v1, 0x400

    invoke-direct {v0, p1, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    iput-object v0, p0, Lorg/simpleframework/xml/stream/Formatter;->result:Ljava/io/Writer;

    .line 3
    new-instance p1, Lorg/simpleframework/xml/stream/Indenter;

    invoke-direct {p1, p2}, Lorg/simpleframework/xml/stream/Indenter;-><init>(Lorg/simpleframework/xml/stream/Format;)V

    iput-object p1, p0, Lorg/simpleframework/xml/stream/Formatter;->indenter:Lorg/simpleframework/xml/stream/Indenter;

    .line 4
    new-instance p1, Lorg/simpleframework/xml/stream/OutputBuffer;

    invoke-direct {p1}, Lorg/simpleframework/xml/stream/OutputBuffer;-><init>()V

    iput-object p1, p0, Lorg/simpleframework/xml/stream/Formatter;->buffer:Lorg/simpleframework/xml/stream/OutputBuffer;

    .line 5
    invoke-virtual {p2}, Lorg/simpleframework/xml/stream/Format;->getProlog()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/simpleframework/xml/stream/Formatter;->prolog:Ljava/lang/String;

    return-void
.end method

.method private append(C)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/simpleframework/xml/stream/Formatter;->buffer:Lorg/simpleframework/xml/stream/OutputBuffer;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/stream/OutputBuffer;->append(C)V

    return-void
.end method

.method private append(Ljava/lang/String;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lorg/simpleframework/xml/stream/Formatter;->buffer:Lorg/simpleframework/xml/stream/OutputBuffer;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/stream/OutputBuffer;->append(Ljava/lang/String;)V

    return-void
.end method

.method private append([C)V
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/simpleframework/xml/stream/Formatter;->buffer:Lorg/simpleframework/xml/stream/OutputBuffer;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/stream/OutputBuffer;->append([C)V

    return-void
.end method

.method private data(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<![CDATA["

    .line 1
    invoke-direct {p0, v0}, Lorg/simpleframework/xml/stream/Formatter;->write(Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/stream/Formatter;->write(Ljava/lang/String;)V

    const-string p1, "]]>"

    .line 3
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/stream/Formatter;->write(Ljava/lang/String;)V

    return-void
.end method

.method private escape(C)V
    .locals 1

    .line 3
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/stream/Formatter;->symbol(C)[C

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-direct {p0, v0}, Lorg/simpleframework/xml/stream/Formatter;->write([C)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/stream/Formatter;->write(C)V

    :goto_0
    return-void
.end method

.method private escape(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-direct {p0, v2}, Lorg/simpleframework/xml/stream/Formatter;->escape(C)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private isEmpty(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method private isText(C)Z
    .locals 3

    const/16 v0, 0x9

    const/4 v1, 0x1

    if-eq p1, v0, :cond_2

    const/16 v0, 0xa

    if-eq p1, v0, :cond_2

    const/16 v0, 0xd

    if-eq p1, v0, :cond_2

    const/16 v0, 0x20

    if-eq p1, v0, :cond_2

    const/4 v2, 0x0

    if-le p1, v0, :cond_1

    const/16 v0, 0x7e

    if-gt p1, v0, :cond_1

    const/16 v0, 0xf7

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    :cond_1
    return v2

    :cond_2
    return v1
.end method

.method private symbol(C)[C
    .locals 1

    const/16 v0, 0x22

    if-eq p1, v0, :cond_4

    const/16 v0, 0x3c

    if-eq p1, v0, :cond_3

    const/16 v0, 0x3e

    if-eq p1, v0, :cond_2

    const/16 v0, 0x26

    if-eq p1, v0, :cond_1

    const/16 v0, 0x27

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    sget-object p1, Lorg/simpleframework/xml/stream/Formatter;->SINGLE:[C

    return-object p1

    .line 2
    :cond_1
    sget-object p1, Lorg/simpleframework/xml/stream/Formatter;->AND:[C

    return-object p1

    .line 3
    :cond_2
    sget-object p1, Lorg/simpleframework/xml/stream/Formatter;->GREATER:[C

    return-object p1

    .line 4
    :cond_3
    sget-object p1, Lorg/simpleframework/xml/stream/Formatter;->LESS:[C

    return-object p1

    .line 5
    :cond_4
    sget-object p1, Lorg/simpleframework/xml/stream/Formatter;->DOUBLE:[C

    return-object p1
.end method

.method private unicode(C)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private write(C)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/simpleframework/xml/stream/Formatter;->buffer:Lorg/simpleframework/xml/stream/OutputBuffer;

    iget-object v1, p0, Lorg/simpleframework/xml/stream/Formatter;->result:Ljava/io/Writer;

    invoke-virtual {v0, v1}, Lorg/simpleframework/xml/stream/OutputBuffer;->write(Ljava/io/Writer;)V

    .line 2
    iget-object v0, p0, Lorg/simpleframework/xml/stream/Formatter;->buffer:Lorg/simpleframework/xml/stream/OutputBuffer;

    invoke-virtual {v0}, Lorg/simpleframework/xml/stream/OutputBuffer;->clear()V

    .line 3
    iget-object v0, p0, Lorg/simpleframework/xml/stream/Formatter;->result:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(I)V

    return-void
.end method

.method private write(Ljava/lang/String;)V
    .locals 2

    .line 7
    iget-object v0, p0, Lorg/simpleframework/xml/stream/Formatter;->buffer:Lorg/simpleframework/xml/stream/OutputBuffer;

    iget-object v1, p0, Lorg/simpleframework/xml/stream/Formatter;->result:Ljava/io/Writer;

    invoke-virtual {v0, v1}, Lorg/simpleframework/xml/stream/OutputBuffer;->write(Ljava/io/Writer;)V

    .line 8
    iget-object v0, p0, Lorg/simpleframework/xml/stream/Formatter;->buffer:Lorg/simpleframework/xml/stream/OutputBuffer;

    invoke-virtual {v0}, Lorg/simpleframework/xml/stream/OutputBuffer;->clear()V

    .line 9
    iget-object v0, p0, Lorg/simpleframework/xml/stream/Formatter;->result:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method

.method private write(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 10
    iget-object v0, p0, Lorg/simpleframework/xml/stream/Formatter;->buffer:Lorg/simpleframework/xml/stream/OutputBuffer;

    iget-object v1, p0, Lorg/simpleframework/xml/stream/Formatter;->result:Ljava/io/Writer;

    invoke-virtual {v0, v1}, Lorg/simpleframework/xml/stream/OutputBuffer;->write(Ljava/io/Writer;)V

    .line 11
    iget-object v0, p0, Lorg/simpleframework/xml/stream/Formatter;->buffer:Lorg/simpleframework/xml/stream/OutputBuffer;

    invoke-virtual {v0}, Lorg/simpleframework/xml/stream/OutputBuffer;->clear()V

    .line 12
    invoke-direct {p0, p2}, Lorg/simpleframework/xml/stream/Formatter;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 13
    iget-object v0, p0, Lorg/simpleframework/xml/stream/Formatter;->result:Ljava/io/Writer;

    invoke-virtual {v0, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 14
    iget-object p2, p0, Lorg/simpleframework/xml/stream/Formatter;->result:Ljava/io/Writer;

    const/16 v0, 0x3a

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(I)V

    .line 15
    :cond_0
    iget-object p2, p0, Lorg/simpleframework/xml/stream/Formatter;->result:Ljava/io/Writer;

    invoke-virtual {p2, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method

.method private write([C)V
    .locals 2

    .line 4
    iget-object v0, p0, Lorg/simpleframework/xml/stream/Formatter;->buffer:Lorg/simpleframework/xml/stream/OutputBuffer;

    iget-object v1, p0, Lorg/simpleframework/xml/stream/Formatter;->result:Ljava/io/Writer;

    invoke-virtual {v0, v1}, Lorg/simpleframework/xml/stream/OutputBuffer;->write(Ljava/io/Writer;)V

    .line 5
    iget-object v0, p0, Lorg/simpleframework/xml/stream/Formatter;->buffer:Lorg/simpleframework/xml/stream/OutputBuffer;

    invoke-virtual {v0}, Lorg/simpleframework/xml/stream/OutputBuffer;->clear()V

    .line 6
    iget-object v0, p0, Lorg/simpleframework/xml/stream/Formatter;->result:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write([C)V

    return-void
.end method


# virtual methods
.method public flush()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/simpleframework/xml/stream/Formatter;->buffer:Lorg/simpleframework/xml/stream/OutputBuffer;

    iget-object v1, p0, Lorg/simpleframework/xml/stream/Formatter;->result:Ljava/io/Writer;

    invoke-virtual {v0, v1}, Lorg/simpleframework/xml/stream/OutputBuffer;->write(Ljava/io/Writer;)V

    .line 2
    iget-object v0, p0, Lorg/simpleframework/xml/stream/Formatter;->buffer:Lorg/simpleframework/xml/stream/OutputBuffer;

    invoke-virtual {v0}, Lorg/simpleframework/xml/stream/OutputBuffer;->clear()V

    .line 3
    iget-object v0, p0, Lorg/simpleframework/xml/stream/Formatter;->result:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    return-void
.end method

.method public writeAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/simpleframework/xml/stream/Formatter;->last:Lorg/simpleframework/xml/stream/Formatter$Tag;

    sget-object v1, Lorg/simpleframework/xml/stream/Formatter$Tag;->START:Lorg/simpleframework/xml/stream/Formatter$Tag;

    if-ne v0, v1, :cond_0

    const/16 v0, 0x20

    .line 2
    invoke-direct {p0, v0}, Lorg/simpleframework/xml/stream/Formatter;->write(C)V

    .line 3
    invoke-direct {p0, p1, p3}, Lorg/simpleframework/xml/stream/Formatter;->write(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x3d

    .line 4
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/stream/Formatter;->write(C)V

    const/16 p1, 0x22

    .line 5
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/stream/Formatter;->write(C)V

    .line 6
    invoke-direct {p0, p2}, Lorg/simpleframework/xml/stream/Formatter;->escape(Ljava/lang/String;)V

    .line 7
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/stream/Formatter;->write(C)V

    return-void

    .line 8
    :cond_0
    new-instance p1, Lorg/simpleframework/xml/stream/NodeException;

    const-string p2, "Start element required"

    invoke-direct {p1, p2}, Lorg/simpleframework/xml/stream/NodeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeComment(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/simpleframework/xml/stream/Formatter;->indenter:Lorg/simpleframework/xml/stream/Indenter;

    invoke-virtual {v0}, Lorg/simpleframework/xml/stream/Indenter;->top()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lorg/simpleframework/xml/stream/Formatter;->last:Lorg/simpleframework/xml/stream/Formatter$Tag;

    sget-object v2, Lorg/simpleframework/xml/stream/Formatter$Tag;->START:Lorg/simpleframework/xml/stream/Formatter$Tag;

    if-ne v1, v2, :cond_0

    const/16 v1, 0x3e

    .line 3
    invoke-direct {p0, v1}, Lorg/simpleframework/xml/stream/Formatter;->append(C)V

    :cond_0
    if-eqz v0, :cond_1

    .line 4
    invoke-direct {p0, v0}, Lorg/simpleframework/xml/stream/Formatter;->append(Ljava/lang/String;)V

    .line 5
    sget-object v0, Lorg/simpleframework/xml/stream/Formatter;->OPEN:[C

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/stream/Formatter;->append([C)V

    .line 6
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/stream/Formatter;->append(Ljava/lang/String;)V

    .line 7
    sget-object p1, Lorg/simpleframework/xml/stream/Formatter;->CLOSE:[C

    invoke-direct {p0, p1}, Lorg/simpleframework/xml/stream/Formatter;->append([C)V

    .line 8
    :cond_1
    sget-object p1, Lorg/simpleframework/xml/stream/Formatter$Tag;->COMMENT:Lorg/simpleframework/xml/stream/Formatter$Tag;

    iput-object p1, p0, Lorg/simpleframework/xml/stream/Formatter;->last:Lorg/simpleframework/xml/stream/Formatter$Tag;

    return-void
.end method

.method public writeEnd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lorg/simpleframework/xml/stream/Formatter;->indenter:Lorg/simpleframework/xml/stream/Indenter;

    invoke-virtual {v0}, Lorg/simpleframework/xml/stream/Indenter;->pop()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lorg/simpleframework/xml/stream/Formatter;->last:Lorg/simpleframework/xml/stream/Formatter$Tag;

    sget-object v2, Lorg/simpleframework/xml/stream/Formatter$Tag;->START:Lorg/simpleframework/xml/stream/Formatter$Tag;

    const/16 v3, 0x3e

    const/16 v4, 0x2f

    if-ne v1, v2, :cond_0

    .line 3
    invoke-direct {p0, v4}, Lorg/simpleframework/xml/stream/Formatter;->write(C)V

    .line 4
    invoke-direct {p0, v3}, Lorg/simpleframework/xml/stream/Formatter;->write(C)V

    goto :goto_0

    .line 5
    :cond_0
    sget-object v5, Lorg/simpleframework/xml/stream/Formatter$Tag;->TEXT:Lorg/simpleframework/xml/stream/Formatter$Tag;

    if-eq v1, v5, :cond_1

    .line 6
    invoke-direct {p0, v0}, Lorg/simpleframework/xml/stream/Formatter;->write(Ljava/lang/String;)V

    .line 7
    :cond_1
    iget-object v0, p0, Lorg/simpleframework/xml/stream/Formatter;->last:Lorg/simpleframework/xml/stream/Formatter$Tag;

    if-eq v0, v2, :cond_2

    const/16 v0, 0x3c

    .line 8
    invoke-direct {p0, v0}, Lorg/simpleframework/xml/stream/Formatter;->write(C)V

    .line 9
    invoke-direct {p0, v4}, Lorg/simpleframework/xml/stream/Formatter;->write(C)V

    .line 10
    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/stream/Formatter;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0, v3}, Lorg/simpleframework/xml/stream/Formatter;->write(C)V

    .line 12
    :cond_2
    :goto_0
    sget-object p1, Lorg/simpleframework/xml/stream/Formatter$Tag;->END:Lorg/simpleframework/xml/stream/Formatter$Tag;

    iput-object p1, p0, Lorg/simpleframework/xml/stream/Formatter;->last:Lorg/simpleframework/xml/stream/Formatter$Tag;

    return-void
.end method

.method public writeNamespace(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/simpleframework/xml/stream/Formatter;->last:Lorg/simpleframework/xml/stream/Formatter$Tag;

    sget-object v1, Lorg/simpleframework/xml/stream/Formatter$Tag;->START:Lorg/simpleframework/xml/stream/Formatter$Tag;

    if-ne v0, v1, :cond_1

    const/16 v0, 0x20

    .line 2
    invoke-direct {p0, v0}, Lorg/simpleframework/xml/stream/Formatter;->write(C)V

    .line 3
    sget-object v0, Lorg/simpleframework/xml/stream/Formatter;->NAMESPACE:[C

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/stream/Formatter;->write([C)V

    .line 4
    invoke-direct {p0, p2}, Lorg/simpleframework/xml/stream/Formatter;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x3a

    .line 5
    invoke-direct {p0, v0}, Lorg/simpleframework/xml/stream/Formatter;->write(C)V

    .line 6
    invoke-direct {p0, p2}, Lorg/simpleframework/xml/stream/Formatter;->write(Ljava/lang/String;)V

    :cond_0
    const/16 p2, 0x3d

    .line 7
    invoke-direct {p0, p2}, Lorg/simpleframework/xml/stream/Formatter;->write(C)V

    const/16 p2, 0x22

    .line 8
    invoke-direct {p0, p2}, Lorg/simpleframework/xml/stream/Formatter;->write(C)V

    .line 9
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/stream/Formatter;->escape(Ljava/lang/String;)V

    .line 10
    invoke-direct {p0, p2}, Lorg/simpleframework/xml/stream/Formatter;->write(C)V

    return-void

    .line 11
    :cond_1
    new-instance p1, Lorg/simpleframework/xml/stream/NodeException;

    const-string p2, "Start element required"

    invoke-direct {p1, p2}, Lorg/simpleframework/xml/stream/NodeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeProlog()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/simpleframework/xml/stream/Formatter;->prolog:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, v0}, Lorg/simpleframework/xml/stream/Formatter;->write(Ljava/lang/String;)V

    const-string v0, "\n"

    .line 3
    invoke-direct {p0, v0}, Lorg/simpleframework/xml/stream/Formatter;->write(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public writeStart(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/simpleframework/xml/stream/Formatter;->indenter:Lorg/simpleframework/xml/stream/Indenter;

    invoke-virtual {v0}, Lorg/simpleframework/xml/stream/Indenter;->push()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lorg/simpleframework/xml/stream/Formatter;->last:Lorg/simpleframework/xml/stream/Formatter$Tag;

    sget-object v2, Lorg/simpleframework/xml/stream/Formatter$Tag;->START:Lorg/simpleframework/xml/stream/Formatter$Tag;

    if-ne v1, v2, :cond_0

    const/16 v1, 0x3e

    .line 3
    invoke-direct {p0, v1}, Lorg/simpleframework/xml/stream/Formatter;->append(C)V

    .line 4
    :cond_0
    invoke-virtual {p0}, Lorg/simpleframework/xml/stream/Formatter;->flush()V

    .line 5
    invoke-direct {p0, v0}, Lorg/simpleframework/xml/stream/Formatter;->append(Ljava/lang/String;)V

    const/16 v0, 0x3c

    .line 6
    invoke-direct {p0, v0}, Lorg/simpleframework/xml/stream/Formatter;->append(C)V

    .line 7
    invoke-direct {p0, p2}, Lorg/simpleframework/xml/stream/Formatter;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 8
    invoke-direct {p0, p2}, Lorg/simpleframework/xml/stream/Formatter;->append(Ljava/lang/String;)V

    const/16 p2, 0x3a

    .line 9
    invoke-direct {p0, p2}, Lorg/simpleframework/xml/stream/Formatter;->append(C)V

    .line 10
    :cond_1
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/stream/Formatter;->append(Ljava/lang/String;)V

    .line 11
    iput-object v2, p0, Lorg/simpleframework/xml/stream/Formatter;->last:Lorg/simpleframework/xml/stream/Formatter$Tag;

    return-void
.end method

.method public writeText(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lorg/simpleframework/xml/stream/Mode;->ESCAPE:Lorg/simpleframework/xml/stream/Mode;

    invoke-virtual {p0, p1, v0}, Lorg/simpleframework/xml/stream/Formatter;->writeText(Ljava/lang/String;Lorg/simpleframework/xml/stream/Mode;)V

    return-void
.end method

.method public writeText(Ljava/lang/String;Lorg/simpleframework/xml/stream/Mode;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lorg/simpleframework/xml/stream/Formatter;->last:Lorg/simpleframework/xml/stream/Formatter$Tag;

    sget-object v1, Lorg/simpleframework/xml/stream/Formatter$Tag;->START:Lorg/simpleframework/xml/stream/Formatter$Tag;

    if-ne v0, v1, :cond_0

    const/16 v0, 0x3e

    .line 3
    invoke-direct {p0, v0}, Lorg/simpleframework/xml/stream/Formatter;->write(C)V

    .line 4
    :cond_0
    sget-object v0, Lorg/simpleframework/xml/stream/Mode;->DATA:Lorg/simpleframework/xml/stream/Mode;

    if-ne p2, v0, :cond_1

    .line 5
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/stream/Formatter;->data(Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/stream/Formatter;->escape(Ljava/lang/String;)V

    .line 7
    :goto_0
    sget-object p1, Lorg/simpleframework/xml/stream/Formatter$Tag;->TEXT:Lorg/simpleframework/xml/stream/Formatter$Tag;

    iput-object p1, p0, Lorg/simpleframework/xml/stream/Formatter;->last:Lorg/simpleframework/xml/stream/Formatter$Tag;

    return-void
.end method
