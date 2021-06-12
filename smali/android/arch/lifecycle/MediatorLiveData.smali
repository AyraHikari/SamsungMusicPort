.class public Landroid/arch/lifecycle/MediatorLiveData;
.super Landroid/arch/lifecycle/MutableLiveData;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/arch/lifecycle/MediatorLiveData$Source;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/arch/lifecycle/MutableLiveData<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private a:Landroid/arch/core/internal/SafeIterableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/core/internal/SafeIterableMap<",
            "Landroid/arch/lifecycle/LiveData<",
            "*>;",
            "Landroid/arch/lifecycle/MediatorLiveData$Source<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 69
    invoke-direct {p0}, Landroid/arch/lifecycle/MutableLiveData;-><init>()V

    .line 70
    new-instance v0, Landroid/arch/core/internal/SafeIterableMap;

    invoke-direct {v0}, Landroid/arch/core/internal/SafeIterableMap;-><init>()V

    iput-object v0, p0, Landroid/arch/lifecycle/MediatorLiveData;->a:Landroid/arch/core/internal/SafeIterableMap;

    return-void
.end method


# virtual methods
.method public a(Landroid/arch/lifecycle/LiveData;Landroid/arch/lifecycle/Observer;)V
    .locals 2
    .param p1    # Landroid/arch/lifecycle/LiveData;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/arch/lifecycle/Observer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/arch/lifecycle/LiveData<",
            "TS;>;",
            "Landroid/arch/lifecycle/Observer<",
            "TS;>;)V"
        }
    .end annotation

    .line 86
    new-instance v0, Landroid/arch/lifecycle/MediatorLiveData$Source;

    invoke-direct {v0, p1, p2}, Landroid/arch/lifecycle/MediatorLiveData$Source;-><init>(Landroid/arch/lifecycle/LiveData;Landroid/arch/lifecycle/Observer;)V

    .line 87
    iget-object v1, p0, Landroid/arch/lifecycle/MediatorLiveData;->a:Landroid/arch/core/internal/SafeIterableMap;

    invoke-virtual {v1, p1, v0}, Landroid/arch/core/internal/SafeIterableMap;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/arch/lifecycle/MediatorLiveData$Source;

    if-eqz p1, :cond_1

    .line 88
    iget-object v1, p1, Landroid/arch/lifecycle/MediatorLiveData$Source;->b:Landroid/arch/lifecycle/Observer;

    if-ne v1, p2, :cond_0

    goto :goto_0

    .line 89
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "This source was already added with the different observer"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    return-void

    .line 95
    :cond_2
    invoke-virtual {p0}, Landroid/arch/lifecycle/MediatorLiveData;->e()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 96
    invoke-virtual {v0}, Landroid/arch/lifecycle/MediatorLiveData$Source;->a()V

    :cond_3
    return-void
.end method

.method protected c()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 117
    iget-object v0, p0, Landroid/arch/lifecycle/MediatorLiveData;->a:Landroid/arch/core/internal/SafeIterableMap;

    invoke-virtual {v0}, Landroid/arch/core/internal/SafeIterableMap;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 118
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/arch/lifecycle/MediatorLiveData$Source;

    invoke-virtual {v1}, Landroid/arch/lifecycle/MediatorLiveData$Source;->a()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected d()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 125
    iget-object v0, p0, Landroid/arch/lifecycle/MediatorLiveData;->a:Landroid/arch/core/internal/SafeIterableMap;

    invoke-virtual {v0}, Landroid/arch/core/internal/SafeIterableMap;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 126
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/arch/lifecycle/MediatorLiveData$Source;

    invoke-virtual {v1}, Landroid/arch/lifecycle/MediatorLiveData$Source;->b()V

    goto :goto_0

    :cond_0
    return-void
.end method
