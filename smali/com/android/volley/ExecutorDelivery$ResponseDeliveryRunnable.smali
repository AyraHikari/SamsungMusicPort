.class Lcom/android/volley/ExecutorDelivery$ResponseDeliveryRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/volley/ExecutorDelivery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ResponseDeliveryRunnable"
.end annotation


# instance fields
.field private final a:Lcom/android/volley/Request;

.field private final b:Lcom/android/volley/Response;

.field private final c:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/android/volley/Request;Lcom/android/volley/Response;Ljava/lang/Runnable;)V
    .locals 0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/android/volley/ExecutorDelivery$ResponseDeliveryRunnable;->a:Lcom/android/volley/Request;

    .line 80
    iput-object p2, p0, Lcom/android/volley/ExecutorDelivery$ResponseDeliveryRunnable;->b:Lcom/android/volley/Response;

    .line 81
    iput-object p3, p0, Lcom/android/volley/ExecutorDelivery$ResponseDeliveryRunnable;->c:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/android/volley/ExecutorDelivery$ResponseDeliveryRunnable;->a:Lcom/android/volley/Request;

    invoke-virtual {v0}, Lcom/android/volley/Request;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/android/volley/ExecutorDelivery$ResponseDeliveryRunnable;->a:Lcom/android/volley/Request;

    const-string v1, "canceled-at-delivery"

    invoke-virtual {v0, v1}, Lcom/android/volley/Request;->b(Ljava/lang/String;)V

    return-void

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/android/volley/ExecutorDelivery$ResponseDeliveryRunnable;->b:Lcom/android/volley/Response;

    invoke-virtual {v0}, Lcom/android/volley/Response;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    iget-object v0, p0, Lcom/android/volley/ExecutorDelivery$ResponseDeliveryRunnable;->a:Lcom/android/volley/Request;

    iget-object v1, p0, Lcom/android/volley/ExecutorDelivery$ResponseDeliveryRunnable;->b:Lcom/android/volley/Response;

    iget-object v1, v1, Lcom/android/volley/Response;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/android/volley/Request;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 104
    :cond_1
    iget-object v0, p0, Lcom/android/volley/ExecutorDelivery$ResponseDeliveryRunnable;->a:Lcom/android/volley/Request;

    iget-object v1, p0, Lcom/android/volley/ExecutorDelivery$ResponseDeliveryRunnable;->b:Lcom/android/volley/Response;

    iget-object v1, v1, Lcom/android/volley/Response;->c:Lcom/android/volley/VolleyError;

    invoke-virtual {v0, v1}, Lcom/android/volley/Request;->b(Lcom/android/volley/VolleyError;)V

    .line 109
    :goto_0
    iget-object v0, p0, Lcom/android/volley/ExecutorDelivery$ResponseDeliveryRunnable;->b:Lcom/android/volley/Response;

    iget-boolean v0, v0, Lcom/android/volley/Response;->d:Z

    if-eqz v0, :cond_2

    .line 110
    iget-object v0, p0, Lcom/android/volley/ExecutorDelivery$ResponseDeliveryRunnable;->a:Lcom/android/volley/Request;

    const-string v1, "intermediate-response"

    invoke-virtual {v0, v1}, Lcom/android/volley/Request;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 112
    :cond_2
    iget-object v0, p0, Lcom/android/volley/ExecutorDelivery$ResponseDeliveryRunnable;->a:Lcom/android/volley/Request;

    const-string v1, "done"

    invoke-virtual {v0, v1}, Lcom/android/volley/Request;->b(Ljava/lang/String;)V

    .line 116
    :goto_1
    iget-object v0, p0, Lcom/android/volley/ExecutorDelivery$ResponseDeliveryRunnable;->c:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    .line 117
    iget-object v0, p0, Lcom/android/volley/ExecutorDelivery$ResponseDeliveryRunnable;->c:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_3
    return-void
.end method
