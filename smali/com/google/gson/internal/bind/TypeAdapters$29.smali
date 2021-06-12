.class final Lcom/google/gson/internal/bind/TypeAdapters$29;
.super Lcom/google/gson/TypeAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gson/internal/bind/TypeAdapters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/TypeAdapter<",
        "Lcom/google/gson/JsonElement;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 698
    invoke-direct {p0}, Lcom/google/gson/TypeAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/gson/stream/JsonReader;)Lcom/google/gson/JsonElement;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 700
    sget-object v0, Lcom/google/gson/internal/bind/TypeAdapters$36;->a:[I

    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->f()Lcom/google/gson/stream/JsonToken;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/stream/JsonToken;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 732
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 720
    :pswitch_0
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 721
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->c()V

    .line 722
    :goto_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 723
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/google/gson/internal/bind/TypeAdapters$29;->a(Lcom/google/gson/stream/JsonReader;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->a(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    goto :goto_0

    .line 725
    :cond_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->d()V

    return-object v0

    .line 712
    :pswitch_1
    new-instance v0, Lcom/google/gson/JsonArray;

    invoke-direct {v0}, Lcom/google/gson/JsonArray;-><init>()V

    .line 713
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->a()V

    .line 714
    :goto_1
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 715
    invoke-virtual {p0, p1}, Lcom/google/gson/internal/bind/TypeAdapters$29;->a(Lcom/google/gson/stream/JsonReader;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonArray;->a(Lcom/google/gson/JsonElement;)V

    goto :goto_1

    .line 717
    :cond_1
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->b()V

    return-object v0

    .line 709
    :pswitch_2
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->j()V

    .line 710
    sget-object p1, Lcom/google/gson/JsonNull;->a:Lcom/google/gson/JsonNull;

    return-object p1

    .line 702
    :pswitch_3
    new-instance v0, Lcom/google/gson/JsonPrimitive;

    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->h()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 707
    :pswitch_4
    new-instance v0, Lcom/google/gson/JsonPrimitive;

    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->i()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/Boolean;)V

    return-object v0

    .line 704
    :pswitch_5
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->h()Ljava/lang/String;

    move-result-object p1

    .line 705
    new-instance v0, Lcom/google/gson/JsonPrimitive;

    new-instance v1, Lcom/google/gson/internal/LazilyParsedNumber;

    invoke-direct {v1, p1}, Lcom/google/gson/internal/LazilyParsedNumber;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    return-object v0

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

.method public a(Lcom/google/gson/stream/JsonWriter;Lcom/google/gson/JsonElement;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_8

    .line 737
    invoke-virtual {p2}, Lcom/google/gson/JsonElement;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 739
    :cond_0
    invoke-virtual {p2}, Lcom/google/gson/JsonElement;->i()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 740
    invoke-virtual {p2}, Lcom/google/gson/JsonElement;->m()Lcom/google/gson/JsonPrimitive;

    move-result-object p2

    .line 741
    invoke-virtual {p2}, Lcom/google/gson/JsonPrimitive;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 742
    invoke-virtual {p2}, Lcom/google/gson/JsonPrimitive;->a()Ljava/lang/Number;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/gson/stream/JsonWriter;->a(Ljava/lang/Number;)Lcom/google/gson/stream/JsonWriter;

    goto/16 :goto_3

    .line 743
    :cond_1
    invoke-virtual {p2}, Lcom/google/gson/JsonPrimitive;->o()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 744
    invoke-virtual {p2}, Lcom/google/gson/JsonPrimitive;->f()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/google/gson/stream/JsonWriter;->a(Z)Lcom/google/gson/stream/JsonWriter;

    goto/16 :goto_3

    .line 746
    :cond_2
    invoke-virtual {p2}, Lcom/google/gson/JsonPrimitive;->b()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/gson/stream/JsonWriter;->b(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    goto/16 :goto_3

    .line 749
    :cond_3
    invoke-virtual {p2}, Lcom/google/gson/JsonElement;->g()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 750
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->b()Lcom/google/gson/stream/JsonWriter;

    .line 751
    invoke-virtual {p2}, Lcom/google/gson/JsonElement;->l()Lcom/google/gson/JsonArray;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonElement;

    .line 752
    invoke-virtual {p0, p1, v0}, Lcom/google/gson/internal/bind/TypeAdapters$29;->a(Lcom/google/gson/stream/JsonWriter;Lcom/google/gson/JsonElement;)V

    goto :goto_0

    .line 754
    :cond_4
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->c()Lcom/google/gson/stream/JsonWriter;

    goto :goto_3

    .line 756
    :cond_5
    invoke-virtual {p2}, Lcom/google/gson/JsonElement;->h()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 757
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->d()Lcom/google/gson/stream/JsonWriter;

    .line 758
    invoke-virtual {p2}, Lcom/google/gson/JsonElement;->k()Lcom/google/gson/JsonObject;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/gson/JsonObject;->o()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 759
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/google/gson/stream/JsonWriter;->a(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 760
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonElement;

    invoke-virtual {p0, p1, v0}, Lcom/google/gson/internal/bind/TypeAdapters$29;->a(Lcom/google/gson/stream/JsonWriter;Lcom/google/gson/JsonElement;)V

    goto :goto_1

    .line 762
    :cond_6
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->e()Lcom/google/gson/stream/JsonWriter;

    goto :goto_3

    .line 765
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Couldn\'t write "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 738
    :cond_8
    :goto_2
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->f()Lcom/google/gson/stream/JsonWriter;

    :goto_3
    return-void
.end method

.method public bridge synthetic a(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 698
    check-cast p2, Lcom/google/gson/JsonElement;

    invoke-virtual {p0, p1, p2}, Lcom/google/gson/internal/bind/TypeAdapters$29;->a(Lcom/google/gson/stream/JsonWriter;Lcom/google/gson/JsonElement;)V

    return-void
.end method

.method public synthetic b(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 698
    invoke-virtual {p0, p1}, Lcom/google/gson/internal/bind/TypeAdapters$29;->a(Lcom/google/gson/stream/JsonReader;)Lcom/google/gson/JsonElement;

    move-result-object p1

    return-object p1
.end method
