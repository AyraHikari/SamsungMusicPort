.class final Lcom/google/gson/stream/JsonReader$1;
.super Lcom/google/gson/internal/JsonReaderInternalAccess;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gson/stream/JsonReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1594
    invoke-direct {p0}, Lcom/google/gson/internal/JsonReaderInternalAccess;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/gson/stream/JsonReader;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1596
    instance-of v0, p1, Lcom/google/gson/internal/bind/JsonTreeReader;

    if-eqz v0, :cond_0

    .line 1597
    check-cast p1, Lcom/google/gson/internal/bind/JsonTreeReader;

    invoke-virtual {p1}, Lcom/google/gson/internal/bind/JsonTreeReader;->o()V

    return-void

    .line 1600
    :cond_0
    iget v0, p1, Lcom/google/gson/stream/JsonReader;->a:I

    if-nez v0, :cond_1

    .line 1602
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->r()I

    move-result v0

    :cond_1
    const/16 v1, 0xd

    if-ne v0, v1, :cond_2

    const/16 v0, 0x9

    .line 1605
    iput v0, p1, Lcom/google/gson/stream/JsonReader;->a:I

    goto :goto_0

    :cond_2
    const/16 v1, 0xc

    if-ne v0, v1, :cond_3

    const/16 v0, 0x8

    .line 1607
    iput v0, p1, Lcom/google/gson/stream/JsonReader;->a:I

    goto :goto_0

    :cond_3
    const/16 v1, 0xe

    if-ne v0, v1, :cond_4

    const/16 v0, 0xa

    .line 1609
    iput v0, p1, Lcom/google/gson/stream/JsonReader;->a:I

    :goto_0
    return-void

    .line 1611
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected a name but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1612
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->f()Lcom/google/gson/stream/JsonToken;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->s()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
