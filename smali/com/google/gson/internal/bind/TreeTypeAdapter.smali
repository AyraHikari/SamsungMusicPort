.class public final Lcom/google/gson/internal/bind/TreeTypeAdapter;
.super Lcom/google/gson/TypeAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gson/internal/bind/TreeTypeAdapter$GsonContextImpl;,
        Lcom/google/gson/internal/bind/TreeTypeAdapter$SingleTypeFactory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/gson/TypeAdapter<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final a:Lcom/google/gson/Gson;

.field private final b:Lcom/google/gson/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/JsonSerializer<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/gson/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/JsonDeserializer<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final d:Lcom/google/gson/reflect/TypeToken;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/reflect/TypeToken<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final e:Lcom/google/gson/TypeAdapterFactory;

.field private final f:Lcom/google/gson/internal/bind/TreeTypeAdapter$GsonContextImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/internal/bind/TreeTypeAdapter<",
            "TT;>.GsonContextImpl;"
        }
    .end annotation
.end field

.field private g:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/gson/JsonSerializer;Lcom/google/gson/JsonDeserializer;Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;Lcom/google/gson/TypeAdapterFactory;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/JsonSerializer<",
            "TT;>;",
            "Lcom/google/gson/JsonDeserializer<",
            "TT;>;",
            "Lcom/google/gson/Gson;",
            "Lcom/google/gson/reflect/TypeToken<",
            "TT;>;",
            "Lcom/google/gson/TypeAdapterFactory;",
            ")V"
        }
    .end annotation

    .line 53
    invoke-direct {p0}, Lcom/google/gson/TypeAdapter;-><init>()V

    .line 47
    new-instance v0, Lcom/google/gson/internal/bind/TreeTypeAdapter$GsonContextImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/gson/internal/bind/TreeTypeAdapter$GsonContextImpl;-><init>(Lcom/google/gson/internal/bind/TreeTypeAdapter;Lcom/google/gson/internal/bind/TreeTypeAdapter$1;)V

    iput-object v0, p0, Lcom/google/gson/internal/bind/TreeTypeAdapter;->f:Lcom/google/gson/internal/bind/TreeTypeAdapter$GsonContextImpl;

    .line 54
    iput-object p1, p0, Lcom/google/gson/internal/bind/TreeTypeAdapter;->b:Lcom/google/gson/JsonSerializer;

    .line 55
    iput-object p2, p0, Lcom/google/gson/internal/bind/TreeTypeAdapter;->c:Lcom/google/gson/JsonDeserializer;

    .line 56
    iput-object p3, p0, Lcom/google/gson/internal/bind/TreeTypeAdapter;->a:Lcom/google/gson/Gson;

    .line 57
    iput-object p4, p0, Lcom/google/gson/internal/bind/TreeTypeAdapter;->d:Lcom/google/gson/reflect/TypeToken;

    .line 58
    iput-object p5, p0, Lcom/google/gson/internal/bind/TreeTypeAdapter;->e:Lcom/google/gson/TypeAdapterFactory;

    return-void
.end method

.method private b()Lcom/google/gson/TypeAdapter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/gson/TypeAdapter<",
            "TT;>;"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/google/gson/internal/bind/TreeTypeAdapter;->g:Lcom/google/gson/TypeAdapter;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/google/gson/internal/bind/TreeTypeAdapter;->a:Lcom/google/gson/Gson;

    iget-object v1, p0, Lcom/google/gson/internal/bind/TreeTypeAdapter;->e:Lcom/google/gson/TypeAdapterFactory;

    iget-object v2, p0, Lcom/google/gson/internal/bind/TreeTypeAdapter;->d:Lcom/google/gson/reflect/TypeToken;

    .line 89
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->a(Lcom/google/gson/TypeAdapterFactory;Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gson/internal/bind/TreeTypeAdapter;->g:Lcom/google/gson/TypeAdapter;

    :goto_0
    return-object v0
.end method


# virtual methods
.method public a(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/stream/JsonWriter;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/google/gson/internal/bind/TreeTypeAdapter;->b:Lcom/google/gson/JsonSerializer;

    if-nez v0, :cond_0

    .line 74
    invoke-direct {p0}, Lcom/google/gson/internal/bind/TreeTypeAdapter;->b()Lcom/google/gson/TypeAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/gson/TypeAdapter;->a(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    return-void

    :cond_0
    if-nez p2, :cond_1

    .line 78
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->f()Lcom/google/gson/stream/JsonWriter;

    return-void

    .line 81
    :cond_1
    iget-object v0, p0, Lcom/google/gson/internal/bind/TreeTypeAdapter;->b:Lcom/google/gson/JsonSerializer;

    iget-object v1, p0, Lcom/google/gson/internal/bind/TreeTypeAdapter;->d:Lcom/google/gson/reflect/TypeToken;

    invoke-virtual {v1}, Lcom/google/gson/reflect/TypeToken;->b()Ljava/lang/reflect/Type;

    move-result-object v1

    iget-object v2, p0, Lcom/google/gson/internal/bind/TreeTypeAdapter;->f:Lcom/google/gson/internal/bind/TreeTypeAdapter$GsonContextImpl;

    invoke-interface {v0, p2, v1, v2}, Lcom/google/gson/JsonSerializer;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;

    move-result-object p2

    .line 82
    invoke-static {p2, p1}, Lcom/google/gson/internal/Streams;->a(Lcom/google/gson/JsonElement;Lcom/google/gson/stream/JsonWriter;)V

    return-void
.end method

.method public b(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/stream/JsonReader;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/google/gson/internal/bind/TreeTypeAdapter;->c:Lcom/google/gson/JsonDeserializer;

    if-nez v0, :cond_0

    .line 63
    invoke-direct {p0}, Lcom/google/gson/internal/bind/TreeTypeAdapter;->b()Lcom/google/gson/TypeAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/gson/TypeAdapter;->b(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 65
    :cond_0
    invoke-static {p1}, Lcom/google/gson/internal/Streams;->a(Lcom/google/gson/stream/JsonReader;)Lcom/google/gson/JsonElement;

    move-result-object p1

    .line 66
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 69
    :cond_1
    iget-object v0, p0, Lcom/google/gson/internal/bind/TreeTypeAdapter;->c:Lcom/google/gson/JsonDeserializer;

    iget-object v1, p0, Lcom/google/gson/internal/bind/TreeTypeAdapter;->d:Lcom/google/gson/reflect/TypeToken;

    invoke-virtual {v1}, Lcom/google/gson/reflect/TypeToken;->b()Ljava/lang/reflect/Type;

    move-result-object v1

    iget-object v2, p0, Lcom/google/gson/internal/bind/TreeTypeAdapter;->f:Lcom/google/gson/internal/bind/TreeTypeAdapter$GsonContextImpl;

    invoke-interface {v0, p1, v1, v2}, Lcom/google/gson/JsonDeserializer;->a(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
