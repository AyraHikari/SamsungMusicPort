.class Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$StartClientHandler$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/util/rx/ObservableFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$StartClientHandler;-><init>(Landroid/content/Context;Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/android/app/music/util/rx/ObservableFactory<",
        "Lcom/samsung/android/app/music/model/basic/StartClientModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$StartClientHandler;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$StartClientHandler;Landroid/content/Context;)V
    .locals 0

    .line 264
    iput-object p1, p0, Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$StartClientHandler$1;->b:Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$StartClientHandler;

    iput-object p2, p0, Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$StartClientHandler$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/samsung/android/app/music/model/basic/StartClientModel;",
            ">;"
        }
    .end annotation

    .line 267
    new-instance v0, Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$StartClientHandler$1$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$StartClientHandler$1$1;-><init>(Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$StartClientHandler$1;)V

    invoke-static {v0}, Lio/reactivex/Observable;->a(Ljava/util/concurrent/Callable;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method
