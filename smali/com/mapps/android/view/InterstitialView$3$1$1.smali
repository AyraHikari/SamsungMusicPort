.class Lcom/mapps/android/view/InterstitialView$3$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/view/InterstitialView$3$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lcom/mapps/android/view/InterstitialView$3$1;


# direct methods
.method constructor <init>(Lcom/mapps/android/view/InterstitialView$3$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mapps/android/view/InterstitialView$3$1$1;->this$2:Lcom/mapps/android/view/InterstitialView$3$1;

    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1(Lcom/mapps/android/view/InterstitialView$3$1$1;)Lcom/mapps/android/view/InterstitialView$3$1;
    .locals 0

    .line 246
    iget-object p0, p0, Lcom/mapps/android/view/InterstitialView$3$1$1;->this$2:Lcom/mapps/android/view/InterstitialView$3$1;

    return-object p0
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 250
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mapps/android/view/InterstitialView$3$1$1$1;

    invoke-direct {v1, p0}, Lcom/mapps/android/view/InterstitialView$3$1$1$1;-><init>(Lcom/mapps/android/view/InterstitialView$3$1$1;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 258
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const/4 v0, 0x1

    .line 259
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/mapps/android/view/InterstitialView$3$1$1;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
