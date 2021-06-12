.class final Lretrofit2/adapter/rxjava2/CallExecuteObservable$CallDisposable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit2/adapter/rxjava2/CallExecuteObservable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CallDisposable"
.end annotation


# instance fields
.field private final a:Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/Call<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lretrofit2/Call;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "*>;)V"
        }
    .end annotation

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lretrofit2/adapter/rxjava2/CallExecuteObservable$CallDisposable;->a:Lretrofit2/Call;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 72
    iget-object v0, p0, Lretrofit2/adapter/rxjava2/CallExecuteObservable$CallDisposable;->a:Lretrofit2/Call;

    invoke-interface {v0}, Lretrofit2/Call;->b()V

    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 76
    iget-object v0, p0, Lretrofit2/adapter/rxjava2/CallExecuteObservable$CallDisposable;->a:Lretrofit2/Call;

    invoke-interface {v0}, Lretrofit2/Call;->c()Z

    move-result v0

    return v0
.end method
