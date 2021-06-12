.class Lcom/samsung/android/app/music/browse/list/data/PageDataSource$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/browse/list/data/PageDataSource;->a(Landroid/content/Context;IZ)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Lio/reactivex/disposables/Disposable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/browse/list/data/PageDataSource;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/browse/list/data/PageDataSource;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/data/PageDataSource$2;->a:Lcom/samsung/android/app/music/browse/list/data/PageDataSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/reactivex/disposables/Disposable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 117
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/data/PageDataSource$2;->a:Lcom/samsung/android/app/music/browse/list/data/PageDataSource;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/browse/list/data/PageDataSource;->a(Lcom/samsung/android/app/music/browse/list/data/PageDataSource;Z)Z

    return-void
.end method

.method public synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 114
    check-cast p1, Lio/reactivex/disposables/Disposable;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/browse/list/data/PageDataSource$2;->a(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method
