.class final Lcom/airbnb/lottie/LottieCompositionFactory$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/lottie/LottieCompositionFactory;->a(Ljava/lang/String;Ljava/util/concurrent/Callable;)Lcom/airbnb/lottie/LottieTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/airbnb/lottie/LottieResult<",
        "Lcom/airbnb/lottie/LottieComposition;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/airbnb/lottie/LottieComposition;


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/LottieComposition;)V
    .locals 0

    .line 327
    iput-object p1, p0, Lcom/airbnb/lottie/LottieCompositionFactory$8;->a:Lcom/airbnb/lottie/LottieComposition;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/airbnb/lottie/LottieResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/airbnb/lottie/LottieResult<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;"
        }
    .end annotation

    const-string v0, "Gabe"

    const-string v1, "call\treturning from cache"

    .line 330
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    new-instance v0, Lcom/airbnb/lottie/LottieResult;

    iget-object v1, p0, Lcom/airbnb/lottie/LottieCompositionFactory$8;->a:Lcom/airbnb/lottie/LottieComposition;

    invoke-direct {v0, v1}, Lcom/airbnb/lottie/LottieResult;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 327
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieCompositionFactory$8;->a()Lcom/airbnb/lottie/LottieResult;

    move-result-object v0

    return-object v0
.end method
