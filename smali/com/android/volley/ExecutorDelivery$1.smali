.class Lcom/android/volley/ExecutorDelivery$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/volley/ExecutorDelivery;-><init>(Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/os/Handler;

.field final synthetic b:Lcom/android/volley/ExecutorDelivery;


# direct methods
.method constructor <init>(Lcom/android/volley/ExecutorDelivery;Landroid/os/Handler;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/android/volley/ExecutorDelivery$1;->b:Lcom/android/volley/ExecutorDelivery;

    iput-object p2, p0, Lcom/android/volley/ExecutorDelivery$1;->a:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/android/volley/ExecutorDelivery$1;->a:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
