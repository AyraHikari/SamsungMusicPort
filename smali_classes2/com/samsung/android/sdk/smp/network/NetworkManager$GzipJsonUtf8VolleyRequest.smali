.class Lcom/samsung/android/sdk/smp/network/NetworkManager$GzipJsonUtf8VolleyRequest;
.super Lcom/android/volley/toolbox/StringRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/smp/network/NetworkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GzipJsonUtf8VolleyRequest"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:[B


# direct methods
.method constructor <init>(ILjava/lang/String;[BLcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "[B",
            "Lcom/android/volley/Response$Listener<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .line 207
    invoke-direct {p0, p1, p2, p4, p5}, Lcom/android/volley/toolbox/StringRequest;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    const-string p1, "application/json; charset=%s"

    const/4 p2, 0x1

    .line 201
    new-array p2, p2, [Ljava/lang/Object;

    const-string p4, "utf-8"

    const/4 p5, 0x0

    aput-object p4, p2, p5

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/smp/network/NetworkManager$GzipJsonUtf8VolleyRequest;->a:Ljava/lang/String;

    .line 208
    iput-object p3, p0, Lcom/samsung/android/sdk/smp/network/NetworkManager$GzipJsonUtf8VolleyRequest;->b:[B

    return-void
.end method


# virtual methods
.method public h()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation

    .line 213
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "Content-Encoding"

    const-string v2, "gzip"

    .line 214
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .line 225
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/network/NetworkManager$GzipJsonUtf8VolleyRequest;->o()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public o()Ljava/lang/String;
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/samsung/android/sdk/smp/network/NetworkManager$GzipJsonUtf8VolleyRequest;->a:Ljava/lang/String;

    return-object v0
.end method

.method public p()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation

    .line 220
    iget-object v0, p0, Lcom/samsung/android/sdk/smp/network/NetworkManager$GzipJsonUtf8VolleyRequest;->b:[B

    return-object v0
.end method
