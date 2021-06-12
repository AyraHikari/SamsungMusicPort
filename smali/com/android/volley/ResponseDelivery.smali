.class public interface abstract Lcom/android/volley/ResponseDelivery;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract a(Lcom/android/volley/Request;Lcom/android/volley/Response;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request<",
            "*>;",
            "Lcom/android/volley/Response<",
            "*>;)V"
        }
    .end annotation
.end method

.method public abstract a(Lcom/android/volley/Request;Lcom/android/volley/Response;Ljava/lang/Runnable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request<",
            "*>;",
            "Lcom/android/volley/Response<",
            "*>;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation
.end method

.method public abstract a(Lcom/android/volley/Request;Lcom/android/volley/VolleyError;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request<",
            "*>;",
            "Lcom/android/volley/VolleyError;",
            ")V"
        }
    .end annotation
.end method
