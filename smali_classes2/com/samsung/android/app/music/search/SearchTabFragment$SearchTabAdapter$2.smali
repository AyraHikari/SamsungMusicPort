.class Lcom/samsung/android/app/music/search/SearchTabFragment$SearchTabAdapter$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/search/SearchTabFragment$SearchTabAdapter;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
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
.field final synthetic a:Lcom/samsung/android/app/music/search/SearchTabFragment$SearchTabAdapter;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/search/SearchTabFragment$SearchTabAdapter;)V
    .locals 0

    .line 773
    iput-object p1, p0, Lcom/samsung/android/app/music/search/SearchTabFragment$SearchTabAdapter$2;->a:Lcom/samsung/android/app/music/search/SearchTabFragment$SearchTabAdapter;

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

    .line 776
    iget-object v0, p0, Lcom/samsung/android/app/music/search/SearchTabFragment$SearchTabAdapter$2;->a:Lcom/samsung/android/app/music/search/SearchTabFragment$SearchTabAdapter;

    iget-object v0, v0, Lcom/samsung/android/app/music/search/SearchTabFragment$SearchTabAdapter;->a:Lcom/samsung/android/app/music/search/SearchTabFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/search/SearchTabFragment;->d(Lcom/samsung/android/app/music/search/SearchTabFragment;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/search/SearchTabFragment$SearchTabAdapter$2;->a:Lcom/samsung/android/app/music/search/SearchTabFragment$SearchTabAdapter;

    iget-object v1, v1, Lcom/samsung/android/app/music/search/SearchTabFragment$SearchTabAdapter;->a:Lcom/samsung/android/app/music/search/SearchTabFragment;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/search/SearchTabFragment;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/search/SearchUtils;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 777
    iget-object v0, p0, Lcom/samsung/android/app/music/search/SearchTabFragment$SearchTabAdapter$2;->a:Lcom/samsung/android/app/music/search/SearchTabFragment$SearchTabAdapter;

    iget-object v0, v0, Lcom/samsung/android/app/music/search/SearchTabFragment$SearchTabAdapter;->a:Lcom/samsung/android/app/music/search/SearchTabFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/search/SearchTabFragment;->a()Ljava/lang/String;

    move-result-object v0

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

    .line 773
    invoke-virtual {p0}, Lcom/samsung/android/app/music/search/SearchTabFragment$SearchTabAdapter$2;->a()Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method
