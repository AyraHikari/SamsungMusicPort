.class Lcom/google/gson/internal/bind/TypeAdapters$26$1;
.super Lcom/google/gson/TypeAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/gson/internal/bind/TypeAdapters$26;->a(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/TypeAdapter<",
        "Ljava/sql/Timestamp;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/gson/TypeAdapter;

.field final synthetic b:Lcom/google/gson/internal/bind/TypeAdapters$26;


# direct methods
.method constructor <init>(Lcom/google/gson/internal/bind/TypeAdapters$26;Lcom/google/gson/TypeAdapter;)V
    .locals 0

    .line 580
    iput-object p1, p0, Lcom/google/gson/internal/bind/TypeAdapters$26$1;->b:Lcom/google/gson/internal/bind/TypeAdapters$26;

    iput-object p2, p0, Lcom/google/gson/internal/bind/TypeAdapters$26$1;->a:Lcom/google/gson/TypeAdapter;

    invoke-direct {p0}, Lcom/google/gson/TypeAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/gson/stream/JsonReader;)Ljava/sql/Timestamp;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 582
    iget-object v0, p0, Lcom/google/gson/internal/bind/TypeAdapters$26$1;->a:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v0, p1}, Lcom/google/gson/TypeAdapter;->b(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Date;

    if-eqz p1, :cond_0

    .line 583
    new-instance v0, Ljava/sql/Timestamp;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/sql/Timestamp;-><init>(J)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic a(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 580
    check-cast p2, Ljava/sql/Timestamp;

    invoke-virtual {p0, p1, p2}, Lcom/google/gson/internal/bind/TypeAdapters$26$1;->a(Lcom/google/gson/stream/JsonWriter;Ljava/sql/Timestamp;)V

    return-void
.end method

.method public a(Lcom/google/gson/stream/JsonWriter;Ljava/sql/Timestamp;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 587
    iget-object v0, p0, Lcom/google/gson/internal/bind/TypeAdapters$26$1;->a:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/google/gson/TypeAdapter;->a(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic b(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 580
    invoke-virtual {p0, p1}, Lcom/google/gson/internal/bind/TypeAdapters$26$1;->a(Lcom/google/gson/stream/JsonReader;)Ljava/sql/Timestamp;

    move-result-object p1

    return-object p1
.end method
