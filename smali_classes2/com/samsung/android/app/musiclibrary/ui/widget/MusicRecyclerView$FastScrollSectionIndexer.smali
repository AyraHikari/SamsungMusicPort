.class final Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$FastScrollSectionIndexer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/widget/MusicSectionIndexer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FastScrollSectionIndexer"
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

.field private b:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 446
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$FastScrollSectionIndexer;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 450
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object p1

    .line 451
    instance-of v0, p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    if-eqz v0, :cond_0

    .line 452
    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$FastScrollSectionIndexer;->b:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    :cond_0
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 465
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$FastScrollSectionIndexer;->b:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$FastScrollSectionIndexer;->b:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->getItemCount()I

    move-result v0

    :goto_0
    return v0
.end method

.method public a(I)Ljava/lang/String;
    .locals 2

    .line 457
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$FastScrollSectionIndexer;->b:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$FastScrollSectionIndexer;->b:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->getHeaderViewCount()I

    move-result v0

    if-ge p1, v0, :cond_1

    goto :goto_1

    .line 460
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$FastScrollSectionIndexer;->b:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    if-nez v0, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_2
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->getText1(I)Ljava/lang/String;

    move-result-object p1

    .line 461
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    if-nez p1, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_4
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_6

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string v0, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string p1, "(this as java.lang.String).toUpperCase()"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object v1

    :cond_5
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    :goto_1
    return-object v1
.end method

.method public b(I)I
    .locals 1

    .line 469
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$FastScrollSectionIndexer;->b:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    return p1
.end method
