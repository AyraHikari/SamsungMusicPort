.class Lcom/mapps/android/view/AdVideoPlayer$19$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/view/AdVideoPlayer$19;->onClick(Landroid/view/View;)V
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
.field final synthetic this$1:Lcom/mapps/android/view/AdVideoPlayer$19;


# direct methods
.method constructor <init>(Lcom/mapps/android/view/AdVideoPlayer$19;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mapps/android/view/AdVideoPlayer$19$1;->this$1:Lcom/mapps/android/view/AdVideoPlayer$19;

    .line 801
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 805
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer$19$1;->this$1:Lcom/mapps/android/view/AdVideoPlayer$19;

    invoke-static {v0}, Lcom/mapps/android/view/AdVideoPlayer$19;->access$0(Lcom/mapps/android/view/AdVideoPlayer$19;)Lcom/mapps/android/view/AdVideoPlayer;

    move-result-object v0

    invoke-static {v0}, Lcom/mapps/android/view/AdVideoPlayer;->access$37(Lcom/mapps/android/view/AdVideoPlayer;)V

    const/4 v0, 0x1

    .line 806
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
    invoke-virtual {p0}, Lcom/mapps/android/view/AdVideoPlayer$19$1;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
