.class Lcom/samsung/android/app/music/list/local/SearchFragment$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/local/SearchFragment;->b(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lio/reactivex/Observable<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/samsung/android/app/music/list/local/SearchFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/SearchFragment;Ljava/lang/String;)V
    .locals 0

    .line 725
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$7;->b:Lcom/samsung/android/app/music/list/local/SearchFragment;

    iput-object p2, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$7;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 728
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$7;->b:Lcom/samsung/android/app/music/list/local/SearchFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/SearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$7;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/search/SearchUtils;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 729
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$7;->a:Ljava/lang/String;

    invoke-static {v0}, Lio/reactivex/Observable;->a(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 725
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/SearchFragment$7;->a()Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method
