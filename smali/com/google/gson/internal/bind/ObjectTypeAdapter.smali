.class public final Lcom/google/gson/internal/bind/ObjectTypeAdapter;
.super Lcom/google/gson/TypeAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/TypeAdapter<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/google/gson/TypeAdapterFactory;


# instance fields
.field private final b:Lcom/google/gson/Gson;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    new-instance v0, Lcom/google/gson/internal/bind/ObjectTypeAdapter$1;

    invoke-direct {v0}, Lcom/google/gson/internal/bind/ObjectTypeAdapter$1;-><init>()V

    sput-object v0, Lcom/google/gson/internal/bind/ObjectTypeAdapter;->a:Lcom/google/gson/TypeAdapterFactory;

    return-void
.end method

.method constructor <init>(Lcom/google/gson/Gson;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/google/gson/TypeAdapter;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/google/gson/internal/bind/ObjectTypeAdapter;->b:Lcom/google/gson/Gson;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_0

    .line 96
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->f()Lcom/google/gson/stream/JsonWriter;

    return-void

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/google/gson/internal/bind/ObjectTypeAdapter;->b:Lcom/google/gson/Gson;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->a(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    .line 101
    instance-of v1, v0, Lcom/google/gson/internal/bind/ObjectTypeAdapter;

    if-eqz v1, :cond_1

    .line 102
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->d()Lcom/google/gson/stream/JsonWriter;

    .line 103
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->e()Lcom/google/gson/stream/JsonWriter;

    return-void

    .line 107
    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/google/gson/TypeAdapter;->a(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    return-void
.end method

.method public b(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->f()Lcom/google/gson/stream/JsonToken;

    move-result-object v0

    .line 56
    sget-object v1, Lcom/google/gson/internal/bind/ObjectTypeAdapter$2;->a:[I

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonToken;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 89
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 85
    :pswitch_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->j()V

    const/4 p1, 0x0

    return-object p1

    .line 82
    :pswitch_1
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->i()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 79
    :pswitch_2
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->k()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 76
    :pswitch_3
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->h()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 67
    :pswitch_4
    new-instance v0, Lcom/google/gson/internal/LinkedTreeMap;

    invoke-direct {v0}, Lcom/google/gson/internal/LinkedTreeMap;-><init>()V

    .line 68
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->c()V

    .line 69
    :goto_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 70
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/google/gson/internal/bind/ObjectTypeAdapter;->b(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 72
    :cond_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->d()V

    return-object v0

    .line 58
    :pswitch_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 59
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->a()V

    .line 60
    :goto_1
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 61
    invoke-virtual {p0, p1}, Lcom/google/gson/internal/bind/ObjectTypeAdapter;->b(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 63
    :cond_1
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->b()V

    return-object v0

    nop

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
