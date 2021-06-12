.class public abstract Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;
.super Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbsBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder<",
        "TT;>;>",
        "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Z

.field private final d:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:I
    .annotation build Landroid/support/annotation/ColorRes;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v4/app/Fragment;)V
    .locals 1

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 428
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;-><init>(Landroid/support/v4/app/Fragment;)V

    .line 434
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;->d:Landroid/util/SparseArray;

    .line 435
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;->e:Landroid/util/SparseArray;

    .line 438
    sget p1, Lcom/samsung/android/app/musiclibrary/R$color;->mu_primary:I

    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;->f:I

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    const-string v0, "tagText"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 461
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 462
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;->self()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;

    return-object p1
.end method

.method public final b(ILjava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    const-string v0, "tagText"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 466
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 467
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;->self()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;

    return-object p1
.end method

.method public final b(Z)Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .line 456
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;->c:Z

    .line 457
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;->self()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;

    return-object p1
.end method

.method public final d(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    const-string v0, "column"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 441
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;->b:Ljava/lang/String;

    .line 442
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;->self()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;

    return-object p1
.end method

.method public final e(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    const-string v0, "column"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 446
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;->a:Ljava/lang/String;

    .line 447
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;->self()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;

    return-object p1
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    .line 430
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    .line 431
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final j()Z
    .locals 1

    .line 432
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;->c:Z

    return v0
.end method

.method public final k()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 434
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;->d:Landroid/util/SparseArray;

    return-object v0
.end method

.method public final l()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 435
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;->e:Landroid/util/SparseArray;

    return-object v0
.end method

.method public final m()I
    .locals 1

    .line 438
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;->f:I

    return v0
.end method
